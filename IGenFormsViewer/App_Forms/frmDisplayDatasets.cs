using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;



namespace IGenFormsViewer
{
    public partial class frmDisplayDatasets : Form
    {
        private string moduleName = "DisplayDatasets";

        public IGenFormsMain igenForms = null;


        public frmDisplayDatasets()
        {
            InitializeComponent();

            InitializeApp();

        }




        private void InitializeApp()
        {

            try
            {
                this.Resize += frmDisplayDatasets_Resize;
                this.Load += frmDisplayDatasets_Load;

                ResizeControls();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            return;

        }





        void frmDisplayDatasets_Load(object sender, EventArgs e)
        {

            try
            {
                // load the dataset grid
                LoadDatasets();

                ResizeControls();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmDisplayDatasets_Load > " + ex.Message);
            }

            return;

        }





        void frmDisplayDatasets_Resize(object sender, EventArgs e)
        {

            try
            {
                ResizeControls();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmDisplayDatasets_Resize > " + ex.Message);
            }

            return;

        }




        void ResizeControls()
        {

            try
            {
                tabDatasets.Width = this.Width - tabDatasets.Left - 10;
                tabDatasets.Height = this.Height - tabDatasets.Top - 10;
                tabDatasets.Invalidate();

                tabDatasets.SelectedIndex = 0;
                dgvDatasets.Width = tabPageDatasets.Width - dgvDatasets.Left - 10;
                dgvDatasets.Height = tabPageDatasets.Height - dgvDatasets.Top - 50;

                tabDatasets.SelectedIndex = 1;
                dgvFormDatasets.Width = tabPageFormDatasets.Width - dgvFormDatasets.Left - 10;
                dgvFormDatasets.Height = tabPageFormDatasets.Height - dgvFormDatasets.Top - 50;

                tabDatasets.SelectedIndex = 2;
                dgvResults.Width = tabPageResults.Width - dgvResults.Left - 10;
                dgvResults.Height = tabPageResults.Height - dgvResults.Top - 50;

                tabDatasets.SelectedIndex = 0;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResizeControls > " + ex.Message);
            }

            return;

        }





        private void tbrMainExit_Click(object sender, EventArgs e)
        {

            try
            {
                this.Close();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".tbrMainExit_Click > " + ex.Message);
            }

            return;

        }



