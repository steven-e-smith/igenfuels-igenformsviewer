using System;
using System.Collections.Generic;
using System.Web;
using System.IO;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Text.RegularExpressions;
using System.Diagnostics;
using System.Windows.Forms;
using System.Reflection;
using System.Security.Principal;
using Microsoft.VisualBasic.FileIO;
using System.Runtime.InteropServices;



namespace IGenFormsViewer
{
    /// <summary>
    /// Summary description for clsCommonRoutines
    /// </summary>
    public class CommonRoutines
    {
        private static string moduleName = "CommonRoutines";

        public static string lastSystemError = "";

        //public static string strVersion = "v1.0.0.0";
        public static String strVersion = System.Reflection.Assembly.GetExecutingAssembly().GetName().Version.ToString();

        public static bool logFlag = true;
        public static bool writeLogToDatabase = true;
        public static bool debugFlag = false;
        public static bool writeLogToFile = true;
        public static string basePath = AppDomain.CurrentDomain.BaseDirectory; // + GetEXEName() + "\\";
        public static string logFileName = basePath + "\\IGenForms.log";
        public static bool refreshFlag = false;
        public static string errorStatus = "";
        public static string errorMessages = "";
        public static string sortMethod = "D";
        public static Size portraitSize = new Size(900, 1200);
        public static Size landscapeSize = new Size(1200, 900);
        public static string lastPath = "";
        public static string currentPath = AppDomain.CurrentDomain.BaseDirectory;
        public static string currentFormsPath = CommonRoutines.currentPath + "formfiles";
        public static string currentFormImagesPath = CommonRoutines.currentPath + "formimages";
        public static string tempPath = currentPath + "temp\\";

        public static ListBox messages = new ListBox();
        public static ListBox compileErrors = new ListBox();
        public static ToolStripStatusLabel  status = new ToolStripStatusLabel();
        public static string spaces = "                                                                                                     ";

        public static Cursor busyCursor = Cursors.WaitCursor;
        public static Cursor normalCursor = Cursors.Arrow;

        public static bool showGrid = false;

        // datagridview styles
        public static DataGridViewCellStyle cellStyleError = new DataGridViewCellStyle();

        public static PictureBox[] arrowPoints = new PictureBox[4];

        public static ToolStripProgressBar progressBar = null;
        public static ToolStripLabel progressStatus = null;
        public static ToolStripSeparator progessSeparator = null;

        [DllImport("kernel32.dll")]
        private static extern IntPtr GetCurrentProcess();

        [DllImport("user32.dll")]
        private static extern uint GetGuiResources(IntPtr hProcess, uint uiFlags);

        [System.Runtime.InteropServices.DllImport("Kernel32")]
        private extern static Boolean CloseHandle(IntPtr handle);

        public static frmProgress progressForm = new frmProgress();


        private enum ResourceType
        {
            Gdi = 0,
            User = 1
        }



        /// <summary>
        /// bool Ask(string question) 
        /// Ask a yes/no question
        /// </summary>
        /// <param name="question"></param>
        /// <returns></returns>
        public static bool Ask(string question)
        {
            bool _status = true;

            try
            {
                _status = (Ask(question, "Ask a question...") == DialogResult.Yes?true:false);

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".Ask(s) > " + ex.Message);
            }

            return _status;

        }




        /// <summary>
        /// DialogResult Ask(string question, string prompt) 
        /// Ask a yes/no question
        /// </summary>
        /// <param name="question"></param>
        /// <returns></returns>
        public static DialogResult Ask(string question, string prompt)
        {
            bool _status = true;
            DialogResult _result = new DialogResult();

            try
            {
                _result = MessageBox.Show(question, prompt, MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".Ask(s,s) > " + ex.Message);
            }

            return _result;

        }




        /// <summary>
        /// decimal ConvertToDecimal(String value) 
        /// Convert the passed value to a decimal
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static decimal ConvertToDecimal(String value)
        {
            decimal _value;

            try
            {
                _value = Convert.ToDecimal(value);
            }
            catch (Exception ex)
            {
                _value = 0;
                // do not log
            }

            return _value;

        }




        /// <summary>
        /// float ConvertToFloat(String value)
        /// Convert the passed value to a float
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static float ConvertToFloat(String value)
        {
            decimal _value;

            try
            {
                _value = Convert.ToDecimal(value);
            }
            catch (Exception ex)
            {
                _value = 0;
                // do not log
            }

            return (float)_value;

        }




