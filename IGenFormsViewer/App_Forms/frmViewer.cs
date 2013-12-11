using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Reflection;

namespace IGenForms
{
    public partial class frmViewer : Form
    {
        private string moduleName = "frmViewer";
        private int lastTabSelectedIndex = 0;
        public IGenForm currentForm = null;
        public IGenFormsMain displayIGenForms = null;

        private ContextMenuStrip currentContextMenu = null;

        TabPage clickedTab = new TabPage();

        bool isDirty = false;

        bool initialDisplay = true;


        public frmViewer()
        {
            InitializeComponent();

            try
            {
                InitializeApp();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmViewer > " + ex.Message);
            }

            return;

        }


        public frmViewer(TabPage showTabPage)
        {
            InitializeComponent();

            try
            {
                InitializeApp();

                // set the page
                tabForms.TabPages.Clear();
                // create a tab from the one sent
                TabPage _newTabPage = new TabPage();
                // first control on the tab is it's pallet
                PictureBox _pallet = (PictureBox)showTabPage.Controls[0];
                PictureBox _newPallet = new PictureBox();
                _newPallet.Image = _pallet.Image;
                _newPallet.Name = _pallet.Name;
                _newPallet.Tag = _pallet.Tag;
                _newPallet.Top = _pallet.Top;
                _newPallet.Left = _pallet.Left;
                _newPallet.Width = _pallet.Width;
                _newPallet.Height = _pallet.Height;
                _newPallet.Visible = true;

                _newTabPage.Controls.Add(_newPallet);
                _newTabPage.Text = showTabPage.Text;
                _newTabPage.Name = showTabPage.Name;
                _newTabPage.Tag = showTabPage.Tag;

                foreach (Control _control in _pallet.Controls)
                {
                    Label _newControl = new Label();
                    IGenField _field = new IGenField();
                    _newControl.Name = _control.Name;
                    _newControl.Text = _control.Text;
                    _newControl.Tag = _control.Tag;
                    _newControl.Left = _control.Left;
                    _newControl.Top = _control.Top;
                    _newControl.Width = _control.Width;
                    _newControl.Height = _control.Height;
                    _newControl.BackColor = _control.BackColor;
                    _newControl.ForeColor = _control.ForeColor;
                    _newControl.Font = _control.Font;
                    _newControl.Visible = true;
                    _newControl.BringToFront();
                    

                    if (_control.Tag != null)
                    {
                        _field = (IGenField)_control.Tag;
                        // determine the alignment
                        switch (_field.dataType.ToUpper())
                        {
                            case "NUMERIC":
                                _newControl.TextAlign = ContentAlignment.BottomRight;
                                break;

                            default:
                                _newControl.TextAlign = ContentAlignment.BottomLeft;
                                break;
                        }

                    }

                    _newPallet.Controls.Add(_newControl);
                }
                tabForms.TabPages.Add(_newTabPage);
                ShowNavigationButtons();

                // hide the buttons
                tbrMainSave.Visible = false;
                toolStripSeparator1.Visible = false;
                tbrMainPrint.Visible = false;
                tbrMainNavSep2.Visible = false;
                ResizeControls();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmViewer > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void InitializeApp()
        /// Initialize the app
        /// </summary>
        private void InitializeApp()
        {
            string _name = "";
            string _value = "";

            try
            {
                // set events for the form
                this.Resize += new EventHandler(frmViewer_Resize);
                this.FormClosing += frmViewer_FormClosing;

                // add the navigation button events
                tbrMainFirstPage.Click += new EventHandler(btnFirst_Click);
                tbrMainPreviousPage.Click += new EventHandler(btnPrevious_Click);
                tbrMainNextPage.Click += new EventHandler(btnNext_Click);
                tbrMainLastPage.Click += new EventHandler(btnLast_Click);

                // set the tab select event
                tabForms.Selected += new TabControlEventHandler(tabForms_Selected);
                tabForms.MouseDown += new MouseEventHandler(TabClick);
                tabForms.DoubleClick += new EventHandler(tabForms_DoubleClick);

                tabForms.TabPages.Clear();

                IGenFormCommonRoutines.runMode = true;

                // create a new forms object
                displayIGenForms = IGenFormCommonRoutines.currentIGenForms;

                displayIGenForms.cancelFlag = false;
                tbrMainStop.Visible = false;

                // get the last calced date
                SetLastDatePrepared();

                tbrMainProgress.Visible = false;

                ResizeControls();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            DisplayStatus("Ready");

            return;

        }






        void tabForms_DoubleClick(object sender, EventArgs e)
        {

            try
            {
                // get the tab page under the click
                clickedTab = tabForms.SelectedTab;
                if (clickedTab != null)
                {
                    frmViewer _viewer = new frmViewer(clickedTab);
                    _viewer.Show(this);
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            return;

        }










        ContextMenuStrip CreateRightClickDropDownMenu()
        {
            ContextMenuStrip rightClickDropDownMenu = new ContextMenuStrip();

            try
            {
                string[] _dropDownMenuItems = {"Break Out|BreakOut"};

                    // create a file drop down menu
                    for (int n = 0; n < _dropDownMenuItems.Length; n++)
                    {
                        string[] _parts = _dropDownMenuItems[n].Split('|');
                        if (_parts[0] == "-")
                        {
                            ToolStripSeparator _item = new ToolStripSeparator();
                            _item.Name = "Separator-" + (rightClickDropDownMenu.Items.Count + 1).ToString();
                            _item.Tag = "-";
                            _item.Click += new EventHandler(Item_Click);
                            rightClickDropDownMenu.Items.Add(_item);
                        }
                        else
                        {
                            ToolStripMenuItem _item = new ToolStripMenuItem();
                            _item.Text = _parts[0];
                            // check for a special set of instructions (i.e. values for selection, true/false, etc)
                            string _value = _parts[1];
                            string _tag = "";
                            if (_value.IndexOf('[') >= 0)
                            {
                                // strip the special stuff
                                int _start = _value.IndexOf('[');
                                int _end = _value.IndexOf(']');
                                _tag = _value.Substring(_start + 1, (_end - _start - 1));
                                _value = _value.Substring(_end + 1);
                            }
                            _item.Name = _value;
                            _item.Tag = _tag;
                            _item.Click += new EventHandler(Item_Click);
                            rightClickDropDownMenu.Items.Add(_item);
                        }
                    }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreateRightClickDropDownMenu > " + ex.Message);
            }

            return rightClickDropDownMenu;

        }





        /// <summary>
        /// void Item_Click(object sender, EventArgs e)
        /// Process the click of a right click dropdown menu item
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void Item_Click(object sender, EventArgs e)
        {

            try
            {
                ToolStripMenuItem _item = (ToolStripMenuItem)sender;
                // hide the menu strip
                if (currentContextMenu != null)
                {
                    currentContextMenu.Visible = false;
                }
                ProcessRightClickItem(_item.Name, _item.Tag.ToString(), _item.Checked.ToString());
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Item_Click > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void ProcessRightClickItem(string itemName,string itemTag)
        /// Process the selection of a drop down menu item
        /// </summary>
        /// <param name="itemName"></param>
        /// <param name="itemTag"></param>
        void ProcessRightClickItem(string itemName, string itemTag, string itemChecked)
        {

            try
            {

                string itemKey = (itemName.ToUpper().IndexOf("ADDFIELDS-") == 0) ? "ADDFIELDS" : itemName;
                itemKey = (itemKey.ToUpper().IndexOf("ALIGN-") == 0) ? "ALIGN" : itemKey;

                switch (itemKey.ToUpper())
                {
                    case "BREAKOUT":
                        // get the tab page under the click
                        if (clickedTab != null)
                        {
                            frmViewer _viewer = new frmViewer(clickedTab);
                            _viewer.Show(this);
                        }
                        break;


                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Item_Click > " + ex.Message);
            }

            return;

        }








        public void DisplayForms()
        {

            try
            {
                //DisplayStatus("Loading form definitions...");

                // get the file name from the global one
                if (displayIGenForms.forms.Count == 0)
                {
                    string _formGroupFileName = IGenFormCommonRoutines.currentIGenForms.fileName;
                    displayIGenForms.LoadFormGroup(_formGroupFileName, tabForms, true);
                    displayIGenForms.compileFormsFlag = true;
                }

                if (initialDisplay)
                {
                    // use the values from the current igenforms
                    string _persistFlag = ConfigRoutines.GetSetting("FormsPersistValues");

                    //// set the load previous values flag
                    //ConfigRoutines.AddSetting("FormsPersistValues", "True");

                    // load the previous values into the form
                    if (_persistFlag.ToUpper().IndexOf('T') == 0)
                    {
                        displayIGenForms.LoadFormValues();
                    }

                    initialDisplay = false;

                }

                // recreate the forms
                DisplayStatus("Displaying form...");
                displayIGenForms.DisplayForms(tabForms, true);

                // set an event for the textboxes and checkboxes
                for (int n = 0; n < tabForms.TabCount; n++)
                {
                    PictureBox _pallet = (PictureBox)tabForms.TabPages[n].Controls[0];
                    foreach (Control _control in _pallet.Controls)
                    {
                        IGenField _field = (IGenField)_control.Tag;

                        if (_field.type.ToUpper().IndexOf("TEXTBOX") >= 0)
                        {
                            _control.Click += TextBox_Click;
                        }
                        else
                        {
                            if (_control.GetType().Name.ToUpper().IndexOf("CHECKBOX") >= 0)
                            {
                                CheckBox _checkBox = (CheckBox)_control;
                                _checkBox.CheckedChanged += CheckBox_CheckedChanged;
                            }
                            else
                            {
                                if (_control.GetType().Name.ToUpper().IndexOf("COMBOBOX") >= 0)
                                {
                                    ComboBox _comboBox = (ComboBox)_control;
                                    _comboBox.SelectedValueChanged += ComboBox_SelectedValueChanged;
                                }
                            }
                        }


                    }
                }

                ResizeControls();

                // set the first tab
                tabForms.SelectedIndex = 0;

                ShowNavigationButtons();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DisplayForms > " + ex.Message);
            }

            DisplayStatus("Ready");

            return;

        }






        void TextBox_Click(object sender, EventArgs e)
        {

            try
            {
                GetTextValue(sender);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".TextBox_Click > " + ex.Message);
            }

            return;

        }







        void GetTextValue(object sender)
        {
            Control _control = (Control)sender;

            try
            {
                Color _saveColor = _control.BackColor;

                // set the textbox
                _control.BackColor = Color.Purple;

                // open the input box 
                string _prompt = "Please enter the value for " + _control.Name;
                string _value = _control.Text;
                DialogResult _result = CommonRoutines.InputBox("Input value", _prompt, ref _value);
                if (_result == System.Windows.Forms.DialogResult.OK)
                {
                    _control.Text = _value;
                    // update the value in the field object
                    if (_control.Tag != null && _control.Tag.GetType().Name.ToUpper().IndexOf("IGENFIELD") >= 0)
                    {
                        IGenField _field = (IGenField)_control.Tag;
                        _field.text = _value;
                        _field.value = _value;
                        _field.compiledValue = _value;
                        _field.manualInput = true;
                        _control.Tag = _field;
                    }
                }

                _control.BackColor = _saveColor;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetTextValue > " + ex.Message);
            }

            return;

        }





        void ComboBox_SelectedValueChanged(object sender, EventArgs e)
        {

            try
            {
                // set the value to the selected value
                ComboBox _comboBox = (ComboBox)sender;
                if (_comboBox.Tag != null && _comboBox.Tag.GetType().Name.ToUpper().IndexOf("IGENFIELD") >= 0)
                {
                    IGenField _field = (IGenField)_comboBox.Tag;
                    _field.text = _comboBox.Text.ToString();
                    _field.comboValue = _field.text;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ComboBox_SelectedValueChanged > " + ex.Message);
            }

            return;

        }




        void CheckBox_CheckedChanged(object sender, EventArgs e)
        {

            try
            {
                // set the value to the checked value
                CheckBox _checkBox = (CheckBox)sender;
                if (_checkBox.Tag != null && _checkBox.Tag.GetType().Name.ToUpper().IndexOf("IGENFIELD") >= 0)
                {
                    IGenField _field = (IGenField)_checkBox.Tag;
                    _field.text = _checkBox.Checked.ToString();
                    _field.value = _checkBox.Checked.ToString();
                    _field.checkedFlag = _checkBox.Checked;

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CheckBox_CheckedChanged > " + ex.Message);
            }

            return;

        }





        void TextBox_LostFocus(object sender, EventArgs e)
        {

            try
            {
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + "._textBox_LostFocus > " + ex.Message);
            }

            return;

        }




        public void ProcessForms()
        {

            try
            {
                tbrMainStop.Visible = true;
                displayIGenForms.cancelFlag = false;

                displayIGenForms.progressBar = tbrMainProgress;

                // now process the forms

                if (displayIGenForms.compileFormsFlag)
                {
                    DisplayStatus("Compiling the form field values...");
                    // resolve the fields so that they are pre-compiled
                    displayIGenForms.CompileFormValues();
                    displayIGenForms.compileFormsFlag = false;
                }

                // now process the form rules
                DisplayStatus("Processing form rules...");
                displayIGenForms.ProcessForms(tbrMainStatus);

                // recreate the forms
                DisplayStatus("Displaying form...");
                DisplayForms();

                ResizeControls();

                // set the first tab
                tabForms.SelectedIndex = 0;

                ShowNavigationButtons();

                // set the isdirty flag
                isDirty = true;

                // update the run_date on the IGenForms header


            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ProcessForms > " + ex.Message);
            }

            DisplayStatus("Ready");
            tbrMainStop.Visible = false;

            return;

        }


        

        void TabClick(object sender, MouseEventArgs e)
        {

            try
            {
                // get the tab under the click
                clickedTab = FindTab();
                switch (e.Button)
                {
                    case System.Windows.Forms.MouseButtons.Right:
                        ContextMenuStrip objRightClickMenu = CreateRightClickDropDownMenu();
                        if (objRightClickMenu != null)
                        {
                            int X = tabForms.Left + e.X;
                            int Y = tabForms.Top + e.Y;
                            objRightClickMenu.Show(this, X, Y);  // (this, new Point(X, Y));
                        }
                        break;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + "._tabPage_Click > " + ex.Message);
            }

            return;

        }







        private TabPage FindTab()
        {
            TabPage _tabPage = null;

            try
            {
                for (int index = 0; index <= tabForms.TabCount - 1; index++)
                {
                    if (tabForms.GetTabRect(index).Contains(tabForms.PointToClient(Cursor.Position)))
                    {
                        _tabPage = tabForms.TabPages[index];
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".FindTab > " + ex.Message);
            }

            return _tabPage;

        }







        void frmViewer_FormClosing(object sender, FormClosingEventArgs e)
        {

            try
            {
                if (isDirty)
                {
                    // as if they want to save the values
                    DialogResult _result = CommonRoutines.Ask("Do you want to save the newly calculated values?", "Save values?");
                    if (_result == System.Windows.Forms.DialogResult.Yes)
                    {
                        SaveForms();
                    }
                    else
                    {
                        if (_result == System.Windows.Forms.DialogResult.Cancel)
                        {
                            e.Cancel = true;
                            return;
                        }
                    }
                }

                IGenFormCommonRoutines.runMode = false;
                // walks the tabs and removes the controls
                tabForms.TabPages.Clear();
                CommonRoutines.DisplayStatus("Done");


            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmViewer_FormClosed > " + ex.Message);
            }

            return;

        }






        void tabForms_Selected(object sender, TabControlEventArgs e)
        {

            try
            {
                // save the selected tab
                ShowNavigationButtons();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tabForms_Selected > " + ex.Message);
            }

            return;
        
        }




        void ShowNavigationButtons()
        {
           
            try
            {
                if (tabForms.SelectedIndex >= 0)
                {
                    // get the page_enabled flag for the form
                    string _currentForm = tabForms.TabPages[tabForms.SelectedIndex].Name;
                    IGenForm _form = displayIGenForms.GetForm(_currentForm);
                    string _pageEnabled = _form.multiPageForm.ToUpper();
                    int _datasetOrdinal = _form.datasetOrdinal;
                    string _datasetName = _form.datasetName;
                    
                    if (_datasetOrdinal < 0)
                    {
                        // find from the name
                        
                    }

                    if (_pageEnabled == "TRUE")
                    {
                        // show the buttons
                        tbrMainFirstPage.Visible = true;
                    }
                    else
                    {
                        tbrMainFirstPage.Visible = false;
                    }

                    tbrMainPreviousPage.Visible = tbrMainFirstPage.Visible;

                    tbrMainPageNo.Visible = tbrMainFirstPage.Visible;

                    tbrMainOfLabel.Visible = tbrMainFirstPage.Visible;
                    
                    tbrMainTotalPages.Visible = tbrMainFirstPage.Visible;

                    tbrMainNextPage.Visible = tbrMainFirstPage.Visible;

                    tbrMainLastPage.Visible = tbrMainFirstPage.Visible;

                    // set the separators
                    tbrMainNavSep1.Visible = tbrMainFirstPage.Visible;
                    tbrMainNavSep2.Visible = tbrMainFirstPage.Visible;
                    tbrMainNavSep3.Visible = tbrMainFirstPage.Visible;
                    tbrMainNavSep4.Visible = tbrMainFirstPage.Visible;
                    tbrMainNavSep5.Visible = tbrMainFirstPage.Visible;

                    if (_datasetOrdinal >= 0)
                    {
                        _form.currentRow = displayIGenForms.datasets[_datasetOrdinal].currentPosition;
                        tbrMainPageNo.Text = _form.currentRow.ToString();

                        _form.totalRows = displayIGenForms.datasets[_datasetOrdinal].numRows;
                        tbrMainTotalPages.Text = _form.totalRows.ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ShowNavigationButtons > " + ex.Message);
            }

            return;

        }





        void frmViewer_Resize(object sender, EventArgs e)
        {
            
            try
            {
                ResizeControls();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmViewer_Resize > " + ex.Message);
            }

            return;

        }




        void ResizeControls()
        {

            try
            {
                // resize the tab form
                tabForms.Width = this.Width - tabForms.Left - 15;
                tabForms.Height = this.Height - tabForms.Top - statusStrip.Height - 40;

                // now resize the tab pages
                for (int n = 0; n < tabForms.TabPages.Count; n++)
                {
                    TabPage _tabPage = tabForms.TabPages[n];
                    _tabPage.Width = tabForms.Width - _tabPage.Left - 15;
                    _tabPage.Height = tabForms.Height - _tabPage.Top - statusStrip.Height - 2;
                    _tabPage.AutoScroll = true;
                    _tabPage.BorderStyle = BorderStyle.FixedSingle;
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResizeControls > " + ex.Message);
            }

            return;

        }





        ///// <summary>
        ///// string DisplayForms()
        ///// Display the forms on the tab
        ///// </summary>
        //public string DisplayForms()
        //{
        //    string _result = "";
        //    string _name = "";
        //    string _value = "";
        //    int _numRecs = 0;
        //    int _initialPages = 0;

        //    try
        //    {

        //        // clear all temp files
        //        CommonRoutines.DeleteAllFiles(CommonRoutines.tempPath);

        //        // process the form controls on each form to do forward and backward references
        //        displayIGenForms.ProcessForms();

        //        // display the forms in the tab in run mode
        //        displayIGenForms.DisplayForms(tabForms, true);

        //    }
        //    catch (Exception ex)
        //    {
        //        CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DisplayForms > " + ex.Message);
        //        _result = ex.Message;
        //    }

        //    return _result;

        //}














        private void btnExit_Click(object sender, EventArgs e)
        {

            try
            {
                this.Close();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnExit_Click > " + ex.Message);
            }

            return;

        }





        private void btnFirst_Click(object sender, EventArgs e)
        {

            try
            {
                AdvanceRow(-99);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnFirst_Click > " + ex.Message);
            }

            return;

        }



        private void btnPrevious_Click(object sender, EventArgs e)
        {

            try
            {
                AdvanceRow(-1);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnPrevious_Click > " + ex.Message);
            }

            return;

        }




        private void btnNext_Click(object sender, EventArgs e)
        {

            try
            {
                AdvanceRow(1);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnNext_Click > " + ex.Message);
            }

            return;

        }


        private void btnLast_Click(object sender, EventArgs e)
        {

            try
            {
                AdvanceRow(99);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnLast_Click > " + ex.Message);
            }

            return;

        }






        private void AdvanceRow(int numRows)
        {

            try
            {
                string _currentForm = tabForms.TabPages[tabForms.SelectedIndex].Name;


                IGenForm _form = displayIGenForms.GetForm(_currentForm);

                // get the dataset defined
                if (_form.datasetName != "")
                {
                    for (int n = 0; n < displayIGenForms.datasets.Count; n++)
                    {
                        IGenDataset _ds = displayIGenForms.datasets[n];

                        if (_ds.cursorName.ToUpper() == _form.datasetName.ToUpper())
                        {

                            List<string[]> _results = _ds.results;

                            if (_results != null && _results.Count > 0)
                            {
                                // set the cursor
                                Cursor _saveCursor = this.Cursor;

                                this.Cursor = Cursors.WaitCursor;

                                int _currentRow = _ds.currentPosition;
                                int _currentPage = (_currentRow / _form.rowsPerPage) + 1;

                                if (numRows == 99)
                                {
                                    // send to end
                                    _currentRow = _results.Count - _form.rowsPerPage;
                                    _currentPage = (_currentRow / _form.rowsPerPage) + 1;
                                }
                                else
                                {
                                    if (numRows == -99)
                                    {
                                        // send to beginning
                                        _currentPage = 1;
                                        _currentRow = 1;
                                    }
                                    else
                                    {
                                        _currentPage = _currentPage + numRows;
                                        _currentRow = _currentRow + (numRows * _form.rowsPerPage);
                                    }
                                }

                                if (_currentRow < 1)
                                {
                                    _currentPage = 1;
                                    _currentRow = 1;
                                }
                                else
                                {
                                    //if (_currentRow > (_results.Count - _form.rowsPerPage - 1))
                                    //{
                                    //    _currentRow = _results.Count - _form.rowsPerPage;
                                    //    _currentPage = _form.totalPages;
                                    //}
                                }


                                //_currentRow = (_currentPage - 1) * _form.rowsPerPage + 1;
                                _ds.currentPosition = _currentRow;
                                _form.currentRow = _ds.currentPosition;
                                _form.currentPage = _currentPage;
                                tbrMainPageNo.Text = _currentRow.ToString();
                                tbrMainTotalPages.Text = _form.totalRows.ToString();
                                Application.DoEvents();

                                // refresh the page
                                // get the form
                                if (tabForms.SelectedTab != null)
                                {
                                    string _formName = _form.name;
                                    PictureBox _pallet = (PictureBox)tabForms.SelectedTab.Controls[0];
                                    displayIGenForms.RedisplaySelectedForm(_pallet, _formName);
                                }
                                //DisplayForms();
                                //LoadFormIntoTabs();

                                _form.currentRow = _currentRow;
                                _form.currentPage = _currentPage;
                                tbrMainPageNo.Text = _currentRow.ToString();
                                tbrMainTotalPages.Text = _ds.numRows.ToString();
                                Application.DoEvents();

                                //// set the tab index
                                //tabForms.SelectedIndex = lastTabSelectedIndex;

                                this.Cursor = _saveCursor;
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".AdvanceRow > " + ex.Message);
            }

            return;

        }









        private void SaveForms()
        {

            try
            {
                if (displayIGenForms != null)
                {
                    this.Cursor = Cursors.WaitCursor;
                    DisplayStatus("Saving form values, please wait....");
                    displayIGenForms.SaveFormsToDatabase();

                    // get the last calced date
                    SetLastDatePrepared();

                    isDirty = false;
                    DisplayStatus("Ready");
                    this.Cursor = Cursors.Arrow;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SaveForm > " + ex.Message);
            }

            return;

        }





        private void PrintForms(bool printPreview)
        {

            try
            {
                // show the print dialog form
                frmPrintDialog _printDialog = new frmPrintDialog(tabForms);
                _printDialog.ShowDialog(this);

/*
                // set the default
                PlexPrint.GetDefaultPrinter();

                // display the print form to decide where to put it

                // print the current form
                TabPage _tabPage = tabForms.SelectedTab;
                string _formName = _tabPage.Name;

                PictureBox _pallet = (PictureBox)_tabPage.Controls[0];
                IGenForm _form = (IGenForm)_pallet.Tag;
                string _printOrientation = _form.printOrientation;

                PrintRoutines.Print(_pallet, "", false, _printOrientation);

                ////MessageBox.Show("Process Form " + _formName);
                //string _formImage = FormRoutines.CreateBitmapFromForm(_formName);
                ////MessageBox.Show("Image created is " + _formImage);
                //if (_formImage != "")
                //{
                //    // print
                //    PlexPrint.PrintImage(_formImage, "");
                //}
 */

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".PrintForms > " + ex.Message);
            }

            return;

        }





        private void tbrMainClose_Click(object sender, EventArgs e)
        {

            try
            {
                CloseWindow();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainClose_Click > " + ex.Message);
            }

            return;

        }




        private void CloseWindow()
        {

            try
            {
                this.Close();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CloseWindow > " + ex.Message);
            }

            return;

        }





        private void tbrMainSave_Click(object sender, EventArgs e)
        {

            try
            {
                // save the forms to the database
                SaveForms();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainSave_Click > " + ex.Message);
            }

            return;

        }





        private void tbrMainPrint_Click(object sender, EventArgs e)
        {

            try
            {
                PrintForms(false);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainPrint_Click > " + ex.Message);
            }

            return;

        }





        private void tbrMainRun_Click(object sender, EventArgs e)
        {

            try
            {
                // now process the forms
                ProcessForms();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainRun_Click > " + ex.Message);
            }

            return;

        }



        private void DisplayStatus(string status)
        {

            try
            {
                // display the status
                CommonRoutines.DisplayStatus(status);
                tbrMainStatus.Text = status;
                Application.DoEvents();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DisplayStatus > " + ex.Message);
            }

            return;

        }



        private void SetLastDatePrepared()
        {

            try
            {
                // get the last calced date
                string _lastDatePrepared = displayIGenForms.GetLastPreparedDate();
                string _version = displayIGenForms.formGroupVersion;
                if (_lastDatePrepared != "")
                {
                    tbrMainLastDatePrepared.Text = "Ver: " + _version + ", Last Prepared: " + _lastDatePrepared;
                }
                else
                {
                    tbrMainLastDatePrepared.Text = "Ver: " + _version + ", Not yet prepared";
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetLastDatePrepared > " + ex.Message);
            }

            return;

        }





        private void tbrMainStop_Click(object sender, EventArgs e)
        {

            try
            {
                bool _cancelProcess = CommonRoutines.Ask("Do you wish to stop processing?");
                if (_cancelProcess)
                {
                    displayIGenForms.cancelFlag = true;
                }

                displayIGenForms.cancelFlag = true;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainStop_Click > " + ex.Message);
            }

            return;

        }





        private void tbrMainOptions_Click(object sender, EventArgs e)
        {

            try
            {
                ShowOptions();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainOptions_Click > " + ex.Message);
            }

            return;

        }



        private void ShowOptions()
        {

            try
            {
                frmOptions _optionsForm = new frmOptions();
                _optionsForm.StartPosition = FormStartPosition.CenterScreen;
                _optionsForm.ShowDialog(this);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ShowOptions > " + ex.Message);
            }

            return;

        }




        private void mnuMainFileClose_Click(object sender, EventArgs e)
        {

            try
            {
                CloseWindow();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".mnuMainFileClose_Click > " + ex.Message);
            }

            return;

        }





        private void mnuMainViewDatasets_Click(object sender, EventArgs e)
        {

            try
            {
                DisplayDatasets();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".mnuMainViewDatasets_Click > " + ex.Message);
            }

            return;

        }




        private void DisplayDatasets()
        {

            try
            {
                frmDisplayDatasets _displayDatasets = new frmDisplayDatasets();
                _displayDatasets.igenForms = displayIGenForms;
                _displayDatasets.ShowDialog();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DisplayDatasets > " + ex.Message);
            }

            return;

        }









    }
}
