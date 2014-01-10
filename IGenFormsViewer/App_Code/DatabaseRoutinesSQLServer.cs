using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Windows.Forms;
using Microsoft.SqlServer.Server;




namespace IGenFormsViewer
{
    public class DatabaseRoutinesSQLServer
    {
        private string moduleName = "DatabaseRoutinesSQLServer";

        public int maxRowsInCollection = 50;

        public struct connectionObjectsType
        {
            public string connectionLevel;
            public string connectionName;
            public string connectionString;
        }

        private struct ImportFileIntoTableStruct
        {
            public bool selected;
            public bool askForFileName;
            public string connectionString;
            public string tableName;
            public string fileName;
            public bool firstRowHasFieldNames;
            public string delimiter;
            public string separator;
            public bool createNewTable;
            public bool deleteAllRows;
        }

        public struct DatabaseServersStruct
        {
            public string serverName;
            public string instanceName;
            public bool isClustered;
            public string version;
        }

        public List<connectionObjectsType> connectionObjects = new List<connectionObjectsType>();

        public List<DatabaseServersStruct> dbInstances = new List<DatabaseServersStruct>();

        public string lastStatusMessage = "";
        public string lastStatusCode = "";
        public bool lastStatus = false;
        public int lastNumberRowsAffected = 0;


        private string connectionTemplate = "Server=%SERVERNAME%;Database=%DATABASENAME%;user id=%USERID%;password=%PASSWORD%;Trusted_Connection=%TRUSTEDCONNECTION%;";
        public string ConnectionTemplate
        {
            get { return connectionTemplate; }
            set { connectionTemplate = value; }
        }


        private string dbms = "SQLServer";
        public string DBMS
        {
            get { return dbms; }
            set { dbms = value; }
        }


        private string baseConnection = "";
        public string BaseConnection
        {
            get { return baseConnection; }
            set { baseConnection = value; }
        }


        private string customerConnection = "";
        public string CustomerConnection
        {
            get { return customerConnection; }
            set { customerConnection = value; }
        }


        private string lastConnection = "";
        public string LastConnection
        {
            get { return lastConnection; }
            set { lastConnection = value; }
        }




