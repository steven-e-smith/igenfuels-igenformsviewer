using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Windows.Forms;

namespace IGenForms
{
    public class DatabaseRoutines
    {
        private static string moduleName = "DatabaseRoutines";

        private static string[] supportedDBMS = {"SQLServer","Access","Oracle","ODBC"};
        public static string[] SupportedDBMS
        {
            get {return supportedDBMS;}
            set {supportedDBMS = value;}
        }


        public static bool deleteExisting = false;
        public static bool tableRowsDeleted = false;

        public static List<string> detectedDBServers = new List<string>();

        public struct connectionObjectsType
        {
            public string connectionDBMS;
            public string connectionLevel;
            public string connectionName;
            public string connectionString;
        }

        private struct ImportFileIntoTableStruct
        {
            public bool selected;
            public bool askForFileName;
            public string dbms;
            public string connectionString;
            public string tableName;
            public string fileName;
            public bool firstRowHasFieldNames;
            public string delimiter;
            public string separator;
            public bool createNewTable;
            public bool deleteAllRows;
            public string mapping;
        }

        public struct DatabaseServersStruct
        {
            public string dbms;
            public string serverName;
            public string instanceName;
            public bool isClustered;
            public string version;
        }


        public struct MappingStruct
        {
            public int mappingId;
            public string mappingName;
            public int sequence;
            public string inField;
            public int inFieldIndex;
            public string outField;
            public int outFieldIndex;
            public string inExprField;
            public int inExprFieldIndex;
        }


        public static List<connectionObjectsType> connectionObjects = new List<connectionObjectsType>();

        public static List<DatabaseServersStruct> dbInstances = new List<DatabaseServersStruct>();

        public static string lastStatusMessage = "";
        public static string lastStatusCode = "";
        public static bool lastStatus = false;
        public static int lastNumberRowsAffected = 0;

        // init the objects for the supported dbms
        private static DatabaseRoutinesSQLServer dbSQLServer = new DatabaseRoutinesSQLServer();

        private static string baseDBMS = "";
        public static string BaseDBMS
        {
            get { return baseDBMS; }
            set { baseDBMS = value; }
        }


        private static string baseConnection = "";
        public static string BaseConnection
        {
            get { return baseConnection; }
            set { baseConnection = value; }
        }


        private static string mainDBMS = "";
        public static string MainDBMS
        {
            get { return mainDBMS; }
            set { mainDBMS = value; }
        }


        private static string mainConnection = "";
        public static string MainConnection
        {
            get { return mainConnection; }
            set { mainConnection = value; }
        }


        private static string lastConnection = "";
        public static string LastConnection
        {
            get { return lastConnection; }
            set { lastConnection = value; }
        }

        private static bool stopExecution = false;
        public static bool StopExecution
        {
            get { return stopExecution; }
            set { stopExecution = value; }
        }


        /// <summary>
        /// bool TestConnection()
        /// Test the base connection
        /// </summary>
        /// <returns></returns>
        public static bool TestConnection()
        {
            bool _result = false;

            try
            {
                if (BaseConnection != "")
                {
                    _result = TestConnection(BaseConnection, BaseDBMS);
                }
                else
                {
                    _result = false;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TestConnection > " + ex.Message);
            }

            return _result;


        }






        /// <summary>
        /// bool TestConnection(string connectionString)
        /// Test the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public static bool TestConnection(string connectionString, string dbms)
        {

            try
            {

                // call the appropriate dbms method
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        lastStatus = dbSQLServer.TestConnection(connectionString);
                        break;

                    //LAP 20130522 -- If dbms is not identified above, fail test
                    default:
                        lastStatus = false;
                        break;
                }

                SetStatusInfo(dbms);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TestConnection(s) > " + ex.Message);
            }

            return lastStatus;
        }







        /// <summary>
        /// bool TableExists(string tableName)
        /// See if the passed table exists in the base connection
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public static bool TableExists(string tableName)
        {
            bool _status = false;

            try
            {
                if (BaseConnection != "")
                {
                    _status = TableExists(BaseConnection, BaseDBMS, tableName);
                }
                else
                {
                    _status = false;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TableExists(s) > " + ex.Message);
            }

            return _status;

        }






        /// <summary>
        /// bool TableExists(string connectionString, string tableName)
        /// See if the passed table exists in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public static bool TableExists(string connectionString, string dbms, string tableName)
        {
            bool _tableExists = false;

            try
            {
                lastConnection = connectionString;

                // call the appropriate dbms method
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        _tableExists = dbSQLServer.TableExists(connectionString, tableName);
                        break;

                }

                SetStatusInfo(dbms);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TableExists(s,s) > " + ex.Message);
            }

            return _tableExists;

        }







        /// <summary>
        /// List<string> GetDatabases()
        /// Get a list of the databases in the base connection
        /// </summary>
        /// <returns></returns>
        public static List<string> GetDatabases()
        {
            List<string> _databases = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _databases = GetDatabases(BaseConnection, BaseDBMS);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabases > " + ex.Message);
            }

            return _databases;

        }





        /// <summary>
        /// List<string> GetDatabases(string connectionString)
        /// Get a list of databases in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public static List<string> GetDatabases(string connectionString, string dbms)
        {
            List<string> _databases = new List<string>();

            try
            {
                // check to see if the parms are valid
                if (connectionString == null || dbms == null)
                {
                    // do nothing
                }
                else
                {
                    lastConnection = connectionString;

                    // call the appropriate dbms method
                    switch (dbms.ToUpper())
                    {
                        case "SQLSERVER":
                            _databases = dbSQLServer.GetDatabases(connectionString);
                            break;

                    }

                    SetStatusInfo(dbms);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabases(s,s) > " + ex.Message);
            }

            return _databases;

        }




        /// <summary>
        /// List<string> GetDatabaseSchemas()
        /// Get a list of the schemas in the base connection
        /// </summary>
        /// <returns></returns>
        public static List<string> GetDatabaseSchemas()
        {
            List<string> _schemas = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _schemas = GetDatabaseSchemas(BaseConnection, BaseDBMS);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseSchemas > " + ex.Message);
            }

            return _schemas;

        }




        /// <summary>
        /// List<string> GetDatabaseSchemas(string connectionString, string dbms)
        /// Get a list of the schemas in the passed connection
        /// </summary>
        /// <returns></returns>
        public static List<string> GetDatabaseSchemas(string connectionString, string dbms)
        {
            List<string> _schemas = new List<string>();

            try
            {
                // check to see if the parms are valid
                if (connectionString == null || dbms == null)
                {
                    // do nothing
                }
                else
                {
                    lastConnection = connectionString;

                    // call the appropriate dbms method
                    switch (dbms.ToUpper())
                    {
                        case "SQLSERVER":
                            _schemas = dbSQLServer.GetDatabaseSchemas(connectionString);
                            break;

                    }

                    SetStatusInfo(dbms);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseSchemas > " + ex.Message);
            }

            return _schemas;

        }



        /// <summary>
        /// List<string> GetDatabaseTables()
        /// Get a list of the tables in the base connection
        /// </summary>
        /// <returns></returns>
        public static List<string> GetDatabaseTables()
        {
            List<string> _tables = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _tables = GetDatabaseTables(BaseConnection, BaseDBMS);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseTables > " + ex.Message);
            }

            return _tables;

        }





        /// <summary>
        /// List<string> GetDatabaseTables(string connectionString)
        /// Get a list of tables in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public static List<string> GetDatabaseTables(string connectionString, string dbms)
        {
            List<string> _tables = new List<string>();

            try
            {
                // check to see if the parms are valid
                if (connectionString == null || dbms == null)
                {
                    // do nothing
                }
                else
                {
                    lastConnection = connectionString;

                    // call the appropriate dbms method
                    switch (dbms.ToUpper())
                    {
                        case "SQLSERVER":
                            _tables = dbSQLServer.GetDatabaseTables(connectionString);
                            break;

                    }

                    SetStatusInfo(dbms);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseTables(s,s) > " + ex.Message);
            }

            return _tables;

        }




        /// <summary>
        /// List<string> GetDatabaseStoredProcedures()
        /// Get a list of the stored procs in the base connection
        /// </summary>
        /// <returns></returns>
        public static List<string> GetDatabaseStoredProcedures()
        {
            List<string> _storedProcs = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _storedProcs = GetDatabaseStoredProcedures(BaseConnection, BaseDBMS);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseStoredProcedures > " + ex.Message);
            }

            return _storedProcs;

        }




        /// <summary>
        /// List<string> GetDatabaseStoredProcedures(string connectionString)
        /// Get a list of stored procs and functions (UDFs) in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public static List<string> GetDatabaseStoredProcedures(string connectionString, string dbms)
        {
            List<string> _storedProcs = new List<string>();

            try
            {
                // check to see if the parms are valid
                if (connectionString == null || dbms == null)
                {
                    // do nothing
                }
                else
                {
                    lastConnection = connectionString;

                    // call the appropriate dbms method
                    switch (dbms.ToUpper())
                    {
                        case "SQLSERVER":
                            _storedProcs = dbSQLServer.GetDatabaseStoredProcedures(connectionString);
                            break;

                    }

                    SetStatusInfo(dbms);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseStoredProcedures(s,s) > " + ex.Message);
            }

            return _storedProcs;

        }





        /// <summary>
        /// List<string> GetDatabaseUDFs()
        /// Get a list of the functions (UDFs) in the base connection
        /// </summary>
        /// <returns></returns>
        public static List<string> GetDatabaseUDFs()
        {
            List<string> _udfs = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _udfs = GetDatabaseUDFs(BaseConnection, BaseDBMS);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseUDFs > " + ex.Message);
            }

            return _udfs;

        }




        /// <summary>
        /// List<string> GetDatabaseUDFs(string connectionString)
        /// Get a list of functions (UDFs) in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public static List<string> GetDatabaseUDFs(string connectionString, string dbms)
        {
            List<string> _udfs = new List<string>();

            try
            {
                // check to see if the parms are valid
                if (connectionString == null || dbms == null)
                {
                    // do nothing
                }
                else
                {
                    lastConnection = connectionString;

                    // call the appropriate dbms method
                    switch (dbms.ToUpper())
                    {
                        case "SQLSERVER":
                            _udfs = dbSQLServer.GetDatabaseUDFs(connectionString);
                            break;

                    }

                    SetStatusInfo(dbms);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseUDFs(s,s) > " + ex.Message);
            }

            return _udfs;

        }





        /// <summary>
        /// List<string> GetDatabaseViews()
        /// Get a list of the functions (Views) in the base connection
        /// </summary>
        /// <returns></returns>
        public static List<string> GetDatabaseViews()
        {
            List<string> _views = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _views = GetDatabaseViews(BaseConnection, BaseDBMS);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseViews > " + ex.Message);
            }

            return _views;

        }




        /// <summary>
        /// List<string> GetDatabaseViews(string connectionString)
        /// Get a list of functions (Views) in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public static List<string> GetDatabaseViews(string connectionString, string dbms)
        {
            List<string> _views = new List<string>();

            try
            {
                // check to see if the parms are valid
                if (connectionString == null || dbms == null)
                {
                    // do nothing
                }
                else
                {
                    lastConnection = connectionString;

                    // call the appropriate dbms method
                    switch (dbms.ToUpper())
                    {
                        case "SQLSERVER":
                            _views = dbSQLServer.GetDatabaseViews(connectionString);
                            break;

                    }

                    SetStatusInfo(dbms);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseViews(s,s) > " + ex.Message);
            }

            return _views;

        }






        /// <summary>
        /// List<string> GetDatabaseSPFunctionParms()
        /// Get a list of parms for a stored procs or function (UDF) in the base connection
        /// </summary>
        /// <returns></returns>
        public static List<string> GetDatabaseSPFunctionParms(string spFunctionName)
        {
            List<string> _SPFunctionParms = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _SPFunctionParms = GetDatabaseSPFunctionParms(BaseConnection, BaseDBMS, spFunctionName);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseSPFunctionParms > " + ex.Message);
            }

            return _SPFunctionParms;

        }




