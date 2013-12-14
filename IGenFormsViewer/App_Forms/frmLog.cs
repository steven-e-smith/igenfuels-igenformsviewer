using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Reflection;
using System.IO;
using System.Diagnostics;

namespace IGenFormsViewer
{
    public partial class frmLog : Form
    {
        private string moduleName = "frmLog";


        /// <summary>
        /// frmLog()
        /// Constructor
        /// </summary>
        public frmLog()
        {

            try
            {
                InitializeComponent();

                lstLog.Items.Clear();

                for (int n = 0; n < CSA.logEntries.Length; n++)
                {
                    lstLog.Items.Add(CSA.logEntries[n]);
                }

                // now fill in the resource versions grid
                dgvResourceVersions.Rows.Clear();
                dgvResourceVersions.Columns.Clear();

                dgvResourceVersions.Columns.Add("Resource", "Resource");
                dgvResourceVersions.Columns.Add("Version", "Version");
                dgvResourceVersions.Columns.Add("TimeStamp", "TimeStamp");
                dgvResourceVersions.Columns["Resource"].Width = 300;
                dgvResourceVersions.Columns["Version"].Width = 150;
                dgvResourceVersions.Columns["TimeStamp"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                FileVersionInfo iGenFulesFileVersionInfo = FileVersionInfo.GetVersionInfo(CommonRoutines.currentPath
                                    + "\\" + CommonRoutines.GetEXEName() + ".exe");
                dgvResourceVersions.Rows.Add(new object[] { CommonRoutines.GetEXEName(), 
                                            iGenFulesFileVersionInfo.FileVersion,
                                            GetFileTimeStamp(CommonRoutines.currentPath + "\\" + CommonRoutines.GetEXEName() + ".exe")}
                                            );


                this.Resize += new EventHandler(frmLog_Resize);

                ResizeControls();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmLog > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void frmLog_Resize(object sender, EventArgs e)
        /// Process the resize event for the form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void frmLog_Resize(object sender, EventArgs e)
        {

            try
            {
                ResizeControls();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".frmLog_Resize > " + ex.Message);
            }

            return;

        }



        void ResizeControls()
        {

            try
            {
                btnOK.Left = (this.Width - btnOK.Width) / 2;
                btnOK.Top = this.Height - btnOK.Height - 40;

                tabLogInfo.Width = this.Width - (2 * tabLogInfo.Left) - 10;
                tabLogInfo.Height = btnOK.Top - tabLogInfo.Top - 10;

                // resize the resource version grid
                tabLogInfo.TabIndex = 0;
                tabPageResourceVersions.Width = tabLogInfo.Width - (2 * tabPageResourceVersions.Left);
                tabPageResourceVersions.Height = tabLogInfo.Height - (2 * tabPageResourceVersions.Top);
                dgvResourceVersions.Width = tabPageResourceVersions.Width - dgvResourceVersions.Left - 10;
                dgvResourceVersions.Height = tabPageResourceVersions.Height - dgvResourceVersions.Top - 10;

                // resize the change log
                tabLogInfo.TabIndex = 1;
                tabPageChangeLog.Width = tabLogInfo.Width - (2 * tabPageChangeLog.Left);
                tabPageChangeLog.Height = tabLogInfo.Height - (2 * tabPageChangeLog.Top);
                lstLog.Width = tabPageChangeLog.Width - lstLog.Left - 10;
                lstLog.Height = tabPageChangeLog.Height - lstLog.Top - 10;

                tabLogInfo.TabIndex = 0;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResizeControls > " + ex.Message);
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
                this.Close();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnOK_Click > " + ex.Message);
            }

            return;

        }



        private string GetFileTimeStamp(string fileName)
        {
            string _timeStamp = "";

            try
            {
                DateTime creationTime = File.GetCreationTime(fileName);
                _timeStamp = creationTime.ToString();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnOK_Click > " + ex.Message);
            }

            return _timeStamp;

        }



    }
}