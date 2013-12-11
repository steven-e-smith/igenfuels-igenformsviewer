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
    public partial class frmConnectionString : Form
    {
        private string moduleName = "frmConnectionString";

        private string dbms = "";
        public string DBMS
        {
            get { return dbms; }
            set { dbms = value;}
        }


        private string connectionString = "";
        public string ConnectionString
        {
            get { return connectionString; }
            set
            {
                connectionString = value;
                //SetConnection();
            }
        }

        private bool isLoading = false;


        /// <summary>
        /// frmConnectionString()
        /// Constructor
        /// </summary>
        public frmConnectionString()
        {

            try
            {
                InitializeComponent();

                InitializeApp();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmConnectionString > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void InitializeApp()
        /// Initialize the app
        /// </summary>
        private void InitializeApp()
        {

            try
            {

                // add the select event
                cboServerName.SelectedIndexChanged += new EventHandler(cboServerName_SelectedIndexChanged);
                //cboDatabaseName.GotFocus += new EventHandler(cboDatabaseName_GotFocus);

                this.Load += new EventHandler(frmConnectionString_Load);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void frmConnectionString_Load(object sender, EventArgs e)
        /// Process the load event
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void frmConnectionString_Load(object sender, EventArgs e)
        {
            Cursor _saveCursor = this.Cursor;

            try
            {

                isLoading = true;

                this.Refresh();
                Application.DoEvents();

                //btnBrowse.Visible = false;
                btnFindDatabases.Visible = false;

                //LAP 20130520 -- Do not find servers upon form load (takes too long)
                // if the detected servers are not filled in, then do it
                //DetectDBServers();

                // fill in the dbms combo
                LoadDBMSCombo();

                if (connectionString == "")
                {
                    // initialize to the base
                    connectionString = DatabaseRoutines.BaseConnection;
                }

                // load the combo
                LoadServerCombo();

                // populate fields from connectionString
                SetConnection();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmConnectionString_Load > " + ex.Message);
            }

            this.Cursor = _saveCursor;

            isLoading = false;
            return;

        }





        /// <summary>
        /// void cboServerName_SelectedIndexChanged(object sender, EventArgs e)
        /// Process a server selection
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void cboServerName_SelectedIndexChanged(object sender, EventArgs e)
        {

            try
            {

                if (!isLoading)
                {
                    //btnBrowse.Visible = true;
                    btnFindDatabases.Visible = true;
                    chkUseAD.Checked = true;
                    chkUseAD.Enabled = true;
                    txtUserId.Enabled = true;
                    txtPassword.Enabled = true;

                    // clear the database combo
                    cboDatabaseName.Items.Clear();
                    cboDatabaseName.Text = "";

                    // repopulate database combo
                    LoadDatabaseCombo(CreateConnectionString(), cboDatabaseSystems.Text);
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void SetConnection()
        /// Set the connection string fields
        /// </summary>
        private void SetConnection()
        {

            try
            {
                // if the connection string is filled in, then populate the fields with it
                if (connectionString != "")
                {
                    // reset the fields
                    cboDatabaseSystems.Text = DBMS;
                    cboServerName.Text = "localhost";
                    cboDatabaseName.Items.Clear();
                    cboDatabaseName.Text = "";
                    txtUserId.Text = "";
                    txtPassword.Text = "";

                    // parse it out
                    string[] _parts = connectionString.Split(';');
                    for (int n = 0; n < _parts.Length; n++)
                    {
                        string[] _parts2 = _parts[n].Split('=');
                        if (_parts2.Length > 1)
                        {
                            string _parm = _parts2[0].ToUpper();
                            string _value = _parts2[1];

                            switch (_parm)
                            {
                                case "SERVER":
                                    cboServerName.Text = _value;
                                    break;

                                case "DATABASE":
                                case "DATA SOURCE":
                                case "DATASOURCE":
                                    cboDatabaseName.Text = _value;
                                    break;

                                case "USER ID":
                                    txtUserId.Text = _value;
                                    break;

                                case "PASSWORD":
                                    txtPassword.Text = _value;
                                    break;

                                case "TRUSTED_CONNECTION":
                                    if (_value.ToUpper() == "TRUE")
                                    {
                                        chkUseAD.Checked = true;
                                    }
                                    else
                                    {
                                        chkUseAD.Checked = false;
                                    }
                                    break;

                                case "INTEGRATED SECURITY":
                                    if (_value.ToUpper() == "SSPI")
                                    {
                                        chkUseAD.Checked = true;
                                    }
                                    else
                                    {
                                        chkUseAD.Checked = false;
                                    }
                                    break;

                            }
                        }
                    }

                    // check to see if this is a file or database selection
                    if (cboDatabaseSystems.Text.ToUpper() == "FIREBIRD" || 
                                cboDatabaseSystems.Text.ToUpper() == "SQLITE" ||
                                cboDatabaseSystems.Text.ToUpper() == "ACCESS")
                    {
                        //btnBrowse.Visible = true;
                        btnFindDatabases.Visible = true;
                    }
                    else
                    {
                        //btnBrowse.Visible = false;
                        btnFindDatabases.Visible = false;
                        // load the database combo
                        string _connectionString = CreateConnectionString();
                        LoadDatabaseCombo(_connectionString, cboDatabaseSystems.Text);
                    }

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetConnection > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void btnOK_Click(object sender, EventArgs e)
        /// Process the OK button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnOK_Click(object sender, EventArgs e)
        {

            try
            {
                connectionString = CreateConnectionString();
                this.Hide();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnOK_Click > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void CreateConnectionString()
        /// Create the connection string from the entered values
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private string CreateConnectionString()
        {
            string _connectionString = "";

            try
            {
                DBMS = cboDatabaseSystems.Text;
                string _serverName = cboServerName.Text;
                string _databaseName = cboDatabaseName.Text;
                string _userId = txtUserId.Text;
                string _password = txtPassword.Text;
                string _trustedConnection = chkUseAD.Checked.ToString();
                string _integratedSecurity = (chkUseAD.Checked ? "SSPI" : "");

                // get the connection string for the dbms selected
                _connectionString = DatabaseRoutines.GetDBMSConnectionStringTemplate(DBMS);

                // fill in the values
                _connectionString = _connectionString.Replace("%SERVERNAME%", _serverName);
                _connectionString = _connectionString.Replace("%DATABASENAME%", _databaseName);
                _connectionString = _connectionString.Replace("%USERID%", _userId);
                _connectionString = _connectionString.Replace("%PASSWORD%", _password);
                _connectionString = _connectionString.Replace("%TRUSTEDCONNECTION%", _trustedConnection);
                _connectionString = _connectionString.Replace("%INTEGRATEDSECURITY%", _integratedSecurity);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreateConnectionString > " + ex.Message);
            }

            return _connectionString;

        }




        /// <summary>
        /// void btnCancel_Click(object sender, EventArgs e)
        /// Process the Cancel button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnCancel_Click(object sender, EventArgs e)
        {

            try
            {
                if (IsDirty())
                {
                    if (CommonRoutines.Ask("All changes will be lost if cancelled.  Are you sure??", "Cancel changes") == DialogResult.Yes)
                    {
                        this.Hide();
                    }
                }
                else
                {
                    this.Hide();
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnCancel_Click > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void btnTestConnection_Click(object sender, EventArgs e)
        /// Test the connection string
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnTestConnection_Click(object sender, EventArgs e)
        {

            try
            {
                TestConnection();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnTestConnection_Click > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void TestConnection()
        /// Test the connection string
        /// </summary>
        private void TestConnection()
        {

            try
            {
                CommonRoutines.DisplayStatus(lblStatus, "Testing connection... ");
                CommonRoutines.ShowBusyCursor(this);

                dbms = cboDatabaseSystems.Text;
                connectionString = CreateConnectionString();

                // test the database connection string
                if (DatabaseRoutines.TestConnection(connectionString, dbms))
                {
                    // successful
                    CommonRoutines.DisplayMessage("Connection successful!");
                }
                else
                {
                    // give error
                    CommonRoutines.DisplayMessage("Error in open of database, err=" + DatabaseRoutines.lastStatusMessage);
                }

                CommonRoutines.DisplayStatus(lblStatus, "");
                CommonRoutines.ShowNormalCursor(this);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TestConnection > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void btnFindServers_Click(object sender, EventArgs e)
        /// Find all the servers on the network and add them to the combo list
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnFindServers_Click(object sender, EventArgs e)
        {

            try
            {
                // reset the list
                DatabaseRoutines.dbInstances.Clear();
                DetectDBServers();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnFindServers_Click > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void DetectDBServers()
        /// Find the servers on the network and fill in the combo
        /// </summary>
        private void DetectDBServers()
        {

            try
            {
                if (DatabaseRoutines.dbInstances.Count < 1)
                {
                    FindServers();
                }
                LoadServerCombo();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DetectDBServers > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void LoadServerCombo()
        /// Load the servers combo with any servers found
        /// </summary>
        private void LoadServerCombo()
        {

            try
            {

                string _serverName = cboServerName.Text;
                cboServerName.Items.Clear();
                cboServerName.Items.Add("localhost");
                // load the combo
                if (DatabaseRoutines.dbInstances.Count > 0)
                {
                    for (int n = 0; n < DatabaseRoutines.dbInstances.Count; n++)
                    {
                        // load the combo
                        cboServerName.Items.Add(DatabaseRoutines.dbInstances[n].serverName + "\\" + DatabaseRoutines.dbInstances[n].instanceName);
                    }
                }
                cboServerName.Text = _serverName;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadServerCombo > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void LoadDatabaseCombo()
        /// Load the database combo with the servers databases
        /// </summary>
        private void LoadDatabaseCombo(string connectionString, string dbms)
        {

            try
            {
                if (connectionString != "" && dbms != "")
                {

                    // get the database tables
                    List<string> _databases = DatabaseRoutines.GetDatabases(connectionString, dbms);
                    string _databaseName = cboDatabaseName.Text;
                    cboDatabaseName.Items.Clear();
                    for (int n = 1; n < _databases.Count; n++)
                    {
                        cboDatabaseName.Items.Add(_databases[n]);
                    }
                    cboDatabaseName.Text = _databaseName;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadDatabaseCombo > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void LoadDBMSCombo()
        /// Load the supported databases combo
        /// </summary>
        private void LoadDBMSCombo()
        {

            try
            {
                string[] _dbms = DatabaseRoutines.SupportedDBMS;

                cboDatabaseSystems.Items.Clear();
                // load the combo
                if (_dbms.Length > 0)
                {
                    for (int n = 0; n < _dbms.Length; n++)
                    {
                        // load the combo
                        cboDatabaseSystems.Items.Add(_dbms[n]);
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadDBMSCombo > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void FindServers()
        /// Find the servers on the network 
        /// </summary>
        private void FindServers()
        {

            // disable the controls
            SetEnabled(false);

            try
            {
                CommonRoutines.DisplayStatus(lblStatus, "Finding all database servers on the network, please wait....");

                CommonRoutines.ShowBusyCursor(this);
                
                // get a list of servers
                DatabaseRoutines.GetDatabaseInstances();

                CommonRoutines.DisplayStatus(lblStatus, "Done, found " + DatabaseRoutines.dbInstances.Count + " server(s)");

                CommonRoutines.ShowNormalCursor(this);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".FindServers > " + ex.Message);
            }

            // enable the controls
            SetEnabled(true);

            return;

        }




        /// <summary>
        /// void chkUseAD_CheckedChanged(object sender, EventArgs e)
        /// Toggle the uid/pwd if the use windows checkbox is checked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void chkUseAD_CheckedChanged(object sender, EventArgs e)
        {

            try
            {
                // toggle the uid/pwd fields
                txtUserId.Enabled = !chkUseAD.Checked;
                txtPassword.Enabled = !chkUseAD.Checked;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".chkUseAD_CheckedChanged > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void btnBrowse_Click(object sender, EventArgs e)
        /// Get the local database
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnBrowse_Click(object sender, EventArgs e)
        {

            try
            {
                BrowseFile();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnBrowse_Click > " + ex.Message);
            }

        }





        /// <summary>
        /// void BrowseFile()
        /// Browse for a file 
        /// </summary>
        /// <returns></returns>
        private string BrowseFile()
        {
            string _fileName = "";

            try
            {
                cboDatabaseName.Text = CommonRoutines.OpenDialog("*", "", "Please select the database file");

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".BrowseFile > " + ex.Message);
            }

            return _fileName;

        }






        /// <summary>
        /// private bool IsDirty()
        /// Determine if anything has changed
        /// </summary>
        /// <returns></returns>
        private bool IsDirty()
        {
            bool _dirtyFlag = false;

            try
            {
                _dirtyFlag = true;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".IsDirty > " + ex.Message);
            }

            return _dirtyFlag;

        }





        /// <summary>
        /// void SetEnabled(bool enable)
        /// Enable or disable the controls on the form
        /// </summary>
        /// <param name="enable"></param>
        private void SetEnabled(bool enable)
        {

            try
            {

                // enable/disable all the controls on the form...
                for (int n = 0; n < this.Controls.Count; n++)
                {
                    this.Controls[n].Enabled = enable;
                }
                
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetEnabled > " + ex.Message);
            }

            return;

        }

        /// <summary>
        /// void btnFindDatabases_Click(object sender, EventArgs e)
        /// Find all the databases on the selected server and add them to the combo list
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnFindDatabases_Click(object sender, EventArgs e)
        {

            try
            {
                LoadDatabaseCombo(CreateConnectionString(), cboDatabaseSystems.Text);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnFindServers_Click > " + ex.Message);
            }

            return;

        }



    }
}
