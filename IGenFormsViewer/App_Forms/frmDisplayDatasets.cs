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
                    dgvDatasets.Rows.Clear();
                    dgvDatasets.Columns.Clear();
                    DataGridViewButtonColumn _previewButton = new DataGridViewButtonColumn();
                    _previewButton.Name = "Preview";
                    _previewButton.HeaderText = "Preview";
                    _previewButton.Text = "Preview";
                    _previewButton.Width = 100;
                    _previewButton.Visible = true;
                    dgvDatasets.Columns.Add(_previewButton);
                    dgvDatasets.Columns.Add("Name", "Name");
                    dgvDatasets.Columns["Name"].Width = 100;
                    dgvDatasets.Columns.Add("Form", "Form");
                    dgvDatasets.Columns["Form"].Width = 100;
                    dgvDatasets.Columns.Add("SQL", "SQL");
                    dgvDatasets.Columns["SQL"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                    //dgvDatasets.CellClick += dgvDatasets_CellClick;
                    dgvDatasets.CellMouseDown += dgvDatasets_CellMouseDown;

                    dgvDatasets.Rows.Clear();
                    if (igenForms.datasets.Count > 0)
                    {
                        dgvDatasets.Rows.Add(igenForms.datasets.Count);
                        for (int n = 0; n < igenForms.datasets.Count; n++)
                        {
                            dgvDatasets.Rows[n].Cells["Preview"].Value = "Preview";
                            dgvDatasets.Rows[n].Cells["Name"].Value = igenForms.datasets[n].cursorName;
                            dgvDatasets.Rows[n].Cells["Form"].Value = "None";
                            dgvDatasets.Rows[n].Cells["SQL"].Value = igenForms.datasets[n].sql;
                        }
                    }
                    else
                    {
                        dgvDatasets.Rows.Add(1);
                        dgvDatasets.Rows[0].Cells["Preview"].Value = "";
                        dgvDatasets.Rows[0].Cells["Name"].Value = "";
                        dgvDatasets.Rows[0].Cells["Form"].Value = "";
                        dgvDatasets.Rows[0].Cells["SQL"].Value = "";
                    }                    

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
