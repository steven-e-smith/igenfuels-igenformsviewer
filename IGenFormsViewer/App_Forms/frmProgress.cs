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
    public partial class frmProgress : Form
    {
        private string moduleName = "frmProgress";

        private int pct = 0;
        public int Pct
        {
            get { return pct; }
            set
            {
                pct = value;
                pbrProgressPCT.Value = pct;
                pbrProgressPCT.Refresh();
            }
        }

        private int minValue = 0;
        public int MinValue
        {
            get { return minValue; }
            set
            {
                minValue = value;
                pbrProgressPCT.Minimum = minValue;
            }
        }



        private int maxValue = 0;
        public int MaxValue
        {
            get { return maxValue; }
            set
            {
                maxValue = value;
                pbrProgressPCT.Maximum = maxValue;
            }
        }





        public frmProgress()
        {

            InitializeComponent();
        }






        private void btnStop_Click(object sender, EventArgs e)
        {

            try
            {
                CommonRoutines.StopOperation("");
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnStop_Click > " + ex.Message);
            }

            return;

        }


    }
}