        /// <summary>
        /// bool TestConnection()
        /// Test the base connection
        /// </summary>
        /// <returns></returns>
        public bool TestConnection()
        {
            bool _result = false;

            try
            {
                if (BaseConnection != "")
                {
                    _result = TestConnection(BaseConnection);
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
        public bool TestConnection(string connectionString)
        {

            try
            {
                // open the connection
                using (SqlConnection _connection = new SqlConnection(connectionString))
                {
                    try
                    {
                        _connection.Open();
                        _connection.Close();
                        lastConnection = connectionString;
                        lastStatusMessage = "Success";
                        lastStatusCode = "0";
                        lastStatus = true;
                    }
                    catch (Exception ex)
                    {
                        lastStatus = false;
                        lastStatusCode = "-999";
                        lastStatusMessage = ex.Message;
                    }
                }
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
        public bool TableExists(string tableName)
        {
            bool _status = false;

            try
            {
                if (BaseConnection != "")
                {
                    _status = TableExists(BaseConnection, tableName);
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
        public bool TableExists(string connectionString, string tableName)
        {
            bool _tableExists = false;

            try
            {
                lastConnection = connectionString;

                // open the connection
                using (SqlConnection _connection = new SqlConnection(connectionString))
                {
                    try
                    {
                        _connection.Open();
                        // get the tables
                        SqlCommand _cmd = _connection.CreateCommand();
                        _cmd.CommandText = "SELECT * FROM sys.tables WHERE type='U' and upper(name)='" + tableName.ToUpper() + "';";
                        SqlDataReader _sqlreader = _cmd.ExecuteReader();
                        if (_sqlreader.HasRows)
                        {
                            _tableExists = true;
                        }
                        _connection.Close();
                        lastStatusMessage = "Success";
                        lastStatusCode = "0";
                        lastStatus = true;
                    }
                    catch (Exception ex)
                    {
                        lastStatus = false;
                        lastStatusCode = "-999";
                        lastStatusMessage = ex.Message;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TableExists(s,s) > " + ex.Message);
            }

            return _tableExists;

        }








        /// <summary>
        /// int Execute(string sql)
        /// Execute the passed sql on the base connection
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public int Execute(string sql)
        {
            int _result = 0;

            try
            {
                if (BaseConnection != "")
                {
                    _result = Execute(BaseConnection, sql);
                }
                else
                {
                    _result = -1;
                }
            }
            catch (Exception ex)
            {
                //LAP 20130506 Include SQL in error message
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Execute(s) > " + ex.Message + System.Environment.NewLine + " > SQL:  " + sql);
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
        public int Execute(string connectionString, string sql)
        {
            int _rowsAffected = -1;

            lastConnection = connectionString;

            try
            {
                // open the connection
                using (SqlConnection _connection = new SqlConnection(connectionString))
                {
                    _connection.Open();
                    // get the tables
                    SqlCommand _cmd = _connection.CreateCommand();
                    _cmd.CommandText = sql;
                    _rowsAffected = _cmd.ExecuteNonQuery();
                    _connection.Close();
                    lastStatusMessage = "Success";
                    lastStatusCode = "0";
                    lastStatus = true;
                    if (_rowsAffected < 0)
                    {
                        _rowsAffected = 0;
                    }
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                //LAP 20130506 Include SQL in error message and status message
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Execute(s,s) > " + ex.Message + System.Environment.NewLine + " > SQL:  " + sql);
            }

            lastNumberRowsAffected = _rowsAffected;

            return _rowsAffected;

        }






        /// <summary>
        /// List<string[]> Select(string sql)
        /// Get the records for the passed sql on the base connection
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public List<string[]> Select(string sql)
        {
            List<string[]> _rows = new List<string[]>();

            try
            {
                if (BaseConnection != "")
                {
                    _rows = Select(BaseConnection, sql);
                }
                else
                {
                    _rows = new List<string[]>();
                }
            }
            catch (Exception ex)
            {
                //LAP 20130506 Include SQL in error message
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Select(s) > " + ex.Message + System.Environment.NewLine + " > SQL:  " + sql);
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
        public List<string[]> Select(string connectionString, string sql)
        {
            List<string[]> _rows = new List<string[]>();

            try
            {
                if (sql.Trim() != "")
                {
                    lastConnection = connectionString;

                    // open the connection
                    using (SqlConnection _connection = new SqlConnection(connectionString))
                    {
                        _connection.Open();
                        // get the tables
                        SqlCommand _cmd = _connection.CreateCommand();
                        _cmd.CommandText = sql;

                        IGenDataset _newCursor = SelectCursor(connectionString, "Cursor1", sql, true);

                        if (_newCursor.currentPosition > 0)
                        {
                            _rows = _newCursor.results;
                        }
                        _connection.Close();
                        lastStatusMessage = "Success";
                        lastStatusCode = "0";
                        lastStatus = true;
                    }
                }
            }
            catch (Exception ex)
            {
                //LAP 20130506 Include SQL in error message
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Select(s,s) > " + ex.Message + System.Environment.NewLine + " > SQL:  " + sql);
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
            }

            return _rows;

        }





        /// <summary>
        /// _cursor SelectCursor(string cursorName, string sql, bool loadCollection)
        /// Open a cursor for the passed sql on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public IGenDataset SelectCursor(string cursorName, string sql)
        {
            IGenDataset _cursor = new IGenDataset();

            try
            {
                _cursor = SelectCursor(baseConnection, cursorName, sql, true);
            }
            catch (Exception ex)
            {
                //LAP 20130506 Include SQL in error message
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SelectCursor(s,s) > " + ex.Message + System.Environment.NewLine + " > SQL:  " + sql);
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
            }

            return _cursor;

        }





        /// <summary>
        /// _cursor SelectCursor(string connectionString, string cursorName, string sql, bool loadCollection)
        /// Open a cursor for the passed sql on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public IGenDataset SelectCursor(string connectionString, string cursorName, string sql)
        {
            IGenDataset _cursor = new IGenDataset();

            try
            {
                _cursor = SelectCursor(connectionString, cursorName, sql, true);
            }
            catch (Exception ex)
            {
                //LAP 20130506 Include SQL in error message
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SelectCursor(s,s,s) > " + ex.Message + System.Environment.NewLine + " > SQL:  " + sql);
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
            }

            return _cursor;

        }





        /// <summary>
        /// int SelectCursor(string connectionString, string cursorName, string sql, bool loadCollection)
        /// Open a cursor for the passed sql on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public IGenDataset SelectCursor(string connectionString, string cursorName, string sql, bool loadCollection)
        {
            DataTable _dt = new DataTable();
            int _numRows = 0;
            int cursorOrdinal = -1;
            IGenDataset _cursor = new IGenDataset();

            try
            {
                if (sql.Trim() != "")
                {
                    lastConnection = connectionString;

                    // open the connection
                    using (SqlConnection _connection = new SqlConnection(connectionString))
                    {
                        _connection.Open();
                        // get the recordset
                        SqlCommand _cmd = _connection.CreateCommand();
                        _cmd.CommandText = sql;

                        // open an adapter and fill it
                        using (SqlDataAdapter _sda = new SqlDataAdapter(_cmd))
                        {
                            _sda.Fill(_dt);
                            _numRows = _dt.Rows.Count;
                            // fill in the structure
                            _cursor.cursorName = cursorName;
                            _cursor.dataAdapter = _sda;
                            _cursor.dataTable = _dt;
                            _cursor.numRows = _numRows;

                            if (_numRows > 0)
                            {
                                _cursor.currentPosition = 1;
                            }

                            _cursor.results = new List<string[]>();
                            // fill the fieldnames
                            if (_numRows > 0)
                            {
                                List<string> _fieldNames = new List<string>();

                                for (int n = 0; n < _dt.Columns.Count; n++)
                                {
                                    _fieldNames.Add(_dt.Columns[n].ColumnName);    
                                }
                                _cursor.results.Add(_fieldNames.ToArray());
                            }

                            if (loadCollection && _numRows > 0)
                            {
                                for (int n = 0; n < maxRowsInCollection; n++)
                                {
                                    // see if the max rows have been reached
                                    if (n < _numRows)
                                    {
                                        List<string> _fieldValues = new List<string>();
                                        for (int m = 0; m < _dt.Columns.Count; m++)
                                        {
                                            _fieldValues.Add(_dt.Rows[n][m].ToString());
                                        }
                                        _cursor.results.Add(_fieldValues.ToArray());
                                    }
                                    else
                                    {
                                        break;
                                    }
                                }

                                //_cursor.numRows = _cursor.results.Count;
                            }
                        }
                        
                        lastStatusMessage = "Success";
                        lastStatusCode = "0";
                        lastStatus = true;
                    }
                }
            }
            catch (Exception ex)
            {
                //LAP 20130506 Include SQL in error message
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SelectCursor(s,s,s,b) > " + ex.Message + System.Environment.NewLine + " > SQL:  " + sql);
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
            }

            return _cursor;

        }






        /// <summary>
        /// List<string[]> ExecuteSP(string spName, string spParms, ref long spReturnCode)
        /// Execute the passed stored proc on the base connection
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public List<string[]> ExecuteSP(string spName, string spParms, ref long spReturnCode)
        {
            List<string[]> _rows = new List<string[]>();

            try
            {
                if (BaseConnection != "")
                {
                    _rows = ExecuteSP(BaseConnection, spName, spParms, ref spReturnCode);
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
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ExecuteSP(s) > " + ex.Message + System.Environment.NewLine + " > Stored Proc:  " + spName + System.Environment.NewLine + " > Parms:  " + spParms);
            }

            return _rows;

        }








        /// <summary>
        /// List<string[]> ExecuteSP(string connectionString, string spName, string spParms, ref long spReturnCode)
        /// Execute the passed stored proc on the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public List<string[]> ExecuteSP(string connectionString, string spName, string spParms, ref long spReturnCode)
        {
            SqlDataReader _sdr = null;
            List<string[]> _rows = new List<string[]>();
            string _sql = "";

            lastConnection = connectionString;

            // open the connection
            try
            {
                using (SqlConnection _connection = new SqlConnection(connectionString))
                {
                    _connection.Open();
                    // get the tables
                    SqlCommand _cmd = _connection.CreateCommand();
                    _cmd.CommandText = spName;
                    _cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    // now add a return code parameter
                    SqlParameter _rcParm = new SqlParameter("@rc", SqlDbType.Int);
                    _rcParm.Direction = ParameterDirection.ReturnValue;
                    _cmd.Parameters.Add(_rcParm);

                    // parse the parms
                    string[] _parms = spParms.Split(';');
                    for (int n = 0; n < _parms.Length; n++)
                    {
                        if (_parms[n].Length < 1)
                        {
                            break;
                        }

                        // parse the parm
                        string[] _parmValues = _parms[n].Split(',');
                        SqlParameter _parm = null;

                        switch (_parmValues[2].ToUpper())
                        {
                            case "INT":
                                _parm = new SqlParameter(_parmValues[0], SqlDbType.Int);
                                _parm.Value = CommonRoutines.ConvertToInt(_parmValues[1]);
                                _parm.Direction = ParameterDirection.Input;
                                break;

                            case "NUMERIC":
                                _parm = new SqlParameter(_parmValues[0], SqlDbType.Decimal);
                                _parm.Value = CommonRoutines.ConvertToDouble(_parmValues[1]);
                                _parm.Direction = ParameterDirection.Input;
                                break;

                            case "VARCHAR":
                                _parm = new SqlParameter(_parmValues[0], SqlDbType.VarChar);
                                _parm.Value = _parmValues[1];
                                _parm.Direction = ParameterDirection.Input;
                                break;

                            case "NVARCHAR":
                                _parm = new SqlParameter(_parmValues[0], SqlDbType.NVarChar);
                                _parm.Value = _parmValues[1];
                                _parm.Direction = ParameterDirection.Input;
                                break;

                            case "DATETIME":
                                _parm = new SqlParameter(_parmValues[0], SqlDbType.DateTime);
                                _parm.Value = CommonRoutines.ConvertToDate(_parmValues[1]);
                                _parm.Direction = ParameterDirection.Input;
                                break;

                        }

                        if (_parm != null)
                        {
                            _cmd.Parameters.Add(_parm);
                        }

                    }

                    _sdr = _cmd.ExecuteReader();
                    //_cmd.ExecuteNonQuery();

                    if (_sdr.HasRows)
                    {
                        while (_sdr.Read())
                        {
                            List<string> _fields = new List<string>();
                            if (_rows.Count == 0)
                            {
                                // fill in the field names
                                for (int n = 0; n < _sdr.FieldCount; n++)
                                {
                                    _fields.Add(_sdr.GetName(n).ToString());
                                }
                                _rows.Add(_fields.ToArray());
                            }

                            _fields.Clear();

                            for (int n = 0; n < _sdr.FieldCount; n++)
                            {
                                _fields.Add(_sdr.GetValue(n).ToString());
                            }
                            _rows.Add(_fields.ToArray());
                        }
                    }
                    _connection.Close();

                    long _returnCode = -999;
                    if (_cmd.Parameters["@rc"].Value != null)
                    {
                        int _rc = (int)_cmd.Parameters["@rc"].Value;
                        _returnCode = (long)_rc;
                    }

                    spReturnCode = _returnCode;

                    lastStatusMessage = "Success";
                    lastStatusCode = "0";
                    lastStatus = true;
                }
            }
            catch (Exception ex)
            {
                lastStatus = false;
                lastStatusCode = "-999";
                lastStatusMessage = ex.Message;
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ExecuteSP(s,s,s) > " + ex.Message);
            }

            return _rows;

        }





        /// <summary>
        /// List<string> GetDatabaseTables()
        /// Get a list of the tables in the base connection
        /// </summary>
        /// <returns></returns>
        public List<string> GetDatabaseTables()
        {
            List<string> _tables = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _tables = GetDatabaseTables(BaseConnection);
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
        public List<string> GetDatabaseTables(string connectionString)
        {
            List<string> _tables = new List<string>();

            try
            {
                lastConnection = connectionString;

                // open the connection
                using (SqlConnection _connection = new SqlConnection(connectionString))
                {
                    try
                    {
                        _connection.Open();
                        // get the tables
                        SqlCommand _cmd = _connection.CreateCommand();
                        _cmd.CommandText = "SELECT Name FROM sys.tables Order By Name;";
                        SqlDataReader _sqlreader = _cmd.ExecuteReader();
                        if (_sqlreader.HasRows)
                        {
                            // fill in the list
                            while (_sqlreader.Read())
                            {
                                _tables.Add(_sqlreader.GetString(0));
                            }
                        }
                        _connection.Close();
                        lastStatusMessage = "Success";
                        lastStatusCode = "0";
                        lastStatus = true;
                    }
                    catch (Exception ex)
                    {
                        lastStatus = false;
                        lastStatusCode = "-999";
                        lastStatusMessage = ex.Message;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseTables(s) > " + ex.Message);
            }

            return _tables;

        }





        /// <summary>
        /// List<string> GetDatabaseStoredProcedures()
        /// Get a list of the stored procs and functions (UDFs) in the base connection
        /// </summary>
        /// <returns></returns>
        public List<string> GetDatabaseStoredProcedures()
        {
            List<string> _storedProcs = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _storedProcs = GetDatabaseStoredProcedures(BaseConnection);
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
        public List<string> GetDatabaseStoredProcedures(string connectionString)
        {
            List<string> _storedProcs = new List<string>();

            try
            {
                lastConnection = connectionString;

                _storedProcs = GetDatabaseObjects(connectionString, "P");

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseStoredProcedures(s) > " + ex.Message);
            }

            return _storedProcs;

        }





        /// <summary>
        /// List<string> GetDatabaseSchemas()
        /// Get a list of the schemas in the base connection
        /// </summary>
        /// <returns></returns>
        public List<string> GetDatabaseSchemas()
        {
            List<string> _schemas = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _schemas = GetDatabaseSchemas(BaseConnection);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseSchemas > " + ex.Message);
            }

            return _schemas;

        }





        /// <summary>
        /// List<string> GetDatabaseSchemas(string connectionString)
        /// Get a list of schemas in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public List<string> GetDatabaseSchemas(string connectionString)
        {
            List<string> _schemas = new List<string>();

            try
            {
                lastConnection = connectionString;

                // open the connection
                using (SqlConnection _connection = new SqlConnection(connectionString))
                {
                    try
                    {
                        _connection.Open();
                        // get the tables
                        SqlCommand _cmd = _connection.CreateCommand();
                        _cmd.CommandText = "SELECT name FROM sys.schemas " +
                                           "where schema_id <> principal_id ";

                        SqlDataReader _sqlreader = _cmd.ExecuteReader();
                        if (_sqlreader.HasRows)
                        {
                            // fill in the list
                            while (_sqlreader.Read())
                            {
                                _schemas.Add(_sqlreader.GetString(0));
                            }
                        }
                        _connection.Close();
                        lastStatusMessage = "Success";
                        lastStatusCode = "0";
                        lastStatus = true;
                    }
                    catch (Exception ex)
                    {
                        lastStatus = false;
                        lastStatusCode = "-999";
                        lastStatusMessage = ex.Message;
                    }
                }


            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseSchemas(s) > " + ex.Message);
            }

            return _schemas;

        }





        /// <summary>
        /// List<string> GetDatabaseUDFs()
        /// Get a list of the functions (UDFs) in the base connection
        /// </summary>
        /// <returns></returns>
        public List<string> GetDatabaseUDFs()
        {
            List<string> _udfs = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _udfs = GetDatabaseUDFs(BaseConnection);
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
        public List<string> GetDatabaseUDFs(string connectionString)
        {
            List<string> _udfs = new List<string>();

            try
            {
                lastConnection = connectionString;

                _udfs = GetDatabaseObjects(connectionString, "FN");
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseUDFs(s) > " + ex.Message);
            }

            return _udfs;

        }





        /// <summary>
        /// List<string> GetDatabaseViews()
        /// Get a list of the functions (Views) in the base connection
        /// </summary>
        /// <returns></returns>
        public List<string> GetDatabaseViews()
        {
            List<string> _views = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _views = GetDatabaseViews(BaseConnection);
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
        public List<string> GetDatabaseViews(string connectionString)
        {
            List<string> _views = new List<string>();

            try
            {
                lastConnection = connectionString;

                _views = GetDatabaseObjects(connectionString, "V");

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseViews(s) > " + ex.Message);
            }

            return _views;

        }





        /// <summary>
        /// List<string> GetDatabaseObjects(string connectionString, string objectType)
        /// Get a list of objects for the type specified in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public List<string> GetDatabaseObjects(string connectionString, string objectType)
        {
            List<string> _objects = new List<string>();

            try
            {
                lastConnection = connectionString;

                // open the connection
                using (SqlConnection _connection = new SqlConnection(connectionString))
                {
                    try
                    {
                        _connection.Open();
                        // get the tables
                        SqlCommand _cmd = _connection.CreateCommand();
                        _cmd.CommandText = "SELECT name " +
                                           "FROM sys.objects " +
                                           "where type in ('" + objectType.ToUpper() + "') " +
                                           "order by name ";

                        SqlDataReader _sqlreader = _cmd.ExecuteReader();
                        if (_sqlreader.HasRows)
                        {
                            // fill in the list
                            while (_sqlreader.Read())
                            {
                                _objects.Add(_sqlreader.GetString(0));
                            }
                        }
                        _connection.Close();
                        lastStatusMessage = "Success";
                        lastStatusCode = "0";
                        lastStatus = true;
                    }
                    catch (Exception ex)
                    {
                        lastStatus = false;
                        lastStatusCode = "-999";
                        lastStatusMessage = ex.Message;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseViews(s) > " + ex.Message);
            }

            return _objects;

        }






        /// <summary>
        /// List<string> GetDatabaseSPFunctionParms()
        /// Get a list of the parms for a stored procs or function (UDF) in the base connection
        /// </summary>
        /// <returns></returns>
        public List<string> GetDatabaseSPFunctionParms(string spFunctionName)
        {
            List<string> _SPParms = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _SPParms = GetDatabaseSPFunctionParms(BaseConnection, spFunctionName);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseSPFunctionParms > " + ex.Message);
            }

            return _SPParms;

        }





        /// <summary>
        /// List<string> GetDatabaseSPFunctionParms(string connectionString)
        /// Get a list of parms for a stored procs or function (UDF) in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public List<string> GetDatabaseSPFunctionParms(string connectionString, string spFunctionName)
        {
            List<string> _SPFunctionParms = new List<string>();

            try
            {
                lastConnection = connectionString;

                // open the connection
                using (SqlConnection _connection = new SqlConnection(connectionString))
                {
                    try
                    {
                        _connection.Open();
                        // get the tables
                        SqlCommand _cmd = _connection.CreateCommand();
                        _cmd.CommandText = "select SPECIFIC_NAME as Name,PARAMETER_NAME as Parm,ORDINAL_POSITION as Ordinal,DATA_TYPE as Type,parameter_mode as Direction,  " +
                                           "               isnull(CHARACTER_MAXIMUM_LENGTH,0) as Max_Length,isnull(NUMERIC_PRECISION,0) as Precision, " +
                                           "               isnull(numeric_scale,0) as decimals " +
                                           "FROM INFORMATION_SCHEMA.PARAMETERS " +
                                           "WHERE SPECIFIC_NAME = '" + spFunctionName + "' " +
                                           "and ORDINAL_POSITION > 0 " +
                                           "order by SPECIFIC_NAME,ORDINAL_POSITION ";

                        SqlDataReader _sqlreader = _cmd.ExecuteReader();
                        if (_sqlreader.HasRows)
                        {
                            // fill in the list
                            while (_sqlreader.Read())
                            {
                                string _spFunctionParm = "";
                                for (int n = 0; n < _sqlreader.FieldCount; n++)
                                {
                                    _spFunctionParm = _spFunctionParm + _sqlreader.GetValue(n).ToString() + "~";
                                }
                                _SPFunctionParms.Add(_spFunctionParm);
                            }
                        }
                        _connection.Close();
                        lastStatusMessage = "Success";
                        lastStatusCode = "0";
                        lastStatus = true;
                    }
                    catch (Exception ex)
                    {
                        lastStatus = false;
                        lastStatusCode = "-999";
                        lastStatusMessage = ex.Message;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabaseSPFunctionParms(s,s) > " + ex.Message);
            }

            return _SPFunctionParms;

        }





        /// <summary>
        /// List<string> GetDatabases()
        /// Get a list of the tables in the base connection
        /// </summary>
        /// <returns></returns>
        public List<string> GetDatabases()
        {
            List<string> _tables = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _tables = GetDatabases(BaseConnection);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabases > " + ex.Message);
            }

            return _tables;

        }





        /// <summary>
        /// List<string> GetDatabases(string connectionString)
        /// Get a list of tables in the passed connection
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public List<string> GetDatabases(string connectionString)
        {
            List<string> _databases = new List<string>();

            try
            {

//Dim server As New Microsoft.SqlServer.Management.Smo.Server("localhost")
//For Each db As Database In server.Databases
//    Console.WriteLine(db.Name)
//Next                        
                string _sql = "Select name From sys.databases where database_id > 4 order by name";      // get all non-system databases
                List<string[]> _userDatabases = Select(connectionString, _sql);
                if (_userDatabases.Count > 0)
                {
                    foreach (string[] _userDatabase in _userDatabases)
                    {
                        _databases.Add(_userDatabase[0]);
                    }
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
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDatabases(s) > " + ex.Message);
            }

            return _databases;

        }









        /// <summary>
        /// List<string> GetTableFields(string tableName)
        /// Get the fields in the table passed on the base connection
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public List<string> GetTableFields(string tableName)
        {
            List<string> _fields = new List<string>();

            try
            {
                if (BaseConnection != "")
                {
                    _fields = GetTableFields(BaseConnection, tableName);
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
        public List<string> GetTableFields(string connectionString, string tableName)
        {
            List<string> _fields = new List<string>();

            try
            {
                string _sortBy = ConfigRoutines.GetSetting("SortFieldOption").ToUpper();

                _fields = GetTableFields(connectionString, tableName, _sortBy);
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
        public List<string> GetTableFields(string connectionString, string tableName, string sortBy)
        {
            List<string> _fields = new List<string>();

            _fields = GetTableFields(connectionString, tableName, sortBy, false);

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
        public List<string> GetTableFields(string connectionString, string tableName, string sortBy, bool returnAllInfo)
        {
            List<string> _fields = new List<string>();
            string _tableName = tableName;

            lastConnection = connectionString;

            // open the connection
            try
            {
                string _schema = "dbo";

                // see if there is a schema specification
                int _lastPeriod = tableName.LastIndexOf('.');
                if (_lastPeriod > 0)
                {
                    _schema = tableName.Substring(0, _lastPeriod);
                    _tableName = _tableName.Substring(_lastPeriod + 1);
                    _lastPeriod = _schema.IndexOf('.');
                    if (_lastPeriod > 0)
                    {
                        _schema = _schema.Substring(_lastPeriod);
                    }
                    // get rid of brackets
                    _schema = _schema.Replace("[", "").Replace("]", "");
                }

                _tableName = _tableName.Replace("[", "").Replace("]", "");

                string _sql = "select COLUMN_NAME,DATA_TYPE,column_default, CHARACTER_MAXIMUM_LENGTH,NUMERIC_PRECISION,NUMERIC_SCALE,DATETIME_PRECISION " +
                                    "from INFORMATION_SCHEMA.COLUMNS " +
                                    "where TABLE_NAME = '" + _tableName + "' " +
                                    "   and table_schema='" + _schema + "' " +
                                    "order by ORDINAL_POSITION ";

                int _saveMaxFields = maxRowsInCollection;
                maxRowsInCollection = 1000;
                List<string[]> _rows = Select(connectionString, _sql);
                maxRowsInCollection = _saveMaxFields;

                // create the fields
                if (_rows.Count > 1)
                {
                    for (int n=1;n<_rows.Count;n++)
                    {
                        string[] _row = _rows[n];
                        string _field = _row[0];

                        if (returnAllInfo)
                        {
                            _field = _field + "   " + _row[1].ToUpper();
                            switch (_row[1].ToUpper())
                            {
                                case "STRING":
                                case "NVARCHAR":
                                case "VARCHAR":
                                    _field = _field + "[" + _row[3] + "]";
                                    break;

                            }

                            if (_row[2] != "")
                            {
                                _field = _field + "  Default " + _row[2];
                            }
                        }

                        _fields.Add(_field);
                    }
                }
                if (sortBy.ToUpper() == "NAME")
                {
                    _fields.Sort();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetTableFields(s,s,s) > " + ex.Message);
            }

            return _fields;

        }








        /// <summary>
        /// string TruncateTable(string tableName)
        /// Truncate the passed table on the base connection
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public string TruncateTable(string tableName)
        {
            string _result = "";

            try
            {
                _result = TruncateTable(baseConnection, tableName);
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
        public string TruncateTable(string connectionString, string tableName)
        {
            string _result = "";
            string _ddl = "";

            try
            {
                _ddl = _ddl + "delete from " + tableName + "; ";

                // truncate the table
                if (Execute(connectionString, _ddl) < 0)
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
        public string CreateTable(string tableName, string fieldDefinitions, int numFields)
        {
            string _result = "";

            try
            {
                _result = CreateTable(baseConnection, tableName, fieldDefinitions, numFields);
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
        public string CreateTable(string connectionString, string tableName, string fieldDefinitions, int numFields)
        {
            string _ddl = "";
            string _fieldList = "";
            string _results = "";

            try
            {
                // grab the fields 
                _fieldList = fieldDefinitions;

                // see if the table exists, if so then drop it first
                if (TableExists(connectionString, tableName))
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
                if (Execute(connectionString, _ddl) < 0)
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
        /// string CreateTable(string tableName, string fieldDefinitions, int numFields)
        /// Create the table passed for the base connection
        /// </summary>
        /// <param name="tableName"></param>
        /// <param name="fieldDefinitions"></param>
        /// <param name="numFields"></param>
        /// <returns></returns>
        public string GetDatabaseProperties(string connectionString)
        {
            string _result = "";

//SELECT DB_NAME(database_id) AS Database_Name, Name AS Logical_Name, Physical_Name, (size*8)/1024 AS SizeMB
//FROM sys.master_files 
//WHERE DB_NAME(database_id) = 'eTl'

            try
            {
                // find the database name
                string _databaseName = CommonRoutines.GetKeyValue(connectionString, "Database", ';');
                string _sql = "SELECT DB_NAME(database_id) AS Database_Name, Name AS Logical_Name, Physical_Name, (size*8)/1024 AS SizeMB " +
                              "FROM sys.master_files  " +
                              "WHERE DB_NAME(database_id) = '" + _databaseName +  "' ";
                List<string[]> _rows = Select(_sql);
                if (_rows.Count > 0)
                {
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






    }


}
