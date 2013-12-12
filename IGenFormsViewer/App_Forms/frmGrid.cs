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
    public partial class frmGrid : Form
    {
        private string moduleName = "frmGrid";

        private List<string> records = new List<string>();
        public List<string> Records
        {
            get { return records; }
            set { records = value; }

        }




        /// <summary>
        /// frmGrid()
        /// Constructor
        /// </summary>
        public frmGrid()
        {

            try
            {
                InitializeComponent();

                InitializeApp();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmGrid > " + ex.Message);
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
                dgvResults.Rows.Clear();
                dgvResults.Columns.Clear();

                this.Load += new EventHandler(frmGrid_Load);
                this.Resize += new EventHandler(frmGrid_Resize);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            return;

        }





        void frmGrid_Resize(object sender, EventArgs e)
        {

            try
            {
                // resize
                ResizeControls();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmGrid_Resize > " + ex.Message);
            }

            return;

        }




        void ResizeControls()
        {

            try
            {
                // resize
                dgvResults.Width = this.Width - (dgvResults.Left * 2) - 20;
                dgvResults.Height = this.Height - dgvResults.Top - 40;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResizeControls > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void frmGrid_Load(object sender, EventArgs e)
        /// Process the Load event for the form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void frmGrid_Load(object sender, EventArgs e)
        {
            
            try
            {
                LoadGrid();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmGrid_Load > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void LoadGrid()
        /// Load the grid
        /// </summary>
        private void LoadGrid()
        {

            try
            {

                // load the grid from the results
                if (Records.Count > 0)
                {
                    // first record should be the field names
                    string[] _fieldNames = Records[0].Split('~');

                    // create a maxwidth collection
                    List<int> _maxColumnWidths = new List<int>();

                    foreach (string _fieldName in _fieldNames)
                    {
                        if (_fieldName != "")
                        {
                            // add a column 
                            dgvResults.Columns.Add(_fieldName, _fieldName.Replace('_', ' '));
                        }
                    }

                    for (int n=1;n<Records.Count;n++)
                    {
                        string[] _fields = Records[n].Split('~');
                        dgvResults.Rows.Add(_fields);
                    }

                    dgvResults.AutoResizeColumns();

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadGrid > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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
    }
}
