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
            this.tbrMainPrintStatus = new System.Windows.Forms.ToolStripLabel();
            this.optPrintToPDF = new System.Windows.Forms.RadioButton();
            this.optPrintToPrinter = new System.Windows.Forms.RadioButton();
            ((System.ComponentModel.ISupportInitialize)(this.dgvFormsToPrint)).BeginInit();
            this.tbrMain.SuspendLayout();
            this.SuspendLayout();
            // 
            // cboPrinterSelected
            // 
            this.cboPrinterSelected.Enabled = false;
            this.cboPrinterSelected.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboPrinterSelected.FormattingEnabled = true;
            this.cboPrinterSelected.Location = new System.Drawing.Point(301, 53);
            this.cboPrinterSelected.Name = "cboPrinterSelected";
            this.cboPrinterSelected.Size = new System.Drawing.Size(379, 26);
            this.cboPrinterSelected.TabIndex = 2;
            this.cboPrinterSelected.Visible = false;
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(16, 86);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(190, 23);
            this.label2.TabIndex = 3;
            this.label2.Text = "Select forms to print:";
            // 
            // chkPrintAll
            // 
            this.chkPrintAll.AutoSize = true;
            this.chkPrintAll.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkPrintAll.Location = new System.Drawing.Point(25, 114);
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
            this.dgvFormsToPrint.Location = new System.Drawing.Point(22, 142);
            this.dgvFormsToPrint.Name = "dgvFormsToPrint";
            this.dgvFormsToPrint.Size = new System.Drawing.Size(901, 396);
            this.dgvFormsToPrint.TabIndex = 5;
            // 
            // tbrMain
            // 
            this.tbrMain.BackColor = System.Drawing.Color.Silver;
            this.tbrMain.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.tbrMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tbrMainPrint,
            this.toolStripSeparator2,
            this.tbrMainClose,
            this.toolStripLabel1,
            this.toolStripLabel2,
            this.tbrMainPrintStatus});
            this.tbrMain.Location = new System.Drawing.Point(0, 0);
            this.tbrMain.Name = "tbrMain";
            this.tbrMain.Size = new System.Drawing.Size(946, 38);
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
            // tbrMainPrintStatus
            // 
            this.tbrMainPrintStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbrMainPrintStatus.ForeColor = System.Drawing.Color.Blue;
            this.tbrMainPrintStatus.Name = "tbrMainPrintStatus";
            this.tbrMainPrintStatus.Size = new System.Drawing.Size(0, 35);
            // 
            // optPrintToPDF
            // 
            this.optPrintToPDF.AutoSize = true;
            this.optPrintToPDF.Checked = true;
            this.optPrintToPDF.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.optPrintToPDF.Location = new System.Drawing.Point(19, 54);
            this.optPrintToPDF.Name = "optPrintToPDF";
            this.optPrintToPDF.Size = new System.Drawing.Size(107, 22);
            this.optPrintToPDF.TabIndex = 56;
            this.optPrintToPDF.TabStop = true;
            this.optPrintToPDF.Text = "Print to PDF";
            this.optPrintToPDF.UseVisualStyleBackColor = true;
            // 
            // optPrintToPrinter
            // 
            this.optPrintToPrinter.AutoSize = true;
            this.optPrintToPrinter.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.optPrintToPrinter.Location = new System.Drawing.Point(171, 54);
            this.optPrintToPrinter.Name = "optPrintToPrinter";
            this.optPrintToPrinter.Size = new System.Drawing.Size(124, 22);
            this.optPrintToPrinter.TabIndex = 57;
            this.optPrintToPrinter.Text = "Print to Printer:";
            this.optPrintToPrinter.UseVisualStyleBackColor = true;
            this.optPrintToPrinter.Visible = false;
            // 
            // frmPrintDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(946, 550);
            this.Controls.Add(this.optPrintToPrinter);
            this.Controls.Add(this.optPrintToPDF);
            this.Controls.Add(this.tbrMain);
            this.Controls.Add(this.dgvFormsToPrint);
            this.Controls.Add(this.chkPrintAll);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cboPrinterSelected);
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
        private System.Windows.Forms.RadioButton optPrintToPDF;
        private System.Windows.Forms.RadioButton optPrintToPrinter;
        private System.Windows.Forms.ToolStripLabel tbrMainPrintStatus;
    }
}