        private void LoadDatasets()
        {

            try
            {
                if (igenForms != null)
                {
                    // load the global datasets
                    #region [Global Datasets]
                    dgvDatasets.Rows.Clear();
                    dgvDatasets.Columns.Clear();
                    DataGridViewButtonColumn _previewButton = new DataGridViewButtonColumn();
                    _previewButton.Name = "Preview";
                    _previewButton.HeaderText = "Preview";
                    _previewButton.Text = "Preview";
                    _previewButton.Width = 75;
                    _previewButton.Visible = true;
                    dgvDatasets.Columns.Add(_previewButton);
                    dgvDatasets.Columns.Add("Name", "Name");
                    dgvDatasets.Columns["Name"].Width = 100;
                    dgvDatasets.Columns.Add("Rows", "Rows");
                    dgvDatasets.Columns["Rows"].Width = 75;
                    dgvDatasets.Columns.Add("Form", "Form");
                    dgvDatasets.Columns["Form"].Width = 100;
                    dgvDatasets.Columns.Add("SQL", "SQL");
                    dgvDatasets.Columns["SQL"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                    //dgvDatasets.CellClick += dgvDatasets_CellClick;
                    dgvDatasets.CellMouseDown += dgvDatasets_CellMouseDown;

                    dgvDatasets.Rows.Clear();
                    dgvDatasets.Rows.Add(1);
                    dgvDatasets.Rows[0].Cells["Preview"].Value = "";
                    dgvDatasets.Rows[0].Cells["Name"].Value = "";
                    dgvDatasets.Rows[0].Cells["Rows"].Value = 0;
                    dgvDatasets.Rows[0].Cells["Form"].Value = "";
                    dgvDatasets.Rows[0].Cells["SQL"].Value = "";

                    if (igenForms.datasets.Count > 0)
                    {
                        dgvDatasets.Rows.Clear();
                        dgvDatasets.Rows.Add(igenForms.datasets.Count);
                        for (int n = 0; n < igenForms.datasets.Count; n++)
                        {
                            dgvDatasets.Rows[n].Cells["Preview"].Value = "Preview";
                            dgvDatasets.Rows[n].Cells["Name"].Value = igenForms.datasets[n].cursorName;
                            dgvDatasets.Rows[n].Cells["Rows"].Value = igenForms.datasets[n].numRows;
                            dgvDatasets.Rows[n].Cells["Form"].Value = "None";
                            dgvDatasets.Rows[n].Cells["SQL"].Value = igenForms.datasets[n].sql;
                        }
                    }

                    #endregion 

                    // load the form datasets
                    #region [Form Datasets]
                    dgvFormDatasets.Rows.Clear();
                    dgvFormDatasets.Columns.Add("Form", "Form");
                    dgvFormDatasets.Columns["Form"].Width = 200;
                    dgvFormDatasets.Columns.Add("Name", "Name");
                    dgvFormDatasets.Columns["Name"].Width = 200;
                    dgvFormDatasets.Columns.Add("Ordinal", "Ordinal");
                    dgvFormDatasets.Columns["Ordinal"].Width = 100;
                    dgvFormDatasets.Columns.Add("Rows", "Rows");
                    dgvFormDatasets.Columns["Rows"].Width = 75;
                    dgvFormDatasets.Columns.Add("RowsPerPage", "RowsPerPage");
                    dgvFormDatasets.Columns["RowsPerPage"].Width = 100;
                    DataGridViewCheckBoxColumn _defaultDataset = new DataGridViewCheckBoxColumn(false);
                    _defaultDataset.Name = "DefaultDataset";
                    _defaultDataset.HeaderText = "Default?";
                    _defaultDataset.Width = 50;
                    dgvFormDatasets.Columns.Add(_defaultDataset);
                    //dgvFormDatasets.Columns.Add("SQL", "SQL");
                    //dgvFormDatasets.Columns["SQL"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                    dgvFormDatasets.Rows.Clear();
                    dgvFormDatasets.Rows.Add(1);
                    dgvFormDatasets.Rows[0].Cells["Form"].Value = "";
                    dgvFormDatasets.Rows[0].Cells["Name"].Value = "";
                    dgvFormDatasets.Rows[0].Cells["Ordinal"].Value = "";
                    dgvFormDatasets.Rows[0].Cells["Rows"].Value = 0;
                    dgvFormDatasets.Rows[0].Cells["RowsPerPage"].Value = 0;
                    dgvFormDatasets.Rows[0].Cells["DefaultDataset"].Value = false;

                    if (igenForms.forms.Count > 0)
                    {
                        dgvFormDatasets.Rows.Clear();
                        int _row = 0;
                        // for each form fill in the forms datasets
                        for (int n = 0; n < igenForms.forms.Count(); n++)
                        {
                            IGenForm _igenForm = igenForms.forms[n];

                            for (int m = 0; m < _igenForm.datasetNames.Count; m++)
                            {
                                if (_igenForm.datasetNames[m] != "")
                                {
                                    dgvFormDatasets.Rows.Add();
                                    dgvFormDatasets.Rows[_row].Cells["Form"].Value = _igenForm.name;
                                    dgvFormDatasets.Rows[_row].Cells["Name"].Value = _igenForm.datasetNames[m];
                                    dgvFormDatasets.Rows[_row].Cells["Ordinal"].Value = _igenForm.datasetOrdinals[m];
                                    dgvFormDatasets.Rows[_row].Cells["Rows"].Value = _igenForm.totalRows;
                                    dgvFormDatasets.Rows[_row].Cells["RowsPerPage"].Value = -1;
                                    if (m < _igenForm.rowsPerPages.Count)
                                    {
                                        dgvFormDatasets.Rows[_row].Cells["RowsPerPage"].Value = _igenForm.rowsPerPages[m];
                                    }
                                    if (m == 0)
                                    {
                                        // first one
                                        dgvFormDatasets.Rows[_row].Cells["DefaultDataset"].Value = true;
                                    }
                                    _row = _row + 1;
                                }
                            }
                        }
                    }

                    #endregion 

                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadDatasets > " + ex.Message);
            }

            return;

        }





        void dgvDatasets_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
        {

            try
            {
                ResultsButtonClick(e.RowIndex, e.ColumnIndex);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".dgvDatasets_CellClick > " + ex.Message);
            }

            return;

        }








        void dgvDatasets_CellClick(object sender, DataGridViewCellEventArgs e)
        {

            try
            {
                ResultsButtonClick(e.RowIndex, e.ColumnIndex);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".dgvDatasets_CellClick > " + ex.Message);
            }

            return;

        }



        void ResultsButtonClick(int row, int column)
        {

            try
            {
                if (column == 0)
                {
                    // get the sql and execute it
                    string _sql = (dgvDatasets.Rows[row].Cells["SQL"].Value != null) ? dgvDatasets.Rows[row].Cells["SQL"].Value.ToString() : "";
                    if (_sql != "")
                    {
                        dgvResults.Rows.Clear();
                        this.Cursor = Cursors.WaitCursor;
                        List<string[]> _rows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);
                        tabDatasets.SelectedIndex = 1;
                        CommonRoutines.LoadGridWithResults(dgvResults, _rows);
                        dgvResults.Refresh();
                        this.Cursor = Cursors.Arrow;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResultsButtonClick > " + ex.Message);
            }

            return;

        }




    }
}
