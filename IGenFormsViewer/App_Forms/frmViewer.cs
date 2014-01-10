using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Reflection;



namespace IGenFormsViewer
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
                // set the viewer version
                this.Text = "IGenForms Viewer Version " + CommonRoutines.strVersion;

                // set events for the form
                this.Resize += new EventHandler(frmViewer_Resize);
                this.FormClosing += frmViewer_FormClosing;

                // add the navigation button events
                tbrMainFirstPage.Click += new EventHandler(btnFirst_Click);
                tbrMainPreviousPage.Click += new EventHandler(btnPrevious_Click);
                tbrMainNextPage.Click += new EventHandler(btnNext_Click);
                tbrMainLastPage.Click += new EventHandler(btnLast_Click);
                tbrMainGotoPage.Click += new EventHandler(btnGoto_Click);

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

                displayIGenForms.progressBar = tbrMainProgress;
                displayIGenForms.progressPercentage = tbrMainPercentage;

                tbrMainLastDatePrepared.Visible = false;

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

                if (initialDisplay)
                {
                    // get the file name from the global one
                    //if (displayIGenForms.forms.Count == 0)
                    if (displayIGenForms.xmlRecs.Count == 0)
                    {
                        CommonRoutines.Log("Loading form file " + IGenFormCommonRoutines.currentIGenForms.fileName);
                        string _formGroupFileName = IGenFormCommonRoutines.currentIGenForms.fileName;
                        displayIGenForms.LoadFormGroup(_formGroupFileName, tabForms, true);
                        displayIGenForms.compileFormsFlag = true;
                    }
                    else
                    {
                        CommonRoutines.Log("Loading form from XML records ");
                        string _formGroupFileName = IGenFormCommonRoutines.currentIGenForms.fileName;
                        // get the form group path
                        int _offset = _formGroupFileName.LastIndexOf('\\');
                        if (_offset > 0)
                        {
                            CommonRoutines.currentFormGroupPath = _formGroupFileName.Substring(0, _offset);
                        }
                        displayIGenForms.LoadFormGroup(displayIGenForms.xmlRecs, tabForms, true);
                        displayIGenForms.compileFormsFlag = true;
                    }

                    // use the values from the current igenforms
                    string _persistFlag = ConfigRoutines.GetSetting("FormsPersistValues");

                    //// set the load previous values flag
                    //ConfigRoutines.AddSetting("FormsPersistValues", "True");

                    // load the previous values into the form
                    if (_persistFlag.ToUpper().IndexOf('T') == 0)
                    {
                        displayIGenForms.LoadFormValues();
                    }

                    // recreate the forms
                    DisplayStatus("Displaying form...");
                    displayIGenForms.DisplayForms(tabForms, true);

                }

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

                        _control.MouseHover += _control_MouseHover;

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

            initialDisplay = false;

            DisplayStatus("Ready");

            return;

        }






        void _control_MouseHover(object sender, EventArgs e)
        {
            Control _control = (Control)sender;
            String _text = "Name=" + _control.Name;

            // display the control text
            try
            {
                if (_control.Tag != null && _control.Tag.GetType().Name.ToUpper() == "IGENFIELD")
                {
                    IGenField _field = (IGenField)_control.Tag;
                    _text = _text + "\r" + "Value=" + _field.value + "\rCompiled Value=" + _field.compiledValue + "\rComments=" + _field.comments;
                }
                System.Windows.Forms.ToolTip _tooltip = new System.Windows.Forms.ToolTip();
                _tooltip.AutomaticDelay = 0;
                _tooltip.AutoPopDelay = 0;
                _tooltip.InitialDelay = 0;
                _tooltip.IsBalloon = true;
                _tooltip.ToolTipTitle = "Control Properties";
                _tooltip.UseAnimation = true;
                _tooltip.SetToolTip(_control, _text);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + "._control_MouseHover > " + ex.Message);
            }

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

                    default:
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
                    displayIGenForms.currentForm = _form;
                    displayIGenForms.currentFormName = _form.name;
                    string _pageEnabled = _form.multiPageForm.ToUpper();
                    int _datasetOrdinal = _form.datasetOrdinal;
                    string _datasetName = _form.datasetName;
                    
                    if (_datasetOrdinal < 0)
                    {
                        // find from the name
                        
                    }

                    if (_pageEnabled == "TRUE" && _form.totalPages > 0)
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

                    tbrMainGotoPage.Visible = tbrMainFirstPage.Visible;

                    // set the separators
                    tbrMainNavSep1.Visible = tbrMainFirstPage.Visible;
                    tbrMainNavSep2.Visible = tbrMainFirstPage.Visible;
                    tbrMainNavSep3.Visible = tbrMainFirstPage.Visible;
                    tbrMainNavSep4.Visible = tbrMainFirstPage.Visible;
                    tbrMainNavSep5.Visible = tbrMainFirstPage.Visible;

                    if (_datasetOrdinal >= 0)
                    {
                        tbrMainPageNo.Text = _form.currentPage.ToString();
                        tbrMainTotalPages.Text = _form.totalPages.ToString();
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
                AdvancePage(-99);
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
                AdvancePage(-1);
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
                AdvancePage(1);
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
                AdvancePage(99);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnLast_Click > " + ex.Message);
            }

            return;

        }





        private void btnGoto_Click(object sender, EventArgs e)
        {

            try
            {
                string _currentForm = tabForms.TabPages[tabForms.SelectedIndex].Name;

                IGenForm _form = displayIGenForms.GetForm(_currentForm);

                if (_form.totalPages > 0)
                {
                    // get the page to go to
                    string _gotoPage = "";
                    if (CommonRoutines.InputBox("Goto Page", "What page do you want to go to?", ref _gotoPage) == System.Windows.Forms.DialogResult.OK)
                    {
                        int _gotoPageNo = CommonRoutines.ConvertToInt(_gotoPage);
                        if (_gotoPageNo > 0 && _gotoPageNo <= _form.totalPages)
                        {
                            GotoPage(_gotoPageNo);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnGoto_Click > " + ex.Message);
            }

            return;

        }





        private void AdvancePage(int numPages)
        {
            int _pageNo = 0;

            try
            {
                string _currentForm = tabForms.TabPages[tabForms.SelectedIndex].Name;

                IGenForm _form = displayIGenForms.GetForm(_currentForm);

                _pageNo = _form.currentPage;

                if (numPages == 99)
                {
                    // send to end
                    _pageNo = _form.totalPages;
                }
                else
                {
                    if (numPages == -99)
                    {
                        // send to beginning
                        _pageNo = 1;
                    }
                    else
                    {
                        // go forward or backward
                        _pageNo = _pageNo + numPages;
                        if (_pageNo < 1)
                        {
                            _pageNo = 1;
                        }
                        else
                        {
                            if (_pageNo > _form.totalPages)
                            {
                                _pageNo = _form.totalPages;
                            }
                        }
                    }
                }

                GotoPage(_pageNo);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".AdvancePage > " + ex.Message);
            }

            return;

        }




        private void GotoPage(int pageNo)
        {
            int _pageNo = pageNo;
            // set the cursor
            Cursor _saveCursor = this.Cursor;

            try
            {

                this.Cursor = Cursors.WaitCursor;

                string _currentForm = tabForms.TabPages[tabForms.SelectedIndex].Name;

                IGenForm _form = displayIGenForms.GetForm(_currentForm);

                // page each of the dataset ordinals
                for (int n = 0; n < _form.datasets.Count; n++)
                {
                    int _dsOrdinal = _form.datasets[n].referenceDatasetOrdinal;

                    // get the dataset defined
                    if (_dsOrdinal >= 0)
                    {
                        _pageNo = pageNo;

                        // set the pages
                        _form.datasetOrdinal = _dsOrdinal;
                        _form.dataset = _form.datasets[n];  // displayIGenForms.datasets[_dsOrdinal];
                        _form.pages = _form.dataset.pages;
                        _form.dataset.currentPosition = _pageNo;
                        _form.rowsPerPage = _form.rowsPerPages[n];

                        // see if the page number sent is valid for the number of pages determined
                        if (_form.pages.Count > 0)
                        {
                            //if (_pageNo < 1)
                            //{
                            //    _pageNo = 1;
                            //}
                            //else
                            //{
                            //    if (_pageNo > _form.pages.Count)
                            //    {
                            //        _pageNo = _form.pages.Count;
                            //    }
                            //}

                            _form.currentPage = _pageNo;

                            // offset the row
                            _pageNo = _pageNo - 1;

                            // set the referenced dataset
                            IGenDataset _ds = displayIGenForms.datasets[_dsOrdinal];

                            if (_pageNo < _form.pages.Count)
                            {
                                // get the starting and ending values 
                                int _startingRow = _form.pages[_pageNo].startingRow;
                                int _endingRow = _form.pages[_pageNo].endingRow;
                                int _numRows = _endingRow - _startingRow + 1;

                                tbrMainPageNo.Text = _form.currentPage.ToString();
                                tbrMainTotalPages.Text = _form.totalPages.ToString();
                                Application.DoEvents();

                                // see if there are any rows...
                                if (_ds.numRows > 0)
                                {
                                    _ds.currentPosition = _startingRow - 1;

                                    // get the rows for this page
                                    List<string[]> _results = _ds.GetRows(_startingRow, _numRows);

                                    _ds.results = _results;

                                    _form.dataset.results = _results;

                                    if (_results != null && _results.Count > 0)
                                    {
                                        _form.currentRow = _startingRow;
                                        tbrMainPageNo.Text = _form.currentPage.ToString();
                                        tbrMainTotalPages.Text = _form.totalPages.ToString();
                                        Application.DoEvents();

                                    }
                                }

                                DisplayStatus("S=" + _startingRow + ", E=" + _endingRow + ", N=" + _numRows);
                            }
                            else
                            {
                                // clear out the result set of this dataset
                                _ds.results.Clear();
                                _form.dataset.results.Clear();
                            }
                        }
                    }
                }

                // refresh the page
                if (tabForms.SelectedTab != null)
                {
                    string _formName = _form.name;
                    PictureBox _pallet = (PictureBox)tabForms.SelectedTab.Controls[0];
                    displayIGenForms.RedisplaySelectedForm(_pallet, _formName);
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GotoPage > " + ex.Message);
            }

            this.Cursor = _saveCursor;

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
                string dateLastPrepared = displayIGenForms.GetLastPreparedDate();
                IGenFormCommonRoutines.dateLastPrepared = dateLastPrepared;

                string _version = displayIGenForms.formGroupVersion;
                IGenFormCommonRoutines.formGroupVersion = _version;

                if (dateLastPrepared != "")
                {
                    tbrMainLastDatePrepared.Text = "Ver: " + _version + ", Last Prepared: " + dateLastPrepared;
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




        private void mnuMainFileExit_Click(object sender, EventArgs e)
        {

            try
            {
                CloseWindow();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".mnuMainFileExit_Click > " + ex.Message);
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





        private void mnuMainHelpAbout_Click(object sender, EventArgs e)
        {

            try
            {
                frmAbout _aboutForm = new frmAbout();
                _aboutForm.ShowDialog(this);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".mnuMainHelpAbout_Click > " + ex.Message);
            }

            return;

        }






        private void mnuMainExportToExcel_Click(object sender, EventArgs e)
        {

            try
            {
                displayIGenForms.ExportForms();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".mnuMainExportToExcel_Click > " + ex.Message);
            }

            return;

        }











    }
}
