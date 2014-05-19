using System;
using System.Collections.Generic;
using System.Web;

namespace IGenFormsViewer
{
    public class ConfigRoutines
    {
        private static string moduleName = "ConfigRoutines";

        public struct udtConfigSettings
        {
            public string key;
            public string value;
            public string originalValue;
            public string source;
            public bool delete;
        }

        public static bool dbConfigSettingsFound = false;

        public static List<udtConfigSettings> configSettings = new List<udtConfigSettings>();
        public static udtConfigSettings configSetting = new udtConfigSettings();
        public static List<string> configRecords = new List<string>();
        public static string currentPath = AppDomain.CurrentDomain.BaseDirectory;
        public static string currentConfigFile = "";

        // this list will contain the settings for the application
        //        public static List<string[]> lstSettings = new List<string[]>();


        /// <summary>
        /// int AddSetting(string key, string value)
        /// Add an app setting
        /// </summary>
        /// <param name="key, type=string"></param>
        /// <param name="value, type=string"></param>
        /// <returns>number of settings added so far, type=int</returns>
        public static int AddSetting(string key, string value)
        {

            try
            {
                if (configSettings.Count < 1)
                {
                    // load the config file
                    ConfigRoutines.ReadConfigFile();
                }

                if (SettingExists(key))
                {
                    // replace the value
                    SetSetting(key, value);
                }
                else
                {
                    // add the setting
                    configSetting.key = key;
                    configSetting.value = value;
                    configSetting.originalValue = value;
                    configSetting.source = "D";
                    configSettings.Add(configSetting);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".AddSetting > " + ex.Message);
            }

            return configSettings.Count;
        }






