namespace IGenFormsViewer
{
    partial class frmPrintDialog
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPrintDialog));
            this.label1 = new System.Windows.Forms.Label();
            this.cboPrinterSelected = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.chkPrintAll = new System.Windows.Forms.CheckBox();
            this.dgvFormsToPrint = new System.Windows.Forms.DataGridView();
            this.tbrMain = new System.Windows.Forms.ToolStrip();
            this.tbrMainPrint = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainClose = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel1 = new System.Windows.Forms.ToolStripLabel();
            this.toolStripLabel2 = new System.Windows.Forms.ToolStripLabel();
            this.chkPreview = new System.Windows.Forms.CheckBox();
            this.tbrMainSave = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            ((System.ComponentModel.ISupportInitialize)(this.dgvFormsToPrint)).BeginInit();
            this.tbrMain.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(13, 47);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 23);
            this.label1.TabIndex = 1;
            this.label1.Text = "Print to:";
            // 
            // cboPrinterSelected
            // 
            this.cboPrinterSelected.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboPrinterSelected.FormattingEnabled = true;
            this.cboPrinterSelected.Location = new System.Drawing.Point(78, 47);
            this.cboPrinterSelected.Name = "cboPrinterSelected";
            this.cboPrinterSelected.Size = new System.Drawing.Size(427, 26);
            this.cboPrinterSelected.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(13, 87);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(190, 23);
            this.label2.TabIndex = 3;
            this.label2.Text = "Select forms to print:";
            // 
            // chkPrintAll
            // 
            this.chkPrintAll.AutoSize = true;
            this.chkPrintAll.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkPrintAll.Location = new System.Drawing.Point(37, 115);
            this.chkPrintAll.Name = "chkPrintAll";
            this.chkPrintAll.Size = new System.Drawing.Size(75, 22);
            this.chkPrintAll.TabIndex = 4;
            this.chkPrintAll.Text = "Print all";
            this.chkPrintAll.UseVisualStyleBackColor = true;
            this.chkPrintAll.CheckedChanged += new System.EventHandler(this.chkPrintAll_CheckedChanged);
            // 
            // dgvFormsToPrint
            // 
            this.dgvFormsToPrint.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvFormsToPrint.Location = new System.Drawing.Point(34, 141);
            this.dgvFormsToPrint.Name = "dgvFormsToPrint";
            this.dgvFormsToPrint.Size = new System.Drawing.Size(511, 335);
            this.dgvFormsToPrint.TabIndex = 5;
            // 
            // tbrMain
            // 
            this.tbrMain.BackColor = System.Drawing.Color.Silver;
            this.tbrMain.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.tbrMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tbrMainSave,
            this.toolStripSeparator1,
            this.tbrMainPrint,
            this.toolStripSeparator2,
            this.tbrMainClose,
            this.toolStripLabel1,
            this.toolStripLabel2});
            this.tbrMain.Location = new System.Drawing.Point(0, 0);
            this.tbrMain.Name = "tbrMain";
            this.tbrMain.Size = new System.Drawing.Size(557, 38);
            this.tbrMain.TabIndex = 54;
            this.tbrMain.Text = "toolStrip1";
            // 
            // tbrMainPrint
            // 
            this.tbrMainPrint.Image = global::IGenFormsViewer.Properties.Resources.PRINT;
            this.tbrMainPrint.ImageTransparentColor = System.Drawing.Color.White;
            this.tbrMainPrint.Name = "tbrMainPrint";
            this.tbrMainPrint.Size = new System.Drawing.Size(36, 35);
            this.tbrMainPrint.Text = "Print";
            this.tbrMainPrint.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainPrint.ToolTipText = "Run";
            this.tbrMainPrint.Click += new System.EventHandler(this.tbrMainPrint_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 38);
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
            // toolStripLabel1
            // 
            this.toolStripLabel1.AutoSize = false;
            this.toolStripLabel1.Name = "toolStripLabel1";
            this.toolStripLabel1.Size = new System.Drawing.Size(50, 35);
            // 
            // toolStripLabel2
            // 
            this.toolStripLabel2.AutoSize = false;
            this.toolStripLabel2.Name = "toolStripLabel2";
            this.toolStripLabel2.Size = new System.Drawing.Size(50, 35);
            // 
            // chkPreview
            // 
            this.chkPreview.AutoSize = true;
            this.chkPreview.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkPreview.Location = new System.Drawing.Point(235, 115);
            this.chkPreview.Name = "chkPreview";
            this.chkPreview.Size = new System.Drawing.Size(176, 22);
            this.chkPreview.TabIndex = 55;
            this.chkPreview.Text = "Preview before printing";
            this.chkPreview.UseVisualStyleBackColor = true;
            // 
            // tbrMainSave
            // 
            this.tbrMainSave.Image = global::IGenFormsViewer.Properties.Resources.SAVE;
            this.tbrMainSave.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tbrMainSave.Name = "tbrMainSave";
            this.tbrMainSave.Size = new System.Drawing.Size(35, 35);
            this.tbrMainSave.Text = "Save";
            this.tbrMainSave.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainSave.Click += new System.EventHandler(this.tbrMainSave_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 38);
            // 
            // frmPrintDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(557, 488);
            this.Controls.Add(this.chkPreview);
            this.Controls.Add(this.tbrMain);
            this.Controls.Add(this.dgvFormsToPrint);
            this.Controls.Add(this.chkPrintAll);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cboPrinterSelected);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmPrintDialog";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Print Form";
            ((System.ComponentModel.ISupportInitialize)(this.dgvFormsToPrint)).EndInit();
            this.tbrMain.ResumeLayout(false);
            this.tbrMain.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboPrinterSelected;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.CheckBox chkPrintAll;
        private System.Windows.Forms.DataGridView dgvFormsToPrint;
        private System.Windows.Forms.ToolStrip tbrMain;
        private System.Windows.Forms.ToolStripButton tbrMainPrint;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton tbrMainClose;
        private System.Windows.Forms.ToolStripLabel toolStripLabel1;
        private System.Windows.Forms.ToolStripLabel toolStripLabel2;
        private System.Windows.Forms.CheckBox chkPreview;
        private System.Windows.Forms.ToolStripButton tbrMainSave;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
    }
}