        /// <summary>
        /// string ConvertCase(String value)
        /// Convert the passed value to a cased value
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string ConvertCase(String value)
        {
            string _value = "";
            bool _upper = true;

            try
            {
                for (int n = 0; n < value.Length; n++)
                {
                    string _char = value.Substring(n, 1).ToLower();
                    if (_char == "_")
                    {
                        // set upper
                        _upper = true;
                    }
                    else
                    {
                        if (_upper)
                        {
                            _char = _char.ToUpper();
                            _upper = false;
                        }
                        _value = _value + _char;
                    }

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ConvertCase > " + ex.Message);
            }

            return _value;

        }





        /// <summary>
        /// DateTime ConvertToDate(String value)
        /// Convert the passed value to a date
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static DateTime ConvertToDate(String value)
        {
            DateTime _value;

            try
            {
                _value = Convert.ToDateTime(value);
            }
            catch (Exception ex)
            {
                _value = DateTime.Today;
                // do not log
            }

            return _value;

        }




        /// <summary>
        /// string ConvertToString(object value)
        /// Convert the passed value to a string
        /// </summary>
        /// <param name="argobjValue"></param>
        /// <returns></returns>
        public static string ConvertToString(object value)
        {
            string _value = "";

            try
            {
                if (value == null)
                {
                    _value = "";
                }
                else
                {
                    _value = value.ToString();
                    // do not log
                }
            }
            catch (Exception ex)
            {
                _value = "";
            }

            return _value;

        }


        public static String ConvertIntToLetter(int number, bool isCaps)
        {
            string _value = "";

            try
            {
                Char c = (Char)((isCaps ? 65 : 97) + (number - 1));

                _value = c.ToString();
            }
            catch (Exception ex)
            {
                _value = "";
            }

            return _value;

        }


        /// <summary>
        /// string ConvertToChar(object value)
        /// Convert the passed value to an ascii (numeric) value in a string
        /// </summary>
        /// <param name="argobjValue"></param>
        /// <returns></returns>
        public static string ConvertToChar(object value)
        {
            string _value = "";

            try
            {
                if (value == null)
                {
                    _value = "0";
                }
                else
                {
                    _value = value.ToString();
                    if (_value == "")
                    {
                        _value = "0";
                    }
                    else
                    {
                        _value = _value.Substring(0, 1);
                        //LAP 20130424 - Convert char to int to get ascii code of char, then convert int to string, so string contains ascii code integer
                        char _char = Convert.ToChar(_value);
                        int _ascii = Convert.ToInt32(_char);
                        _value = _ascii.ToString();
                    }
                    // do not log
                }
            }
            catch (Exception ex)
            {
                _value = "0";
            }

            return _value;

        }



        /// <summary>
        /// double ConvertToDouble(String value)
        /// Convert the passed value to a double
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static double ConvertToDouble(String value)
        {
            double _value;

            try
            {
                _value = Convert.ToDouble(value);
            }
            catch (Exception ex)
            {
                _value = 0.00;
                // do not log
            }

            return _value;

        }





        /// <summary>
        /// int ConvertToInt(String value)
        /// Convert the passed value to an int
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static int ConvertToInt(String value)
        {
            string _passedValue = value;
            int _value;

            try
            {
                // does it have a period?
                if (_passedValue.IndexOf('.') == 0)
                {
                    _passedValue = "0";
                }
                else
                {
                    if (_passedValue.IndexOf('.') > 0)
                    {
                        _passedValue = _passedValue.Substring(0, _passedValue.IndexOf('.'));
                    }
                }

                _value = Convert.ToInt32(_passedValue);
            }
            catch (Exception ex)
            {
                _value = 0;
                // do not log
            }

            return _value;

        }





        /// <summary>
        /// int GetWholeNumber(String value)
        /// Return the whole number part of the passed value
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static int GetWholeNumber(String value)
        {
            int _value;
            decimal _decimalValue = ConvertToDecimal(value);

            try
            {
                _value = Convert.ToInt32(_decimalValue);
            }
            catch (Exception ex)
            {
                _value = 0;
                // do not log
            }

            return _value;

        }





        /// <summary>
        /// bool ConvertToBool(String value)
        /// Convert the passed value to a bool
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool ConvertToBool(String value)
        {
            bool _value;

            try
            {
                _value = Convert.ToBoolean(value);
            }
            catch (Exception ex)
            {
                _value = false;
                // do not log
            }

            return _value;

        }





        /// <summary>
        /// bool IsDate(String date)
        /// Indicates whether the supplied date string is a valid date
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        public static bool IsDate(String date)
        {
            DateTime _date;
            bool _status = true;

            // check it...
            try
            {
                _date = Convert.ToDateTime(date);
                _status = true;
            }
            catch (System.Exception ex)
            {
                _status = false;
                // do not log
            }

            return _status;

        }




        /// <summary>
        /// bool IsNumeric(String value)
        /// Indicates whether the supplied value is numeric
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsNumeric(String value)
        {
            Decimal _value = 0;
            bool _status = true;

            // check it...
            try
            {
                _value = Convert.ToDecimal(value);
                _status = true;
            }
            catch (Exception ex)
            {
                _status = false;
                // do not log
            }

            return _status;

        }




        /// <summary>
        /// bool AllNumeric(String value)
        /// Indicates whether the supplied value only contains numeric characters (0-9.+-/*)
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool AllNumeric(String value)
        {
            bool _status = true;

            // check it...
            try
            {
                string _value = value.Replace(" ", "");
                if (_value == "")
                {
                    _status = false;
                }
                else
                {
                    for (int n = 0; n < _value.Length; n++)
                    {
                        string _char = _value.Substring(n, 1);
                        if ("0123456789.+-/*()".IndexOf(_char) < 0)
                        {
                            _status = false;
                            break;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                _status = false;
                // do not log
            }

            return _status;

        }




        /// <summary>
        /// bool RenameFile(String fileName, String newFileName)
        /// Rename a file
        /// </summary>
        /// <param name="fileName"></param>
        /// <returns></returns>
        public static bool RenameFile(String fileName, String newFileName)
        {
            bool _status = true;

            try
            {
                // make sure the from file exists...
                if (FileExists(fileName))
                {
                    // see if the new name already exists...
                    if (FileExists(newFileName))
                    {
                        DisplayMessage("Sorry but the file " + newFileName + " already exists");
                        _status = false;
                    }
                    else
                    {
                        System.IO.File.Move(fileName, newFileName);
                    }
                }
                else
                {
                    DisplayMessage("Sorry but the file " + fileName + " does not exist");
                    _status = false;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".RenameFile > " + ex.Message);
                _status = false;
            }

            return _status;

        }




        public static bool DeleteAllFiles(string filePath)
        {
            bool _status = true;

            try
            {
                // get all the files
                List<string> _files = GetDirectoryFiles(filePath);
                for (int n = 0; n < _files.Count; n++)
                {
                    DeleteFile(_files[n], false, false);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DeleteAllFiles(s) > " + ex.Message);
                _status = false;
            }

            return _status;
        }





        /// <summary>
        /// bool DeleteFile(String fileName)
        /// Delete a file
        /// </summary>
        /// <param name="fileName"></param>
        /// <returns></returns>
        public static bool DeleteFile(String fileName)
        {
            bool _status = true;

            try
            {
                _status = DeleteFile(fileName, false, true);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DeleteFile(s) > " + ex.Message);
                _status = false;
            }

            return _status;

        }



        /// <summary>
        /// bool DeleteFile(String fileName)
        /// Delete a file
        /// </summary>
        /// <param name="fileName"></param>
        /// <returns></returns>
        public static bool DeleteFile(String fileName, bool logicalDelete, bool askFirst)
        {
            bool _status = true;

            try
            {
                // make sure the from file exists...
                if (FileExists(fileName))
                {
                    // make sure
                    bool _result = (askFirst) ? Ask("Are you sure you want to delete " + fileName) : true;
                    if (_result)
                    {
                        if (logicalDelete)
                        {
                            // just rename with a different extension
                            string _temp = GetTimestamp();
                            string _newName = fileName + "_" + _temp + ".del";
                            _status = RenameFile(fileName, _newName);
                        }
                        else
                        {
                            // move to the recycle bin using the VB utility
                            Microsoft.VisualBasic.FileIO.FileSystem.DeleteFile(fileName, 
                                                Microsoft.VisualBasic.FileIO.UIOption.OnlyErrorDialogs, 
                                                RecycleOption.SendToRecycleBin);
                            //System.IO.File.Delete(fileName);
                        }
                    }
                }
                else
                {
                    DisplayMessage("Sorry but the file " + fileName + " does not exist");
                    _status = false;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DeleteFile(s,b,b) > " + ex.Message);
                _status = false;
            }

            return _status;

        }





        /// <summary>
        /// List<string> ReadFile(String fileName)
        /// Read a file in and return an array of records
        /// </summary>
        /// <param name="fileName"></param>
        /// <returns></returns>
        public static List<string> ReadFile(String fileName)
        {
            List<string> _records = new List<string>();

            try
            {
                _records = ReadFile(fileName, 0);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ReadFile > " + ex.Message);
            }

            return _records;

        }





        /// <summary>
        /// List<string> ReadFile(String fileName, int numberOfLinesRead)
        /// Read a file in and return an array of records
        /// </summary>
        /// <param name="fileName"></param>
        /// <param name="numberOfLinesRead"></param>
        /// <returns></returns>
        public static List<string> ReadFile(String fileName, int numberOfLinesRead)
        {
            String _fileName = "";
            List<string> _records = new List<string>();
            int _numberOfLinesRead = 0;

            _fileName = fileName;

            // clear the array

            // Check to see if the file exists
            if (System.IO.File.Exists(_fileName))
            {
                // Open the file and read the records.
                try
                {
                    using (System.IO.StreamReader _streamReader = System.IO.File.OpenText(_fileName))
                    {
                        String strBuffer = "";
                        while ((strBuffer = _streamReader.ReadLine()) != null)
                        {
                            if (strBuffer.Trim().Length > 0)
                            {
                                _numberOfLinesRead++;
                                _records.Add(strBuffer);
                                if (numberOfLinesRead > 0 && _numberOfLinesRead >= numberOfLinesRead)
                                {
                                    break;
                                }
                            }

                        }

                        _streamReader.Close();
                    }
                }
                catch (Exception ex)
                {
                    CommonRoutines.Log("$E:" + moduleName + ".ReadFile(s,i): Error in read of file " + _fileName + " > " + ex.Message);
                    _records.Clear();
                }
            }
            else
            {
                CommonRoutines.Log("$E:" + moduleName + ".ReadFile(s,i): file " + _fileName + " not found");
            }

            return _records;

        }





        /// <summary>
        /// List<string> ConvertXMLToNameValuePairs(List<string> records)
        /// Convert the xml records passed to name=value pair records
        /// </summary>
        /// <param name="records"></param>
        /// <returns></returns>
        public static List<string> ConvertXMLToNameValuePairs(List<string> records)
        {
            List<string> _xmlRecords = new List<string>();
            string _entity = "";
            string _tag = "";
            string _value = "";
            int _start = 0;
            int _end = 0;
            int _length = 0;

            try
            {
                // walk the list
                foreach (string _record in records)
                {
                    // check for the header...
                    if (_record.ToUpper().IndexOf("<?XML") >= 0)
                    {
                        // skip
                    }
                    else
                    {
                        // check for the start of the tag
                        _start = _record.IndexOf('<');
                        // if not a <, get the next record
                        if (_start < 0)
                        {
                            continue;
                        }
                        while (_start < _record.Length)
                        {
                            if (_start >= 0)
                            {
                                _end = _record.IndexOf('>', _start);
                                if (_end > _start)
                                {
                                    _length = _end - _start - 1;
                                    // get the tag
                                    _tag = _record.Substring(_start + 1, _length);
                                    _entity = _tag;
                                    _start = _end;
                                    // find the ending tag
                                    string _endTag = "</" + _tag;
                                    _end = _record.ToUpper().IndexOf(_endTag.ToUpper(), _start);
                                    if (_end > _start)
                                    {
                                        _length = _end - _start - 1;
                                        _value = _record.Substring(_start + 1, _length);
                                        _entity = _entity + "=" + _value;
                                    }
                                    _xmlRecords.Add(_entity);
                                    _tag = "";
                                    _value = "";
                                    if (_end > 0)
                                    {
                                        _start = _end;
                                        // now find the end of the record
                                        _end = _record.IndexOf('>', _start);
                                        if (_end > _start)
                                        {
                                            _start = _end;
                                        }
                                    }
                                }
                                else
                                {
                                    _start++;
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ConvertXMLToNameValuePairs > " + ex.Message);
            }

            return _xmlRecords;

        }









        /// <summary>
        /// int WriteFile(string fileName, List<string> records)
        /// Save a file from an array of records
        /// </summary>
        /// <param name="fileName"></param>
        /// <param name="records"></param>
        /// <returns></returns>
        public static int WriteFile(string fileName, List<string> records)
        {
            String _fileName = "";
            bool _overWrite = true;
            int _recordsWritten = 0;

            _fileName = fileName;

            // is there a folder specified?
            if (_fileName.IndexOf('\\') < 0)
            {
                _fileName = currentPath + "\\" + _fileName;
            }

            // Check to see if the file exists
            if (System.IO.File.Exists(_fileName))
            {
                // overwrite it?
                _overWrite = true;
            }

            if (_overWrite)
            {
                // Open the file and write the records.
                try
                {
                    using (System.IO.FileStream _fileStream = System.IO.File.Create(_fileName))
                    {
                        for (int n = 0; n < records.Count; n++)
                        {
                            char[] achrChars = records[n].ToCharArray();

                            for (int m = 0; m < achrChars.Length; m++)
                            {
                                _fileStream.WriteByte((byte)achrChars[m]);
                            }

                            _fileStream.WriteByte((byte)'\r');
                            _fileStream.WriteByte((byte)'\n');

                            _recordsWritten++;
                        }

                        _fileStream.Close();
                    }
                }
                catch (Exception ex)
                {
                    CommonRoutines.Log("$E:" + moduleName + ".WriteFile > " + ex.Message);
                    _recordsWritten = -1;
                }
            }

            return _recordsWritten;

        }










        /// <summary>
        /// void Log(string argstrMessage)
        /// Log message out to the messages collection
        /// </summary>
        /// <param name="argstrMessage"></param>
        public static void Log(string argstrMessage)
        {
            string _msg = argstrMessage;
            string _msgType = "I";

            try
            {
                Log(argstrMessage, true);
            }
            catch (Exception ex)
            {
                // can't log it... display it
                MessageBox.Show(moduleName + ".Log(s) > failed trying to log error " + argstrMessage);
                MessageBox.Show(moduleName + ".Log(s) > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void Log(string argstrMessage)
        /// Log message out to the messages collection
        /// </summary>
        /// <param name="argstrMessage"></param>
        public static void Log(string message, bool writeToDatabase)
        {
            string _msg = message;
            string _msgType = "I";

            try
            {
                if (logFlag)
                {
                    if (writeLogToFile)
                    {
                        // fill in the timestamp
                        System.IO.File.AppendAllText(logFileName, GetTimestamp() + "  " + _msg + "\r\n");
                    }
                    if (writeToDatabase && writeLogToDatabase)
                    {
                        if (_msg.ToUpper().IndexOf("$E:") == 0)
                        {
                            _msgType = "E";
                            _msg = _msg.Substring(3);
                        }
                        // write to the application log 
                        DatabaseRoutines.LogToAppTable(_msgType, _msg);
                    }
                    if (messages != null)
                    {
                        messages.Items.Add(_msg);
                    }
                }
            }
            catch (Exception ex)
            {
                // can't log it... display it
                MessageBox.Show(moduleName + ".Log > failed trying to log error " + _msg);
                MessageBox.Show(moduleName + ".Log > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// string GetEXEName()
        /// Return the name of the running application
        /// </summary>
        /// <returns></returns>
        public static string GetEXEName()
        {
            string _appName = "";

            try
            {
                _appName = Application.ExecutablePath;
                int _index = _appName.LastIndexOf('\\');
                _appName = _appName.Substring(_index + 1);
                _index = _appName.IndexOf('.');
                _appName = _appName.Substring(0, _index);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetEXEName > " + ex.Message);
            }

            return _appName;
        }





        /// <summary>
        /// bool FileExists(string fileName)
        /// See if a file exists
        /// </summary>
        /// <param name="fileName"></param>
        /// <returns></returns>
        public static bool FileExists(string fileName)
        {
            bool _exists = false;

            try
            {
                _exists = System.IO.File.Exists(fileName);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".FileExists > " + ex.Message);
            }

            return _exists;

        }




        /// <summary>
        /// bool ErrorStatus()
        /// Returns the error flag if there are any errors
        /// </summary>
        /// <returns></returns>
        public static bool ErrorStatus()
        {
            bool _error = false;

            try
            {
                if (errorMessages.Length > 0)
                {
                    _error = true;
                }
                else
                {
                    _error = false;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ErrorStatus > " + ex.Message);
            }

            return _error;

        }





        /// <summary>
        /// void DisplayStatus(string msg)
        /// Display the message to the defined status object
        /// </summary>
        /// <param name="msg"></param>
        public static void DisplayStatus(string msg)
        {

            try
            {
                if (status != null)
                {
                    status.Text = msg;
                    Application.DoEvents();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayStatus(s) > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void DisplayStatus(string msg)
        /// Display the message to the defined status object
        /// </summary>
        /// <param name="msg"></param>
        public static void DisplayStatus(Control statusControl, string msg)
        {

            try
            {
                if (statusControl != null)
                {
                    // check type
                    string _controlType = statusControl.GetType().Name.ToUpper();

                    switch (_controlType)
                    {
                        case "LISTBOX":
                            ListBox _listBox = (ListBox)statusControl;
                            _listBox.Items.Add(msg);
                            break;

                        default:
                            statusControl.Text = msg;
                            Application.DoEvents();
                            break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayStatus(c,s) > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void DisplayStatus(string msg)
        /// Display the message to the defined status object
        /// </summary>
        /// <param name="msg"></param>
        public static void DisplayMessageStatus(string msg)
        {

            try
            {
                if (messages != null)
                {
                    messages.Items.Add(msg);
                    // go to the end
                    messages.SetSelected(messages.Items.Count - 1, true);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayMessageStatus(s) > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void DisplayInfomationalMessage(string msg)
        /// Display a dialog message for information only
        /// </summary>
        /// <param name="msg"></param>
        public static void DisplayInformationalMessage(string msg)
        {

            try
            {
                DialogResult result3 = MessageBox.Show(msg,
                                                    "Informational",
                                                    MessageBoxButtons.OK,
                                                    MessageBoxIcon.Information);

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayInformationalMessage > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void DisplayMessage(string msg)
        /// Display a dialog message 
        /// </summary>
        /// <param name="msg"></param>
        public static bool DisplayMessage(string msg)
        {
            string _msg = msg;
            DialogResult result3 = new DialogResult();
            bool _status = true;

            try
            {
                frmMessageBox _msgBox = new frmMessageBox(_msg);
                _msgBox.ShowDialog();

                _status = _msgBox.Status;

                _msgBox.Close();

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayMessage > " + ex.Message);
            }

            return _status;

        }



        /// <summary>
        /// void DisplayText(string msg)
        /// Display a dialog message 
        /// </summary>
        /// <param name="msg"></param>
        public static bool DisplayText(string msg, string caption)
        {
            string _msg = msg;
            DialogResult result3 = new DialogResult();
            bool _status = true;

            try
            {
                result3 = MessageBox.Show(_msg, caption);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayText > " + ex.Message);
            }

            return _status;

        }



        /// <summary>
        /// void DisplayErrorMessage(string msg)
        /// Display a dialog message 
        /// </summary>
        /// <param name="msg"></param>
        public static void DisplayErrorMessage(string msg)
        {
            string _msg = msg;
            DialogResult result3 = new DialogResult();

            try
            {
                frmMessageBox _msgBox = new frmMessageBox(_msg);
                _msgBox.ShowDialog();

                // set the global error message
                CommonRoutines.Log(msg);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DisplayErrorMessage > trying to display message " + msg);
                int _userHandles = GetHandleCount();
                CommonRoutines.Log("$E:" + moduleName + ".DisplayErrorMessage (Handles) > " + _userHandles.ToString());
                CommonRoutines.Log("$E:" + moduleName + ".DisplayErrorMessage > " + ex.Message);
                CommonRoutines.Log("$E:" + moduleName + ".DisplayErrorMessage (Exception) > " + ex.ToString());
                var _stackTrace = new System.Diagnostics.StackTrace(true);
                CommonRoutines.Log("$E:" + moduleName + ".DisplayErrorMessage (Stack) > " + _stackTrace.ToString());
            }

            return;

        }





        /// <summary>
        /// void LogError(string error)
        /// Log an error to the error messages string
        /// </summary>
        /// <param name="error"></param>
        public static void LogError(string error)
        {

            try
            {
                // check for special error codes
                if (error.ToUpper().Trim() == "CLEAR")
                {
                    errorMessages = "";
                }
                else
                {
                    if (errorMessages.IndexOf(error + ",") < 0)
                    {
                        errorMessages = errorMessages + error + ",";
                    }
                    if (logFlag)
                    {
                        if (writeLogToFile)
                        {
                            System.IO.File.AppendAllText(logFileName, error);
                        }
                        if (writeLogToDatabase)
                        {
                            // write to the system log 
                            DatabaseRoutines.LogToSysTable("E", error);
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".LogError > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// string ErrorMessages()
        /// Return the error messages
        /// </summary>
        /// <returns></returns>
        public static string ErrorMessages()
        {
            string strResult = "";

            try
            {
                strResult = errorMessages; 
                if (errorMessages.Length > 0)
                {
                    strResult = strResult.Substring(0, strResult.Length - 1);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ErrorMessages > " + ex.Message);
            }

            return strResult;

        }





        /// <summary>
        /// List<string> GetDirectoryFiles(string path)
        /// Get a list of the files in the passed path
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public static List<string> GetDirectoryFiles(string path)
        {
            List<string> _files = new List<string>();

            try
            {
                _files = GetDirectoryFiles(path, "*.*");

                _files.Sort();
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetDirectoryFiles(s) > " + ex.Message);
            }

            return _files;
        }






        /// <summary>
        /// List<string> GetDirectoryFilesByDate(string path, string filter)
        /// Return a list of files for a passed path orderd by date
        /// </summary>
        /// <param name="path"></param>
        /// <param name="filter"></param>
        /// <returns></returns>
        public static List<string> GetDirectoryFilesByDate(string path, string filter)
        {
            List<string> _files = new List<string>();

            try
            {
                string[] fileNames = Directory.GetFiles(path, filter);

                // Now read the creation time for each file
                DateTime[] creationTimes = new DateTime[fileNames.Length];
                for (int i = 0; i < fileNames.Length; i++)
                {
                    creationTimes[i] = new FileInfo(fileNames[i]).LastAccessTime;
                }

                // if sorted by date...
                if (sortMethod.ToUpper() == "D")
                {
                    // sort it
                    Array.Sort(creationTimes, fileNames);
                    // add the files in reverse order to get the most recent first
                    for (int i = fileNames.Length - 1; i >= 0; i--)
                    {
                        _files.Add(creationTimes[i] + "|" + fileNames[i]);
                    }
                }
                else
                {
                    // add the files in reverse order to get the most recent first
                    for (int i = 0; i < fileNames.Length; i++)
                    {
                        _files.Add(creationTimes[i] + "|" + fileNames[i]);
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetDirectoryFilesByDate > " + ex.Message);
            }

            return _files;

        }








        /// <summary>
        /// List<string> GetDirectoryFiles(string path, string filter)
        /// Get a list of files in a passed path for a specifid filter
        /// </summary>
        /// <param name="path"></param>
        /// <param name="filter"></param>
        /// <returns></returns>
        public static List<string> GetDirectoryFiles(string path, string filter)
        {
            List<string> _files = new List<string>();

            try
            {
                //string[] _allFiles = Directory.GetFiles(path, filter, System.IO.SearchOption.AllDirectories);

                List<string> _allFiles = GetFiles(path, filter);
                _files.AddRange(_allFiles);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetDirectoryFiles(s,s) > " + ex.Message);
            }

            return _files;
        }



        public static List<string> GetFiles(string path, string filter)
        {
            List<string> _files = new List<string>();
            List<string> _directories = new List<string>();

            try
            {
                // Process the list of files found in the directory. 
                string[] fileEntries = Directory.GetFiles(path, filter);
                foreach (string fileName in fileEntries)
                {
                    _files.Add(fileName);
                }

                // Recurse into subdirectories of this directory. 
                string[] subdirectoryEntries = Directory.GetDirectories(path);
                foreach (string subdirectory in subdirectoryEntries)
                {
                    List<string> _subDirectoryFiles = GetFiles(subdirectory, filter);
                    if (_subDirectoryFiles.Count > 0)
                    {
                        _files.AddRange(_subDirectoryFiles);
                    }
                    else
                    {
                        _files.Add(subdirectory);
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetFiles > " + ex.Message);
            }

            return _files;

        }



        /// <summary>
        /// string GetDirectory(string path)
        /// Get a list of the files in the passed path
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public static string GetDirectory(string path)
        {
            string _directory = "";
            FolderBrowserDialog _folderDialog = new FolderBrowserDialog();

            try
            {
                _folderDialog.SelectedPath = path;
                DialogResult _result = _folderDialog.ShowDialog();

                if (_result != DialogResult.OK)
                {
                    _directory = "";
                }
                else
                {
                    _directory = _folderDialog.SelectedPath;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetDirectory > " + ex.Message);
            }

            return _directory;
        }






        /// <summary>
        /// string GetDayOfWeek(string date)
        /// Get the day of the week for a passed date
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        public static string GetDayOfWeek(string date)
        {
            string _day = "";

            try
            {
                // is it a date?
                if (IsDate(date))
                {
                    _day = ConvertToDate(date).DayOfWeek.ToString();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetDayOfWeek > " + ex.Message);
            }

            return _day;
        }





        public static string GetDatePart(string argstrDate, string argstrPart)
        {
            string strValue = argstrDate;

            // make sure that the date is only a date
            if (strValue.IndexOf(' ') > 0)
            {
                strValue = strValue.Substring(0, strValue.IndexOf(' '));
            }

            // is it a date?
            if (IsDate(argstrDate))
            {
                switch (argstrPart.ToUpper())
                {
                    case "MONTH":
                        strValue = ConvertToDate(strValue).Month.ToString();
                        break;

                    case "MONTHNAME":
                        strValue = ConvertToDate(strValue).ToString("MMMMM");
                        break;

                    case "DAY":
                        strValue = ConvertToDate(strValue).Day.ToString();
                        break;

                    case "DAYOFWEEK":
                        strValue = ConvertToDate(strValue).ToString("DDDDD");
                        break;

                    case "YEAR":
                        strValue = ConvertToDate(strValue).Year.ToString();
                        break;

                    case "YY":
                        strValue = ConvertToDate(strValue).Year.ToString();
                        // now get the last 2
                        if (strValue.Length == 4)
                        {
                            strValue = strValue.Substring(2);
                        }
                        break;

                }
                
            }

            return strValue;
        }



        public static string GetYear(string argstrDate)
        {
            string strYear = "";

            // is it a date?
            if (IsDate(argstrDate))
            {
                strYear = ConvertToDate(argstrDate).Year.ToString();
            }

            return strYear;
        }



        public static string GetMonth(string argstrDate)
        {
            string strMonth = "";

            // is it a date?
            if (IsDate(argstrDate))
            {
                strMonth = ConvertToDate(argstrDate).Month.ToString();
            }

            return strMonth;
        }



        public static string GetDay(string argstrDate)
        {
            string strDay = "";

            // is it a date?
            if (IsDate(argstrDate))
            {
                strDay = ConvertToDate(argstrDate).Day.ToString();
            }

            return strDay;
        }





        /// <summary>
        /// string GetCurrentUser()
        /// Get the current logged on user
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentUser()
        {
            string _currentUser = "";
            try
            {
                _currentUser = WindowsIdentity.GetCurrent().Name;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetCurrentUser > " + ex.Message);
            }

            return _currentUser;

        }






        /// <summary>
        /// string GetComputerName()
        /// Get the computer name
        /// </summary>
        /// <returns></returns>
        public static string GetComputerName()
        {
            string _computerName = "";

            try
            {
                _computerName = System.Environment.MachineName;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetComputerName > " + ex.Message);
            }

            return _computerName;

        }






        /// <summary>
        /// string GetCurrentDate()
        /// Get the current date 
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentDate()
        {
            string _currentDate = "";

            try
            {
                _currentDate = DateTime.Now.Month.ToString().PadLeft(2, '0') + "/" + DateTime.Now.Day.ToString().PadLeft(2, '0') + "/" + DateTime.Now.Year;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetCurrentDate > " + ex.Message);
            }

            return _currentDate;
            
        }





        /// <summary>
        /// string GetCurrentMonth()
        /// Get the current month
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentMonth()
        {
            string _currentMonth = "";

            try
            {
                _currentMonth = DateTime.Now.Month.ToString().PadLeft(2, '0');
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetCurrentMonth > " + ex.Message);
            }

            return _currentMonth;

        }




        /// <summary>
        /// string GetCurrentDay()
        /// Get the current day
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentDay()
        {
            string _currentDay = "";

            try
            {
                _currentDay = DateTime.Now.Day.ToString().PadLeft(2, '0');
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetCurrentDay > " + ex.Message);
            }

            return _currentDay;

        }





        /// <summary>
        /// string GetCurrentYear()
        /// Get the current year
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentYear()
        {
            string _currentYear = "";

            try 
            {
                _currentYear = DateTime.Now.Year.ToString();
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetCurrentYear > " + ex.Message);
            }

            return _currentYear;

        }





        /// <summary>
        /// string GetCurrentTime()
        /// Get the current time
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentTime()
        {
            string _currentTime = "";

            try
            {
                _currentTime = DateTime.Now.Hour.ToString().PadLeft(2, '0') + ":" + DateTime.Now.Minute.ToString().PadLeft(2, '0') + ":" + DateTime.Now.Second.ToString().PadLeft(2, '0');
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetCurrentTime > " + ex.Message);
            }

            return _currentTime;

        }





        /// <summary>
        /// string GetCurrentDateTime()
        /// Get the current date and time
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentDateTime()
        {
            string _currentDateTime = "";

            try
            {
                _currentDateTime = GetCurrentDate() + "  " + DateTime.Now.Hour.ToString().PadLeft(2, '0') + ":" +
                                                             DateTime.Now.Minute.ToString().PadLeft(2, '0') + ":" +
                                                             DateTime.Now.Second.ToString().PadLeft(2, '0'); ;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetCurrentDateTime > " + ex.Message);
            }

            return _currentDateTime;

        }




        /// <summary>
        /// string GetTimestamp()
        /// Get the current date and time as a timestamp
        /// </summary>
        /// <returns></returns>
        public static string GetTimestamp()
        {
            string _timeStamp = "";

            try
            {
                _timeStamp = DateTime.Now.Year.ToString().PadLeft(4, '0') +
                            DateTime.Now.Month.ToString().PadLeft(2, '0') +
                            DateTime.Now.Day.ToString().PadLeft(2, '0') + "_" +
                            DateTime.Now.Hour.ToString().PadLeft(2, '0') + 
                            DateTime.Now.Minute.ToString().PadLeft(2, '0') + 
                            DateTime.Now.Second.ToString().PadLeft(2, '0') +
                            DateTime.Now.Millisecond.ToString().PadLeft(3, '0');
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetTimestamp > " + ex.Message);
            }

            return _timeStamp;

        }





        /// <summary>
        /// string GetFolder()
        /// Get a folder from the user
        /// </summary>
        /// <returns></returns>
        public static string GetFolder()
        {
            string _folder = "";

            try
            {
                FolderBrowserDialog _folderDialog = new FolderBrowserDialog();
                _folderDialog.ShowNewFolderButton = true;

                _folderDialog.SelectedPath = currentPath;

                _folderDialog.ShowDialog();

                if (_folderDialog.SelectedPath != "")
                {
                    _folder = _folderDialog.SelectedPath;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetFolder > " + ex.Message);
            }

            return _folder;

        }






        /// <summary>
        /// List<string> GetAllDirectoryFiles(string path)
        /// Get all files in a specific directory and all sub directories under it
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public static List<string> GetAllDirectoryFiles(string path)
        {
            List<string> _files = new List<string>();
            Stack<string> _stack = new Stack<string>();

            try
            {
                // Add initial directory.
                _stack.Push(path);

                // Continue while there are directories to process
                while (_stack.Count > 0)
                {
                    // Get the top directory
                    string _directory = _stack.Pop();

                    try
                    {
                        // Add all files at this directory to the result List.
                        _files.AddRange(Directory.GetFiles(_directory, "*.*"));

                        // Add all directories at this directory.
                        foreach (string _subDirectory in Directory.GetDirectories(_directory))
                        {
                            _stack.Push(_subDirectory);
                        }
                    }
                    catch
                    {
                        // Could not open the directory
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetAllDirectoryFiles > " + ex.Message);
            }

            return _files;
        }









        /// <summary>
        /// string GetFieldString(string[] fields)
        /// Convert an array of field names into a delimited string
        /// </summary>
        /// <param name="fields"></param>
        /// <returns></returns>
        public static string GetFieldString(string[] fields)
        {
            string _value = "";

            try
            {
                for (int n = 0; n < fields.Length; n++)
                {
                    _value = _value + fields[n] + "~";
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetFieldString > " + ex.Message);
            }

            return _value;
        }







        /// <summary>
        /// string GetRowValue(string fields, string values, string fieldName)
        /// Get the value in the position of the field name sent
        /// </summary>
        /// <param name="fields"></param>
        /// <param name="values"></param>
        /// <param name="fieldName"></param>
        /// <returns></returns>
        public static string GetRowValue(string fields, string values, string fieldName)
        {
            string _value = "";

            try
            {
                string[] _fields = fields.Split('~');
                string[] _values = values.Split('~');

                for (int n = 0; n < _fields.Length; n++)
                {
                    if (_fields[n].ToUpper() == fieldName.ToUpper())
                    {
                        _value = _values[n];
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetRowValue > " + ex.Message);
            }

            return _value;
        }




        /// <summary>
        /// string GetRowValue(string fields, string values, string fieldName)
        /// Get the value in the position of the field name sent
        /// </summary>
        /// <param name="fields"></param>
        /// <param name="values"></param>
        /// <param name="fieldName"></param>
        /// <returns></returns>
        public static string GetKeyValue(string nameValuePairs, string keyName, char delimiter)
        {
            string _value = "";
            char _delimiter = delimiter;

            try
            {
                if (_delimiter == null)
                {
                    _delimiter = ',';
                }

                string[] _nameValuePairs = nameValuePairs.ToUpper().Split(_delimiter);

                foreach (string _nameValuePair in _nameValuePairs)
                {
                    string[] _parts = _nameValuePair.Split('=');
                    if (_parts.Length > 0)
                    {
                        if (_parts[0] == keyName.ToUpper())
                        {
                            if (_parts.Length > 1)
                            {
                                _value = _parts[1];
                            }
                            else
                            {
                                _value = "";
                            }
                            break;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetKeyValue > " + ex.Message);
            }

            return _value;
        }






        /// <summary>
        /// string[] GetFirstRecordFields(string fileName)
        /// Get the fields row from the file
        /// </summary>
        /// <param name="fileName"></param>
        /// <returns></returns>
        public static string[] GetFirstRecordFields(string fileName)
        {
            string[] _fields = { };

            try
            {
                _fields = GetFirstRecordFields(fileName, "", "");
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetFirstRecordFields(s) > " + ex.Message);
            }

            return _fields;

        }






        /// <summary>
        /// string[] GetFirstRecordFields(string fileName, string delimiter, string separator)
        /// Get the first row in a file based on the delimiter and separator passed
        /// </summary>
        /// <param name="fileName"></param>
        /// <param name="delimiter"></param>
        /// <param name="separator"></param>
        /// <returns></returns>
        public static string[] GetFirstRecordFields(string fileName, string delimiter, string separator)
        {
            string[] _fields = { };

            try
            {
                string _delimiter = (delimiter == "") ? "," : delimiter;
                string _separator = (separator == "") ? "'" : separator;

                List<string> _firstRecord = ReadFile(fileName, 1);

                if (_firstRecord.Count > 0)
                {
                    _fields = _firstRecord[0].Split(_delimiter.ToCharArray()[0]);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetFirstRecordFields(s,s,s) > " + ex.Message);
            }

            return _fields;

        }







        /// <summary>
        /// string Replicate(string value, int number)
        /// Return a string that is the number of the value passed
        /// </summary>
        /// <param name="value"></param>
        /// <param name="number"></param>
        /// <returns></returns>
        public static string Replicate(string value, int number)
        {
            string _value = "";

            try
            {
                for (int n = 0; n < number; n++)
                {
                    _value = _value + value;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".Replicate > " + ex.Message);
            }

            return _value;
        }




        /// <summary>
        /// Image ResizeImage(Image image, Size size)
        /// Resize the passed image to the new size specified
        /// </summary>
        /// <param name="image"></param>
        /// <param name="size"></param>
        /// <returns></returns>
        public static Image ResizeImage(Image image, Size size)
        {
            Image _newImage = null;
            int _sourceWidth = 0;
            int _sourceHeight = 0;
            Size _newSize = new Size();

            try
            {
                _sourceWidth = image.Width;
                _sourceHeight = image.Height;

                if (size != null)
                {
                    _newSize = size;
                }
                else
                {
                    _newSize = portraitSize;
                }

                float _percent = 0;
                float _percentWidth = 0;
                float _percentHeight = 0;

                _percentWidth = ((float)_newSize.Width / (float)_sourceWidth);
                _percentHeight = ((float)_newSize.Height / (float)_sourceHeight);

                if (_percentHeight < _percentWidth)
                {
                    _percent = _percentHeight;
                }
                else
                {
                    _percent = _percentWidth;
                }

                int destWidth = (int)(_sourceWidth * _percent);
                int destHeight = (int)(_sourceHeight * _percent);

                Bitmap b = new Bitmap(destWidth, destHeight);
                Graphics g = Graphics.FromImage((Image)b);
                g.InterpolationMode = InterpolationMode.HighQualityBilinear;  //   .HighQualityBicubic;

                g.DrawImage(image, 0, 0, destWidth, destHeight);
                g.Dispose();

                _newImage = (Image)b;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ResizeImage > " + ex.Message);
            }

            return _newImage;

        }






        /// <summary>
        /// void SaveToJpeg(string path, Bitmap image, long quality)
        /// Save the passed image to a jpg file
        /// </summary>
        /// <param name="path"></param>
        /// <param name="image"></param>
        /// <param name="quality"></param>
        public static void SaveToJpeg(string path, Bitmap image, long quality)
        {

            try
            {
                image.Save(path);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".SaveToJpeg > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void Shell(string fileName, string progAndArgs)
        /// Execute the passed program with the parms supplied
        /// </summary>
        /// <param name="fileName"></param>
        /// <param name="progAndArgs"></param>
        public static void Shell(string fileName, string progAndArgs)
        {

            try
            {
                System.Diagnostics.Process _process = new System.Diagnostics.Process();
                _process.EnableRaisingEvents = false;
                _process.StartInfo.FileName = fileName;
                _process.StartInfo.Arguments = progAndArgs;
                _process.StartInfo.WindowStyle = ProcessWindowStyle.Maximized;
                _process.StartInfo.CreateNoWindow = true;
                _process.Start();
                IntPtr _handle = _process.MainWindowHandle;
                if (_handle != IntPtr.Zero)
                {
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".Shell > " + ex.Message);
            }

            return;

        }




        public static void OpenBrowser(string url, string queryDefString)
        {

            try
            {
                string _webpage = url;
                if (queryDefString != "")
                {
                    _webpage = _webpage + "?" + queryDefString;
                }
                Process.Start("IExplore.exe", _webpage);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".OpenBrowser > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// string[] Split(string buffer)
        /// Take a passed string and split it based on the default delimiter and separator
        /// </summary>
        /// <param name="buffer"></param>
        /// <returns></returns>
        public static string[] Split(string buffer)
        {
            string[] _elements = { };

            try
            {
                // load the import values
                string _delimiter = ConfigRoutines.GetSetting("ImportDelimiter");
                _delimiter = _delimiter == "" ? "," : _delimiter;

                string _separator = ConfigRoutines.GetSetting("ImportSeparator");
                _separator = _separator == "" ? "\"" : _separator;

                _elements = Split(buffer, _delimiter, _separator);

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".Split(s) > " + ex.Message);
            }

            return _elements;

        }







        /// <summary>
        /// string[] Split(string buffer, string delimiter)
        /// Take a passed string and split it based on the delimiter passed and the default separator
        /// </summary>
        /// <param name="buffer"></param>
        /// <returns></returns>
        public static string[] Split(string buffer, string delimiter)
        {
            string[] _elements = { };

            try
            {

                string _separator = ConfigRoutines.GetSetting("ImportSeparator");
                _separator = _separator == "" ? "\"" : _separator;

                _elements = Split(buffer, delimiter, _separator);

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".Split(s, s) > " + ex.Message);
            }

            return _elements;

        }







        /// <summary>
        /// string[] Split(string buffer, string delimiter, string separator)
        /// Take a passed string and split it based on the delimiter and the separator passed
        /// </summary>
        /// <param name="buffer"></param>
        /// <returns></returns>
        public static string[] Split(string buffer, string delimiter, string separator)
        {
            List<string> _parts = new List<string>();
            string _element = "";
            string[] _elements = { };
            bool _separatorFound = false;

            try
            {

                // walk the buffer looking for the delimiter to parse the string.  if the separator is found, ignore the delimiter until the separator is found again
                for (int n = 0; n < buffer.Length; n++)
                {
                    string _byte = buffer.Substring(n, 1);

                    if (_byte == delimiter)
                    {
                        // are we within a separated string?
                        if (_separatorFound)
                        {
                            // add it to the string 
                            _element = _element + _byte;
                        }
                        else
                        {
                            // add the element to the list
                            _parts.Add(_element.Trim());
                            _element = " ";
                        }
                    }
                    else
                    {
                        if (_byte == separator)
                        {
                            // ignore the separator and go to the next char
                            _separatorFound = !_separatorFound;
                        }
                        else
                        {
                            // add the byte to the element
                            _element = _element + _byte;
                        }
                    }
                }

                if (_element.Length > 0)
                {
                    // add the element to the list
                    _parts.Add(_element.Trim());
                }

                _elements = _parts.ToArray();

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".Split(s, s, s) > " + ex.Message);
            }

            return _elements;

        }








        /// <summary>
        /// DialogResult InputBox(string title, string promptText, ref string value)
        /// Show an input box for the user to enter a value
        /// </summary>
        /// <param name="title"></param>
        /// <param name="promptText"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static DialogResult InputBox(string title, string promptText, ref string value)
        {
            Form _form = new Form();
            Label _label = new Label();
            TextBox _textBox = new TextBox();
            Button _okButton = new Button();
            Button _cancelButton = new Button();
            DialogResult _dialogResult = new DialogResult();

            try
            {
                _form.Text = title;
                _label.Text = promptText;
                _textBox.Text = value;

                _okButton.Text = "OK";
                _cancelButton.Text = "Cancel";
                _okButton.DialogResult = DialogResult.OK;
                _cancelButton.DialogResult = DialogResult.Cancel;

                _form.ClientSize = new Size(900, 300);

                Font _font = new Font("Calibri", 12);
                _form.Font = _font;

                _label.SetBounds(9, 20, 500, 13);
                _label.Font = _font;
                _textBox.Multiline = true;
                _textBox.SetBounds(12, 40, 800, 200);
                _textBox.Font = _font;
                _cancelButton.SetBounds(800, 300 - 35, 75, 30);
                _cancelButton.Font = _font;
                _okButton.SetBounds(_cancelButton.Left - 100, _cancelButton.Top, 75, 30);
                _okButton.Font = _font;

                _label.AutoSize = true;
                _textBox.Anchor = _textBox.Anchor | AnchorStyles.Right;
                //_okButton.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
                //_cancelButton.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;

                _form.Controls.AddRange(new Control[] { _label, _textBox, _okButton, _cancelButton });
                //_form.ClientSize = new Size(Math.Max(300, _label.Right + 10), _form.ClientSize.Height);
                _form.FormBorderStyle = FormBorderStyle.FixedDialog;
                _form.StartPosition = FormStartPosition.CenterScreen;
                _form.MinimizeBox = false;
                _form.MaximizeBox = false;
                _form.AcceptButton = _okButton;
                _form.CancelButton = _cancelButton;

                _textBox.SelectionStart = 0;
                _textBox.SelectionLength = 0;

                _dialogResult = _form.ShowDialog();
                value = _textBox.Text;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".InputBox > " + ex.Message);
            }

            return _dialogResult;
        }






        public static DialogResult InputList(string title, string promptText, List<string> listValues, ref string value)
        {
            Form _form = new Form();
            Label _label = new Label();
            ListBox _listBox = new ListBox();
            Button _okButton = new Button();
            Button _cancelButton = new Button();
            DialogResult _dialogResult = new DialogResult();

            try
            {
                _form.Text = title;
                _label.Text = promptText;
                _listBox.Items.Clear();

                // load the list view from the list values
                for (int n = 0; n < listValues.Count; n++)
                {
                    _listBox.Items.Add(listValues[n]);
                }

                _okButton.Text = "OK";
                _cancelButton.Text = "Cancel";
                _okButton.DialogResult = DialogResult.OK;
                _cancelButton.DialogResult = DialogResult.Cancel;

                _form.ClientSize = new Size(900, 300);

                Font _font = new Font("Calibri", 12);
                _form.Font = _font;

                _label.SetBounds(9, 20, 500, 13);
                _label.Font = _font;
                
                _listBox.SetBounds(12, 40, 800, 200);
                _listBox.Font = _font;

                _cancelButton.SetBounds(800, 300 - 35, 75, 30);
                _cancelButton.Font = _font;
                _okButton.SetBounds(_cancelButton.Left - 100, _cancelButton.Top, 75, 30);
                _okButton.Font = _font;

                _label.AutoSize = true;
                _listBox.Anchor = _listBox.Anchor | AnchorStyles.Right;
                //_okButton.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
                //_cancelButton.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;

                _form.Controls.AddRange(new Control[] { _label, _listBox, _okButton, _cancelButton });
                //_form.ClientSize = new Size(Math.Max(300, _label.Right + 10), _form.ClientSize.Height);
                _form.FormBorderStyle = FormBorderStyle.FixedDialog;
                _form.StartPosition = FormStartPosition.CenterScreen;
                _form.MinimizeBox = false;
                _form.MaximizeBox = false;
                _form.AcceptButton = _okButton;
                _form.CancelButton = _cancelButton;

                _listBox.SelectedItems.Clear();

                _dialogResult = _form.ShowDialog();

                if (_listBox.SelectedItems.Count > 0)
                {
                    // get the selected item
                    value = _listBox.SelectedItem.ToString();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".InputBox > " + ex.Message);
            }

            return _dialogResult;
        }






        /// <summary>
        /// string OpenDialog(string extension, string filter)
        /// Present the open file dialog to select a file
        /// </summary>
        /// <param name="extension"></param>
        /// <param name="filter"></param>
        /// <returns></returns>
        public static string OpenDialog(string extension, string filter, string prompt)
        {
            string _fileName = "";

            try
            {
                _fileName = OpenDialog(lastPath, extension, filter, prompt);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".OpenDialog(s,s, s) > " + ex.Message);
            }

            return _fileName;

        }









        /// <summary>
        /// string OpenDialog(string path, string extension, string filter)
        /// Present the open file dialog to select a file
        /// </summary>
        /// <param name="path"></param>
        /// <param name="extension"></param>
        /// <param name="filter"></param>
        /// <returns></returns>
        public static string OpenDialog(string path, string extension, string filter, string prompt)
        {
            string _fileName = "";
            OpenFileDialog _openDialog = new OpenFileDialog();

            try
            {
                if (filter.Length > 0)
                {
                    _openDialog.Filter = filter;
                }
                else
                {
                    _openDialog.Filter = "All files (*.*)|*.*";
                }

                _openDialog.FilterIndex = 1;
                _openDialog.Title = prompt;
                _openDialog.DefaultExt = extension;
                _openDialog.FileName = (extension == "")?"*.*":"*." + extension;

                //LAP 20130513 - use path of previously selected file as initial directory
                lastPath = path.Length == 0 ? currentPath : System.IO.Path.GetDirectoryName(path);

                _openDialog.InitialDirectory = lastPath;
                DialogResult _result = _openDialog.ShowDialog();

                if (_result != DialogResult.OK)
                {
                    _fileName = "";
                }
                else
                {
                    _fileName = _openDialog.FileName;
                }

                int intOffset = _fileName.LastIndexOf('\\');
                if (intOffset > 0)
                {
                    lastPath = _fileName.Substring(0, intOffset);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".OpenDialog(s,s,s) > " + ex.Message);
            }

            return _fileName;
        }





        public static string SaveDialog(string extension, string filter)
        {
            string _fileName = "";
            SaveFileDialog _saveDialog = new SaveFileDialog();

            try
            {
                _fileName = SaveDialog(extension, filter, "");
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".SaveDialog(s,s) > " + ex.Message);
            }

            return _fileName;
        }



        /// <summary>
        /// string SaveDialog(string extension, string filter)
        /// Present the save file dialog to select a file
        /// </summary>
        /// <param name="extension"></param>
        /// <param name="filter"></param>
        /// <returns></returns>
        public static string SaveDialog(string extension, string filter, string fileName)
        {
            string _fileName = "";
            SaveFileDialog _saveDialog = new SaveFileDialog();

            try
            {
                if (filter.Length > 0)
                {
                    _saveDialog.Filter = filter;
                }
                else
                {
                    _saveDialog.Filter = "All files (*.*)|*.*";
                }

                _saveDialog.FilterIndex = 1;
                _saveDialog.DefaultExt = extension;
                if (fileName == "")
                {
                    _saveDialog.FileName = "*." + extension;
                }
                else
                {
                    _saveDialog.FileName = fileName;
                }

                if (lastPath.Length == 0)
                {
                    lastPath = currentPath;
                }

                _saveDialog.InitialDirectory = lastPath;
                DialogResult _result = _saveDialog.ShowDialog();
                if (_result == DialogResult.OK)
                {
                    _fileName = _saveDialog.FileName;

                    int intOffset = _fileName.LastIndexOf('\\');
                    if (intOffset > 0)
                    {
                        lastPath = _fileName.Substring(0, intOffset);
                    }
                }
                else
                {
                    _fileName = "";
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".SaveDialog(s,s) > " + ex.Message);
            }

            return _fileName;
        }




        static void _saveDialog_FileOk(object sender, System.ComponentModel.CancelEventArgs e)
        {
            throw new NotImplementedException();
        }






        /// <summary>
        /// void DrawLine(PictureBox pallet, Point source, Point target)
        /// Draw a line
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="source"></param>
        /// <param name="target"></param>
        public static void DrawLine(PictureBox pallet, Point source, Point target)
        {
            System.Drawing.Graphics _graphics;

            try
            {
                _graphics = pallet.CreateGraphics();

                Pen _pen = new Pen(System.Drawing.Color.Black, 4);

                _graphics.DrawLine(_pen, source.X, source.Y, target.X, target.Y);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DrawLine > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void ClearLine(PictureBox pallet, Point source, Point target)
        /// Clear a line
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="source"></param>
        /// <param name="target"></param>
        public static void ClearLine(PictureBox pallet, Point source, Point target)
        {
            System.Drawing.Graphics _graphics;

            try
            {
                _graphics = pallet.CreateGraphics();

                Pen _pen = new Pen(pallet.BackColor, 4);

                _graphics.DrawLine(_pen, source.X, source.Y, target.X, target.Y);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ClearLine > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void DrawText(Control pallet, string text, RectangleF rect)
        /// Draw the passed text at the location passed
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="text"></param>
        /// <param name="rect"></param>
        public static void DrawText(Control pallet, string text, RectangleF rect)
        {

            try
            {
                if (pallet.GetType().Name.ToUpper() == "PICTUREBOX")
                {
                    // see if the label is already there...
                    Label _textLabel = new Label();
                    _textLabel.Name = "TEXT";
                    if (!pallet.Controls.ContainsKey("TEXT"))
                    {
                        // add it
                        pallet.Controls.Add(_textLabel);
                    }
                    else
                    {
                        _textLabel = (Label) pallet.Controls["TEXT"];
                    }
                    _textLabel.Text = text;
                    _textLabel.TextAlign = ContentAlignment.BottomCenter;
                    //_textLabel.BackColor = Color.Transparent;
                    _textLabel.Height = 20;
                    _textLabel.Left = 0;
                    _textLabel.Top = pallet.Height - _textLabel.Height;
                    _textLabel.Width = pallet.Width;
                    _textLabel.Visible = true;

                    //StringFormat _format = new StringFormat();
                    //PictureBox _pallet = (PictureBox)pallet;
                    //Image _img = _pallet.Image;  // Image.FromFile(_pallet.ImageLocation);
                    //if (_img != null)
                    //{
                    //    // get the widget font
                    //    string _font = ConfigRoutines.GetSetting("WidgetFont");
                    //    if (_font == "")
                    //    {
                    //        _font = "Arial";
                    //    }
                    //    float fltFontSize = CommonRoutines.ConvertToFloat(ConfigRoutines.GetSetting("WidgetFontSize"));
                    //    if (fltFontSize == 0)
                    //    {
                    //        fltFontSize = 18;
                    //    }
                    //    Graphics _graphics = Graphics.FromImage(_img);
                    //    Pen _pen = new Pen(System.Drawing.Color.Black, 4);
                    //    Font _drawFont = new Font(_font, fltFontSize);
                    //    SolidBrush _drawBrush = new SolidBrush(Color.Black);
                    //    SolidBrush _clearBrush = new SolidBrush(Color.White);

                    //    _format.Alignment = StringAlignment.Center;

                    //    // clear the area
                    //    _graphics.FillRectangle(_clearBrush, rect);

                    //    //_graphics = pallet.CreateGraphics();
                    //    _graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;

                    //    _graphics.DrawString(text, _drawFont, _drawBrush, rect, _format);

                    //    _pallet.Image = _img;
                    //}
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DrawText > " + ex.Message);
            }

            return;

        }




        public static Image DrawGrid(PictureBox pallet, int gridPixelsPerPoint)
        {
            PictureBox _pallet = (PictureBox)pallet;
            Image _img = _pallet.Image;  // Image.FromFile(_pallet.ImageLocation);
            Bitmap _bmp = new Bitmap(pallet.Width, pallet.Height);
            string _imageFileName = "";

            try
            {
                if (_img == null)
                {
                    _img = (Image)_bmp;
                }

                if (_img != null)
                {
                    Graphics _graphics = Graphics.FromImage(_img);
                    Pen _pen = new Pen(System.Drawing.Color.Black, 1);
                    for (int n = 0; n < _img.Height; n += gridPixelsPerPoint)
                    {
                        for (int m = 0; m < _img.Width; m += gridPixelsPerPoint)
                        {
                            _graphics.DrawRectangle(_pen, new Rectangle(m, n, 1, 1));
                        }
                    }
                    showGrid = true;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".DrawGrid > " + ex.Message);
            }

            return _img;

        }



    
        /// <summary>
        /// void ClearArrow(PictureBox pallet, string[] points)
        /// Clear the arrows at all the points passed
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="points"></param>
        public static void ClearArrow(PictureBox pallet, string[] points)
        {

            try
            {
                if (points.Length == 4)
                {
                    // make some points from them in the format of x1,y1,x2,y2
                    int x1 = ConvertToInt(points[0]);
                    int y1 = ConvertToInt(points[1]);
                    int x2 = ConvertToInt(points[2]);
                    int y2 = ConvertToInt(points[3]);
                    ClearArrow(pallet, new Point(x1, y1), new Point(x2, y2));
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ClearArrow(p,s[]) > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void ClearArrow(PictureBox pallet, Control source, Control target)
        /// Clear the arrow from one control to another
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="source"></param>
        /// <param name="target"></param>
        public static void ClearArrow(PictureBox pallet, Control source, Control target)
        {

            try
            {
                // get the middle of the far right edge of the source
                int _sourceX = source.Left + source.Width;
                int _sourceY = source.Top + (source.Height / 2);
                // get the middle of the near left edge of the target
                int _targetX = target.Left;
                int _targetY = target.Top + (target.Height / 2);
                // draw a line
                CommonRoutines.ClearArrow(pallet, new Point(_sourceX, _sourceY), new Point(_targetX, _targetY));
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ClearArrow(p,c,c) > " + ex.Message);
            }

            return;

        }







        /// <summary>
        /// void ClearArrow(PictureBox pallet, Point source, Point target)
        /// Clear the arrow from one point to another
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="source"></param>
        /// <param name="target"></param>
        public static void ClearArrow(PictureBox pallet, Point source, Point target)
        {

            try
            {
                System.Drawing.Graphics _graphics;
                Pen _arrow = new Pen(pallet.BackColor, 12);
                Pen _pen = new Pen(pallet.BackColor, 12);

                _arrow.StartCap = System.Drawing.Drawing2D.LineCap.Round;
                _arrow.EndCap = System.Drawing.Drawing2D.LineCap.ArrowAnchor;

                _graphics = pallet.CreateGraphics();
                _graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;

                _graphics.DrawLine(_arrow, source.X - 3, source.Y - 3, target.X + 5, target.Y + 5);
                _graphics.DrawLine(_arrow, source.X + 3, source.Y + 3, target.X - 5, target.Y - 5);

                // clear a rectangle at each point
                Rectangle rect = new Rectangle(source.X, source.Y, source.X + 5, source.Y + 5);
                _graphics.DrawRectangle(_arrow, rect);

                rect = new Rectangle(target.X, target.Y, target.X + 5, target.Y + 5);
                _graphics.DrawRectangle(_arrow, rect);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ClearArrow(p,p,p) > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// int LoadGridFromFile(DataGridView grid, string fileName, string delimiter)
        /// Load a grid from the contents of the passed file
        /// </summary>
        /// <param name="grid"></param>
        /// <param name="fileName"></param>
        /// <param name="delimiter"></param>
        /// <returns></returns>
        public static int LoadGridFromFile(DataGridView grid, string fileName, string delimiter)
        {
            int _numRecs = 0;

            try
            {
                grid.Rows.Clear();
                grid.Columns.Clear();

                // read the file
                List<string> _recs = ReadFile(fileName);

                if (_recs.Count < 1)
                {
                    return -1;
                }

                char[] _chars = delimiter.ToCharArray();

                // assume that the first row are the headers
                string[] _headers = _recs[0].Split(_chars[0]);
                // resize the columns 
                int _colWidth = (grid.Width - 80) / _headers.Length;
                // create the columns based on the headers
                for (int n = 0; n < _headers.Length; n++)
                {
                    grid.Columns.Add(_headers[n], _headers[n]);
                    grid.Columns[grid.ColumnCount - 1].Width = _colWidth;
                }


                // now load the values
                for (int n = 1; n < _recs.Count; n++)
                {
                    object[] _parts = _recs[n].Split(_chars[0]);
                    grid.Rows.Add(_parts);
                }

                _numRecs = grid.RowCount;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".LoadGridFromFile > " + ex.Message);
            }

            return _numRecs;

        }






        /// <summary>
        /// void UpdateGridRowCells(DataGridView _grid)
        /// Update the columns for the passed grid
        /// </summary>
        /// <param name="_grid"></param>
        public static void UpdateGridRowCells(DataGridView _grid)
        {

            try
            {
                _grid.EndEdit();
                for (int n = 0; n < _grid.RowCount; n++)
                {
                    for (int m = 0; m < _grid.Columns.Count; m++)
                    {
                        _grid.UpdateCellValue(m, n);
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".UpdateGridRowCells > " + ex.Message);
            }

            return;

        }







        /// <summary>
        /// void ShowGridResults(List<string[]> _results)
        /// Update the columns for the passed grid
        /// </summary>
        /// <param name="_results"></param>
        public static void ShowGridResults(List<string[]> results)
        {

            try
            {
                if (results.Count > 0)
                {
                    int _numRows = results.Count;

                    // only show the first 1000...
                    if (_numRows > 1000)
                    {
                        DisplayInformationalMessage("More than 1000 rows were selected, only showing the first 1000.");
                        _numRows = 1000;
                    }

                    // clear the input records
                    CSA.inputRecords.Clear();

                    for (int n=0;n<_numRows;n++)
                    {
                        string[] _values = results[n];
                        string _record = "";
                        for (int m = 0; m < _values.Length; m++)
                        {
                            _record = _record + _values[m] + "~";
                        }
                        CSA.inputRecords.Add(_record);
                    }
					
                }

                // if there are records, add them to the grid
                if (CSA.inputRecords.Count > 0)
                {
                    frmGrid _formGrid = new frmGrid();
                    _formGrid.Records = CSA.inputRecords;
                    _formGrid.ShowDialog();
                    _formGrid.Dispose();
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ShowGridResults > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void LoadGridWithResults(List<string[]> results)
        /// Load the passed grid with the resultset
        /// </summary>
        /// <param name="_results"></param>
        public static void LoadGridWithResults(DataGridView grid, List<string[]> results)
        {

            try
            {
                if (results.Count > 0)
                {
                    grid.Rows.Clear();
                    grid.Columns.Clear();

                    // first record should be the field names
                    string[] _fieldNames = results[0];

                    foreach (string _fieldName in _fieldNames)
                    {
                        if (_fieldName != "")
                        {
                            // add a column 
                            grid.Columns.Add(_fieldName, _fieldName.Replace('_', ' '));
                        }
                    }

                    for (int n = 1; n < results.Count; n++)
                    {
                        string[] _fields = results[n];
                        grid.Rows.Add(_fields);
                    }

                    grid.AutoResizeColumns();

                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".LoadGridWithResults > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// int ExtractToCSV(string sql, string fileName, string delimiter, string separator)
        /// Execute the passed sql and write it out to a file
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="fileName"></param>
        /// <param name="delimiter"></param>
        /// <param name="separator"></param>
        /// <returns></returns>
        public static int ExtractToCSV(string sql, string fileName, string delimiter, string separator)
        {
            int _numRows = 0;
            List<string[]> _rows = new List<string[]>();
            List<string> _recs = new List<string>();

            try
            {
                _rows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, sql);

                if (_rows.Count > 0)
                {
                    // output to the file
                    foreach (string[] _row in _rows)
                    {
                        string _rec = "";
                        for (int n = 0; n < _row.Length; n++)
                        {
                            _rec = _rec + separator + _row[n].Trim() + separator + delimiter;
                        }
                        _recs.Add(_rec);
                    }

                    _numRows = WriteFile(fileName, _recs);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ExtractToCSV > " + ex.Message);
            }

            return _numRows;

        }





        /// <summary>
        /// int ExtractToCSV(List<string[]> rows, string fileName, string delimiter, string separator)
        /// Write the passed rows out to a file
        /// </summary>
        /// <param name="rows"></param>
        /// <param name="fileName"></param>
        /// <param name="delimiter"></param>
        /// <param name="separator"></param>
        /// <returns></returns>
        public static int ExtractToCSV(List<string[]> rows, string fileName, string delimiter, string separator)
        {
            int _numRows = 0;
            List<string[]> _rows = rows;
            List<string> _recs = new List<string>();

            try
            {
                if (_rows.Count > 0)
                {
                    // output to the file
                    foreach (string[] _row in _rows)
                    {
                        string _rec = "";
                        for (int n = 0; n < _row.Length; n++)
                        {
                            _rec = _rec + separator + _row[n].Trim() + separator + delimiter;
                        }
                        _recs.Add(_rec);
                    }

                    _numRows = WriteFile(fileName, _recs);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ExtractToCSV > " + ex.Message);
            }

            return _numRows;

        }




        public static Image CreateHalo(PictureBox pallet, Color statusColor)
        {
            Image _newImage = null;
            Image _palletImage = null;
            int _lineWidth = 40;
            Color _lineColor = statusColor;

            try
            {
                // get the image
                _palletImage = pallet.Image;

                // determine the color of the pen from the status of the widget

                Rectangle _imageRect = new Rectangle(0, 0, _palletImage.Width, _palletImage.Height);

                // put a halo around it
                Graphics _graphic = Graphics.FromImage(_palletImage);
                Pen _pen = new Pen(_lineColor,_lineWidth);

                //// top
                //_graphic.DrawLine(_pen, new Point(0, 0), new Point(_palletImage.Width, 0));
                //// bottom
                //_graphic.DrawLine(_pen, new Point(0, _palletImage.Height - _lineWidth), new Point(_palletImage.Width, _palletImage.Height - _lineWidth));
                //// left
                //_graphic.DrawLine(_pen, new Point(0, 0), new Point(0, _palletImage.Height));
                //// right
                //_graphic.DrawLine(_pen, new Point(_palletImage.Width - _lineWidth, 0), new Point(_palletImage.Width - _lineWidth, _palletImage.Height));

                _graphic.DrawRectangle(_pen, _imageRect);

                // set the image
                pallet.Image = _palletImage;
                pallet.Refresh();

                // set the new image
                _newImage = _palletImage;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".CreateHalo > " + ex.Message);
            }


            return _newImage;

        }





        /// <summary>
        /// string CreateBitmapFromPallet(PictureBox pallet, string title)
        /// Create a bitmap from the pallet and all of its controls 
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="title"></param>
        /// <returns></returns>
        public static string CreateBitmapFromPallet(PictureBox pallet, string title)
        {
            string _fileName = "";

            try
            {
                _fileName = CreateBitmapFromPallet(pallet, title, "");
            }
            catch (Exception ex)
            {
                _fileName = "";
            }

            return _fileName;

        }



        /// <summary>
        /// string CreateBitmapFromPallet(PictureBox pallet, string title)
        /// Create a bitmap from the pallet and all of its controls 
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="title"></param>
        /// <returns></returns>
        public static string CreateBitmapFromPallet(PictureBox pallet, string title, string saveToFileName)
        {
            // get the image for the current form
            Bitmap _bitmap = null;
            float _fieldTop = 0;
            float _fieldLeft = 0;
            float _fieldWidth = 0;
            float _fieldHeight = 0;
            string _value = "";
            string _font = "";
            float _fontSize = 0;
            float _factorX = 1.35F;
            float _factorY = 1.20F;
            Pen _pen = new Pen(Brushes.Black);
            int _index = 0;
            string _imageFileName = saveToFileName;
            bool _createImage = false;
            string _defaultFont = "Microsoft Sans Serif";
            int _printLeftOffset = 0;
            int _printTopOffset = 0;

            try
            {
                int _maxWidth = 0;
                int _maxHeight = 0;
                int _minWidth = pallet.Width;
                int _minHeight = pallet.Height;

                // determine the furthest right and the furthest down of the controls
                foreach (Control _control in pallet.Controls)
                {
                    if ((_control.Left + _control.Width) > _maxWidth)
                    {
                        _maxWidth = _control.Left + _control.Width;
                    }

                    if ((_control.Top + _control.Height) > _maxHeight)
                    {
                        _maxHeight = _control.Top + _control.Height;
                    }

                    if (_control.Left < _minWidth)
                    {
                        _minWidth = _control.Left;
                    }

                    if (_control.Top < _minHeight)
                    {
                        _minHeight = _control.Top;
                    }

                }

                if (_maxWidth < 1)
                {
                    _maxWidth = pallet.Width;
                }

                if (_maxHeight < 1)
                {
                    _maxHeight = pallet.Height;
                }

                if (_minWidth < 1)
                {
                    _minWidth = 40;
                }

                if (_minHeight < 1)
                {
                    _minHeight = 40;
                }

                if (pallet.Image != null)
                {
                    _bitmap = new Bitmap((Bitmap)pallet.Image);
                }
                else
                {
                    _bitmap = new Bitmap(_maxWidth + _minWidth, _maxHeight + _minHeight);
                }

                Graphics _graphic = Graphics.FromImage(_bitmap);

                // walk the controls and draw to the image
                foreach (Control _control in pallet.Controls)
                {
                    IGenField _igenFieldObject = null;
                    if (_control.Tag != null && _control.Tag.GetType().Name.ToUpper() == "IGENFIELD")
                    {
                        _igenFieldObject = (IGenField)_control.Tag;
                    }

                    string strType = _control.GetType().Name.ToUpper();

                    switch (strType)
                    {
                        case "PICTUREBOX":
                            // draw the image at the location
                            PictureBox _pic = (PictureBox) _control;
                            _fieldLeft = _pic.Left + _printLeftOffset;
                            _fieldTop = _pic.Top + _printTopOffset;
                            _fieldHeight = _pic.Height;
                            _fieldWidth = _pic.Width;
                            Image _picImage = ResizeImage(_pic.Image, new Size(_pic.Width, _pic.Height));
                            _graphic.DrawImage(_picImage, new PointF(_fieldLeft, _fieldTop));
                            break;

                        case "BUTTON":
                        case "IMAGEBUTTON":
                            break;

                        default:
                            if (_igenFieldObject.visible)
                            {
                                _fieldLeft = _control.Left + _printLeftOffset + _factorX;
                                _fieldTop = _control.Top + _printTopOffset + _factorY;
                                _fieldHeight = _control.Height + _factorY;
                                _fieldWidth = _control.Width + _factorX;
                                _fontSize = (float)_control.Font.Size;
                                _font = _control.Font.Name;
                                _value = _control.Text;
                                StringFormat objFormat = new StringFormat(StringFormatFlags.NoWrap);
                                objFormat.Alignment = StringAlignment.Near;
                                Rectangle objRect = new Rectangle((int)_fieldLeft, (int)_fieldTop, (int)_fieldWidth, (int)_fieldHeight);

                                if (_igenFieldObject != null)
                                {
                                    // check alignment
                                    switch (_igenFieldObject.alignment.ToUpper())
                                    {
                                        case "LEFT":
                                            objFormat.Alignment = StringAlignment.Near;
                                            break;

                                        case "CENTER":
                                            objFormat.Alignment = StringAlignment.Center;
                                            break;

                                        case "RIGHT":
                                            objFormat.Alignment = StringAlignment.Far;
                                            break;
                                    }

                                    // clear the rectangle where it will be printed
                                    Pen _opaquePen = new Pen(Color.White);
                                    _graphic.DrawRectangle(_opaquePen, objRect);
                                }

                                _graphic.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;
                                _graphic.DrawString(_value, new Font(_font, _fontSize), Brushes.Black, objRect, objFormat);
                            }
                            break;

                    }
                }

                if (title != "")
                {
                    // write the name of the pallet at the top
                    _fontSize = (float)36;
                    _font = "Calibri";
                    _value = title;
                    StringFormat objFormat = new StringFormat(StringFormatFlags.NoWrap);
                    objFormat.Alignment = StringAlignment.Center;
                    Rectangle objRect = new Rectangle(0, 0, _maxWidth + _minWidth, _maxHeight + _minHeight);
                    _graphic.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;
                    _graphic.DrawString(_value, new Font(_font, _fontSize), Brushes.Black, objRect, objFormat);
                }

                _createImage = true;
            }
            catch (Exception ex2)
            {
                _createImage = false;
            }


            if (_createImage)
            {
                try
                {
                    // now write it out to the image folder
                    // convert the bitmap to a jpg
                    if (_imageFileName == "")
                    {
                        string strTime = DateTime.Now.Hour.ToString() + "_" +
                                         DateTime.Now.Minute.ToString() + "_" +
                                         DateTime.Now.Second.ToString() + "_" +
                                         DateTime.Now.Millisecond.ToString();
                        _imageFileName = CommonRoutines.currentPath + "\\temp\\print_" + strTime + ".png";
                    }
                    _bitmap.Save(_imageFileName);
                }
                catch (Exception ex)
                {
                    CommonRoutines.Log("$E:" + moduleName + ".CreateBitmapFromPallet > " + ex.Message);
                    _imageFileName = "";
                }

            }

            return _imageFileName;
        }








        /// <summary>
        /// string ResolveSymbolics(string value)
        /// Replace any symbolic variables with their resolved values
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string ResolveSymbolics(string value)
        {
            string _newValue = value;

            try
            {
                // "%CURRENT_DATE%","%MONTH%","%DAY%","%YEAR%","%CURRENT_TIME%","%COMPUTER_NAME%","%CURRENT_USER%"

                _newValue = _newValue.Replace("%CURRENT_DATE%", GetCurrentDate());
                _newValue = _newValue.Replace("%MONTH%", GetCurrentMonth());
                _newValue = _newValue.Replace("%DAY%", GetCurrentDay());
                _newValue = _newValue.Replace("%YEAR%", GetCurrentYear());
                _newValue = _newValue.Replace("%CURRENT_TIME%", GetCurrentTime());
                _newValue = _newValue.Replace("%COMPUTER_NAME%", GetComputerName());
                _newValue = _newValue.Replace("%CURRENT_USER%", GetCurrentUser());
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ResolveSymbolics > " + ex.Message);
            }

            return _newValue;

        }




        /// <summary>
        /// string ResolveValue(string value)
        /// Replace any variables with their resolved values
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string ResolveValue(string value)
        {
            string _newValue = value;
            string[] _fieldNames = { };
            string[] _fieldValues = { };

            try
            {
                _newValue = ResolveValue(_newValue, _fieldNames, _fieldValues);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ResolveValue(s) > " + ex.Message);
            }

            return _newValue;

        }







        /// <summary>
        /// string ResolveValue(string value)
        /// Replace any variables with their resolved values
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string ResolveValue(string value, string[] fieldNames, string[] fieldValues)
        {
            string _newValue = value;

            try
            {
                _newValue = CommonRoutines.ResolveSymbolics(_newValue);

                // check to see if a literal
                if (CommonRoutines.IsNumeric(_newValue))
                {
                    // return the number
                }
                else
                {
                    // is it a literal?
                    _newValue = _newValue.Trim();
                    if (_newValue.Length > 2)
                    {
                        if (_newValue.IndexOf("'") == 0 && _newValue.LastIndexOf("'") == _newValue.Length - 1)
                        {
                            // a literal, return
                        }
                        else
                        {
                            // is the first char an =?
                            if (_newValue.Substring(0, 1) == "=")
                            {
                                _newValue = _newValue.Substring(1);
                            }
                            // now resolve it from the fields passed
                            if (fieldNames.Length > 0)
                            {
                                // find field that have [] around them
                                int _startBracket = _newValue.IndexOf('[');
                                while (_startBracket >= 0)
                                {
                                    int _endBracket = _newValue.IndexOf(']');
                                    if (_endBracket > _startBracket)
                                    {
                                        // get the field
                                        string _field = _newValue.Substring(_startBracket + 1, (_endBracket - _startBracket - 1));
                                        // find the field
                                        for (int n = 0; n < fieldNames.Length; n++)
                                        {
                                            if (_field.ToUpper() == fieldNames[n].ToUpper())
                                            {
                                                // replace the field with the value
                                                string _fieldValue = fieldValues[n];
                                                _newValue = _newValue.Substring(0, _startBracket) + _fieldValue + _newValue.Substring(_endBracket + 1);
                                            }
                                        }
                                    }
                                    _startBracket = _newValue.IndexOf('[');
                                }
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ResolveValue(s, s[], s[]) > " + ex.Message);
            }

            return _newValue;

        }





        /// <summary>
        /// void SetToolBarCaptions(ToolStrip toolBar)
        /// Show the captions of the toolbar passed based on the flag in the config file
        /// </summary>
        /// <param name="toolBar"></param>
        public static void SetToolBarCaptions(ToolStrip toolBar)
        {

            try
            {
                // set the captions on the toolbar
                bool _showCaptionsOnToolbars = ConfigRoutines.GetSetting("ShowCaptionsOnToolbars").ToUpper() == "TRUE" ? true : false;

                // go thru and set the captions
                for (int n = 0; n < toolBar.Items.Count; n++)
                {
                    if (_showCaptionsOnToolbars)
                    {
                        toolBar.Items[n].DisplayStyle = ToolStripItemDisplayStyle.ImageAndText;
                    }
                    else
                    {
                        toolBar.Items[n].DisplayStyle = ToolStripItemDisplayStyle.Image;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".SetToolBarCaptions > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// Control CreateControlOfType(string type)
        /// Return a control of the passed type
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public static Control CreateControlOfType(string type)
        {
            Control _control = new PictureBox();

            try
            {
                switch (type.ToUpper())
                {
                    case "TEXTBOX":
                        _control = new TextBox();
                        TextBox _textBox = (TextBox)_control;
                        //_textBox.Multiline = true;
                        break;

                    case "LABEL":
                        _control = new Label();
                        break;

                    case "BUTTON":
                        _control = new Button();
                        break;

                    case "CHECKBOX":
                        _control = new CheckBox();
                        break;

                    case "COMBOBOX":
                        _control = new ComboBox();
                        break;

                    case "LISTBOX":
                        _control = new ListBox();
                        break;

                    case "FRAME":
                        _control = new GroupBox();
                        break;

                    case "HYPERLINK":
                        break;

                    case "BOX":
                        break;

                    case "LINE":
                        break;

                    case "OPTION":
                        _control = new RadioButton();
                        break;

                    case "PICTUREBOX":
                        _control = new PictureBox();
                        break;

                    case "TABS":
                        _control = new TabControl();
                        break;

                    case "BROWSER":
                        _control = new WebBrowser();
                        break;

                    case "PANEL":
                        _control = new Panel();
                        break;

                    default:
                        _control = new PictureBox();
                        break;

                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreateTypeObject > " + ex.Message);
            }

            return _control;

        }






        /// <summary>
        /// void SetFormCursor(Form form, Cursor cursor)
        /// Set the form cursor
        /// </summary>
        /// <param name="form"></param>
        /// <param name="cursor"></param>
        public static void SetFormCursor(Form form, Cursor cursor)
        {

            try 
            {
                if (form != null)
                {
                    form.Cursor = cursor;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetFormCursor > " + ex.Message);
            }

            return;
        }






        /// <summary>
        /// void ShowBusyCursor(Form form)
        /// Show the form busy
        /// </summary>
        /// <param name="form"></param>
        public static void ShowBusyCursor(Form form)
        {

            try
            {
                if (form != null)
                {
                    form.Cursor = busyCursor;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ShowBusyCursor > " + ex.Message);
            }

            return;
        }



        /// <summary>
        /// void ShowNormalCursor(Form form)
        /// Show the form normal
        /// </summary>
        /// <param name="form"></param>
        public static void ShowNormalCursor(Form form)
        {

            try
            {
                if (form != null)
                {
                    form.Cursor = normalCursor;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ShowNormalCursor > " + ex.Message);
            }

            return;
        }





        /// <summary>
        /// List<string[]> SortListArray(List<string[]> listArray, int sortByOrdinal)
        /// Sort a passed list of an array
        /// </summary>
        /// <param name="listArray"></param>
        /// <param name="sortByOrdinal"></param>
        /// <returns></returns>
        public static List<string[]> SortListArray(List<string[]> listArray, int sortByOrdinal)
        {
            List<string> _listString = new List<string>();
            List<string[]> _listArray = new List<string[]>();

            try
            {
                // flatten the array to a string
                foreach (string[] _entry in listArray)
                {
                    string _temp = "";
                    for (int n = 0; n < _entry.Length; n++)
                    {
                        _temp = _temp + _entry[n] + "~";
                    }
                    // add to the list
                    _listString.Add(_temp);
                }

                // sort the passed string array by the ordinal
                _listString.Sort(StringComparer.OrdinalIgnoreCase);

                // now parse back out
                foreach (string _entry in _listString)
                {
                    string[] _parts = _entry.Split('~');
                    _listArray.Add(_parts);
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SortListArray > " + ex.Message);
            }

            return _listArray;
        }




        public static void LoadArrowPointImages()
        {

            try 
            {
                // load the pictures
                arrowPoints[0] = new PictureBox();
                arrowPoints[0].Image = (Image) Properties.Resources.ARW08UP;

                arrowPoints[1] = new PictureBox();
                arrowPoints[1].Image = (Image)Properties.Resources.ARW08RT;

                arrowPoints[2] = new PictureBox();
                arrowPoints[2].Image = (Image)Properties.Resources.ARW08DN;

                arrowPoints[3] = new PictureBox();
                arrowPoints[3].Image = (Image)Properties.Resources.ARW08LT;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadArrowPointImages > " + ex.Message);
            }

            return;


        }




        public static bool CopyFile(string fromFileName, string toFileName)
        {
            bool _status = false;

            try
            {
                if (FileExists(fromFileName))
                {
                    System.IO.File.Copy(fromFileName, toFileName);
                    _status = true;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CopyFile > " + ex.Message);
            }

            return _status;

        }




        /// <summary>
        /// static void ShowProgress(int minValue, int maxValue, int presentValue, string status)
        /// Display progress and status in toolbar of main form
        /// </summary>
        /// <param name="minValue"></param>
        /// <param name="maxValue"></param>
        /// <param name="presentValue"></param>
        /// <param name="status"></param>
        /// <returns></returns>
        public static void ShowProgress(int minValue, int maxValue, int presentValue, string status)
        {

            try
            {
                if (progressBar != null)
                {
                    //if the progress toolbar items are not visible, make them visible
                    if (!progressBar.Visible || !progressStatus.Visible || !progessSeparator.Visible)
                    {
                        progressBar.Visible = true;
                        progressStatus.Visible = true;
                        progessSeparator.Visible = true;
                    }

                    progressBar.Minimum = minValue;
                    progressBar.Maximum = maxValue;
                    progressBar.Value = presentValue;

                    progressStatus.Text = status;

                    Application.DoEvents();
                }
                else
                {
                    // show the progress form
                    if (progressForm == null)
                    {
                        progressForm = new frmProgress();
                        progressForm.StartPosition = FormStartPosition.CenterScreen;
                    }
                    progressForm.MinValue = minValue;
                    progressForm.MaxValue = maxValue;
                    progressForm.Pct = presentValue;
                    progressForm.Show();
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ShowProgress > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// static void HideProgress()
        /// Hide  progress and status in toolbar of main form
        /// </summary>
        /// <returns></returns>
        public static void HideProgress()
        {
            try
            {
                if (progressBar != null)
                {
                    //clear previous values
                    progressBar.Minimum = 0;
                    progressBar.Maximum = 0;
                    progressBar.Value = 0;
                    progressStatus.Text = String.Empty;

                    progressBar.Visible = false;
                    progressStatus.Visible = false;
                    progessSeparator.Visible = false;
                }
                else
                {
                    if (progressForm != null)
                    {
                        progressForm.Close();
                        progressForm = null;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".HideProgress > " + ex.Message);
            }

            return;

        }




        public static void StopOperation(string message)
        {
            DialogResult _result = new DialogResult();
            string _message = message;

            try
            {
                if (_message == "")
                {
                    _message = "Stop current operation";
                }

                _result = Ask("Do you wish to stop the current operation?", _message);

                if (_result == DialogResult.OK || _result == DialogResult.Yes)
                {
                    CSA.continueOperation = false;
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".StopOperation > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// bool ValidateComboBox(ComboBox cbo)
        /// Sets properties of cbo to inidicate if cbo is invalid
        /// </summary>
        /// <param name="cbo"></param>
        /// <returns>bool</returns>
        public static bool ValidateComboBox(ref ComboBox cbo, bool allowEmptyString)
        {

            bool _return = false;
            string _colorName = ConfigRoutines.GetSetting("ColorForInvalidValue").Trim();
            Color _backColor = System.Drawing.Color.White;

            try
            {

                if (cbo != null)
                {
                    if (cbo.DropDownStyle == ComboBoxStyle.DropDownList)
                    {
                        _backColor = System.Drawing.SystemColors.ButtonFace;
                    }

                    if (!allowEmptyString && cbo.Text == String.Empty)
                    {
                        if (_colorName != String.Empty)
                        {
                            _backColor = System.Drawing.Color.FromName(_colorName);
                        }
                    }
                    else
                    {
                        if (cbo.Text != String.Empty && !cbo.Items.Contains(cbo.Text))
                        {
                            if (_colorName != String.Empty)
                            {
                                _backColor = System.Drawing.Color.FromName(_colorName);
                            }
                        }
                        else
                        {
                            _return = true;
                        }
                    }

                    cbo.BackColor = _backColor;

                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ValidateComboBox(c) > " + ex.Message);
            }

            return _return;

        }




        /// <summary>
        /// List<Control> GetControlsFromForm(Form frm, string controlType)
        /// Gets list of control objects on the form of the specified type
        /// </summary>
        /// <param name="frm"></param>
        /// <param name="controlType"></param>
        public static List<Control> GetControlsFromForm(Form frm, string controlType)
        {
            List<Control> controls = new List<Control>();
            foreach (Control ctrl in frm.Controls)
            {
                controls.AddRange(GetChildControls(controlType, ctrl));
            }
            return controls;
        }




        /// <summary>
        /// List<Control> GetChildControls(string controlType, Control parentControl)
        /// Recursively gets list of control objects that are children of the control 
        /// passed in and are of the specified type
        /// </summary>
        /// <param name="frm"></param>
        /// <param name="controlType"></param>
        public static List<Control> GetChildControls(string controlType, Control parentControl)
        {
            List<Control> controls = new List<Control>();

            foreach (Control ctrl in parentControl.Controls)
            {
                if (ctrl.GetType().Name == controlType)
                {
                    controls.Add(ctrl);
                }
                else if (ctrl.Controls.Count > 0)
                {
                    controls.AddRange(GetChildControls(controlType, ctrl));
                }
            }
            return controls;
        }



        /// <summary>
        /// string CreateSQLFromCriteria(string sqlCriteria)
        /// Build a SQL statement from the SQL criteria passed in
        /// </summary>
        /// <param name="sqlCriteria"></param>
        /// <returns>string</returns>
        public static string CreateSQLFromCriteria(string sqlCriteria)
        {
            string _action = String.Empty;
            string _table = String.Empty;
            string _fieldList = String.Empty;
            string _where = String.Empty;
            string _sql = String.Empty;
            string _resolvedValue = String.Empty;

            try
            {
                //parse out sections of criteria
                string[] _parts = sqlCriteria.Split('|');

                for (int n = 0; n < _parts.Length; n++)
                {
                    if (_parts[n].Contains("="))
                    {
                        string _section = _parts[n].Substring(0, _parts[n].IndexOf('=')).ToUpper();
                        string _value = _parts[n].Substring(_parts[n].IndexOf('=') + 1);

                        switch (_section)
                        {
                            case "ACTION":
                                _action = _value.Trim();
                                break;
                            case "TABLE":
                                _table = _value.Trim();
                                break;
                            case "FIELDLIST":
                                _fieldList = _value.Trim();
                                if (_fieldList != String.Empty)
                                {
                                    if (_fieldList.Substring(_fieldList.Length - 1) == ",")
                                    {
                                        _fieldList = _fieldList.Substring(0, _fieldList.Length - 1);
                                    }
                                    //_resolvedValue = Widgets.ResolveValue("", _fieldList);
                                    _fieldList = _resolvedValue.Replace(",", ", ");
                                }
                                break;
                            case "WHERE":
                                // remove ending separator char (¶), if found
                                _value = _value.Trim();
                                if (_value.EndsWith("¶"))
                                {
                                    _value = _value.Substring(0, _value.Length - 1);
                                }
                                //_resolvedValue = Widgets.ResolveSpecialValues(_value);
                                _where = _resolvedValue.Replace("¶", " \r\n").Replace(":"," ");
                                _where = _where.Replace("\r\n", " ");
                                _where = _where.Replace(";", " ");
                                break;
                        }

                    }
                }

                _where = _where.Replace(";", " ");

                // based on the option sent, create the SQL
                switch (_action.ToUpper())
                {
                    case "SELECT":
                        _sql = "SELECT " + _fieldList + " \r\n" +
                               "FROM " + _table + " \r\n" +
                               (_where != String.Empty ? "WHERE " + _where + ";" : String.Empty);

                        break;

                    //TODO:  Get below items working

                    case "UPDATE":
                        _sql = "UPDATE " + _table + " \r\n" +
                               "SET " + _fieldList + " \r\n" +
                               (_where != String.Empty ? "WHERE " + _where + ";" : String.Empty);

                        break;

                    case "INSERT":
                        break;

                    case "DELETE":
                        _sql = "DELETE FROM " + _table + " \r\n" +
                               (_where != String.Empty ? "WHERE " + _where + ";" : String.Empty);
                        break;

                    case "STORED PROCEDURE":
                        break;

                    case "SQL":
                        break;

                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreateSQLFromCriteria > " + ex.Message);
            }

            return _sql;

        }




        public static string RoundValue(string value, int numDecimals)
        {
            string _newValue = value;
            decimal _decimalValue = ConvertToDecimal(_newValue);
            int _numDecimals = numDecimals;

            try
            {
                _decimalValue = Math.Round(_decimalValue, _numDecimals);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".RoundValue(s, i) > " + ex.Message);
            }

            return _decimalValue.ToString();

        }





        public static int GetHandleCount()
        {
            IntPtr _hWnd;
            int _numHandles = 0;

            try
            {
                Process _currentProcess = System.Diagnostics.Process.GetCurrentProcess();
                _hWnd = _currentProcess.Handle;
                _numHandles = GetWindowHandlesForCurrentProcess(_hWnd);                
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetHandleCount > " + ex.Message);
            }

            return _numHandles;


        }





        public static bool ReleaseHandle(IntPtr hWnd)
        {
            bool _status = true;

            try
            {
                _status = CloseHandle(hWnd);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ReleaseHandle > " + ex.Message);
                _status = false;
            }

            return _status;


        }






        public static int GetWindowHandlesForCurrentProcess(IntPtr hWnd)
        {
            int _numHandles = 0;

            try
            {
                IntPtr processHandle = GetCurrentProcess();
                uint gdiObjects = GetGuiResources(processHandle, (uint)ResourceType.Gdi);
                uint userObjects = GetGuiResources(processHandle, (uint)ResourceType.User);
                _numHandles = Convert.ToInt32(gdiObjects + userObjects);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetWindowHandlesForCurrentProcess > " + ex.Message);
            }

            return _numHandles;

        }




    }
}