        public static int DeleteSetting(string key)
        {

            try
            {
                if (configSettings.Count < 1)
                {
                    for (int n = 0; n < configSettings.Count; n++)
                    {
                        udtConfigSettings configSetting = configSettings[n];

                        if (configSetting.key.ToUpper().Equals(key.ToUpper()))
                        {
                            // set the delete flag
                            configSetting.delete = true;
                            break;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".AddSetting > " + ex.Message);
            }

            return configSettings.Count;
        }





        public static int DeleteSettingByPrefix(string prefix)
        {

            try
            {
                if (configSettings.Count > 0)
                {
                    for (int n = 0; n < configSettings.Count; n++)
                    {
                        udtConfigSettings configSetting = configSettings[n];

                        if (configSetting.key.ToUpper().IndexOf(prefix.ToUpper()) == 0)
                        {
                            // set the delete flag
                            configSetting.delete = true;
                            configSettings[n] = configSetting;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".AddSetting > " + ex.Message);
            }

            return configSettings.Count;
        }




        /// <summary>
        /// int ReadConfigFile()
        /// Read the config file in and load the configuration records
        /// </summary>
        /// <returns></returns>
        public static int ReadConfigFile()
        {
            String _fileName = CommonRoutines.configFileName;
            string _originalFileName = "";
            int _numberOfLinesRead = 0;
            string _key = "";
            string _value = "";
            bool _userSettings = false;
            bool _setting = false;
            int _offset = 0;
            int _offset2 = 0;
            string _buffer = "";
            List<udtConfigSettings> _configSettings = configSettings;

            try
            {
                dbConfigSettingsFound = false;

                // get the logged on user
                string _userId = CommonRoutines.GetCurrentUser();
                CSA.currentUser = CommonRoutines.GetCurrentUser();

                //// remove the exe name
                //_offset = CommonRoutines.basePath.LastIndexOf("\\");

                //// strip any prefix from the user
                //if (_userId.IndexOf('\\') > 0)
                //{
                //    int _prefixOffset = _userId.LastIndexOf('\\');
                //    if (_prefixOffset >= 0)
                //    {
                //        _userId = _userId.Substring(_prefixOffset + 1);
                //    }
                //}
                //// get the IGenForms.config
                //_fileName = CommonRoutines.GetEXEName() + ".config";
                
                //string _userFileName = (_userId != "")? _userId + "_" + _fileName:_fileName;

                //// if user logged in, attach the userid and see if there is a file for it
                //if (CommonRoutines.FileExists(CommonRoutines.basePath + "\\" + _userFileName))
                //{
                //    // set the filename to the user file name
                //    _fileName = _userFileName;
                //}
                //// get the full path for the config file
                //_fileName = CommonRoutines.basePath + "\\" + _fileName;

                //_originalFileName = _fileName;

                // clear the array
                configSettings.Clear();

                //configRecords = CommonRoutines.ReadFile(_userFileName);
                //configRecords = CommonRoutines.ReadFile(_fileName);

                configRecords = CommonRoutines.ReadFile(CommonRoutines.configFileName);

                //// set (maybe again...) the filename so that if a new user comes in it will take the default config and then
                //// when saved (upon exit) the new user config will be created.
                ////_fileName = CommonRoutines.basePath + "\\" + _userFileName;
                //_fileName = CommonRoutines.basePath + _userFileName;

                currentConfigFile = _fileName;

                for (int n = 0; n < configRecords.Count; n++)
                {
                    _buffer = configRecords[n];

                    if (_buffer.Trim().Length > 0)
                    {
                        _numberOfLinesRead++;
                        if (_buffer.ToUpper().IndexOf("<USERSETTINGS") >= 0)
                        {
                            _userSettings = true;
                        }
                        if (_buffer.ToUpper().IndexOf("</USERSETTINGS") >= 0)
                        {
                            _userSettings = false;
                        }
                        if (_userSettings)
                        {
                            if (_buffer.ToUpper().IndexOf("<SETTING") >= 0)
                            {
                                //  get the key
                                _setting = true;
                                _offset = _buffer.ToUpper().IndexOf("NAME=");
                                if (_offset > 0)
                                {
                                    _offset += 5;
                                    _offset2 = _buffer.ToUpper().IndexOf(" ", _offset);
                                    if (_offset2 > 0)
                                    {
                                        _key = _buffer.Substring(_offset, (_offset2 - _offset));
                                        // now remove any quotes
                                        _key = _key.Replace("\"", "");
                                    }
                                }
                            }
                            if (_buffer.ToUpper().IndexOf("</SETTING") >= 0)
                            {
                                _setting = false;
                                // add to the config list
                                udtConfigSettings configSetting = new udtConfigSettings();
                                configSetting.key = _key;
                                configSetting.value = _value;
                                configSetting.originalValue = _value;
                                configSetting.source = "F";
                                configSettings.Add(configSetting);
                                _key = "";
                                _value = "";
                            }
                            if (_buffer.ToUpper().IndexOf("<VALUE") >= 0)
                            {
                                _offset = _buffer.IndexOf(">") + 1;
                                _offset2 = _buffer.IndexOf("<", _offset);
                                _value = _buffer.Substring(_offset, (_offset2 - _offset));
                            }
                        }
                    }
                }

                //LAP 20130916 - if config file cannot be found/read, return -1 to indicate error
                if (configRecords.Count < 1)
                {
                    return configRecords.Count;
                }
                //LAP

                // see if the redirect setting is there...
                string _redirect = GetSetting("Redirect");
                if (_redirect != "")
                {
                }

                // set the database connection
                DatabaseRoutines.BaseConnection = ConfigRoutines.GetSetting("BaseConnection");
                DatabaseRoutines.BaseDBMS = ConfigRoutines.GetSetting("BaseDBMS");

                // check for connectivity
                if (DatabaseRoutines.TestConnection())
                {
                    // load the rest of the configuration
                    string _sql = "Select ID, User_Id, Key_Name, Key_Value, Created_By, Created_Date, Modified_By, Modified_Date, Status " +
                    " From Config Where User_Id='" + CSA.currentUser + "' and Status='A' Order by Key_Name ";
                    List<string[]> _rows = DatabaseRoutines.Select(_sql);
                    if (_rows.Count > 1)
                    {
                        dbConfigSettingsFound = true;
                        for (int n = 1; n < _rows.Count; n++)
                        {
                            // add to the config list
                            udtConfigSettings _configSetting = new udtConfigSettings();
                            _configSetting.key = DatabaseRoutines.GetRowValue(_rows[0], _rows[n], "Key_Name");
                            _configSetting.value = DatabaseRoutines.GetRowValue(_rows[0], _rows[n], "Key_Value");
                            _configSetting.originalValue = _configSetting.value;
                            _configSetting.source = "D";
                            configSettings.Add(_configSetting);
                        
                            // if a variable setting, add to the CSA properties
                            if (_configSetting.key.ToUpper().IndexOf("VARIABLE_") == 0)
                            {
                                string _configKey = _configSetting.key.Substring(9);
                                CSA.AddProperty("CONFIG",_configKey, _configSetting.value);
                            }
                        }
                    }
                }
                else
                {
                    // restore to previous
                    configSettings = _configSettings;
                    //LAP 20130916 - if base connection is invalid, return -1 to indicate error
                    return configRecords.Count;
                    //LAP
                }

                // is the original file name equal to the user file name?
                if (_originalFileName.ToUpper() != _fileName.ToUpper())
                {
                    // save to the new user file name
                    WriteConfigFile();
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ReadConfigFile > " + ex.Message);
            }

            return configSettings.Count;

        }






        /// <summary>
        /// bool SettingExists(string key)
        /// See if a key exists
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static bool SettingExists(string key)
        {
            bool _settingExists = false;

            try
            {
                if (configSettings.Count < 1)
                {
                    // load the config file
                    ConfigRoutines.ReadConfigFile();
                }

                for (int n = 0; n < configSettings.Count; n++)
                {
                    udtConfigSettings configSetting = configSettings[n];

                    if (configSetting.key.ToUpper().Equals(key.ToUpper()))
                    {
                        _settingExists = true;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SettingExists > " + ex.Message);
            }

            return _settingExists;
        }






        
        /// <summary>
        /// string GetSetting(string key)
        /// Get the passed setting
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static string GetSetting(string key)
        {
            String _value = "";

            try
            {
                if (configSettings.Count < 1)
                {
                    // load the config file
                    ConfigRoutines.ReadConfigFile();
                }

                for (int n = 0; n < configSettings.Count; n++)
                {
                    udtConfigSettings configSetting = configSettings[n];

                    if (configSetting.key.ToUpper().Equals(key.ToUpper()))
                    {
                        _value = configSetting.value;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetSetting(s) > " + ex.Message);
            }

            return _value;
        }


        public static List<string> GetSettingsByPrefix(string prefix)
        {
            List<string> _settings = new List<string>();

            try
            {
                if (configSettings.Count < 1)
                {
                    // load the config file
                    ConfigRoutines.ReadConfigFile();
                }

                for (int n = 0; n < configSettings.Count; n++)
                {
                    udtConfigSettings configSetting = configSettings[n];

                    if (configSetting.key.ToUpper().IndexOf(prefix.ToUpper()) == 0)
                    {
                        _settings.Add(configSetting.key + ";" + configSetting.value);
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetSettingsByPrefix(s) > " + ex.Message);
            }

            return _settings;
        }





        /// <summary>
        /// string GetSetting(int index)
        /// Get the setting at the specified ordinal
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public static string GetSetting(int index)
        {
            String _value = "";

            try
            {
                if (configSettings.Count < 1)
                {
                    // load the config file
                    ConfigRoutines.ReadConfigFile();
                }

                if (index >= 0 && index < configSettings.Count)
                {
                    udtConfigSettings configSetting = configSettings[index];
                    _value = configSetting.value;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetSetting(i) > " + ex.Message);
            }

            return _value;
        }







        /// <summary>
        /// void ClearSettings()
        /// Clear the settings collection
        /// </summary>
        public static void ClearSettings()
        {

            try
            {
                configSettings.Clear();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ClearSettings > " + ex.Message);
            }

            return;
        }






        /// <summary>
        /// string SetSetting(string key, string value)
        /// Set the setting passed to the passed value
        /// </summary>
        /// <param name="key"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string SetSetting(string key, string value)
        {
            String _value = "";
            bool bolFound = false;

            try
            {
                if (configSettings.Count < 1)
                {
                    // load the config file
                    ConfigRoutines.ReadConfigFile();
                }

                for (int n = 0; n < configSettings.Count; n++)
                {
                    udtConfigSettings configSetting = configSettings[n];

                    if (configSetting.key.ToUpper().Equals(key.ToUpper()))
                    {
                        configSetting.value = value;
                        configSettings[n] = configSetting;
                        bolFound = true;
                        break;
                    }
                }

                // if not found, add to the list
                if (!bolFound)
                {
                    udtConfigSettings configSetting = new udtConfigSettings();
                    configSetting.key = key;
                    configSetting.value = value;
                    configSetting.originalValue = value;
                    configSetting.source = "D";
                    configSettings.Add(configSetting);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetSetting(s,s) > " + ex.Message);
            }

            return _value;
        }





        /// <summary>
        /// string SetSetting(int index, string value)
        /// Set the setting passed to the passed value
        /// </summary>
        /// <param name="key"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string SetSetting(int index, string value)
        {
            string _result = "";

            try
            {
                if (index >= 0 && index < configSettings.Count)
                {
                    udtConfigSettings configSetting = configSettings[index];
                    configSetting.value = value;
                    configSettings[index] = configSetting;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetSetting(i,s) > " + ex.Message);
            }

            return _result;
        }








        /// <summary>
        /// int WriteConfigFile()
        /// Write the config records 
        /// </summary>
        /// <returns></returns>
        public static int WriteConfigFile()
        {
            String _fileName = "";
            int _offset = 0;
            List<string> _records = new List<string>();
            string _buffer = "";
            bool _userSection = false;
            bool _settings = false;
            bool _settingsWritten = false;

            try
            {
                if (configSettings.Count > 0)
                {

                    // remove the exe name
                    _offset = currentPath.LastIndexOf("\\");

                    // write back to the file read from
                    _fileName = currentConfigFile;

                    _records.Clear();

                    _records.Add("<?xml version=\"1.0\" encoding=\"utf-8\" ?>");
                    _records.Add("<configuration>");
                    _records.Add("  <userSettings>");

                    for (int m = 0; m < configSettings.Count; m++)
                    {
                        if (configSettings[m].source == "F")
                        {
                            _records.Add("    <setting name=\"" + configSettings[m].key + "\" serializeAs=\"String\">");
                            _records.Add("        <value>" + configSettings[m].value + "</value>");
                            _records.Add("    </setting>");
                        }
                    }

                    _records.Add("  </userSettings>");
                    _records.Add("</configuration>");

                    // now write out the new file
                    CommonRoutines.WriteFile(_fileName, _records);

                    // now write out the database settings
                    for (int m = 0; m < configSettings.Count; m++)
                    {
                        if (configSettings[m].source == "D")
                        {
                            string _sql = "";
                            int _rowsAffected = 0;

                            // if deleted, then delete
                            if (configSettings[m].delete)
                            {
                                _sql = "Delete From Config " +
                                                "Where User_Id='" + CSA.currentUser + "' and " +
                                                "      Key_Name='" + configSettings[m].key + "' ";
                                _rowsAffected = DatabaseRoutines.Execute(_sql);
                                if (_rowsAffected > 0)
                                {
                                    _rowsAffected = 0;
                                }
                            }
                            else
                            {
                                // try to update it, if it is not there then insert it
                                _sql = "Update Config " +
                                                "Set Key_Value='" + configSettings[m].value.Replace("'", "''") + "', " +
                                                "      Status='" + (configSettings[m].delete ? "D" : "A") + "' " +
                                                "Where User_Id='" + CSA.currentUser + "' and " +
                                                "      Key_Name='" + configSettings[m].key + "' ";
                                _rowsAffected = DatabaseRoutines.Execute(_sql);
                            }

                            if (_rowsAffected < 1)
                            {
                                // not there, insert
                                _sql = "Insert into Config " +
                                        "(User_Id, Key_Name, Key_Value) " +
                                        "Values('" + CSA.currentUser + "'," +
                                        "'" + configSettings[m].key + "', " +
                                        "'" + configSettings[m].value.Replace("'", "''") + "') ";
                                _rowsAffected = DatabaseRoutines.Execute(_sql);
                                if (_rowsAffected < 1)
                                {
                                    // hmmm... something not good here
                                    CommonRoutines.Log("Error in insert/update of config setting " + configSettings[m].key);
                                }
                            }

                        }
                    }

                    ConfigRoutines.dbConfigSettingsFound = true;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".WriteConfigFile > " + ex.Message);
            }

            return configSettings.Count;

        }


    }
}