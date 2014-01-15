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
    public partial class frmPrintDialog : Form
    {
        private string moduleName = "frmPrintDialog";

        TabControl tabFormsToPrint = new TabControl();


        public frmPrintDialog(TabControl tabForms)
        {
            InitializeComponent();

            try
            {
                tabFormsToPrint = tabForms;

                InitializeApp();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmViewer > " + ex.Message);
            }

            return;

        }




        private void InitializeApp()
        {

            try
            {
                // fill in the printer combo
                // set the default
                string _defaultPrinter = PlexPrint.GetDefaultPrinter();

                cboPrinterSelected.Items.Clear();
                cboPrinterSelected.Items.Add("PDF");
                cboPrinterSelected.Items.Add(_defaultPrinter);

                cboPrinterSelected.Text = _defaultPrinter;

                LoadFormsGrid();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            return;

        }




        private void LoadFormsGrid()
        {

            try
            {
                dgvFormsToPrint.Rows.Clear();
                dgvFormsToPrint.Columns.Clear();

                // add the columns
                DataGridViewCheckBoxColumn _selectCheckBox = new DataGridViewCheckBoxColumn(false);
                _selectCheckBox.Name = "PrintForm";
                _selectCheckBox.HeaderText = "Print";
                _selectCheckBox.Width = 50;
                dgvFormsToPrint.Columns.Add(_selectCheckBox);

                dgvFormsToPrint.Columns.Add("Pages", "#Pages");
                dgvFormsToPrint.Columns["Pages"].Width = 90;
                dgvFormsToPrint.Columns["Pages"].Visible = true;

                dgvFormsToPrint.Columns.Add("FormTitle", "Form");
                dgvFormsToPrint.Columns["FormTitle"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                dgvFormsToPrint.Columns.Add("FormName", "Form Name");
                dgvFormsToPrint.Columns["FormName"].Width = 150;
                dgvFormsToPrint.Columns["FormName"].Visible = true;

                // fill in the rows
                dgvFormsToPrint.Rows.Add(tabFormsToPrint.TabCount);
                for (int n=0;n<tabFormsToPrint.TabCount;n++)
                {
                    PictureBox _pallet = (PictureBox)tabFormsToPrint.TabPages[n].Controls[0];
                    IGenForm _form = (IGenForm)_pallet.Tag;
                    dgvFormsToPrint.Rows[n].Cells["PrintForm"].Value = false;
                    dgvFormsToPrint.Rows[n].Cells["Pages"].Value = (_form.pages.Count == 0?1:_form.pages.Count);
                    dgvFormsToPrint.Rows[n].Cells["FormTitle"].Value = _form.title;
                    dgvFormsToPrint.Rows[n].Cells["FormName"].Value = _form.name;
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadFormsGrid > " + ex.Message);
            }

            return;

        }



        private void PrintForms(bool printForm, bool saveForm)
        {
            bool _printForm = printForm;
            bool _saveForm = saveForm;
            IGenPDF _pdfPrinter = new IGenPDF();

            try
            {
                tbrMainPrintStatus.Text = "Printing forms...";

                //// make sure all changes have been made
                //int _row = dgvFormsToPrint.CurrentCell.RowIndex;
                //int _col = dgvFormsToPrint.CurrentCell.ColumnIndex;
//                dgvFormsToPrint.UpdateCellValue(_row, _col);
                dgvFormsToPrint.EndEdit();

                // do they want to save to a file?
                string _printerSelected = cboPrinterSelected.Text;

                if (optPrintToPDF.Checked)
                {
                    _saveForm = true;
                    _printForm = false;
                }

                // print the selected forms
                for (int n = 0; n < dgvFormsToPrint.Rows.Count; n++)
                {

                    if (dgvFormsToPrint.Rows[n].Cells["PrintForm"].Value != null)
                    {
                        bool _selected = CommonRoutines.ConvertToBool(dgvFormsToPrint.Rows[n].Cells["PrintForm"].Value.ToString());
                        if (_selected)
                        {
                            if (dgvFormsToPrint.Rows[n].Cells["FormName"].Value != null)
                            {
                                string _formName = dgvFormsToPrint.Rows[n].Cells["FormName"].Value.ToString();
                                string _formTitle = dgvFormsToPrint.Rows[n].Cells["FormTitle"].Value.ToString();

                                TabPage _tabPage = tabFormsToPrint.TabPages[n];
                                if (_tabPage != null)
                                {
                                    #region [Print Form]

                                    PictureBox _pallet = (PictureBox)_tabPage.Controls[0];
                                    IGenForm _form = (IGenForm)_pallet.Tag;
                                    string _printOrientation = _form.printOrientation;
                                    int _totalPages = _form.totalPages;
                                    if (_totalPages < 1)
                                    {
                                        _totalPages = 1;
                                    }

                                    bool _keepPrinting = true;

                                    int _pageNo = 0;

                                    while (_keepPrinting)
                                    {
                                        if (_pageNo >= _totalPages)
                                        {
                                            break;

                                        }

                                        _form.currentPage = _pageNo + 1;

                                        tbrMainPrintStatus.Text = "Printing form " + _formTitle + " (" + _formName + ")  page " + (_pageNo + 1) + " of " + _totalPages;

                                        // get the page for the form
                                        #region [Increment Pages]

                                        // now for each dataset on the form page the result sets
                                        for (int m = 0; m < _form.datasets.Count; m++)
                                        {
                                            IGenDataset _formDataset = _form.datasets[m];
                                            int _dsOrdinal = _formDataset.referenceDatasetOrdinal;
                                            IGenDataset _dataset = IGenFormCommonRoutines.currentIGenForms.datasets[_dsOrdinal];
                                            _form.dataset = _dataset;

                                            List<IGenPage> _pages = _formDataset.pages;

                                            if (_pageNo < _pages.Count)
                                            {
                                                // reload the page with the next page of data
                                                // get the starting and ending values 
                                                int _startingRow = _pages[_pageNo].startingRow;
                                                int _endingRow = _pages[_pageNo].endingRow;
                                                int _numRows = _endingRow - _startingRow + 1;

                                                // see if there are any rows...
                                                if (_dataset.numRows > 0)
                                                {
                                                    _dataset.currentPosition = _startingRow - 1;

                                                    // get the rows for this page
                                                    List<string[]> _results = _dataset.GetRows(_startingRow, _numRows);

                                                    _formDataset.results = _results;
                                                    _form.dataset.results = _results;
                                                    _dataset.results = _results;
                                                }
                                            }
                                            else
                                            {
                                                // clear out the results
                                                _formDataset.results.Clear();
                                                _form.dataset.results.Clear();
                                                _dataset.results.Clear();
                                            }
                                            
                                        }

                                        // refresh the page
                                        //IGenFormCommonRoutines.currentIGenForms.ProcessForms();

                                        IGenFormCommonRoutines.currentIGenForms.RedisplaySelectedForm(_pallet, _formName);

                                        if (_printForm)
                                        {
                                            bool _continue = PrintRoutines.Print(_pallet, "", false, _printOrientation, _saveForm, _printerSelected);
                                            if (!_continue)
                                            {
                                                CommonRoutines.DisplayInformationalMessage("Printing cancelled by user");
                                                break;
                                            }
                                        }
                                        else
                                        {
                                            // create the image
                                            Image _image = CommonRoutines.GenerateBitmapFromPallet(_pallet, "",_form.printOrientation);
                                            _pdfPrinter.PrintPDFPage(new Image[] { _image }, _printOrientation);
                                        }

                                        _pageNo = _pageNo + 1;

                                        #endregion
                                        

                                    }

                                    #endregion

                                }
                            }
                        }
                    }
                }

                if (!_printForm)
                {
                    _pdfPrinter.SavePDF("", true);
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".PrintForms > " + ex.Message);
            }

            tbrMainPrintStatus.Text = "Done";

            return;

        }




        private void tbrMainClose_Click(object sender, EventArgs e)
        {

            try
            {
                this.Close();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainClose_Click > " + ex.Message);
            }

            return;

        }






        private void tbrMainPrint_Click(object sender, EventArgs e)
        {

            try
            {
                PrintForms(true, false);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainPrint_Click > " + ex.Message);
            }

            return;

        }





        private void chkPrintAll_CheckedChanged(object sender, EventArgs e)
        {

            try
            {
                for (int n = 0; n < dgvFormsToPrint.Rows.Count; n++)
                {
                    if (dgvFormsToPrint.Rows[n].Cells["FormName"].Value != null)
                    {
                        // set the checkbox to the all value
                        dgvFormsToPrint.Rows[n].Cells["PrintForm"].Value = chkPrintAll.Checked;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".chkPrintAll_CheckedChanged > " + ex.Message);
            }

            return;

        }





        private void tbrMainSave_Click(object sender, EventArgs e)
        {

            try
            {
                PrintForms(false, true);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainPrint_Click > " + ex.Message);
            }

            return;

        }





    }
}