        /// <summary>
        /// List<string> GetDatabaseSPFunctionParms(string connectionString)
        /// Get a list of parms for a stored procs or function (UDF) in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public static List<string> GetDatabaseSPFunctionParms(string connectionString, string dbms, string spFunctionName)
        {
            List<string> _SPFunctionParms = new List<string>();

            try
            {
                // check to see if the parms are valid
                if (connectionString == null || dbms == null)
                {
                    // do nothing
                }
                else
                {
                    lastConnection = connectionString;

                    // call the appropriate dbms method
                    switch (dbms.ToUpper())
                    {
                        case "SQLSERVER":
                            _SPFunctionParms = dbSQLServer.GetDatabaseSPFunctionParms(connectionString, spFunctionName);
                            break;

                    }

                    SetStatusInfo(dbms);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseSPFunctionParms(s,s) > " + ex.Message);
            }

            return _SPFunctionParms;

        }






        /// <summary>
        /// int ImportFileIntoTable(string criteria, ref string fileImported,
        ///                            ref string results, bool interactive = false)
        /// Import a file into a table in the main connection
        /// </summary>
        /// <param name="criteria"></param>
        /// <param name="fileImported"></param>
        /// <returns></returns>
        /// LAP 20130424 -- added ref parm for the name of the file being imported
        public static int ImportFileIntoTable(string criteria, ref string fileImported,
                                                 ref string results, bool interactive = false)
        {
            string _results = "";
            int _numRowsAffected = 0;
            string _dbms = MainDBMS;
            string _connection = MainConnection;

            try
            {
                // check the criteria to see if the dbms and connection are specified
                if (_dbms == String.Empty || _connection == String.Empty)
                {
                    _results += "Unable to connect to Main Connection";
                    _numRowsAffected = -1;
                }
                else
                {
                    _numRowsAffected = ImportFileIntoTable(_connection, _dbms, criteria, ref fileImported, ref _results, interactive);
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ImportFileIntoTable(s) > " + ex.Message);
            }

            results = _results;

            return _numRowsAffected;

        }





        /// <summary>
        /// int ImportFileIntoTable(string connectionString, string dbms, 
        ///                            string criteria, ref string fileImported, 
        ///                            ref string results, bool interactive = false)
        /// Import a file into a table in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="dbms"></param>
        /// <param name="criteria"></param>
        /// <param name="fileImported"></param>
        /// <returns></returns>
        /// LAP 20130424 -- added ref parm for the name of the file being imported
        public static int ImportFileIntoTable(string connectionString, string dbms, 
                                                 string criteria, ref string fileImported, 
                                                 ref string results, bool interactive = false)
        {
            string _results = "";
            int _numRowsAffected = 0;
            string _connectionName = "";
            bool _runSingleFile = false;
            string _connectionString = connectionString;
            string _dbms = dbms;

            List<ImportFileIntoTableStruct> _importFileDefinitions = new List<ImportFileIntoTableStruct>();

            try
            {
                //if connection info missing, default to Main Connection
                if (_connectionString == "")
                {
                    _connectionString = MainConnection;
                }

                if (_dbms == "")
                {
                    _dbms = MainDBMS;
                }

                string[] _importFiles = criteria.Split('|');

                tableRowsDeleted = false;

                foreach (string _importFile in _importFiles)
                {
                    bool _selected = false;
                    bool _ask = false;
                    string _prompt = "";
                    string _fileName = "";
                    bool _firstRowHasFieldNames = false;
                    string _delimiter = "";
                    string _separator = "";
                    bool _createNewTable = false;
                    string _newTableName = "";
                    bool _reuseExistingTable = false;
                    string _existingTableName = "";
                    bool _deleteAllRows = false;
                    int _index = 0;
                    string _tableName = "";
                    string _mapping = "";

                    if (_importFile.Trim() == "")
                    {
                        break;
                    }

                    // if the criteria list is populated, then load the form fields from it
                    string[] _nameValuePairs = _importFile.Split(';');

                    for (int n = 0; n < _nameValuePairs.Length; n++)
                    {

                        _index = _nameValuePairs[n].IndexOf('=');
                        if (_index > 0)
                        {
                            string _name = _nameValuePairs[n].Substring(0, _index).ToUpper();
                            string _value = _nameValuePairs[n].Substring(_index + 1) + " ";

                            switch (_name)
                            {
                                case "RUNSINGLEFILE":
                                    _runSingleFile = (_value.Substring(0, 1).ToUpper() == "T") ? true : false;
                                    break;

                                case "CONNECTION":
                                    _connectionName = _value.Trim();
                                    // find the connection string and dbms from the connection objects
                                    connectionObjectsType _connectionObject = GetConnectionObject(_connectionName);
                                    _dbms = _connectionObject.connectionDBMS;
                                    _connectionString = _connectionObject.connectionString;
                                    break;

                                case "ASKFORFILENAME":
                                    _ask = (_value.Substring(0, 1).ToUpper() == "T") ? true : false;
                                    break;

                                case "SELECTFILE":
                                    _selected = (_value.Substring(0, 1).ToUpper() == "T") ? true : false;
                                    break;

                                case "FILENAME":
                                    _fileName = _value.Trim();
                                    break;

                                case "PROMPT":
                                    _prompt = _value.Trim();
                                    break;

                                case "TABLENAME":
                                    _tableName = _value.Trim();
                                    break;

                                case "FIRSTROWNAMES":
                                    _firstRowHasFieldNames = (_value.Substring(0, 1).ToUpper() == "T") ? true : false;
                                    break;

                                case "DELIMITER":
                                    // the delimiter is the ascii code for it
                                    _delimiter = ((char)CommonRoutines.ConvertToInt(_value)).ToString();
                                    break;

                                case "SEPARATOR":
                                    // the delimiter is the ascii code for it
                                    _separator = ((char)CommonRoutines.ConvertToInt(_value)).ToString();
                                    break;

                                case "CREATENEW":
                                    _createNewTable = (_value.Substring(0, 1).ToUpper() == "T") ? true : false;
                                    break;

                                case "DELETEEXISTING":
                                    if (tableRowsDeleted)
                                    {
                                        deleteExisting = false;
                                    }
                                    else
                                    {
                                        deleteExisting = (_value.Substring(0, 1).ToUpper() == "T") ? true : false;
                                        //LAP 20130426 - Moved tableRowsDeleted flag set to right after the delete sql is run
                                        //tableRowsDeleted = true;
                                    }
                                    break;

                                case "MAPPING":
                                    _mapping = _value.Trim();
                                    break;

                            }
                        }

                    }

                    //bool _continue = true;

                    if (_selected)
                    {

                        if (_ask)
                        {
                            // get the information from the user
                            _fileName = CommonRoutines.OpenDialog("*", "", _prompt);
                            //LAP 20130424 - set ref parm fileImported to the value returned from Dialog box
                            //LAP 20130522 - if no file name was returned (Cancel clicked), update results and skip to next row
                            if (_fileName == String.Empty)
                            {
                                _results = _results + "File processing cancelled by user";
                                break;
                            }
                            fileImported = _fileName;
                        }

                        if (_fileName != "")
                        {

                            if (_createNewTable || _tableName == "")
                            {
                                // determine the table name from the file name
                                _tableName = GetTableNameFromFileName(_fileName);
                            }
                            else
                            {
                                //// if the delete existing rows has been specified, ask them if that is ok.
                                //if (_deleteAllRows && _runSingleFile)
                                //{
                                //    _deleteAllRows = (CommonRoutines.Ask("Do you really want to delete all the rows in the " + _tableName + " table?", "Delete all rows") == DialogResult.Yes?true:false);
                                //}
                            }

                            if (_runSingleFile)
                            {
                                // now call the import function
                                string _runResults = "";
                                _numRowsAffected = _numRowsAffected + ImportFileIntoTable(_connectionString, _dbms, _tableName, _fileName, _firstRowHasFieldNames,
                                                        _delimiter, _separator, _createNewTable, deleteExisting, _mapping, ref _runResults, interactive);
                                bool _status = CommonRoutines.DisplayMessage(_runResults);
                                CommonRoutines.Log(_runResults);
                                _results = _results + _runResults + ";";
                                if (!_status)
                                {
                                    _results = _results + "Further processing cancelled by user";
                                    break;
                                }
                            }
                            else
                            {
                                // fill in the import structure list to run later
                                ImportFileIntoTableStruct _importTableDefinition = new ImportFileIntoTableStruct();
                                _importTableDefinition.askForFileName = _ask;
                                _importTableDefinition.dbms = _dbms;
                                _importTableDefinition.connectionString = _connectionString;
                                _importTableDefinition.selected = _selected;
                                _importTableDefinition.tableName = _tableName;
                                _importTableDefinition.fileName = _fileName;
                                _importTableDefinition.firstRowHasFieldNames = _firstRowHasFieldNames;
                                _importTableDefinition.delimiter = _delimiter;
                                _importTableDefinition.separator = _separator;
                                _importTableDefinition.createNewTable = _createNewTable;
                                _importTableDefinition.deleteAllRows = deleteExisting;
                                _importTableDefinition.mapping = _mapping;
                                _importFileDefinitions.Add(_importTableDefinition);

                            }

                            deleteExisting = false;
                        }

                    }

                }

                // if late batch...
                if (_importFileDefinitions.Count > 0)
                {
                    // run each one
                    _results = "";

                    for (int n=0;n<_importFileDefinitions.Count;n++)
                    {
                        ImportFileIntoTableStruct _imporFileDefinition = _importFileDefinitions[n];

                        //// if the delete existing rows has been specified, ask them if that is ok.
                        //if (_imporFileDefinition.deleteAllRows)
                        //{
                        //    _imporFileDefinition.deleteAllRows = (CommonRoutines.Ask("Do you really want to delete all the rows in the " + _imporFileDefinition.tableName + " table?", "Delete all rows") == DialogResult.Yes?true:false);
                        //}

                        string _importResults = "";
                        // now call the import function
                        _numRowsAffected = _numRowsAffected + ImportFileIntoTable(_imporFileDefinition.connectionString, _imporFileDefinition.dbms, _imporFileDefinition.tableName, _imporFileDefinition.fileName,
                                                _imporFileDefinition.firstRowHasFieldNames, _imporFileDefinition.delimiter, _imporFileDefinition.separator,
                                                _imporFileDefinition.createNewTable, _imporFileDefinition.deleteAllRows, _imporFileDefinition.mapping, ref _importResults, interactive);
                        _results = _results + _importResults;

                        // if an error occurred, halt processing
                        if (_numRowsAffected < 0)
                        {
                            break;
                        }

                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ImportFileIntoTable(s,s) > " + ex.Message);
            }

            results = _results;

            CommonRoutines.DisplayStatus("Done");

            return _numRowsAffected;

        }







        /// <summary>
        /// int ImportFileIntoTable(string tableName,
        ///                                      string fileName, bool firstRecordHasFieldNames,
        ///                                      string fieldDelimiter, string fieldSeparator,
        ///                                      bool createNewTable, bool truncateTable, 
        ///                                      string mapping, ref string results, 
        ///                                      bool interactive = false)
        /// Import a file into a table in the main connection with multiple parms and criteria                                      
        /// </summary>
        /// <param name="tableName"></param>
        /// <param name="fileName"></param>
        /// <param name="firstRecordHasFieldNames"></param>
        /// <param name="fieldDelimiter"></param>
        /// <param name="fieldSeparator"></param>
        /// <param name="createNewTable"></param>
        /// <param name="truncateTable"></param>
        /// <returns></returns>
        public static int ImportFileIntoTable(string tableName,
                                                 string fileName, bool firstRecordHasFieldNames,
                                                 string fieldDelimiter, string fieldSeparator,
                                                 bool createNewTable, bool truncateTable, 
                                                 string mapping, ref string results, 
                                                 bool interactive = false)
        {
            string _results = "";
            int _numRowsAffected = 0;

            try
            {
                if (MainConnection != "")
                {
                    _numRowsAffected = ImportFileIntoTable(MainConnection, MainDBMS, tableName, fileName,
                                               firstRecordHasFieldNames, fieldDelimiter,
                                               fieldSeparator, createNewTable, truncateTable,
                                               mapping, ref _results, interactive);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ImportFileIntoTable(s,s,b,s,s,b,b) > " + ex.Message);
            }

            return _numRowsAffected;

        }






        /// <summary>
        /// int ImportFileIntoTable(string connectionString, string dbms, string tableName, 
        ///                            string fileName, bool firstRecordHasFieldNames, 
        ///                            string fieldDelimiter, string fieldSeparator,
        ///                            bool createNewTable, bool deleteAllRows,
        ///                            string mapping, ref string results,
        ///                            bool interactive = false)
        /// Import a file into a table in the database specified in connectionString
        /// with multiple parms and criteria                                      
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="tableName"></param>
        /// <param name="fileName"></param>
        /// <param name="firstRecordHasFieldNames"></param>
        /// <param name="fieldDelimiter"></param>
        /// <param name="fieldSeparator"></param>
        /// <param name="createNewTable"></param>
        /// <param name="truncateTable"></param>
        /// <returns></returns>
        public static int ImportFileIntoTable(string connectionString, string dbms, string tableName, 
                                                 string fileName, bool firstRecordHasFieldNames, 
                                                 string fieldDelimiter, string fieldSeparator,
                                                 bool createNewTable, bool deleteAllRows,
                                                 string mapping, ref string results,
                                                 bool interactive = false)
        {
            bool _firstRecord = true;
            bool _skipRecord = false;
            //bool _continueProcess = true;
            string _result = "";
            int _numRowsInserted = 0;
            int _fieldCount = 0;
            string _fieldDelimiter = fieldDelimiter;
            string _fieldSeparator = fieldSeparator;
            List<string> _tableFields = new List<string>();
            int _numSQLErrors = 0;

            lastConnection = connectionString;

            lastStatus = true;
            lastStatusCode = "0";
            lastStatusMessage = "Success";

            try
            {

                //get SQL Error Threshold
                int _sqlErrorThreshold = CommonRoutines.ConvertToInt(ConfigRoutines.GetSetting("SQLErrorThreshold"));

                // check the delimiter
                //LAP 20130424 - Convert to char, then to int to get ascii code of char
                char _charDelim = Convert.ToChar(_fieldDelimiter);
                int _charCode = Convert.ToInt32(_charDelim);
                if (_charCode < 32 || _charCode > 127)
                {
                    // set to default
                    _fieldDelimiter = ConfigRoutines.GetSetting("ImportDelimiter");
                    _charDelim = Convert.ToChar(_fieldDelimiter);
                }
                else
                {
                    _fieldDelimiter = ((char)_charCode).ToString();
                }

                // check the separator
                //LAP 20130424 - Convert to char, then to int to get ascii code of char
                char _charSep = Convert.ToChar(_fieldSeparator);
                _charCode = Convert.ToInt32(_charSep);
                if (_charCode < 32 || _charCode > 127)
                {
                    // set to default
                    _fieldSeparator = ConfigRoutines.GetSetting("ImportSeparator");
                    _charSep = Convert.ToChar(_fieldSeparator);
                }
                else
                {
                    _fieldSeparator = ((char)_charCode).ToString();
                }

                // load any mapping
                List<MappingStruct> _mappingXref = LoadMappingXref(mapping);

                if (_mappingXref.Count == 0)
                {
                    // get the table fields to fill in the map
                    _tableFields = GetTableFields(connectionString, dbms, tableName);
                    if (_tableFields.Count == 0)
                    {
                        // can't process the request
                        _result = "$E: No map specified and unable to get fields for table " + tableName;
                        lastStatus = false;
                        lastStatusCode = "-999";
                        results = _result;
                        CommonRoutines.HideProgress();
                        return -1;
                    }
                    else
                    {
                        // fill in the map xref
                        //SES 20130423 - filled in the fields with valid values for later...  only when no mapping is selected
                        for (int n = 0; n < _tableFields.Count; n++)
                        {
                            MappingStruct _mapXref = new MappingStruct();
                            _mapXref.mappingId = 0;
                            _mapXref.sequence = n + 1;
                            _mapXref.mappingName = "Generated";
                            _mapXref.inField = _tableFields[n];
                            _mapXref.inFieldIndex = n;
                            _mapXref.outField = _tableFields[n];
                            _mapXref.outFieldIndex = n;
                            _mappingXref.Add(_mapXref);
                        }
                    }
                }

                // now open the file
                // Check to see if the file exists
                if (System.IO.File.Exists(fileName))
                {
                    // Open the file and read the records.
                    try
                    {
                        // get the actual file name...
                        string _fileNameNoPath = fileName;
                        if (_fileNameNoPath.LastIndexOf('\\') > 0)
                        {
                            _fileNameNoPath = _fileNameNoPath.Substring(_fileNameNoPath.LastIndexOf('\\'));
                        }

                        //LAP 20130528 - check count of delimiter and separator characters in first data line
                        //               (to verify that the correct delimiter and separator were selected for this file)
                        int _lineNum = 0;
                        int _dataLineNum = (firstRecordHasFieldNames ? 1 : 0);
                        int delimCount = 0;
                        int sepCount = 0;

                        //foreach (string _line in System.IO.File.ReadLines(fileName))
                        //{
                        //    if (_lineNum == _dataLineNum)
                        //    {
                        //        char[] lineChars = _line.ToCharArray();

                        //        for (int n = 0; n < lineChars.Length; n++)
                        //        {
                        //            if (lineChars[n] == _charDelim)
                        //            {
                        //                delimCount++;
                        //            }
                        //            if (lineChars[n] == _charSep)
                        //            {
                        //                sepCount++;
                        //            }
                        //        }
                        //    }

                        //    if (_lineNum > _dataLineNum)
                        //    {
                        //        break;
                        //    }

                        //    ++_lineNum;

                        //}

                        //if (delimCount < _mappingXref.Count - 1)
                        //{
                        //    // specified delimiter was not found in the file
                        //    _result += "The specified delimiter ( " + fieldDelimiter + " ) was not found (for each field mapped) in the first data line of the file.  File processing halted.";
                        //    lastStatus = false;
                        //    lastStatusCode = "-999";
                        //    results = _result;
                        //    CommonRoutines.HideProgress();
                        //    return -1;
                        //}

                        //if (sepCount > 0 && sepCount < 2)
                        //{
                        //    // specified separator was not found in the file
                        //    _result += "The specified separator ( " + fieldSeparator + " ) was not found (at least twice) in the first data line of the file.  File processing halted.";
                        //    lastStatus = false;
                        //    lastStatusCode = "-999";
                        //    results = _result;
                        //    CommonRoutines.HideProgress();
                        //    return -1;
                        //}

                        int _minRows = 0;
                        //LAP 20130517 -- get number of lines from file
                        int _maxRows = System.IO.File.ReadLines(fileName).Count();
                        CSA.continueOperation = true;
                        string _status = "Importing file " + _fileNameNoPath + " into table " + tableName;

                        // open the progress bar
                        CommonRoutines.ShowProgress(0, 0, 0, _status);

                        // now create a list of output fields for later resolving
                        string[] _inputFieldNames = {};

                        using (System.IO.StreamReader _sr = System.IO.File.OpenText(fileName))
                        {
                            String _buffer = "";
                            int _char = 0;
                            string[] _fields = { };
                            string _fieldList = "";
                            bool _continue = true;
                            stopExecution = false;
                            
                            bool _quoted = false;

                            // read the file one char at a time and look for a \r\n.  If withing a quote, ignore and continue
                            //}
                            //while ((_buffer = _sr.ReadLine()) != null)
                            //{

                            while (_continue && CSA.continueOperation)
                            {

                                //update progress every 100 rows
                                if (_numRowsInserted % 100 == 0)
                                {
                                    CommonRoutines.ShowProgress(_minRows, _maxRows, _numRowsInserted, _status + " ... Row " + _numRowsInserted + " of " + _maxRows);
                                    Application.DoEvents();
                                }


                                _buffer = "";

                                #region [Read Bytes]
                                _char = 0;
                                while ((_char = _sr.Read()) > 0)
                                {

                                    //LAP 20130426 - check for Separator char, instead of " and '
                                    if (_char == _charSep)
                                    {
                                        _quoted = !_quoted;
                                    }
                                    //LAP 20130426 - include quote chars in buffer
                                    //else
                                    //{
                                    if (_char == 10 && !_quoted)
                                    {
                                        // a new line, end of record
                                        break;
                                    }
                                    else
                                    {
                                        if (_char >= 32 && _char <= 127)
                                        {
                                            _buffer = _buffer + (char)_char;
                                        }
                                    }
                                    //}
                                }

                                // check for end of file
                                if (_char <= 0)
                                {
                                    // process the record then exit
                                    _continue = false;
                                }

                                if (_buffer.Length == 0)
                                {
                                    break;
                                }
                                #endregion [Read Bytes]

                                _fields = CommonRoutines.Split(_buffer, _fieldDelimiter, _fieldSeparator);

                                // make the delimiter in the field list a comma if different then the passed delimiter
                                string _sql = "";
                                int _startRecord = 0;

                                // is this the first record
                                if (_firstRecord)
                                {
                                    #region [First Record]

                                    _fieldCount = _fields.Length;
                                    _fieldList = "";

                                    if (firstRecordHasFieldNames)
                                    {
                                        _skipRecord = true;
                                        _fieldCount = 0;
                                        _inputFieldNames = _fields;
                                    }

                                    // create generic fields
                                    for (int n = 0; n < _fields.Length; n++)
                                    {
                                        if (firstRecordHasFieldNames)
                                        {
                                            if (_fields[n].Trim() != "")
                                            {
                                                // make sure there are no wierd chars or spaces
                                                _fields[n] = _fields[n].Replace(' ', '_');
                                                _fields[n] = _fields[n].Replace('/', '_');
                                                _fields[n] = _fields[n].Replace('-', '_');
                                                _fields[n] = _fields[n].Replace('\\', '_');

                                                if (mapping != "")
                                                {
                                                    // use the out fields to create the field list
                                                    // see if the field is one of the mapped input field
                                                    for (int m = 0; m < _mappingXref.Count; m++)
                                                    {
                                                        MappingStruct _mapStruct = _mappingXref[m];
                                                        //LAP 20130430 -- make the same replacements on the map field as done to in field above
                                                        string mapField = _mapStruct.inField.Replace(' ', '_');
                                                        mapField = mapField.Replace('/', '_');
                                                        mapField = mapField.Replace('-', '_');
                                                        mapField = mapField.Replace('\\', '_');
                                                        if (mapField.ToUpper() == _fields[n].ToUpper())
                                                        {
                                                            // set the index
                                                            _mapStruct.inFieldIndex = n;
                                                        }
                                                        else
                                                        {
                                                            if (mapField.ToUpper().Contains("[" + _fields[n].ToUpper() + "]"))
                                                            {
                                                                //set field name and index used in expression
                                                                _mapStruct.inExprFieldIndex = n;
                                                                _mapStruct.inExprField = _fields[n];
                                                            }
                                                        }
                                                        _mappingXref[m] = _mapStruct;
                                                    }
                                                }
                                                else
                                                {
                                                    _fieldList = _fieldList + _fields[n] + ",";
                                                }
                                            }
                                            else
                                            {
                                                _fieldList = _fieldList + "Field_" + n.ToString() + ",";
                                            }
                                        }
                                        else
                                        {
                                            // first row is not field names so just set the index of the mapping xref to positional
                                            if (n < _mappingXref.Count)
                                            {
                                                MappingStruct _mapStruct = _mappingXref[n];
                                                // set the index
                                                _mapStruct.inFieldIndex = n;
                                                _mappingXref[n] = _mapStruct;
                                            }
                                        }
                                    }

                                    // if a mapping was specified, then replace the fieldlist with the output fields
                                    if (_mappingXref.Count > 0)
                                    {
                                        _fieldList = "";
                                        for (int m = 0; m < _mappingXref.Count; m++)
                                        {
                                            // if a mapped field or an expression, include the output field in the field list
                                            if (_mappingXref[m].inFieldIndex >= 0 || _mappingXref[m].inField.IndexOf("'") >= 0 || _mappingXref[m].inField.IndexOf('<') >= 0 || _mappingXref[m].inField.IndexOf('[') >= 0)
                                            {
                                                _fieldList = _fieldList + _mappingXref[m].outField + ",";
                                            }
                                        }
                                    }
                                    else
                                    {
                                        _fieldList = _fieldList.Substring(0, _fieldList.Length - 1);
                                    }

                                    // check to ensure that the fieldlist does not end in a comma
                                    _fieldList = _fieldList.Trim();
                                    if (_fieldList.Substring(_fieldList.Length - 1) == ",")
                                    {
                                        _fieldList = _fieldList.Substring(0, _fieldList.Length - 1);
                                    }

                                    // if this table is to be a new one, check to see if it exists
                                    if (createNewTable)
                                    {
                                        _result += CreateTable(connectionString, dbms, tableName, _fieldList, _fields.Length) + ";";
                                    }
                                    else
                                    {
                                        if (deleteAllRows)
                                        {
                                            string _deleteResult = TruncateTable(connectionString, dbms, tableName);
                                            if (_deleteResult != "")
                                            {
                                                // an error occurred 
                                                _result += "An error occurred while deleting existing records from table " + tableName + ";";
                                                _continue = false;
                                                lastStatusMessage = _result;
                                                lastStatusCode = "-999";
                                                lastStatus = true;
                                                break;
                                            }
                                            //LAP 20130426 - Moved tableRowsDeleted flag set to right after delete SQL is executed
                                            _result += "All existing records were deleted from table " + tableName + ";";
                                            tableRowsDeleted = true;
                                        }
                                    }

                                    #endregion [First Record]
                                }

                                _firstRecord = false;
                                int _rowsInserted = 0;

                                if (!_skipRecord)
                                {
                                    // how many fields in the fieldlist?
                                    string[] _fieldNames = _fieldList.Split(',');
                                    _fieldCount = _fieldNames.Length;

                                    // insert this record
                                    _sql = "Insert Into " + tableName + " ";
                                    _sql = _sql + "(" + _fieldList + ") ";
                                    _sql = _sql + "Values(";

                                    string _values = "";
                                    string _value = "";

                                    // if a map specified, then create the values from the map
                                    if (_mappingXref.Count > 0 && firstRecordHasFieldNames)
                                    {
                                        // by column name
                                        int _inIndex = 0;
                                        for (int m = 0; m < _mappingXref.Count; m++)
                                        {
                                            //LAP 20130501 - determine if column should be excluded from insert SQL due to missing value or mapping
                                            //bool removeCol = (m >= _fields.Count());
                                            //if (!removeCol)
                                            //{
                                            //    _inIndex = _mappingXref[m].inFieldIndex;

                                            //    if (_inIndex >= 0 && _inIndex >= _fields.Count())
                                            //    {
                                            //        removeCol = true;
                                            //    }
                                            //}

                                            _inIndex = _mappingXref[m].inFieldIndex;

                                            //if (removeCol)
                                            //{
                                            //    //remove columns for missing field values from field list
                                            //    List<string> _newFields = _fieldList.Split(',').ToList();
                                            //    _newFields.RemoveRange(m, (_newFields.Count - m == 0 ? 1 : _newFields.Count - m));
                                            //    string _tempFieldList = String.Join(",", _newFields);

                                            //    // recreate first part of SQL
                                            //    _sql = "Insert Into " + tableName + " ";
                                            //    _sql = _sql + "(" + _tempFieldList + ") ";
                                            //    _sql = _sql + "Values(";

                                            //    break;
                                            //}


                                            if (_inIndex >= 0)
                                            {
                                                // grab the field from the input fields
                                                _value = _fields[_inIndex];
                                                //LAP 20130426 - check for any single quotes and make them two single quotes
                                                _value = _value.Replace("'", "''");
                                                _values = _values + "'" + _value + "',";
                                            }
                                            else
                                            {
                                                //if the field index wasn't found above, assume it's an expression
                                                if (_mappingXref[m].inField.IndexOf('<') == 0 || _mappingXref[m].inField.IndexOf("'") >= 0 || CommonRoutines.IsNumeric(_mappingXref[m].inField) || _mappingXref[m].inField.IndexOf("[") >= 0)
                                                {
                                                    // expression, number or litreal
                                                    _value = _mappingXref[m].inField;

                                                    _value = CommonRoutines.ResolveValue(_value, _inputFieldNames, _fields);
                                                    //_value = Widgets.ResolveSymbolics(_value);

                                                    _value = _value.Replace("[" + _mappingXref[m].inExprField.ToUpper() + "]", "'" + _fields[_mappingXref[m].inExprFieldIndex] + "'");

                                                    //// strip the < and >
                                                    //_inIndex = _value.IndexOf('<');
                                                    //_value = _value.Substring(_inIndex);
                                                    //_inIndex = _value.LastIndexOf('>');
                                                    //if (_inIndex > 1)
                                                    //{
                                                    //    _value = _value.Substring(0, _inIndex - 1);
                                                    //}
                                                    // add it to the values list
                                                    // is it a literal? (enclosed in quotes)
                                                    // now if it is not numeric, enclose it in quotes
                                                    _value = _value.Trim();
                                                    if (!CommonRoutines.IsNumeric(_value))
                                                    {
                                                        _value = "'" + _value + "'";
                                                    }
                                                    _values = _values + _value + ",";
                                                }
                                            }
                                        }
                                        _sql = _sql + _values;
                                    }
                                    else
                                    {
                                        // positional...
                                        for (int n = 0; n < _fieldCount; n++)
                                        {
                                            if (n < _fields.Length)
                                            {
                                                // check for any single quotes and make them two single quotes
                                                _fields[n] = _fields[n].Replace("'", "''");
                                                _fields[n] = _fields[n].Replace(fieldSeparator, "");
                                                // remove any of the separator values
                                                _sql = _sql + "'" + _fields[n].Trim() + "',";
                                            }
                                            else
                                            {
                                                _sql = _sql + "'',";
                                            }
                                        }
                                    }

                                    // get rid of last ,
                                    int _index = _sql.LastIndexOf(',');
                                    _sql = _sql.Substring(0, _index);
                                    _sql = _sql + "); ";
                                    // execute it
                                    _rowsInserted = Execute(connectionString, dbms, _sql);
                                    if (_rowsInserted < 0)
                                    {
                                        // an error occurred 
                                        if (interactive)
                                        {
                                            if (!CommonRoutines.Ask("Would you like to continue importing this file?"))
                                            {
                                                _result += "One or more errors occurred while inserting records" + ";";
                                                _continue = false;
                                                break;
                                            }
                                        }
                                        else
                                        {
                                            ++_numSQLErrors;
                                            if (_numSQLErrors >= _sqlErrorThreshold)
                                            {
                                                _result += "The SQL Error Threshold (" + _sqlErrorThreshold.ToString() + ") was reached while inserting records" + ";";
                                                results = _result;
                                                lastStatus = false;
                                                lastStatusCode = "-999";
                                                CommonRoutines.HideProgress();
                                                return -1;
                                            }
                                        }
                                    }
                                    else
                                    {
                                        _numRowsInserted = _numRowsInserted + _rowsInserted;
                                    }

                                }
                                _skipRecord = false;

                                if (stopExecution)

                                {
                                    _result += "Processing was stopped by user" + ";";
                                    _continue = false;
                                }

                            }
                        }
                    }
                    catch (Exception exio)
                    {
                        _result = "An error occurred in reading the input file;";
                        lastStatus = false;
                        lastStatusCode = "-999";
                        lastStatusMessage = exio.Message;
                    }
                }
                else  //if file not found
                {
                    //LAP 20130426 - If the file was not found, set message and return
                    _result += "File " + fileName + " could not be found";
                    lastStatus = false;
                    lastStatusCode = "-999";
                    results = _result;
                    CommonRoutines.HideProgress();
                    return -1;
                }

                if (lastStatus)
                {
                    // make up the result to return
                    _result += "Number of rows inserted into table " + tableName + " was " + _numRowsInserted;
                    lastStatusMessage = "Success";
                    lastStatusCode = "0";
                    lastStatus = true;
                }
                else
                {
                    if (_result == String.Empty)
                    {
                        _result = "An unidentified error has occurred in the import process";
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.HideProgress();
                _result += "An error occurred in the import process";
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ImportFileIntoTable(s,s,s,b,s,s,b,b) > " + ex.Message);
            }

            CommonRoutines.HideProgress();

            results = _result;

            return _numRowsInserted;

        }





        /// <summary>
        /// List<MappingStruct> LoadMappingXref(string mapping)
        /// If a mapping is specified, fill in the xref
        /// </summary>
        /// <param name="mapping"></param>
        /// <returns></returns>
        private static List<MappingStruct> LoadMappingXref(string mapping)
        {
            List<MappingStruct> _mappingXref = new List<MappingStruct>();
            string _mapping = mapping;

            try
            {
                if (_mapping != "")
                {
                    // first load the structure from the mapping info.  the mapping name will be in ()
                    int _index = _mapping.LastIndexOf('(');
                    if (_index >= 0)
                    {
                        _mapping = _mapping.Substring(_index + 1);
                        _mapping = _mapping.Replace('(', ' ');
                        _mapping = _mapping.Replace(')', ' ');
                        _mapping = _mapping.Trim();
                    }

                    // now load the mapping records
                    string _sql = "Select m.Mapping_Id, m.Name, mf.Sequence, In_Name, Out_Name " +
                                  "From Mappings m inner join Mapped_Fields mf " +
	                              "      on m.mapping_id = mf.mapping_id " +
                                  "Where m.Name = '" + _mapping + "' " + 
                                  "order by sequence ";

                    List<string[]> _rows = Select(_sql);

                    if (_rows.Count > 0)
                    {
                        // fill in the mapping
                        for (int n=1;n<_rows.Count;n++)
                        {
                            string[] _row = _rows[n];
                            MappingStruct _xref = new MappingStruct();
                            _xref.mappingId = CommonRoutines.ConvertToInt(_row[0]);
                            _xref.mappingName = _row[1];
                            _xref.sequence = CommonRoutines.ConvertToInt(_row[2]);
                            _xref.inFieldIndex = -1;
                            _xref.inField = _row[3];
                            _xref.outFieldIndex = -1;
                            _xref.outField = _row[4];
                            _mappingXref.Add(_xref);
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadMappingXref > " + ex.Message);
            }

            return _mappingXref;
        }






        /// <summary>
        /// string GetTableNameFromFileName(string fileName)
        /// Determine a table from the passed file name
        /// </summary>
        /// <param name="fileName"></param>
        /// <returns></returns>
        public static string GetTableNameFromFileName(string fileName)
        {
            string _tableName = "";

            try
            {
                // see which option was selected
                _tableName = fileName;
                int _index = _tableName.LastIndexOf('\\');
                if (_index > 0)
                {
                    _tableName = _tableName.Substring(_index + 1);
                }
                _index = _tableName.LastIndexOf('.');
                if (_index > 0)
                {
                    _tableName = _tableName.Substring(0, _index);
                }

                // make sure no . in the name
                _tableName = _tableName.Replace('.', '_');
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetTableNameFromFileName > " + ex.Message);
            }

            return _tableName;

        }



        /// <summary>
        /// int Execute(string sql)
        /// Execute the passed sql on the base connection
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static int Execute(string sql)
        {
            int _result = 0;

            try
            {
                if (BaseConnection != "" && BaseDBMS != "")
                {
                    _result = Execute(BaseConnection, BaseDBMS, sql);
                }
                else
                {
                    _result = - 1;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Execute(s) > " + ex.Message);
            }

            return _result;

        }






        /// <summary>
        /// int Execute(string connectionString, string sql)
        /// Execute the passed sql on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static int Execute(string connectionString, string dbms, string sql)
        {
            int _rowsAffected = -1;

            lastConnection = connectionString;

            try
            {
                // call the appropriate dbms method
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        _rowsAffected = dbSQLServer.Execute(connectionString, sql);
                        break;

                }

                SetStatusInfo(dbms);

            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Execute(s,s) > " + ex.Message);
            }

            lastNumberRowsAffected = _rowsAffected;

            return _rowsAffected;

        }





        /// <summary>
        /// string EvaluateSQL(string sql)
        /// Evaluate SQL
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static string EvaluateSQL(string sql)
        {
            string _result = "";

            try
            {
                if (BaseConnection != "" && BaseDBMS != "")
                {
                    _result = EvaluateSQL(baseConnection, baseDBMS, sql);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".EvaluateSQL(s) > " + ex.Message);
            }

            return _result;

        }






        /// <summary>
        /// string EvaluateSQL(string sql)
        /// Evaluate SQL
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static string EvaluateSQL(string connectionString, string dbms, string sql)
        {
            string _result = "";

            try
            {
                // get the sql out
                string _sql = sql.ToUpper();
                int _offset = _sql.IndexOf('(');
                if (_offset > 0)
                {
                    _sql = _sql.Substring(_offset + 1);
                    _offset = _sql.LastIndexOf(')');
                    if (_offset > 0)
                    {
                        _sql = _sql.Substring(0, _offset);
                    }
                }

                // now see if the sql is good...
                if (connectionString != "")
                {
                    // is it a select?
                    if (_sql.IndexOf("SELECT") == 0)
                    {
                        // get the resultset
                        List<string[]> _rows = Select(connectionString, dbms, _sql);
                        // were there any rows?
                        if (_rows.Count > 0)
                        {
                            // the value is the first column of the second row
                            string[] _row = _rows[1];
                            _result = _row[0];
                        }
                        else
                        {
                            _result = "";
                        }
                    }
                    else
                    {
                        int _sqlResult = Execute(BaseConnection, BaseDBMS, sql);
                        _result = _sqlResult.ToString();
                    }
                }
                else
                {
                    _result = "Error: no connection set";
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".EvaluateSQL(s,s,s) > " + ex.Message);
            }

            return _result;

        }





        /// <summary>
        /// List<string[]> Select(string sql)
        /// Get the records for the passed sql on the base connection
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static List<string[]> Select(string sql)
        {
            List<string[]> _rows = new List<string[]>();

            try
            {
                if (BaseConnection != "" && BaseDBMS != "")
                {
                    _rows = Select(BaseConnection, BaseDBMS, sql);
                }
                else
                {
                    _rows = new List<string[]>();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Select(s) > " + ex.Message);
            }

            return _rows;

        }







        /// <summary>
        /// List<string[]> Select(string connectionString, string sql)
        /// Get the records for the passed sql on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static List<string[]> Select(string connectionString, string dbms, string sql)
        {
            SqlDataReader _sdr = null;
            List<string[]> _rows = new List<string[]>();

            try
            {
                lastConnection = connectionString;

                // call the appropriate dbms method
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        _rows = dbSQLServer.Select(connectionString, sql);
                        break;

                }

                SetStatusInfo(dbms);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Select(s,s) > " + ex.Message);
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
            }

            return _rows;

        }






        /// <summary>
        /// DBCursor SelectCursor(string connectionString, string dbms, string cursorName, string sql, bool loadCollection)
        /// Get the records for the passed sql on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static IGenDataset SelectCursor(string connectionString, string dbms, string cursorName, string sql, bool loadCollection)
        {
            IGenDataset _cursor = new IGenDataset();

            try
            {
                lastConnection = connectionString;

                // call the appropriate dbms method
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        _cursor = dbSQLServer.SelectCursor(connectionString, cursorName, sql, loadCollection);
                        break;

                    case "ACCESS":
                        break;

                    case "SQLITE":
                        break;
                }

                SetStatusInfo(dbms);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SelectCursor(s,s,s,s,b) > " + ex.Message);
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
            }

            return _cursor;

        }






        /// <summary>
        /// List<string[]> ExecuteSP(string sql)
        /// Execute the passed stored proc on the base connection
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static List<string[]> ExecuteSP(string spName, string spParms, ref long spReturnCode)
        {
            List<string[]> _rows = new List<string[]>();

            try
            {
                if (BaseConnection != "")
                {
                    _rows = ExecuteSP(BaseConnection, BaseDBMS, spName, spParms, ref spReturnCode);
                }
                else
                {
                    _rows = new List<string[]>(); ;
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ExecuteSP(s) > " + ex.Message);
            }

            return _rows;

        }








        /// <summary>
        /// List<string[]> ExecuteSP(string connectionString, string sql)
        /// Execute the passed stored proc on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static List<string[]> ExecuteSP(string connectionString, string dbms, string spName, string spParms, ref long spReturnCode)
        {
            SqlDataReader _sdr = null;
            List<string[]> _rows = new List<string[]>();

            lastConnection = connectionString;

            // open the connection
            try
            {
                // call the appropriate dbms method
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        _rows = dbSQLServer.ExecuteSP(connectionString, spName, spParms, ref spReturnCode);
                        break;

                    case "ACCESS":
                        //_rows = dbAccess.ExecuteSP(connectionString, spName, spParms);
                        break;

                    case "SQLITE":
                       // _rows = dbSQLite.ExecuteSP(connectionString, spName, spParms);
                        break;
                }

                SetStatusInfo(dbms);

            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ExecuteSP(s,s) > " + ex.Message);
            }

            return _rows;

        }






        /// <summary>
        /// List<string> GetTableFields(string tableName)
        /// Get the fields in the table passed on the base connection
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public static List<string> GetTableFields(string tableName)
        {
            List<string> _fields = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _fields = GetTableFields(BaseConnection, BaseDBMS, tableName);
                }
                else
                {
                    _fields = new List<string>();
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetTableFields(s) > " + ex.Message);
            }

            return _fields;

        }






        /// <summary>
        /// List<string> GetTableFields(string connectionString, string tableName)
        /// Get the fields in the table passed on the passed connection, sorted
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public static List<string> GetTableFields(string connectionString, string dbms, string tableName)
        {
            List<string> _fields = new List<string>();

            try
            {
                string _sortBy = ConfigRoutines.GetSetting("SortFieldOption").ToUpper();

                _fields = GetTableFields(connectionString, dbms, tableName, _sortBy);
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetTableFields(s,s) > " + ex.Message);
            }

            return _fields;

        }





        /// <summary>
        /// List<string> GetTableFields(string connectionString, string tableName, string sortBy)
        /// Get the fields in the table passed on the passed connection, sorted
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="tableName"></param>
        /// <param name="sortBy"></param>
        /// <returns></returns>
        public static List<string> GetTableFields(string connectionString, string dbms, string tableName, string sortBy)
        {
            List<string> _fields = new List<string>();

            lastConnection = connectionString;

            // open the connection
            try
            {
                _fields = GetTableFields(connectionString, dbms, tableName, sortBy, false);
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetTableFields(s,s,s) > " + ex.Message);
            }

            return _fields;

        }




        /// <summary>
        /// List<string> GetTableFields(string connectionString, string tableName, string sortBy)
        /// Get the fields in the table passed on the passed connection, sorted
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="tableName"></param>
        /// <param name="sortBy"></param>
        /// <returns></returns>
        public static List<string> GetTableFields(string connectionString, string dbms, string tableName, string sortBy, bool returnAllInfo)
        {
            List<string> _fields = new List<string>();

            lastConnection = connectionString;

            // open the connection
            try
            {
                if (connectionString == null || dbms == null || tableName == null)
                {
                    // ignore
                }
                else
                {
                    // call the appropriate dbms method
                    switch (dbms.ToUpper())
                    {
                        case "SQLSERVER":
                            _fields = dbSQLServer.GetTableFields(connectionString, tableName, sortBy, returnAllInfo);
                            break;

                    }

                    SetStatusInfo(dbms);
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetTableFields(s,s,s, b) > " + ex.Message);
            }

            return _fields;

        }







        /// <summary>
        /// string GetMaxFieldValue(string tableName, string fieldName)
        /// Get the max value for a passed field in the passed table on the base connection
        /// </summary>
        /// <param name="tableName"></param>
        /// <param name="fieldName"></param>
        /// <returns></returns>
        public static string GetMaxFieldValue(string tableName, string fieldName)
        {
            string _results = "";

            try
            {
                if (BaseConnection != "")
                {
                    _results = GetMaxFieldValue(BaseConnection, BaseDBMS, tableName, fieldName, "");
                }
                else
                {
                    _results = "";
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetMaxFieldValue(s,s) > " + ex.Message);
            }

            return _results;

        }







        /// <summary>
        /// string GetMaxFieldValue(string tableName, string fieldName, string criteria)
        /// Get the max value for a passed field in the passed table on the base connection for the passed criteria
        /// </summary>
        /// <param name="tableName"></param>
        /// <param name="fieldName"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        public static string GetMaxFieldValue(string tableName, string fieldName, string criteria)
        {
            string _results = "";

            try
            {
                if (BaseConnection != "")
                {
                    _results = GetMaxFieldValue(BaseConnection, BaseDBMS, tableName, fieldName, criteria);
                }
                else
                {
                    _results = "";
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetMaxFieldValue(s,s,s) > " + ex.Message);
            }

            return _results;

        }







        /// <summary>
        /// string GetMaxFieldValue(string connectionString, string tableName, string fieldName, string criteria)
        /// Get the max value for a passed field in the passed table on the passed connection for the passed criteria
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="tableName"></param>
        /// <param name="fieldName"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        public static string GetMaxFieldValue(string connectionString, string dbms, string tableName, string fieldName, string criteria)
        {
            string _maxFieldValue = "";

            lastConnection = connectionString;

            // open the connection
            try
            {
                string _sql = "Select max(" + fieldName + ") as maxvalue From " + tableName;
                if (criteria != "")
                {
                    _sql = _sql + " Where " + criteria + " ";
                }

                List<string[]> _rows = Select(connectionString, dbms, _sql);
                if (_rows.Count > 0)
                {
                    if (_rows[1][0] != "")
                    {
                        _maxFieldValue = CommonRoutines.ConvertToInt(_rows[1][0]).ToString();
                    }
                }
                else
                {
                    _maxFieldValue = "0";
                }
                lastStatusMessage = "Success";
                lastStatusCode = "0";
                lastStatus = true;
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetMaxFieldValue(s,s,s,s) > " + ex.Message);
            }

            return _maxFieldValue;

        }





        /// <summary>
        /// int GetRowCount(string tableName, string criteria)
        /// Get the number of rows for the passed criteria for the base connection
        /// </summary>
        /// <param name="tableName"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        public static int GetRowCount(string tableName, string criteria)
        {
            int _numRows = 0;

            try
            {
                if (BaseConnection != "")
                {
                    _numRows = GetRowCount(BaseConnection, BaseDBMS, tableName, criteria);
                }
                else
                {
                    _numRows = 0;
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetRowCount(s,s) > " + ex.Message);
            }

            return _numRows;
        }







        /// <summary>
        /// int GetRowCount(string connectionString, string tableName, string criteria)
        /// Get the number of rows for the passed criteria for the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="tableName"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        public static int GetRowCount(string connectionString, string dbms, string tableName, string criteria)
        {
            int _numRows = 0;

            try
            {
                string _sql = "Select count(*) From " + tableName;
                if (criteria != "")
                {
                    _sql = _sql + " Where " + criteria;
                }
                List<string[]> _rows = Select(connectionString, dbms, _sql);
                if (_rows.Count > 0)
                {
                    // first row, first field should be the number of rows
                    if (_rows[1][0] != "")
                    {
                        _numRows = CommonRoutines.ConvertToInt(_rows[1][0]);
                    }
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetRowCount(s,s,s) > " + ex.Message);
            }

            return _numRows;
        }





        public static List<string[]> GetProcessWidgets(string fields, string criteria)
        {
            List<string[]> _rows = new List<string[]>();

            try
            {
                // first get all of the process widgets
                string _sql = "select " + fields + " " +
                       "from vwGetProcessWidgets ";

                if (criteria != "")
                {
                    _sql = _sql + " Where " + criteria + " ";
                }

                _sql = _sql + "order by Widget_Id ";

                _rows = Select(_sql);

                if (_rows.Count > 0)
                {
                    string[] _fields = _rows[0];

                    for (int n = 1; n < _rows.Count; n++)
                    {
                        string _processId = GetRowValue(_fields, _rows[n], "Process_Id");
                        string _widgetCategory = GetRowValue(_fields, _rows[n], "Category");
                        string _widgetName = GetRowValue(_fields, _rows[n], "Widget_Name");
                        string _widgetId = GetRowValue(_fields, _rows[n], "Widget_Id");
                        string _properties = GetRowValue(_fields, _rows[n], "Properties");
                        string _values = GetRowValue(_fields, _rows[n], "Last_Values");

                        if (_widgetId != "")
                        {
                            // now for each process widget, get the process widget properties
                            _sql = "Select Property_Name, Property_Value " +
                                   "From Process_Widget_Properties " +
                                   "Where Process_Id=" + _processId + " " +
                                   "    and Widget_Id=" + _widgetId + " " +
                                   "Order By Widget_Id, Sequence ";

                            List<string[]> _propertyRows = Select(_sql);
                            if (_propertyRows.Count > 0)
                            {
                                // concatenate the properties and then add to the current _row
                                _properties = "";
                                for (int m = 1; m < _propertyRows.Count; m++)
                                {
                                    _properties = _properties + _propertyRows[m][0] + "=" + _propertyRows[m][1] + "^";
                                }
                                SetRowValue(_fields, _rows[n], "Properties", _properties);
                                //_rows[n][3] = _properties;
                            }

                            // now for each process widget, get the process widget values
                            _sql = "Select Widget_Name, Widget_Value " +
                                   "From Process_Widget_Values " +
                                   "Where Process_Id=" + _processId + " " +
                                   "    and Widget_Id=" + _widgetId + " " +
                                   "Order By Widget_Id ";

                            List<string[]> _valueRows = Select(_sql);
                            if (_valueRows.Count > 0)
                            {
                                // concatenate the properties and then add to the current _row
                                _values = "";
                                for (int m = 1; m < _valueRows.Count; m++)
                                {
                                    _values = _values + _valueRows[m][0] + "=" + _valueRows[m][1] + "^";
                                }
                                SetRowValue(_fields, _rows[n], "Last_Values", _values);
                                //_rows[n][4] = _values;

                            }

                            // now for each process widget, get the process widget links
                            _sql = "Select LinkType, Source, Target,Condition,Location,Status " +
                                   "From Process_Widget_links " +
                                   "Where Process_Id=" + _processId + " " +
                                   "    and Widget_Id=" + _widgetId + " " + 
                                   "Order By Widget_Id, Sequence ";

                            List<string[]> _linkRows = Select(_sql);
                            string _linkValues = "";
                            if (_linkRows.Count > 0)
                            {
                                // concatenate the properties and then add to the current _row
                                _linkValues = "";
                                for (int m = 1; m < _linkRows.Count; m++)
                                {
                                    _linkValues = _linkValues + _linkRows[m][1] + "=" + _linkRows[m][0] + ";" + _linkRows[m][1] + ";" + _linkRows[m][2] + ";" +
                                                        _linkRows[m][3] + ";" + _linkRows[m][4] + ";" + _linkRows[m][5] + ";" + "^";
                                }
                                SetRowValue(_fields, _rows[n], "Links", _linkValues);

                            }
                        }

                    }

                }

            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetProcessWidgets > " + ex.Message);
            }

            return _rows;

        }




        /// <summary>
        /// int AddConnectionObject(string connectionName, string connectionString)
        /// Add a process specific connection to the connection pool.  If it already exists
        /// then replace it
        /// </summary>
        /// <param name="connectionName"></param>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public static int AddConnectionObject(string connectionName, string connectionString)
        {
            bool _found = false;
            connectionObjectsType _connection = new connectionObjectsType();

            try
            {
                // find the connection
                for (int n=0;n<connectionObjects.Count;n++)
                {
                    _connection = connectionObjects[n];
                    if (_connection.connectionLevel == "PROCESS")
                    {
                        if (_connection.connectionName.ToUpper() == connectionName.ToUpper())
                        {
                            // replace it
                            _connection.connectionString = connectionString;
                            connectionObjects[n] = _connection;
                            _found = true;
                            break;
                        }
                    }
                }

                if (!_found)
                {
                    // add the connection
                     _connection = new connectionObjectsType();
                    _connection.connectionLevel = "PROCESS";
                    _connection.connectionName = connectionName;
                    _connection.connectionString = connectionString;
                    connectionObjects.Add(_connection);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".AddConnectionObject > " + ex.Message);
            }

            return connectionObjects.Count;

        }





        /// <summary>
        /// int RemoveConnectionObject(string connectionName)
        /// Remove the process specific connection object from the pool
        /// </summary>
        /// <param name="connectionName"></param>
        /// <returns></returns>
        public static int RemoveConnectionObject(string connectionName)
        {
            connectionObjectsType _connection = new connectionObjectsType();

            try
            {
                // find the connection
                for (int n = 0; n < connectionObjects.Count; n++)
                {
                    _connection = connectionObjects[n];
                    if (_connection.connectionLevel == "PROCESS")
                    {
                        if (_connection.connectionName.ToUpper() == connectionName.ToUpper())
                        {
                            // remove it
                            connectionObjects.Remove(_connection);
                            break;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".RemoveConnectionObject > " + ex.Message);
            }

            return connectionObjects.Count;

        }





        /// <summary>
        /// int RenameConnectionObject(string connectionName, string newConnectionName)
        /// Rename the connection to the new name
        /// </summary>
        /// <param name="connectionName"></param>
        /// <param name="newConnectionName"></param>
        /// <returns></returns>
        public static int RenameConnectionObject(string connectionName, string newConnectionName)
        {
            connectionObjectsType _connection = new connectionObjectsType();

            try
            {
                // find the connection
                // find the connection
                for (int n = 0; n < connectionObjects.Count; n++)
                {
                    _connection = connectionObjects[n];
                    if (_connection.connectionLevel == "PROCESS")
                    {
                        if (_connection.connectionName.ToUpper() == connectionName.ToUpper())
                        {
                            // rename it
                            _connection.connectionName = newConnectionName;
                            connectionObjects[n] = _connection;
                            break;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".RenameConnectionObject > " + ex.Message);
            }

            return connectionObjects.Count;

        }




        /// <summary>
        /// int GetConnectionObjects()
        /// Get the connection objects defined
        /// </summary>
        /// <returns></returns>
        public static int GetConnectionObjects()
        {

            try
            {
                connectionObjects.Clear();

                // add the main connection defined in the config file (for all users)
                if (MainConnection != "")
                {
                    connectionObjectsType _mainConnection = new connectionObjectsType();
                    _mainConnection.connectionLevel = "SYSTEM";
                    _mainConnection.connectionName = "Main Connection";
                    _mainConnection.connectionDBMS = MainDBMS;
                    _mainConnection.connectionString = MainConnection;
                    connectionObjects.Add(_mainConnection);
                }

                if (CSA.loggedOnAsAdmin)
                {
                    // add the base connection defined in the config file (if user is Admin)
                    if (BaseConnection != "")
                    {
                        connectionObjectsType _baseConnection = new connectionObjectsType();
                        _baseConnection.connectionLevel = "SYSTEM";
                        _baseConnection.connectionName = "Base Connection";
                        _baseConnection.connectionDBMS = BaseDBMS;
                        _baseConnection.connectionString = BaseConnection;
                        connectionObjects.Add(_baseConnection);
                    }
                }

                // get the connection objects
                string _fields = "Process_Id, Widget_Name, Widget_Id, Properties, Last_Values";
                string _criteria = "Process_Level='SYSTEM' " +
                                   "    and Name='DBCONNECTIONS' ";

                List<string[]> _rows = GetProcessWidgets(_fields,_criteria);

                if (_rows.Count > 0)
                {
                    string _fieldList = CommonRoutines.GetFieldString(_rows[0]);

                    for (int n = 1; n < _rows.Count; n++)
                    {
                        string _fieldValues = CommonRoutines.GetFieldString(_rows[n]);

                        string _connectionName = CommonRoutines.GetRowValue(_fieldList, _fieldValues, "Widget_Name");

                        string[] _properties = CommonRoutines.GetRowValue(_fieldList, _fieldValues, "Properties").Split('^');

                        string _dbms = "";
                        string _connectionString = "";

                        for (int m = 0; m < _properties.Length; m++)
                        {
                            if (_properties[m].ToUpper().IndexOf("DBMS=") == 0)
                            {
                                _dbms = _properties[m].Substring(5);
                            }

                            if (_properties[m].ToUpper().IndexOf("CONNECTION=") == 0)
                            {
                                _connectionString = _properties[m].Substring(11);
                            }

                        }

                        if (_dbms != "" && _connectionString != "")
                        {
                            // add the connection
                            connectionObjectsType _connection = new connectionObjectsType();
                            _connection.connectionLevel = "SYSTEM";
                            _connection.connectionName = _connectionName;
                            _connection.connectionDBMS = _dbms;
                            _connection.connectionString = _connectionString;
                            connectionObjects.Add(_connection);
                        }

                    }
                }

                // if the current pallet is set, see if there are any connection objects there
                if (CSA.currentPallet != null)
                {
                    // now add any connection objects on this pallet to the list
                    for (int m = 0; m < CSA.currentPallet.Controls.Count; m++)
                    {
                        Control _control = CSA.currentPallet.Controls[m];
                        if (_control.Tag != null && _control.Tag.GetType().Name.ToUpper() == "IGENFIELD")
                        {
                            IGenField _igenFieldObjectTemp = (IGenField)_control.Tag;
                            if (_igenFieldObjectTemp.type == "CONNECTION")
                            {
                                connectionObjectsType _connection = new connectionObjectsType();
                                _connection.connectionLevel = "IGEN";
                                _connection.connectionName = _igenFieldObjectTemp.name;
                                _connection.connectionString = _igenFieldObjectTemp.GetProperty("Connection");
                                _connection.connectionDBMS = _igenFieldObjectTemp.GetProperty("DBMS");
                                connectionObjects.Add(_connection);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetConnectionObjects > " + ex.Message);
            }

            return connectionObjects.Count;

        }






        /// <summary>
        /// string GetConnectionString(string connectionObjectName)
        /// Get the connection string for the passed connection object name
        /// </summary>
        /// <param name="connectionObjectName"></param>
        /// <returns></returns>
        public static string GetConnectionString(string connectionObjectName)
        {
            string _connectionString = "";

            try
            {

                for (int n = 0; n < connectionObjects.Count; n++)
                {
                    if (connectionObjectName.ToUpper() == connectionObjects[n].connectionName.ToUpper())
                    {
                        _connectionString = connectionObjects[n].connectionString;
                        break;
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetConnectionString > " + ex.Message);
            }


            return _connectionString;

        }






        /// <summary>
        /// connectionObjectsType GetConnectionObject(string connectionObjectName)
        /// Get the connection object for the passed connection object name
        /// </summary>
        /// <param name="connectionObjectName"></param>
        /// <returns></returns>
        public static connectionObjectsType GetConnectionObject(string connectionObjectName)
        {
            connectionObjectsType _connectionObject = new connectionObjectsType();

            try
            {

                for (int n = 0; n < connectionObjects.Count; n++)
                {
                    if (connectionObjectName.ToUpper() == connectionObjects[n].connectionName.ToUpper())
                    {
                        _connectionObject = connectionObjects[n];
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetConnectionObject > " + ex.Message);
            }

            return _connectionObject;

        }







        /// <summary>
        /// string TruncateTable(string tableName)
        /// Truncate the passed table on the base connection
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public static string TruncateTable(string tableName)
        {
            string _result = "";

            try
            {
                _result = TruncateTable(BaseConnection, BaseDBMS, tableName);
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TruncateTable(s) > " + ex.Message);
            }

            return _result;

        }





        /// <summary>
        /// string TruncateTable(string connectionString, string tableName)
        /// Truncate the passed table on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public static string TruncateTable(string connectionString, string dbms, string tableName)
        {
            string _result = "";
            string _ddl = "";

            try
            {
                _ddl = _ddl + "Delete From " + tableName + "; ";

                // truncate the table
                if (Execute(connectionString, dbms, _ddl) < 0)
                {
                    // an error occured 
                    _result = "An error occured in truncating the table";
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TruncateTable(s,s) > " + ex.Message);
            }

            return _result;

        }





        /// <summary>
        /// string CreateTable(string tableName, string fieldDefinitions, int numFields)
        /// Create the table passed for the base connection
        /// </summary>
        /// <param name="tableName"></param>
        /// <param name="fieldDefinitions"></param>
        /// <param name="numFields"></param>
        /// <returns></returns>
        public static string CreateTable(string tableName, string fieldDefinitions, int numFields)
        {
            string _result = "";

            try
            {
                _result = CreateTable(BaseConnection, BaseDBMS, tableName, fieldDefinitions, numFields);
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TruncateTable(s,s) > " + ex.Message);
            }

            return _result;

        }






        /// <summary>
        /// string CreateTable(string connectionString, string tableName, string fieldDefinitions, int numFields)
        /// Create the table passed on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="tableName"></param>
        /// <param name="fieldDefinitions"></param>
        /// <param name="numFields"></param>
        /// <returns></returns>
        public static string CreateTable(string connectionString, string dbms, string tableName, string fieldDefinitions, int numFields)
        {
            string _ddl = "";
            string _fieldList = "";
            string _results = "";

            try
            {
                // grab the fields 
                _fieldList = fieldDefinitions;

                // see if the table exists, if so then drop it first
                if (TableExists(connectionString, dbms, tableName))
                {
                    _ddl = _ddl + "Drop Table " + tableName + "; ";
                }

                _ddl = _ddl + "Create Table " + tableName + "( ";

                // create the fields
                if (_fieldList == "")
                {
                    for (int n = 0; n < numFields; n++)
                    {
                        _fieldList = _fieldList + "Field_" + n.ToString() + ",";
                    }
                    _fieldList = _fieldList.Substring(0, _fieldList.Length - 1);
                }

                string[] _fields = _fieldList.Split(',');

                for (int n = 0; n < _fields.Length; n++)
                {
                    // create the DDL
                    // if there are column definitions, use those
                    // form=fieldname, type, size, nullable
                    string[] _fieldDefs = _fields[n].Split('~');
                    if (_fieldDefs.Length > 1)
                    {
                        _ddl = _ddl + "    " + _fieldDefs[0] + "  " + _fieldDefs[1] + "(" + _fieldDefs[2] + ") " + _fieldDefs[3] + ", ";
                    }
                    else
                    {
                        if (_fieldDefs.Length > 0 && _fieldDefs[0].Trim().Length > 0)
                        {
                            _ddl = _ddl + "    " + _fieldDefs[0] + "  nvarchar(255) null, ";
                        }
                    }
                }

                // get rid of last ,
                int _index = _ddl.LastIndexOf(',');
                _ddl = _ddl.Substring(0, _index);
                _ddl = _ddl + "); ";
                // create the table
                if (Execute(connectionString, dbms, _ddl) < 0)
                {
                    // an error occured 
                    _results = "An error occured in creating the table";
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TruncateTable(s,s,s) > " + ex.Message);
            }

            return _results;

        }






        /// <summary>
        /// string ProcessExpression(string expression)
        /// Process the passed express
        /// </summary>
        /// <param name="expression"></param>
        /// <returns></returns>
        public static string ProcessExpression(string expression)
        {
            string _results = "";

            try
            {
                string _sql = "Select " + expression + " as result ";

                List<string[]> _rows = Select(_sql);
                // get the value 
                if (_rows.Count > 0)
                {
                    _results = _rows[1][0];
                }

            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ProcessExpression > " + ex.Message);
            }

            return _results;

        }





        /// <summary>
        /// string FillGridWithSQLResults(string connectionString, string dbms, string sql, DataGridView grid)
        /// Fill the passed grid with the results from the passed sql
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="dbms"></param>
        /// <param name="sql"></param>
        /// <param name="grid"></param>
        /// <returns>string</returns>
        public static string FillGridWithSQLResults(string connectionString, string dbms, string sql, DataGridView grid)
        {
            string _results = "";
            long _returnCode = 0;
            string _sql = sql;

            try
            {
                grid.Rows.Clear();
                grid.Columns.Clear();
                List<string[]> _rows = new List<string[]>();

                // remove any invalid chars...
                _sql = _sql.Replace("\n", "");
                _sql = _sql.Replace("\r", "");

                // is this a stored proc for the SQL?
                if (_sql.IndexOf("SP:") == 0)
                {
                    // parse out the sql
                    string[] _spParts = _sql.Split(':');
                    string _spName = _spParts[1];
                    string _spParms = _spParts[2];

                    _rows = DatabaseRoutines.ExecuteSP(connectionString, dbms, _spName, _spParms, ref _returnCode);
                }
                else
                {
                    _rows = DatabaseRoutines.Select(connectionString, dbms, _sql);
                }

                if (_rows.Count > 0)
                {
                    // first row is the fields
                    string[] _fields = _rows[0];
                    // create the columns
                    for (int n = 0; n < _fields.Length; n++)
                    {
                        grid.Columns.Add(_fields[n], _fields[n].Replace('_', ' '));
                    }

                    // now fill in the rows
                    for (int n = 1; n < _rows.Count; n++)
                    {
                        grid.Rows.Add(_rows[n]);
                    }

                    _results = (_rows.Count - 1) + " rows returned, return code=" + _returnCode;
                }
                else
                {
                    // get the error
                    if (DatabaseRoutines.lastStatusCode != "0")
                    {
                        _results = DatabaseRoutines.lastStatusMessage;
                    }
                    else
                    {
                        _results = "No rows found";
                    }

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".FillGridWithSQLResults > " + ex.Message);
            }

            return _results;

        }



        /// <summary>
        /// string FillGridWithSQLResults(string sql, DataGridView grid)
        /// Fill the passed grid with the results from the passed sql
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="grid"></param>
        /// <returns>string</returns>
        public static string FillGridWithSQLResults(string sql, DataGridView grid)
        {
            string _result = String.Empty;

            try
            {
                if (BaseConnection != "")
                {
                    _result = FillGridWithSQLResults(BaseConnection, BaseDBMS, sql, grid);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".FillGridWithSQLResults(s, g) > " + ex.Message);
            }

            return _result;

        }








        /// <summary>
        /// string GetDBMSConnectionStringTemplate(string dbms)
        /// For the passed dbms, return the connection string template
        /// </summary>
        /// <param name="dbms"></param>
        /// <returns></returns>
        public static string GetDBMSConnectionStringTemplate(string dbms)
        {
            string _connectionString = "";

            try
            {
                // based on the dbms, create the string accordingly
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        _connectionString = dbSQLServer.ConnectionTemplate;
                        break;

                }

                SetStatusInfo(dbms);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDBMSConnectionStringTemplate > " + ex.Message);
            }

            return _connectionString;

        }





        /// <summary>
        /// string GetDBMSLocation(string dbms)
        /// For the passed dbms, return if is a server or client based dbms
        /// </summary>
        /// <param name="dbms"></param>
        /// <returns></returns>
        public static string GetDBMSLocation(string dbms)
        {
            string _dbmsLocation = "";

            try
            {
                // based on the dbms, create the string accordingly
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        _dbmsLocation = "Server";
                        break;

                    case "ACCESS":
                        _dbmsLocation = "Local";
                        break;

                    case "SQLITE":
                        _dbmsLocation = "Local";
                        break;
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDBMSLocation > " + ex.Message);
            }

            return _dbmsLocation;

        }






        /// <summary>
        /// string GetConnectionServer(string dbms, string connectionString)
        /// For the passed connection, return the database or data source
        /// </summary>
        /// <param name="dbms"></param>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public static string GetConnectionServer(string connectionString, string dbms)
        {
            string _database = "";

            try
            {
                // based on the dbms, return the appropriate database/data source
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        _database = CommonRoutines.GetKeyValue(connectionString, "Server", ';') + "\\" + CommonRoutines.GetKeyValue(connectionString, "Database", ';');
                        break;

                    case "ACCESS":
                        _database = CommonRoutines.GetKeyValue(connectionString, "Data Source", ';');
                        break;

                    case "SQLITE":
                        _database = CommonRoutines.GetKeyValue(connectionString, "Data Source", ';');
                        break;
                }

                //if (_database.LastIndexOf('\\') > 0)
                //{
                //    // get the last part
                //    int _offset = _database.LastIndexOf('\\');
                //    _database = _database.Substring(_offset + 1);
                //}

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetConnectionServer > " + ex.Message);
            }

            return _database;

        }






        /// <summary>
        /// int GetDatabaseInstances()
        /// Get a list of the available servers on the network with their databases
        /// </summary>
        /// <returns></returns>
        public static int GetDatabaseInstances()
        {
            dbInstances.Clear();

            try
            {
                System.Data.Sql.SqlDataSourceEnumerator _instance = System.Data.Sql.SqlDataSourceEnumerator.Instance;

                System.Data.DataTable _dataTable = _instance.GetDataSources();

                // read the datatable
                foreach (System.Data.DataRow row in _dataTable.Rows)
                {
                    DatabaseServersStruct _serverInfo = new DatabaseServersStruct();
                    foreach (System.Data.DataColumn col in _dataTable.Columns)
                    {
                        switch (col.ColumnName.ToUpper())
                        {
                            case "SERVERNAME":
                                _serverInfo.serverName = row[col].ToString();
                                break;

                            case "INSTANCENAME":
                                _serverInfo.instanceName = row[col].ToString();
                                break;

                            case "ISCLUSTERED":
                                _serverInfo.isClustered = (row[col].ToString().ToUpper() == "YES"?true:false);
                                break;

                            case "VERSION":
                                _serverInfo.version = row[col].ToString();
                                break;

                        }

                    }
                    dbInstances.Add(_serverInfo);
                }
                

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseInstances > " + ex.Message);
            }

            return dbInstances.Count;

        }





        /// <summary>
        /// bool IsSQLServerCEV40Installed()
        /// See if the SQLServer Compact Edition is installed on this box
        /// </summary>
        /// <returns></returns>
        public static bool IsSQLServerCEV40Installed()
        {

            // see if the assembly is there
            try
            {
                System.Reflection.Assembly.Load("System.Data.SqlServerCe, Version=4.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91");
            }
            catch (System.IO.FileNotFoundException)
            {
                return false;
            }

            // see if we can create a data factory
            try
            {
                var factory = System.Data.Common.DbProviderFactories.GetFactory("System.Data.SqlServerCe.4.0");
            }
            catch (System.Configuration.ConfigurationException)
            {
                return false;
            }
            catch (System.ArgumentException)
            {
                return false;
            }

            // if these all succeed then we have it installed
            return true;
        }



        /// <summary>
        /// string GetRowValue(string[] fields, string[] values, string fieldName)
        /// Get the value in the position of the field name sent
        /// </summary>
        /// <param name="fields"></param>
        /// <param name="values"></param>
        /// <param name="fieldName"></param>
        /// <returns></returns>
        public static string GetRowValue(string[] fields, string[] values, string fieldName)
        {
            string _value = "";

            try
            {
                string[] _fields = fields;
                string[] _values = values;

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
        /// void SetRowValue(string[] fields, string[] values, string fieldName, string fieldValue)
        /// Set the value in the position of the field name sent
        /// </summary>
        /// <param name="fields"></param>
        /// <param name="values"></param>
        /// <param name="fieldName"></param>
        /// <returns></returns>
        public static void SetRowValue(string[] fields, string[] values, string fieldName, string fieldValue)
        {

            try
            {
                string[] _fields = fields;
                string[] _values = values;

                for (int n = 0; n < _fields.Length; n++)
                {
                    if (_fields[n].ToUpper() == fieldName.ToUpper())
                    {
                        _values[n] = fieldValue;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".SetRowValue > " + ex.Message);
            }

            return;
        }



        
        /// <summary>
        /// void SetStatusInfo(string dbms)
        /// Set status info based on DBMS
        /// </summary>
        /// <param name="dbms"></param>
        private static void SetStatusInfo(string dbms)
        {

            try
            {
                // call the appropriate dbms method
                switch (dbms.ToUpper())
                {
                    case "SQLSERVER":
                        lastStatus = dbSQLServer.lastStatus;
                        lastStatusCode = dbSQLServer.lastStatusCode;
                        lastStatusMessage = dbSQLServer.lastStatusMessage;
                        break;

                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetStatusInfo > " + ex.Message);
            }

            return;
        }




        /// <summary>
        /// void LogToAppTable(string msg)
        /// Log the message to the application log table
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static void LogToAppTable(string msgType, string msg)
        {

            try
            {
                if (BaseConnection != "")
                {
                    LogToAppTable(BaseConnection, BaseDBMS, msgType, msg);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LogToAppTable(s,s) > " + ex.Message);
                CommonRoutines.Log("$E:" + moduleName + ".LogToAppTable(s,s) > " + ex.Message, false);
            }

            return;

        }






        /// <summary>
        /// void LogToAppTable(string connectionString, string dbms, string msg)
        /// Log the message to the application log table
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static void LogToAppTable(string connectionString, string dbms, string msgType, string msg)
        {
            string _sql = "";

            try
            {
                //LAP 20130528 - check for msg longer than column in table; if found, truncate to fit
                string _msg = msg.Trim();
                if (_msg.Length > 4000)
                {
                    _msg = _msg.Substring(0, 3996) + " ...";
                }
                
                // double up any single quotes in the msg
                _msg = _msg.Replace("'", "''");

                _sql = "Insert into App_Log " +
                       "(Reference_Key, Application, Message_Type, Message) " +
                       "Values('" + "Test" + "'," +
                       "'AppName'," +
                       "'" + msgType + "'," +
                       "'" + _msg + "')";

                Execute(connectionString, dbms, _sql);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LogToAppTable(s,s,s,s) > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void LogToSysTable(string msgType, string msg)
        /// Log the message to the system log table
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static void LogToSysTable(string msgType, string msg)
        {

            try
            {
                if (BaseConnection != "")
                {
                    LogToSysTable(BaseConnection, BaseDBMS, msgType, msg);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LogToSysTable(s) > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void LogToSysTable(string connectionString, string dbms, string msg)
        /// Log the message to the system log table
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static void LogToSysTable(string connectionString, string dbms, string msgType, string msg)
        {
            string _sql = "";

            try
            {
                _sql = "Insert into System_Log " +
                       "(Time_Stamp, Reference_Key, Message_Type, Message) " +
                       "Values('" + CommonRoutines.GetTimestamp() + "'," +
                       "'" + "System" + "'," +
                       "'" + msgType + "'," +
                       "'" + msg + "')";

                Execute(connectionString, dbms, _sql);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LogToSysTable(s,s,s) > " + ex.Message);
            }

            return;

        }



        public static string EvaluateExpression(string expression)
        {
            string _result = "";

            try
            {
                if (BaseConnection != "")
                {
                    _result = EvaluateExpression(BaseConnection, BaseDBMS, expression);
                }
                else
                {
                    _result = "";
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".EvaluateExpression(s) > " + ex.Message);
            }

            return _result;

        }





        public static string EvaluateExpression(string connectionString, string dbms, string expression)
        {
            string _result = "";

            lastConnection = connectionString;

            try
            {
                // create the sql
                string _sql = "SELECT CAST(CASE WHEN " + expression + " THEN 'true'  ELSE 'false' END AS varchar) as Answer";
                List<string[]> _rows = Select(connectionString, dbms, _sql);
                if (_rows.Count > 0)
                {
                    // get the result from the first record
                    _result = _rows[1][0];
                }

                SetStatusInfo(dbms);

            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".EvaluateExpression(s,s,s) > " + ex.Message);
            }

            lastNumberRowsAffected = 1;

            return _result;

        }







        /// <summary>
        /// List<string> GetFieldsFromMapping(string mapping, string inOutIndicator)
        /// Load the fields from a mapping based on the indicator sent
        /// </summary>
        /// <param name="inOutIndicator"></param>
        public static List<string> GetFieldsFromMapping(string mapping, string inOutIndicator)
        {
            List<string> _fields = new List<string>();

            try
            {

                // load any mapping
                List<MappingStruct> _mappingXref = LoadMappingXref(mapping);

                for (int n = 0; n < _mappingXref.Count; n++)
                {
                    switch (inOutIndicator.ToUpper())
                    {
                        case "I":
                            _fields.Add(_mappingXref[n].inField);
                            break;

                        case "O":
                            _fields.Add(_mappingXref[n].outField);
                            break;

                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetFieldsFromMapping > " + ex.Message);
            }

            return _fields;

        }






        /// <summary>
        /// List<string> GetFieldXrefFromMapping(string mapping)
        /// Load the fields from a mapping based on the indicator sent
        /// </summary>
        /// <param name="inOutIndicator"></param>
        public static List<string[]> GetFieldXrefFromMapping(string mapping)
        {
            List<string[]> _fieldXref = new List<string[]>();

            try
            {

                // load any mapping
                List<MappingStruct> _mappingXref = LoadMappingXref(mapping);

                for (int n = 0; n < _mappingXref.Count; n++)
                {
                    _fieldXref.Add(new string[] { _mappingXref[n].inField, _mappingXref[n].outField });
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetFieldXrefFromMapping > " + ex.Message);
            }

            return _fieldXref;

        }



        public static string[] GetSQLFields(string sql)
        {
            string[] _fieldNames = { };
            string _sql = sql.ToUpper();
            string _tableName = "";

            try
            {
                int _offset = _sql.IndexOf("FROM");
                if (_offset > 0)
                {
                    _tableName = _sql.Substring(_offset + 4).Trim();
                    // strip the from till the end
                    _sql = _sql.Substring(0, _offset).Trim();

                    _offset = _tableName.IndexOf(' ');
                    if (_offset > 0)
                    {
                        _tableName = _tableName.Substring(0, _offset).Trim();
                    }

                    // now find the beginning of the list
                    _sql = _sql.Substring(6).Trim();
                    string _tempSQL = _sql;
                    // get rid of a distinct clause
                    _tempSQL = _tempSQL.ToUpper().Replace("DISTINCT ", "");
                    // is there a TOP?
                    if (_tempSQL.ToUpper().IndexOf("TOP ") == 0)
                    {
                        // go to first space
                        int _nextSpace = _tempSQL.IndexOf(" ");
                        if (_nextSpace > 0)
                        {
                            // get the next space
                            _nextSpace = _tempSQL.IndexOf(" ", _nextSpace + 1);
                            if (_nextSpace > 0)
                            {
                                _tempSQL = _tempSQL.Substring(_nextSpace).Trim();
                            }
                        }
                    }

                    
                    //while (_sql.IndexOf(' ') > 0)
                    //{
                    //    _offset = _sql.IndexOf(' ');
                    //    if (_offset >= 0)
                    //    {
                    //        _sql = _sql.Substring(_offset).Trim();
                    //    }
                    //}

                    // should have the list now
                    List<string> _fields = new List<string>();
                    if (_sql.IndexOf('*') >= 0)
                    {
                        // get the fields from the table and populate the resultset
                        _fields = DatabaseRoutines.GetTableFields(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _tableName);
                    }
                    else
                    {
                        _fields.AddRange(_tempSQL.Split(','));
                        // now walk the fields and see if any are alias (has an AS clause...)
                        for (int n = 0; n < _fields.Count; n++)
                        {
                            string _fieldName = _fields[n].Trim();
                            int _space = _fieldName.LastIndexOf(" ");
                            int _endBracket = _fieldName.LastIndexOf(']');
                            if (_space > _endBracket)
                            {
                                // field is not bracketed or if it is the space is after the last end bracket
                                _fieldName = _fieldName.Substring(_space).Trim();
                                _fields[n] = _fieldName;
                            }
                        }
                    }

                    if (_fields.Count > 0)
                    {
                        _fieldNames = _fields.ToArray();
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetSQLFields > " + ex.Message);
            }

            return _fieldNames;

        }






    }





}
