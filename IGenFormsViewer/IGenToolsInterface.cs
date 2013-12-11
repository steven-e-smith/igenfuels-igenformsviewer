﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IGenForms
{
    public class IGenFormsInterface
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
        public string FormImagesFolder
        {
            get { return formImagesFolder; }
            set { formImagesFolder = value; }
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




        public IGenFormsInterface()
        {

            // load the config file
            ConfigRoutines.ReadConfigFile();

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
                formGroup = formFilesFolder + "\\" + formGroup;
                _igenForms.formGroupName = formGroup;

                IGenFormCommonRoutines.currentIGenForms.fileName = formGroup;
                IGenFormCommonRoutines.currentIGenForm = null;

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
