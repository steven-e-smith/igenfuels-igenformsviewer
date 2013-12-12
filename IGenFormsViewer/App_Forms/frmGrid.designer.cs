namespace IGenFormsViewer
{
    partial class frmGrid
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmGrid));
            this.dgvResults = new System.Windows.Forms.DataGridView();
            this.tbrMain = new System.Windows.Forms.ToolStrip();
            this.tbrMainClose = new System.Windows.Forms.ToolStripButton();
            ((System.ComponentModel.ISupportInitialize)(this.dgvResults)).BeginInit();
            this.tbrMain.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvResults
            // 
            this.dgvResults.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvResults.Location = new System.Drawing.Point(5, 45);
            this.dgvResults.Name = "dgvResults";
            this.dgvResults.RowTemplate.Height = 24;
            this.dgvResults.Size = new System.Drawing.Size(998, 388);
            this.dgvResults.TabIndex = 0;
            // 
            // tbrMain
            // 
            this.tbrMain.BackColor = System.Drawing.Color.Silver;
            this.tbrMain.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.tbrMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tbrMainClose});
            this.tbrMain.Location = new System.Drawing.Point(0, 0);
            this.tbrMain.Name = "tbrMain";
            this.tbrMain.Size = new System.Drawing.Size(1013, 38);
            this.tbrMain.TabIndex = 45;
            this.tbrMain.Text = "toolStrip1";
            // 
            // tbrMainClose
            // 
            this.tbrMainClose.Image = ((System.Drawing.Image)(resources.GetObject("tbrMainClose.Image")));
            this.tbrMainClose.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tbrMainClose.Name = "tbrMainClose";
            this.tbrMainClose.Size = new System.Drawing.Size(40, 35);
            this.tbrMainClose.Text = "Close";
            this.tbrMainClose.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainClose.Click += new System.EventHandler(this.tbrMainClose_Click);
            // 
            // frmGrid
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1013, 443);
            this.Controls.Add(this.tbrMain);
            this.Controls.Add(this.dgvResults);
            this.MinimizeBox = false;
            this.Name = "frmGrid";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Display results grid";
            ((System.ComponentModel.ISupportInitialize)(this.dgvResults)).EndInit();
            this.tbrMain.ResumeLayout(false);
            this.tbrMain.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvResults;
        private System.Windows.Forms.ToolStrip tbrMain;
        private System.Windows.Forms.ToolStripButton tbrMainClose;
    }
}