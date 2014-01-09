namespace IGenFormsViewer
{
    partial class frmDisplayDatasets
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.tbrMain = new System.Windows.Forms.ToolStrip();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainExit = new System.Windows.Forms.ToolStripButton();
            this.tabDatasets = new System.Windows.Forms.TabControl();
            this.tabPageDatasets = new System.Windows.Forms.TabPage();
            this.dgvDatasets = new System.Windows.Forms.DataGridView();
            this.tabPageResults = new System.Windows.Forms.TabPage();
            this.dgvResults = new System.Windows.Forms.DataGridView();
            this.tabPageFormDatasets = new System.Windows.Forms.TabPage();
            this.dgvFormDatasets = new System.Windows.Forms.DataGridView();
            this.tbrMain.SuspendLayout();
            this.tabDatasets.SuspendLayout();
            this.tabPageDatasets.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatasets)).BeginInit();
            this.tabPageResults.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvResults)).BeginInit();
            this.tabPageFormDatasets.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvFormDatasets)).BeginInit();
            this.SuspendLayout();
            // 
            // tbrMain
            // 
            this.tbrMain.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.tbrMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripSeparator1,
            this.tbrMainExit});
            this.tbrMain.Location = new System.Drawing.Point(0, 0);
            this.tbrMain.Name = "tbrMain";
            this.tbrMain.Size = new System.Drawing.Size(878, 38);
            this.tbrMain.TabIndex = 6;
            this.tbrMain.Text = "toolStrip1";
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 38);
            // 
            // tbrMainExit
            // 
            this.tbrMainExit.Image = global::IGenFormsViewer.Properties.Resources.exit2;
            this.tbrMainExit.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tbrMainExit.Name = "tbrMainExit";
            this.tbrMainExit.Size = new System.Drawing.Size(29, 35);
            this.tbrMainExit.Text = "Exit";
            this.tbrMainExit.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainExit.Click += new System.EventHandler(this.tbrMainExit_Click);
            // 
            // tabDatasets
            // 
            this.tabDatasets.Controls.Add(this.tabPageDatasets);
            this.tabDatasets.Controls.Add(this.tabPageFormDatasets);
            this.tabDatasets.Controls.Add(this.tabPageResults);
            this.tabDatasets.Location = new System.Drawing.Point(0, 41);
            this.tabDatasets.Name = "tabDatasets";
            this.tabDatasets.SelectedIndex = 0;
            this.tabDatasets.Size = new System.Drawing.Size(689, 469);
            this.tabDatasets.TabIndex = 7;
            // 
            // tabPageDatasets
            // 
            this.tabPageDatasets.Controls.Add(this.dgvDatasets);
            this.tabPageDatasets.Location = new System.Drawing.Point(4, 22);
            this.tabPageDatasets.Name = "tabPageDatasets";
            this.tabPageDatasets.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageDatasets.Size = new System.Drawing.Size(681, 443);
            this.tabPageDatasets.TabIndex = 0;
            this.tabPageDatasets.Text = "Global Datasets";
            this.tabPageDatasets.UseVisualStyleBackColor = true;
            // 
            // dgvDatasets
            // 
            this.dgvDatasets.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvDatasets.DefaultCellStyle = dataGridViewCellStyle1;
            this.dgvDatasets.Location = new System.Drawing.Point(8, 6);
            this.dgvDatasets.Name = "dgvDatasets";
            this.dgvDatasets.Size = new System.Drawing.Size(624, 391);
            this.dgvDatasets.TabIndex = 6;
            // 
            // tabPageResults
            // 
            this.tabPageResults.Controls.Add(this.dgvResults);
            this.tabPageResults.Location = new System.Drawing.Point(4, 22);
            this.tabPageResults.Name = "tabPageResults";
            this.tabPageResults.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageResults.Size = new System.Drawing.Size(681, 443);
            this.tabPageResults.TabIndex = 1;
            this.tabPageResults.Text = "Results";
            this.tabPageResults.UseVisualStyleBackColor = true;
            // 
            // dgvResults
            // 
            this.dgvResults.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvResults.DefaultCellStyle = dataGridViewCellStyle3;
            this.dgvResults.Location = new System.Drawing.Point(8, 6);
            this.dgvResults.Name = "dgvResults";
            this.dgvResults.Size = new System.Drawing.Size(647, 419);
            this.dgvResults.TabIndex = 7;
            // 
            // tabPageFormDatasets
            // 
            this.tabPageFormDatasets.Controls.Add(this.dgvFormDatasets);
            this.tabPageFormDatasets.Location = new System.Drawing.Point(4, 22);
            this.tabPageFormDatasets.Name = "tabPageFormDatasets";
            this.tabPageFormDatasets.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageFormDatasets.Size = new System.Drawing.Size(681, 443);
            this.tabPageFormDatasets.TabIndex = 2;
            this.tabPageFormDatasets.Text = "Form Datasets";
            this.tabPageFormDatasets.UseVisualStyleBackColor = true;
            // 
            // dgvFormDatasets
            // 
            this.dgvFormDatasets.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvFormDatasets.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgvFormDatasets.Location = new System.Drawing.Point(6, 6);
            this.dgvFormDatasets.Name = "dgvFormDatasets";
            this.dgvFormDatasets.Size = new System.Drawing.Size(624, 391);
            this.dgvFormDatasets.TabIndex = 7;
            // 
            // frmDisplayDatasets
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(878, 565);
            this.Controls.Add(this.tabDatasets);
            this.Controls.Add(this.tbrMain);
            this.Name = "frmDisplayDatasets";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DisplayDatasets";
            this.tbrMain.ResumeLayout(false);
            this.tbrMain.PerformLayout();
            this.tabDatasets.ResumeLayout(false);
            this.tabPageDatasets.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatasets)).EndInit();
            this.tabPageResults.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvResults)).EndInit();
            this.tabPageFormDatasets.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvFormDatasets)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStrip tbrMain;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton tbrMainExit;
        private System.Windows.Forms.TabControl tabDatasets;
        private System.Windows.Forms.TabPage tabPageDatasets;
        private System.Windows.Forms.DataGridView dgvDatasets;
        private System.Windows.Forms.TabPage tabPageResults;
        private System.Windows.Forms.DataGridView dgvResults;
        private System.Windows.Forms.TabPage tabPageFormDatasets;
        private System.Windows.Forms.DataGridView dgvFormDatasets;
    }
}