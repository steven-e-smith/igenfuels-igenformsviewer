using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace IGenFormsViewer
{
    public partial class frmOptions : Form
    {

        private bool propsNeedRefresh = false;
        public bool PropsNeedsRefresh
        {
            get { return propsNeedRefresh; }
        }

        private string moduleName = "frmOptions";
        private bool isDirty = false;


        /// <summary>
        /// frmOptions()
        /// Constructor
        /// </summary>
        public frmOptions()
        {

            try
            {
                InitializeComponent();
                this.Resize += new EventHandler(frmOptions_Resize);
                this.FormClosing += new FormClosingEventHandler(frmOptions_FormClosing);

                InitializeApp();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmOptions > " + ex.Message);
            }

            return;

        }







        void frmOptions_FormClosing(object sender, FormClosingEventArgs e)
        {

            try
            {
                if (!CloseForm())
                {
                    e.Cancel = true;
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmOptions_FormClosing > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void frmOptions_Resize(object sender, EventArgs e)
        /// Process the resize event for the form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void frmOptions_Resize(object sender, EventArgs e)
        {

            try
            {
                ResizeControls();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmOptions_Resize > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void ResizeControls()
        /// Resize the controls on the form
        /// </summary>
        private void ResizeControls()
        {

            try
            {
                // check some fields 
                nudNumberOfDecimalPlaces.Left = lblNumberOfDecimalPlaces.Left + lblNumberOfDecimalPlaces.Width + 10;

                tabOptions.SelectedTab = tabPageVariables;
                dgvVariables.Width = tabPageVariables.Width - dgvVariables.Left - 20;
                dgvVariables.Height = tabPageVariables.Height - dgvVariables.Top - 20;

                tabOptions.SelectedTab = tabPageSymbolics;
                dgvSymbolics.Width = tabPageSymbolics.Width - dgvSymbolics.Left - 20;
                dgvSymbolics.Height = tabPageSymbolics.Height - dgvSymbolics.Top - 20;

                tabOptions.SelectedIndex = 0;
            
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResizeControls > " + ex.Message);
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
                this.KeyPreview = true;
                this.KeyDown += new KeyEventHandler(frmOptions_KeyDown);

                // set the checkboxes event
                chkAutoSaveOnClose.CheckedChanged += new EventHandler(ValueChanged);
                chkConfirmOnTabClose.CheckedChanged += new EventHandler(ValueChanged);
                chkExportAskAtRuntime.CheckedChanged += new EventHandler(ValueChanged);
                chkExportFirstRowHasFieldNames.CheckedChanged += new EventHandler(ValueChanged);
                chkImportAskAtRuntime.CheckedChanged += new EventHandler(ValueChanged);
                chkImportFirstRowHasFieldNames.CheckedChanged += new EventHandler(ValueChanged);
                chkShowCaptionsOnToolbars.CheckedChanged += new EventHandler(ValueChanged);

                // set the textbox event
                txtBaseConnection.TextChanged += new EventHandler(ValueChanged);
                txtMainConnection.TextChanged += new EventHandler(ValueChanged);
                txtWallpaper.TextChanged += new EventHandler(ValueChanged);

                // set the combobox event
                cboBaseDatabaseSystems.SelectedValueChanged += new EventHandler(ValueChanged);
                cboExportDelimiter.SelectedValueChanged += new EventHandler(ValueChanged);
                cboExportSeparator.SelectedValueChanged += new EventHandler(ValueChanged);
                cboImportDelimiter.SelectedValueChanged += new EventHandler(ValueChanged);
                cboImportSeparator.SelectedValueChanged += new EventHandler(ValueChanged);
                cboMainDatabaseSystems.SelectedValueChanged += new EventHandler(ValueChanged);

                // set the option buttons
                rdbSortByFieldName.CheckedChanged += new EventHandler(ValueChanged);
                rdbSortByFieldOrder.CheckedChanged += new EventHandler(ValueChanged);

                tabOptions.TabPages.RemoveByKey("tabPageImportExportOptions");
                tabOptions.TabPages.RemoveByKey("tabPageWidgets");

                CommonRoutines.SetToolBarCaptions(tbrMain);
                ResizeControls();

                LoadSettings();

                // set the caption
                this.Text = "Configuration Settings";

                // reset the dirty flag
                isDirty = false;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            return;

        }





        void ValueChanged(object sender, EventArgs e)
        {

            try
            {
                // set the dirty flag
                isDirty = true;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ValueChanged > " + ex.Message);
            }

            return;

        }







        void frmOptions_KeyDown(object sender, KeyEventArgs e)
        {

            try
            {
                // assume that a key press causes changes
                isDirty = true;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmOptions_KeyDown > " + ex.Message);
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

                cboBaseDatabaseSystems.Items.Clear();

                // load the combo
                if (_dbms.Length > 0)
                {
                    for (int n = 0; n < _dbms.Length; n++)
                    {
                        // load the combo
                        cboBaseDatabaseSystems.Items.Add(_dbms[n]);
                        cboMainDatabaseSystems.Items.Add(_dbms[n]);
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
        /// void LoadColorCombo()
        /// Load cboColorForInvalidValue with colors
        /// </summary>
        private void LoadColorCombo()
        {

            try
            {

                cboColorForInvalidValue.Items.Clear();

                foreach (Color color in new ColorConverter().GetStandardValues())
                {
                    cboColorForInvalidValue.Items.Add(color.Name);
                }
                
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadDBMSCombo > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void LoadSchemas()
        /// Load the cboSchemas combo
        /// </summary>
        private void LoadSchemas()
        {

            try
            {
                cboSchemas.Items.Clear();

                List<string> _schemas = DatabaseRoutines.GetDatabaseSchemas(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS);

                cboSchemas.Items.Add("<default>");

                foreach (string _schema in _schemas)
                {
                    cboSchemas.Items.Add(_schema);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadSchemas > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void LoadSettings()
        /// Load the settings
        /// </summary>
        private void LoadSettings()
        {

            try
            {
                LoadDBMSCombo();

                LoadColorCombo();

                LoadSchemas();
    
                // get the save preference
                string _preference = ConfigRoutines.GetSetting("SavePreference");

                cboBaseDatabaseSystems.Text = ConfigRoutines.GetSetting("BaseDBMS");
                txtBaseConnection.Text = ConfigRoutines.GetSetting("BaseConnection");

                cboMainDatabaseSystems.Text = ConfigRoutines.GetSetting("MainDBMS");
                txtMainConnection.Text = ConfigRoutines.GetSetting("MainConnection");

                // load the general option values
                chkShowCaptionsOnToolbars.Checked = (ConfigRoutines.GetSetting("ShowCaptionsOnToolbars").ToUpper() == "TRUE" ? true : false);
                chkConfirmOnTabClose.Checked = (ConfigRoutines.GetSetting("ConfirmOnTabClose").ToUpper() == "TRUE" ? true : false);
                chkAutoSaveOnClose.Checked = (ConfigRoutines.GetSetting("AutoSaveOnClose").ToUpper() == "TRUE" ? true : false);

                // load the import values
                chkImportFirstRowHasFieldNames.Checked = (ConfigRoutines.GetSetting("ImportFirstRowFieldNames").ToUpper() == "TRUE" ? true : false);
                cboImportDelimiter.Text = ConfigRoutines.GetSetting("ImportDelimiter");
                cboImportSeparator.Text = ConfigRoutines.GetSetting("ImportSeparator");
                chkImportAskAtRuntime.Checked = (ConfigRoutines.GetSetting("ImportAskAtRuntime").ToUpper() == "TRUE" ? true : false);

                // load the export values
                chkExportFirstRowHasFieldNames.Checked = (ConfigRoutines.GetSetting("ExportFirstRowFieldNames").ToUpper() == "TRUE" ? true : false);
                cboExportDelimiter.Text = ConfigRoutines.GetSetting("ExportDelimiter");
                cboExportSeparator.Text = ConfigRoutines.GetSetting("ExportSeparator");
                chkExportAskAtRuntime.Checked = (ConfigRoutines.GetSetting("ExportAskAtRuntime").ToUpper() == "TRUE" ? true : false);

                // load the SQL option values
                string _sortFieldOption = ConfigRoutines.GetSetting("SortFieldOption").ToUpper();
                rdbSortByFieldName.Checked = (_sortFieldOption == "NAME") ? true : false;

                txtWallpaper.Text = ConfigRoutines.GetSetting("Wallpaper");
                if (CommonRoutines.FileExists(txtWallpaper.Text))
                {
                    // show in the wallpaper box
                    picWallpaper.ImageLocation = txtWallpaper.Text;
                    picWallpaper.SizeMode = PictureBoxSizeMode.StretchImage;
                }

                txtSQLErrorThreshold.Text = ConfigRoutines.GetSetting("SQLErrorThreshold");

                chkShowSpaceInsteadOfPeriod.Checked = (ConfigRoutines.GetSetting("ShowSpaceInsteadOfPeriod").ToUpper().IndexOf('T') == 0) ? true : false;

                chkSuppressZeroFields.Checked = (ConfigRoutines.GetSetting("SuppressZeroFields").ToUpper().IndexOf('T') == 0) ? true : false;

                nudNumberOfDecimalPlaces.Value = CommonRoutines.ConvertToDecimal(ConfigRoutines.GetSetting("NumberDecimalPlaces"));

                chkShowCommas.Checked = (ConfigRoutines.GetSetting("ShowCommas").ToUpper().IndexOf('T') == 0) ? true : false;

                chkMakeLabelsOpaque.Checked = (ConfigRoutines.GetSetting("MakeLabelsOpaque").ToUpper().IndexOf('T') == 0) ? true : false;

                chkFormsPersistValues.Checked = (ConfigRoutines.GetSetting("FormsPersistValues").ToUpper().IndexOf('T') == 0) ? true : false;

                chkFormsCompileOnLoad.Checked = (ConfigRoutines.GetSetting("CompileOnLoad").ToUpper().IndexOf('T') == 0) ? true : false;

                chkWrapSumWithCoalesce.Checked = (ConfigRoutines.GetSetting("WrapSumWithCoalesce").ToUpper().IndexOf('T') == 0) ? true : false;

                // get the forms folders
                txtFormsFolder.Text = ConfigRoutines.GetSetting("FormsFolder");
                txtFormImagesFolder.Text = ConfigRoutines.GetSetting("FormImagesFolder");
                txtFormImagesFolder.Enabled = false;
                txtFormsFolder.Enabled = false;

                // default schema
                string _defaultSchema = ConfigRoutines.GetSetting("DefaultSchema");
                if (_defaultSchema == "")
                {
                    _defaultSchema = "<default>";
                }
                cboSchemas.Text = _defaultSchema;

                LoadVariablesSymbolics();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadSettings > " + ex.Message);
            }

            return;

        }











        /// <summary>
        /// void SaveSettings()
        /// Save the settings
        /// </summary>
        private void SaveSettings()
        {

            try
            {
                // save the values to the config

                // save the base connection
                if (txtBaseConnection.Text != "")
                {
                    ConfigRoutines.AddSetting("BaseDBMS", cboBaseDatabaseSystems.Text);
                    ConfigRoutines.AddSetting("BaseConnection", txtBaseConnection.Text);
                }

                // save the main connection
                if (txtMainConnection.Text != "")
                {
                    ConfigRoutines.AddSetting("MainDBMS", cboMainDatabaseSystems.Text);
                    ConfigRoutines.AddSetting("MainConnection", txtMainConnection.Text);
                }

                // load the general option values
                ConfigRoutines.AddSetting("ShowCaptionsOnToolbars", (chkShowCaptionsOnToolbars.Checked ? "TRUE" : "FALSE"));
                ConfigRoutines.AddSetting("ConfirmOnTabClose", (chkConfirmOnTabClose.Checked ? "TRUE" : "FALSE"));
                ConfigRoutines.AddSetting("AutoSaveOnClose", (chkAutoSaveOnClose.Checked ? "TRUE" : "FALSE"));

                // save the import values
                ConfigRoutines.AddSetting("ImportFirstRowFieldNames", (chkImportFirstRowHasFieldNames.Checked ? "TRUE" : "FALSE"));
                ConfigRoutines.AddSetting("ImportDelimiter", cboImportDelimiter.Text);
                ConfigRoutines.AddSetting("ImportSeparator", cboImportSeparator.Text);
                ConfigRoutines.AddSetting("ImportAskAtRuntime", (chkImportAskAtRuntime.Checked ? "TRUE" : "FALSE"));

                // save the export values
                ConfigRoutines.AddSetting("ExportFirstRowFieldNames", (chkExportFirstRowHasFieldNames.Checked ? "TRUE" : "FALSE"));
                ConfigRoutines.AddSetting("ExportDelimiter", cboExportDelimiter.Text);
                ConfigRoutines.AddSetting("ExportSeparator", cboExportSeparator.Text);
                ConfigRoutines.AddSetting("ExportAskAtRuntime", (chkExportAskAtRuntime.Checked ? "TRUE" : "FALSE"));

                // save the SQL option values
                ConfigRoutines.AddSetting("SortFieldOption", (rdbSortByFieldName.Checked ? "Name" : "Order"));

                // save the wallpaper
                ConfigRoutines.AddSetting("Wallpaper", txtWallpaper.Text);
                if (!CommonRoutines.FileExists(txtWallpaper.Text))
                {
                    // clear the image 
                    picWallpaper.ImageLocation = "";
                    picWallpaper.Refresh();
                }

                

                ConfigRoutines.AddSetting("ColorForInvalidValue", cboColorForInvalidValue.Text);

                ConfigRoutines.AddSetting("SQLErrorThreshold", txtSQLErrorThreshold.Text);

                ConfigRoutines.AddSetting("ShowSpaceInsteadOfPeriod", chkShowSpaceInsteadOfPeriod.Checked.ToString());

                ConfigRoutines.AddSetting("SuppressZeroFields", chkSuppressZeroFields.Checked.ToString());

                ConfigRoutines.AddSetting("NumberDecimalPlaces", nudNumberOfDecimalPlaces.Value.ToString());

                ConfigRoutines.AddSetting("ShowCommas", chkShowCommas.Checked.ToString());

                ConfigRoutines.AddSetting("MakeLabelsOpaque", chkMakeLabelsOpaque.Checked.ToString());

                ConfigRoutines.AddSetting("FormsPersistValues", chkFormsPersistValues.Checked.ToString());

                ConfigRoutines.AddSetting("CompileOnLoad", chkFormsCompileOnLoad.Checked.ToString());

                ConfigRoutines.AddSetting("WrapSumWithCoalesce", chkWrapSumWithCoalesce.Checked.ToString());

                // default schema
                ConfigRoutines.AddSetting("DefaultSchema", cboSchemas.Text.ToUpper());

                // setup the variables
                // delete the variables
                ConfigRoutines.DeleteSettingByPrefix("Variable_");
                for (int n = 0; n < dgvVariables.Rows.Count; n++)
                {
                    if (dgvVariables.Rows[n].Cells["VariableName"].Value != null)
                    {
                        string _variableName = dgvVariables.Rows[n].Cells["VariableName"].Value.ToString();
                        if (_variableName != "")
                        {
                            _variableName = _variableName;
                            string _variableValue = "";
                            if (dgvVariables.Rows[n].Cells["VariableValue"].Value != null)
                            {
                                _variableValue = dgvVariables.Rows[n].Cells["VariableValue"].Value.ToString();
                            }
                            ConfigRoutines.AddSetting("Variable_" + _variableName, _variableValue);

                            // update the csa variables
                            CSA.AddProperty("CONFIG", _variableName, _variableValue);
                        }
                    }
                }

                //// write out the config file
                ConfigRoutines.WriteConfigFile();

                propsNeedRefresh = true;


            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SaveSettings > " + ex.Message);
            }

            return;

        }











        /// <summary>
        /// void tbrMainSave_Click(object sender, EventArgs e)
        /// Process the save button on the main toolbar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void tbrMainSave_Click(object sender, EventArgs e)
        {

            try
            {
                SaveSettings();

                isDirty = false;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainSave_Click > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void tbrMainClose_Click(object sender, EventArgs e)
        /// Process the close button on the main toolbar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void tbrMainClose_Click(object sender, EventArgs e)
        {

            try
            {
                if (CloseForm())
                {
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainClose_Click > " + ex.Message);
            }

            return;

        }






        private bool CloseForm()
        {
            bool _close = true;

            try
            {
                // if the auto save config setting, then save regardless..
                string _autoSave = ConfigRoutines.GetSetting("AutoSaveOnClose").ToUpper();
                if (_autoSave == "YES")
                {
                    SaveSettings();
                    _close = true;
                }
                else
                {

                    if (isDirty)
                    {
                        DialogResult answer = CommonRoutines.Ask("Would you like to save your changes?", "Save Changes?");

                        switch (answer)
                        {
                            case DialogResult.Yes:
                                SaveSettings();
                                _close = true;
                                break;

                            case DialogResult.No:
                                _close = true;
                                break;

                            default:
                                _close = false;
                                break;

                        }
                    }
                }

                if (_close)
                {
                    isDirty = false;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CloseForm > " + ex.Message);
            }

            return _close;

        }






        /// <summary>
        /// void btnBuildBaseConnection_Click(object sender, EventArgs e)
        /// Get the base connection 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnBuildBaseConnection_Click(object sender, EventArgs e)
        {

            try
            {
                frmConnectionString _connectionStringForm = new frmConnectionString();
                _connectionStringForm.DBMS = cboBaseDatabaseSystems.Text;
                _connectionStringForm.ConnectionString = txtBaseConnection.Text;
                _connectionStringForm.ShowDialog();
                // get the connection string and set the property for the object
                txtBaseConnection.Text = _connectionStringForm.ConnectionString;
                cboBaseDatabaseSystems.Text = _connectionStringForm.DBMS;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnBuildBaseConnection_Click > " + ex.Message);
            }

            return;

        }





        private void btnFind_Click(object sender, EventArgs e)
        {

            try
            {
                string _fileName = CommonRoutines.OpenDialog("*", "", "Please select a picture for your wallpaper");
                if (_fileName != "")
                {
                    txtWallpaper.Text = _fileName;
                    // load the wallpaper image
                    picWallpaper.ImageLocation = _fileName;
                    picWallpaper.SizeMode = PictureBoxSizeMode.StretchImage;
                    picWallpaper.Refresh();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnFind_Click > " + ex.Message);
            }

            return;

        }








        private void cboColorForInvalidValue_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblColorForInvalidValue.BackColor = System.Drawing.Color.FromName(cboColorForInvalidValue.Text);
        }



        private void btnTestBaseConnection_Click(object sender, EventArgs e)
        {
            if (DatabaseRoutines.TestConnection(txtBaseConnection.Text, cboBaseDatabaseSystems.Text))
            {
                CommonRoutines.DisplayInformationalMessage("Base Connection is valid.");
            }
            else
            {
                CommonRoutines.DisplayErrorMessage("Base Connection is NOT valid.");
            }
        }
        

        
        
        private void btnTestMainConnection_Click(object sender, EventArgs e)
        {

            if (DatabaseRoutines.TestConnection(txtMainConnection.Text, cboMainDatabaseSystems.Text))
            {
                CommonRoutines.DisplayInformationalMessage("Main Connection is valid.");
            }
            else
            {
                CommonRoutines.DisplayErrorMessage("Main Connection is NOT valid.");
            }
        }



        private void LoadVariablesSymbolics()
        {

            try
            {
                // setup the variables
                List<string> _variables = ConfigRoutines.GetSettingsByPrefix("variable");
                dgvVariables.Rows.Clear();
                if (_variables.Count > 0)
                {
                    for (int n = 0; n < _variables.Count; n++)
                    {
                        string[] _variable = _variables[n].Split(';');
                        if (_variable.Length > 1)
                        {
                            // remove the prefix
                            _variable[0] = _variable[0].ToUpper().Replace("VARIABLE_", "");
                            dgvVariables.Rows.Add(new object[] { _variable[0], _variable[1] });
                        }
                    }
                }

                // setup the symbolics
                dgvSymbolics.Rows.Clear();
                for (int n = 0; n < IGenFormCommonRoutines.symbolics.Length; n++)
                {
                    string _symbolicName = IGenFormCommonRoutines.symbolics[n];
                    string _symbolicValue = IGenFormCommonRoutines.ResolveSymbolics("%" + _symbolicName + "%");
                    dgvSymbolics.Rows.Add(new object[] { _symbolicName, _symbolicValue });
                }

                // now add in the properties bag
                List<string[]> _properties = CSA.GetProperties("");
                for (int n = 0; n < _properties.Count; n++)
                {
                    string[] _property = _properties[n];
                    dgvSymbolics.Rows.Add(new object[] { _property[0], _property[1] });
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadVariablesSymbolics > " + ex.Message);
            }

            return;

        }









    }

}
