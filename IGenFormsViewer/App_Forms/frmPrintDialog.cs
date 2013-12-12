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
                cboPrinterSelected.Items.Add("File");
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

                dgvFormsToPrint.Columns.Add("FormTitle","Form");
                dgvFormsToPrint.Columns["FormTitle"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                dgvFormsToPrint.Columns.Add("FormName", "Form Name");
                dgvFormsToPrint.Columns["FormName"].Width = 10;
                dgvFormsToPrint.Columns["FormName"].Visible = false;

                // fill in the rows
                dgvFormsToPrint.Rows.Add(tabFormsToPrint.TabCount);
                for (int n=0;n<tabFormsToPrint.TabCount;n++)
                {
                    dgvFormsToPrint.Rows[n].Cells["PrintForm"].Value = false;
                    dgvFormsToPrint.Rows[n].Cells["FormName"].Value = tabFormsToPrint.TabPages[n].Name;
                    dgvFormsToPrint.Rows[n].Cells["FormTitle"].Value = tabFormsToPrint.TabPages[n].Text;
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

            try
            {
                // do they want to save to a file?
                string _printerSelected = cboPrinterSelected.Text;

                if (_printerSelected.ToUpper() == "FILE")
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

                                TabPage _tabPage = tabFormsToPrint.TabPages[_formName];
                                if (_tabPage != null)
                                {
                                    PictureBox _pallet = (PictureBox)_tabPage.Controls[0];
                                    IGenForm _form = (IGenForm)_pallet.Tag;
                                    string _printOrientation = _form.printOrientation;

                                    bool _continue = PrintRoutines.Print(_pallet, "", chkPreview.Checked, _printOrientation, _saveForm, _printerSelected);
                                    if (!_continue)
                                    {
                                        CommonRoutines.DisplayInformationalMessage("Printing cancelled by user");
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }

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
