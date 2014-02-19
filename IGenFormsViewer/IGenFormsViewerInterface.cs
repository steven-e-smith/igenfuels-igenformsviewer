using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;




namespace IGenFormsViewer
{
    public class IGenFormsViewerInterface
    {
        string moduleName = "IGenFormsInterface";

        private string connectionString = "";
        public string ConnectionString
        {
            get { return connectionString; }
            set { connectionString = value; }
        }


        private string connectionDBMS = "";
        public string ConnectionDBMS
        {
            get { return connectionDBMS; }
            set { connectionDBMS = value; }
        }


        private string baseConnectionString = "";
        public string BaseConnectionString
        {
            get { return baseConnectionString; }
            set { baseConnectionString = value; }
        }


        private string baseConnectionDBMS = "";
        public string BaseConnectionDBMS
        {
            get { return baseConnectionDBMS; }
            set { baseConnectionDBMS = value; }
        }


        private string formGroup = "";
        public string FormGroup
        {
            get { return formGroup; }
            set { formGroup = value; }
        }


        private string formFileName = "";
        public string FormFileName
        {
            get { return formFileName; }
            set { formFileName = value; }
        }


        private string formSQL = "";
        public string FormSQL
        {
            get { return formSQL; }
            set { formSQL = value; }
        }


        private string formFilesFolder = "";
        public string FormFilesFolder
        {
            get { return formFilesFolder; }
            set { formFilesFolder = value; }
        }


        private string formImagesFolder = "";
        public string FormImagesFolderso
        {
            get { return formImagesFolder; }
            set { formImagesFolder = value; }
        }


        private object[] forms = {};
        public object[] Forms
        {
            get { return forms; }
            set { forms = value; }
        }


        private List<string> xmlRecs = new List<string>();
        public List<string> XmlRecs
        {
            get { return xmlRecs; }
            set { xmlRecs = value; }
        }


        private string useSchema = "";
        public string UseSchema
        {
            get { return useSchema; }
            set { useSchema = value; }
        }


        // here is the property bag collection
        public string AddProperty(string name, string value)
        {
            string _result = "";

            try
            {
                _result = CSA.AddProperty("", name, value).ToString();
            }
            catch (Exception ex)
            {
                _result = "$$" + ex.Message;
            }

            return _result;

        }


        public string GetProperty(string name)
        {
            string _value = "";

            try
            {
                _value = CSA.GetProperty("", name);
            }
            catch (Exception ex)
            {
                _value = "$$" + ex.Message;
            }

            return _value;

        }



        private string result = "";
        public string Result
        {
            get { return result; }
            set { result = value; }
        }




        public IGenFormsViewerInterface()
        {

            // load the config file
            ConfigRoutines.ReadConfigFile();

            // load the variables from the configuration
            List<string> _variables = ConfigRoutines.GetSettingsByPrefix("variable_");
            for (int n = 0; n < _variables.Count; n++)
            {
                string[] _variable = _variables[n].Split(';');
                if (_variable.Length > 1)
                {
                    // remove the prefix
                    _variable[0] = _variable[0].ToUpper().Replace("VARIABLE_", "");
                    CSA.AddProperty("CONFIG", _variable[0], _variable[1]);
                }
            }


            return;

        }



        public string GenerateForms()
        {
            string _results = "";

            try
            {
                // set the variables
                // check the connection string and dbms
                if (connectionString == "" || connectionDBMS == "")
                {
                    _results = "No connection string has been specified, please choose a connection and rerun";
                    CommonRoutines.DisplayErrorMessage(_results);
                    return _results;
                }

                // display the "In process" window

                IGenFormCommonRoutines.connectionString = connectionString;
                IGenFormCommonRoutines.connectionDBMS = connectionDBMS;

                DatabaseRoutines.BaseConnection = baseConnectionString;
                DatabaseRoutines.BaseDBMS = baseConnectionDBMS;
                DatabaseRoutines.MainConnection = connectionString;
                DatabaseRoutines.MainDBMS = connectionDBMS;

                // bring up the viewer
                IGenFormsMain _igenForms = new IGenFormsMain();
                IGenFormCommonRoutines.currentIGenForms = _igenForms;

                CommonRoutines.currentFormsPath = formFilesFolder;
                CommonRoutines.currentFormImagesPath = formImagesFolder;
                _igenForms.dataSource = connectionString;
                string _formFileName = formFilesFolder + "\\" + formFileName;
                _igenForms.formGroupName = formGroup;

                IGenFormCommonRoutines.currentIGenForms.fileName = formFilesFolder + "\\" + formFileName;
                IGenFormCommonRoutines.currentIGenForm = null;

                _igenForms.xmlRecs = XmlRecs;
                _igenForms.sql = formSQL;

                // load the form group
                _igenForms.Execute();


            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GenerateForms > " + ex.Message);
            }

            return _results;

        }




    }
}
