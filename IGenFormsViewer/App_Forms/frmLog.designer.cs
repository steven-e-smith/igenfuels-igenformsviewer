namespace IGenFormsViewer
{
    partial class frmLog
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnOK = new System.Windows.Forms.Button();
            this.tabLogInfo = new System.Windows.Forms.TabControl();
            this.tabPageResourceVersions = new System.Windows.Forms.TabPage();
            this.dgvResourceVersions = new System.Windows.Forms.DataGridView();
            this.tabPageChangeLog = new System.Windows.Forms.TabPage();
            this.lstLog = new System.Windows.Forms.ListBox();
            this.tabLogInfo.SuspendLayout();
            this.tabPageResourceVersions.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvResourceVersions)).BeginInit();
            this.tabPageChangeLog.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(673, 336);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 1;
            this.btnOK.Text = "OK";
            this.btnOK.UseVisualStyleBackColor = true;
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // tabLogInfo
            // 
            this.tabLogInfo.Controls.Add(this.tabPageResourceVersions);
            this.tabLogInfo.Controls.Add(this.tabPageChangeLog);
            this.tabLogInfo.Location = new System.Drawing.Point(12, 12);
            this.tabLogInfo.Name = "tabLogInfo";
            this.tabLogInfo.SelectedIndex = 0;
            this.tabLogInfo.Size = new System.Drawing.Size(382, 337);
            this.tabLogInfo.TabIndex = 2;
            // 
            // tabPageResourceVersions
            // 
            this.tabPageResourceVersions.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.tabPageResourceVersions.Controls.Add(this.dgvResourceVersions);
            this.tabPageResourceVersions.Location = new System.Drawing.Point(4, 22);
            this.tabPageResourceVersions.Name = "tabPageResourceVersions";
            this.tabPageResourceVersions.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageResourceVersions.Size = new System.Drawing.Size(374, 311);
            this.tabPageResourceVersions.TabIndex = 0;
            this.tabPageResourceVersions.Text = "Resource Versions";
            this.tabPageResourceVersions.UseVisualStyleBackColor = true;
            // 
            // dgvResourceVersions
            // 
            this.dgvResourceVersions.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvResourceVersions.Location = new System.Drawing.Point(6, 6);
            this.dgvResourceVersions.Name = "dgvResourceVersions";
            this.dgvResourceVersions.Size = new System.Drawing.Size(362, 290);
            this.dgvResourceVersions.TabIndex = 0;
            // 
            // tabPageChangeLog
            // 
            this.tabPageChangeLog.Controls.Add(this.lstLog);
            this.tabPageChangeLog.Location = new System.Drawing.Point(4, 22);
            this.tabPageChangeLog.Name = "tabPageChangeLog";
            this.tabPageChangeLog.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageChangeLog.Size = new System.Drawing.Size(374, 311);
            this.tabPageChangeLog.TabIndex = 1;
            this.tabPageChangeLog.Text = "Change Log";
            this.tabPageChangeLog.UseVisualStyleBackColor = true;
            // 
            // lstLog
            // 
            this.lstLog.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lstLog.FormattingEnabled = true;
            this.lstLog.ItemHeight = 15;
            this.lstLog.Location = new System.Drawing.Point(5, 5);
            this.lstLog.Margin = new System.Windows.Forms.Padding(2);
            this.lstLog.Name = "lstLog";
            this.lstLog.ScrollAlwaysVisible = true;
            this.lstLog.Size = new System.Drawing.Size(332, 214);
            this.lstLog.TabIndex = 1;
            // 
            // frmLog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(749, 371);
            this.Controls.Add(this.tabLogInfo);
            this.Controls.Add(this.btnOK);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(2);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmLog";
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "IGenFormsViewer Information";
            this.tabLogInfo.ResumeLayout(false);
            this.tabPageResourceVersions.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvResourceVersions)).EndInit();
            this.tabPageChangeLog.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnOK;
        private System.Windows.Forms.TabControl tabLogInfo;
        private System.Windows.Forms.TabPage tabPageResourceVersions;
        private System.Windows.Forms.DataGridView dgvResourceVersions;
        private System.Windows.Forms.TabPage tabPageChangeLog;
        private System.Windows.Forms.ListBox lstLog;
    }
}