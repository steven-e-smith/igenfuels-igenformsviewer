using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace IGenForms
{
    public partial class frmMessageBox : Form
    {
        private string moduleName = "frmMessageBox";

        private PictureBox msgPicture = new PictureBox();
        private string msgText = "";

        private bool status = true;
        public bool Status
        {
            get { return status; }
        }


        public frmMessageBox(string msg)
        {

            try
            {
                InitializeComponent();

                msgText = msg;

                // call the appropriate routine
                if (msg.IndexOf("$E:") >= 0)
                {
                    DisplayErrorMessage();
                }
                else
                {
                    if (msg.IndexOf("$W:") >= 0)
                    {
                        DisplayWarningMessage();
                    }
                    else
                    {
                        DisplayInfoMessage();
                    }
                }

                if (msgText.IndexOf(':') > 0 && msgText.IndexOf(':') < 3)
                {
                    // remove the prefix
                    msgText = msgText.Substring(3);
                }

                txtMessage.Text = msgText.Trim();

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".frmMessageBox > " + ex.Message);
            }

            return;

        }


        public void DisplayErrorMessage()
        {

            try 
            {
                // load the error pic
                picImage.Visible = true;
                LoadPicImage("Error");

                this.Text = "AAAAAAHHHHH!  An error has occured!";

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayErrorMessage > " + ex.Message);
            }

            return;

        }


        public void DisplayWarningMessage()
        {

            try
            {
                // load the warning pic
                picImage.Visible = true;
                LoadPicImage("Warning");

                this.Text = "Warning!  Danger Will Robinson!";

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayWarningMessage > " + ex.Message);
            }

            return;

        }



        public void DisplayInfoMessage()
        {

            try
            {
                // load the error pic
                picImage.Visible = true;
                LoadPicImage("Info");

                this.Text = "For your information";

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayInfoMessage > " + ex.Message);
            }

            return;

        }




        private void btnOK_Click(object sender, EventArgs e)
        {

            try
            {
                status = true;
                this.Hide();
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".btnOK_Click > " + ex.Message);
            }

            return;

        }




        private void btnCancel_Click(object sender, EventArgs e)
        {

            try
            {
                status = false;
                this.Hide();
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".btnCancel_Click > " + ex.Message);
            }

            return;

        }

        private void btnCopyToClipboard_Click(object sender, EventArgs e)
        {

            try
            {
                System.Windows.Forms.Clipboard.SetText(txtMessage.Text);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".btnCopyToClipboard_Click > " + ex.Message);
            }

            return;

        }


        private void LoadPicImage(string imageType)
        {

            try
            {
                switch (imageType.ToUpper())
                {
                    case "ERROR":
                        // load the error one
                        if (CommonRoutines.FileExists(CommonRoutines.currentPath + "\\images\\ErrorMessage.jpg"))
                        {
                            picImage.Image = Image.FromFile(CommonRoutines.currentPath + "\\images\\ErrorMessage.jpg");
                        }
                        break;

                    case "WARNING":
                        // load the warning one
                        if (CommonRoutines.FileExists(CommonRoutines.currentPath + "\\images\\WarningMessage.jpg"))
                        {
                            picImage.Image = Image.FromFile(CommonRoutines.currentPath + "\\images\\WarningMessage.jpg");
                        }
                    break;

                    case "INFO":
                        // load the info one
                        if (CommonRoutines.FileExists(CommonRoutines.currentPath + "\\images\\InfoMessage.jpg"))
                        {
                            picImage.Image = Image.FromFile(CommonRoutines.currentPath + "\\images\\InfoMessage.jpg");
                        }
                    break;

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".LoadPicImages > " + ex.Message);
            }

            return;

        }




    }
}
