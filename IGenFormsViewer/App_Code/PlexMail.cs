using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;

namespace IGenForms
{
    public class PlexMail
    {

        public static string strTo = "";
        public static string strMessage = "";

        //public static string strFrom = "steve.smith@plexsoft.com";
        //public static string strSMTPServer = "smtp.gmail.com";
        //public static int intSMTPPort = 587;
        //public static string strAuthUID = "steve.smith@plexsoft.com";
        //public static string strAuthPWD = "Baeb1959";

        //public static string strFrom = "steve.plexsoft@gmail.com";
        //public static string strSMTPServer = "smtp.gmail.com";
        //public static int intSMTPPort = 587;
        //public static string strAuthUID = "steve.plexsoft@gmail.com";
        //public static string strAuthPWD = "gninraw#01";

        public static string strFrom = "";
        public static string strSMTPServer = "";
        public static int intSMTPPort = 0;
        public static string strAuthUID = "";
        public static string strAuthPWD = "";

        public static string SendMailWithAttachments(string argstrTo,
                                string argstrSubject,
                                string argstrMessage,
                                string[] argstrAttachments)
        {

            return SendMail(argstrTo, argstrSubject, argstrMessage, argstrAttachments);

        }



        public static string SendMail(string argstrTo,
                                string argstrSubject,
                                string argstrMessage,
                                string[] argstrAttachments)
        {
            try
            {

                strFrom = (ConfigRoutines.GetSetting("SMTP-EMAIL-FROM").Trim() == "") ? "dale@floordealersusa.com" : ConfigRoutines.GetSetting("SMTP-EMAIL-FROM").Trim();
                strSMTPServer = (ConfigRoutines.GetSetting("SMTP-EMAIL-SMTPServer").Trim() == "") ? "mail.floordealersusa.com" : ConfigRoutines.GetSetting("SMTP-EMAIL-SMTPServer").Trim();
                intSMTPPort = CommonRoutines.ConvertToInt((ConfigRoutines.GetSetting("SMTP-EMAIL-SMTPPort").Trim() == "") ? "25" : ConfigRoutines.GetSetting("SMTP-EMAIL-SMTPPort").Trim());
                strAuthUID = (ConfigRoutines.GetSetting("SMTP-EMAIL-AuthUID").Trim() == "") ? "dale@floordealersusa.com" : ConfigRoutines.GetSetting("SMTP-EMAIL-AuthUID").Trim();
                strAuthPWD = (ConfigRoutines.GetSetting("SMTP-EMAIL-AuthPWD").Trim() == "") ? "floordlr$" : ConfigRoutines.GetSetting("SMTP-EMAIL-AuthPWD").Trim();

                ConfigRoutines.SetSetting("SMTP-EMAIL-FROM", strFrom);
                ConfigRoutines.SetSetting("SMTP-EMAIL-SMTPServer", strSMTPServer);
                ConfigRoutines.SetSetting("SMTP-EMAIL-SMTPPort", intSMTPPort.ToString());
                ConfigRoutines.SetSetting("SMTP-EMAIL-AuthUID", strAuthUID);
                ConfigRoutines.SetSetting("SMTP-EMAIL-AuthPWD", strAuthPWD);
                ConfigRoutines.WriteConfigFile();

                SmtpClient mailClient = new SmtpClient(strSMTPServer, intSMTPPort);

                mailClient.UseDefaultCredentials = false;
                mailClient.Credentials = new NetworkCredential(strAuthUID, strAuthPWD);
                mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                mailClient.EnableSsl = true;

                MailMessage message = new MailMessage();
                message.From = new MailAddress(strFrom, "Floor Dealers USA");
                // see if there are multiple people to send to
                string[] astrTos = argstrTo.Split(';');
                for (int n = 0; n < astrTos.Length; n++)
                {
                    if (astrTos[n].Length > 1)
                    {
                        message.To.Add(new MailAddress(astrTos[n]));
                    }
                }
                message.Sender = new MailAddress(strFrom);
                message.Subject = argstrSubject;
                message.Body = "<html><body>" + argstrMessage + "</body></html>";
                message.IsBodyHtml = true;

                // check to see if there is an attachment to send as well
                if (argstrAttachments.Length > 0)
                {
                    for (int n = 0; n < argstrAttachments.Length; n++)
                    {
                        Attachment objAttachment = new Attachment(argstrAttachments[n]);
                        message.Attachments.Add(objAttachment);
                    }
                }

                // Send delivers the message to the mail server
                mailClient.Send(message);

                //                MessageBox.Show("Success!");
                return "Sent";
            }
            catch (Exception ex)
            {
                //                MessageBox.Show("Error in send: " + ex.Message);
                return "Error: " + ex.Message;
            }

        }



        public static string SendMailSP(string argstrTo, string argstrSubject,
                                        string argstrMessage, string argstrAttachment)
        {
            string strResult = "";

            try
            {

                try
                {
                    string strLogConnection = ConfigRoutines.GetSetting("LogDatabaseTable");
                    using (SqlConnection objLogConnection = new SqlConnection(strLogConnection))
                    {
                        objLogConnection.Open();
                        SqlCommand objCMD = objLogConnection.CreateCommand();
                        objCMD.CommandType = CommandType.StoredProcedure;
                        objCMD.CommandText = "msdb.dbo.sp_send_dbmail";

                        SqlParameter objParm1 = new SqlParameter("@profile_name", "Maxum SMTP");
                        objCMD.Parameters.Add(objParm1);
                        // if from present, use it otherwise default to what is defined in the db
                        if (strFrom.Length > 0)
                        {
                            SqlParameter objParm2 = new SqlParameter("@from_address", strFrom);
                            objCMD.Parameters.Add(objParm2);
                        }
                        SqlParameter objParm3 = new SqlParameter("@recipients", strTo);
                        objCMD.Parameters.Add(objParm3);
                        SqlParameter objParm4 = new SqlParameter("@subject", argstrSubject);
                        objCMD.Parameters.Add(objParm4);
                        SqlParameter objParm5 = new SqlParameter("@body", argstrMessage);
                        objCMD.Parameters.Add(objParm5);

                        int intResult = objCMD.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    strResult = "Error in call to sp";
                }


                SmtpClient mailClient = new SmtpClient(strSMTPServer, intSMTPPort);

                mailClient.UseDefaultCredentials = false;
                mailClient.Credentials = new NetworkCredential(strAuthUID, strAuthPWD);
                mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                mailClient.EnableSsl = true;

                MailMessage message = new MailMessage();
                message.From = new MailAddress(strFrom, "PlexForms");
                // see if there are multiple people to send to
                string[] astrTos = argstrTo.Split(';');
                for (int n = 0; n < astrTos.Length; n++)
                {
                    message.To.Add(new MailAddress(astrTos[n]));
                }
                message.Sender = new MailAddress(strFrom);
                message.Subject = argstrSubject;
                message.Body = "<html><body>" + argstrMessage + "</body></html>";
                message.IsBodyHtml = true;

                // check to see if there is an attachment to send as well
                if (argstrAttachment != "")
                {
                    Attachment objAttachment = new Attachment(argstrAttachment);
                    message.Attachments.Add(objAttachment);
                }

                // Send delivers the message to the mail server
                mailClient.Send(message);

                //                MessageBox.Show("Success!");
                return "Sent";
            }
            catch (Exception ex)
            {
                //                MessageBox.Show("Error in send: " + ex.Message);
                return "Error: " + ex.Message;
            }

        }

    }
}
