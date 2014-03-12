namespace IGenFormsViewer
{
    partial class frmViewer
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmViewer));
            this.tabForms = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tbrMain = new System.Windows.Forms.ToolStrip();
            this.tbrMainLoad = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator5 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainSave = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainRun = new System.Windows.Forms.ToolStripButton();
            this.tbrMainStop = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainOptions = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainPrint = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainClose = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel3 = new System.Windows.Forms.ToolStripLabel();
            this.tbrMainNavSep4 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainFirstPage = new System.Windows.Forms.ToolStripButton();
            this.tbrMainNavSep2 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainPreviousPage = new System.Windows.Forms.ToolStripButton();
            this.tbrMainNavSep3 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainNextPage = new System.Windows.Forms.ToolStripButton();
            this.tbrMainNavSep1 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainLastPage = new System.Windows.Forms.ToolStripButton();
            this.tbrMainNavSep5 = new System.Windows.Forms.ToolStripSeparator();
            this.tbrMainGotoPage = new System.Windows.Forms.ToolStripButton();
            this.tbrMainPageNo = new System.Windows.Forms.ToolStripLabel();
            this.tbrMainOfLabel = new System.Windows.Forms.ToolStripLabel();
            this.tbrMainTotalPages = new System.Windows.Forms.ToolStripLabel();
            this.toolStripLabel1 = new System.Windows.Forms.ToolStripLabel();
            this.tbrMainLastDatePrepared = new System.Windows.Forms.ToolStripLabel();
            this.toolStripLabel2 = new System.Windows.Forms.ToolStripLabel();
            this.tbrMainProgress = new System.Windows.Forms.ToolStripProgressBar();
            this.tbrMainPercentage = new System.Windows.Forms.ToolStripLabel();
            this.tbrMainStatus = new System.Windows.Forms.ToolStripLabel();
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.statusStripMessage = new System.Windows.Forms.ToolStripStatusLabel();
            this.userLoggedOnStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.baseDBMSStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.customerDBMSStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.clockStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.mnuMain = new System.Windows.Forms.MenuStrip();
            this.mnuMainFile = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainExportToExcel = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripSeparator();
            this.mnuMainFileExit = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainView = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainViewDatasets = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainViewRefresh = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainViewZoom = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainViewZoom50Pct = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainViewZoom100Pct = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainViewZoom150Pct = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainViewZoom200Pct = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainViewZoom300Pct = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainActions = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainActionsPrepare = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainActionsClearPrompts = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainActionsClearAllPrompts = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainTools = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainToolsOptions = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainHelp = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainHelpAbout = new System.Windows.Forms.ToolStripMenuItem();
            this.tmrClock = new System.Windows.Forms.Timer(this.components);
            this.mnuMainShowForms = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainShowReturns = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainShowSummaries = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMainShowSchedules = new System.Windows.Forms.ToolStripMenuItem();
            this.tabForms.SuspendLayout();
            this.tbrMain.SuspendLayout();
            this.statusStrip.SuspendLayout();
            this.mnuMain.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabForms
            // 
            this.tabForms.Controls.Add(this.tabPage1);
            this.tabForms.Controls.Add(this.tabPage2);
            this.tabForms.Location = new System.Drawing.Point(3, 65);
            this.tabForms.Multiline = true;
            this.tabForms.Name = "tabForms";
            this.tabForms.SelectedIndex = 0;
            this.tabForms.Size = new System.Drawing.Size(1106, 455);
            this.tabForms.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.AutoScroll = true;
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1098, 429);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "tabPage1";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1098, 429);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "tabPage2";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tbrMain
            // 
            this.tbrMain.BackColor = System.Drawing.Color.Silver;
            this.tbrMain.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.tbrMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tbrMainLoad,
            this.toolStripSeparator5,
            this.tbrMainSave,
            this.toolStripSeparator1,
            this.tbrMainRun,
            this.tbrMainStop,
            this.toolStripSeparator3,
            this.tbrMainOptions,
            this.toolStripSeparator4,
            this.tbrMainPrint,
            this.toolStripSeparator2,
            this.tbrMainClose,
            this.toolStripLabel3,
            this.tbrMainNavSep4,
            this.tbrMainFirstPage,
            this.tbrMainNavSep2,
            this.tbrMainPreviousPage,
            this.tbrMainNavSep3,
            this.tbrMainNextPage,
            this.tbrMainNavSep1,
            this.tbrMainLastPage,
            this.tbrMainNavSep5,
            this.tbrMainGotoPage,
            this.tbrMainPageNo,
            this.tbrMainOfLabel,
            this.tbrMainTotalPages,
            this.toolStripLabel1,
            this.tbrMainLastDatePrepared,
            this.toolStripLabel2,
            this.tbrMainProgress,
            this.tbrMainPercentage,
            this.tbrMainStatus});
            this.tbrMain.Location = new System.Drawing.Point(0, 24);
            this.tbrMain.Name = "tbrMain";
            this.tbrMain.Size = new System.Drawing.Size(1428, 38);
            this.tbrMain.TabIndex = 53;
            this.tbrMain.Text = "toolStrip1";
            // 
            // tbrMainLoad
            // 
            this.tbrMainLoad.Image = ((System.Drawing.Image)(resources.GetObject("tbrMainLoad.Image")));
            this.tbrMainLoad.ImageTransparentColor = System.Drawing.Color.White;
            this.tbrMainLoad.Name = "tbrMainLoad";
            this.tbrMainLoad.Size = new System.Drawing.Size(37, 35);
            this.tbrMainLoad.Text = "Load";
            this.tbrMainLoad.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainLoad.Click += new System.EventHandler(this.tbrMainLoad_Click);
            // 
            // toolStripSeparator5
            // 
            this.toolStripSeparator5.Name = "toolStripSeparator5";
            this.toolStripSeparator5.Size = new System.Drawing.Size(6, 38);
            // 
            // tbrMainSave
            // 
            this.tbrMainSave.Image = ((System.Drawing.Image)(resources.GetObject("tbrMainSave.Image")));
            this.tbrMainSave.ImageTransparentColor = System.Drawing.Color.White;
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
            // tbrMainRun
            // 
            this.tbrMainRun.Image = global::IGenFormsViewer.Properties.Resources.Execute;
            this.tbrMainRun.ImageTransparentColor = System.Drawing.Color.White;
            this.tbrMainRun.Name = "tbrMainRun";
            this.tbrMainRun.Size = new System.Drawing.Size(51, 35);
            this.tbrMainRun.Text = "Prepare";
            this.tbrMainRun.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainRun.Click += new System.EventHandler(this.tbrMainRun_Click);
            // 
            // tbrMainStop
            // 
            this.tbrMainStop.Image = ((System.Drawing.Image)(resources.GetObject("tbrMainStop.Image")));
            this.tbrMainStop.ImageTransparentColor = System.Drawing.Color.White;
            this.tbrMainStop.Name = "tbrMainStop";
            this.tbrMainStop.Size = new System.Drawing.Size(35, 35);
            this.tbrMainStop.Text = "Stop";
            this.tbrMainStop.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainStop.Click += new System.EventHandler(this.tbrMainStop_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(6, 38);
            // 
            // tbrMainOptions
            // 
            this.tbrMainOptions.Image = global::IGenFormsViewer.Properties.Resources.Options;
            this.tbrMainOptions.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tbrMainOptions.Name = "tbrMainOptions";
            this.tbrMainOptions.Size = new System.Drawing.Size(53, 35);
            this.tbrMainOptions.Text = "Options";
            this.tbrMainOptions.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainOptions.Click += new System.EventHandler(this.tbrMainOptions_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(6, 38);
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
            // toolStripLabel3
            // 
            this.toolStripLabel3.AutoSize = false;
            this.toolStripLabel3.Name = "toolStripLabel3";
            this.toolStripLabel3.Size = new System.Drawing.Size(50, 35);
            // 
            // tbrMainNavSep4
            // 
            this.tbrMainNavSep4.Name = "tbrMainNavSep4";
            this.tbrMainNavSep4.Size = new System.Drawing.Size(6, 38);
            // 
            // tbrMainFirstPage
            // 
            this.tbrMainFirstPage.AutoSize = false;
            this.tbrMainFirstPage.BackColor = System.Drawing.Color.Transparent;
            this.tbrMainFirstPage.Image = global::IGenFormsViewer.Properties.Resources.ARW08UP;
            this.tbrMainFirstPage.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tbrMainFirstPage.Name = "tbrMainFirstPage";
            this.tbrMainFirstPage.Size = new System.Drawing.Size(60, 35);
            this.tbrMainFirstPage.Text = "First";
            this.tbrMainFirstPage.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainFirstPage.ToolTipText = "First Page";
            // 
            // tbrMainNavSep2
            // 
            this.tbrMainNavSep2.Name = "tbrMainNavSep2";
            this.tbrMainNavSep2.Size = new System.Drawing.Size(6, 38);
            // 
            // tbrMainPreviousPage
            // 
            this.tbrMainPreviousPage.AutoSize = false;
            this.tbrMainPreviousPage.BackColor = System.Drawing.Color.Transparent;
            this.tbrMainPreviousPage.Image = global::IGenFormsViewer.Properties.Resources.ARW08LT;
            this.tbrMainPreviousPage.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tbrMainPreviousPage.Name = "tbrMainPreviousPage";
            this.tbrMainPreviousPage.Size = new System.Drawing.Size(60, 35);
            this.tbrMainPreviousPage.Text = "Previous";
            this.tbrMainPreviousPage.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainPreviousPage.ToolTipText = "First Page";
            // 
            // tbrMainNavSep3
            // 
            this.tbrMainNavSep3.Name = "tbrMainNavSep3";
            this.tbrMainNavSep3.Size = new System.Drawing.Size(6, 38);
            // 
            // tbrMainNextPage
            // 
            this.tbrMainNextPage.AutoSize = false;
            this.tbrMainNextPage.BackColor = System.Drawing.Color.Transparent;
            this.tbrMainNextPage.Image = global::IGenFormsViewer.Properties.Resources.ARW08RT;
            this.tbrMainNextPage.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tbrMainNextPage.Name = "tbrMainNextPage";
            this.tbrMainNextPage.Size = new System.Drawing.Size(60, 35);
            this.tbrMainNextPage.Text = "Next";
            this.tbrMainNextPage.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainNextPage.ToolTipText = "First Page";
            // 
            // tbrMainNavSep1
            // 
            this.tbrMainNavSep1.Name = "tbrMainNavSep1";
            this.tbrMainNavSep1.Size = new System.Drawing.Size(6, 38);
            // 
            // tbrMainLastPage
            // 
            this.tbrMainLastPage.AutoSize = false;
            this.tbrMainLastPage.BackColor = System.Drawing.Color.Transparent;
            this.tbrMainLastPage.Image = global::IGenFormsViewer.Properties.Resources.ARW08DN;
            this.tbrMainLastPage.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tbrMainLastPage.Name = "tbrMainLastPage";
            this.tbrMainLastPage.Size = new System.Drawing.Size(60, 35);
            this.tbrMainLastPage.Text = "Last";
            this.tbrMainLastPage.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainLastPage.ToolTipText = "First Page";
            // 
            // tbrMainNavSep5
            // 
            this.tbrMainNavSep5.Name = "tbrMainNavSep5";
            this.tbrMainNavSep5.Size = new System.Drawing.Size(6, 38);
            // 
            // tbrMainGotoPage
            // 
            this.tbrMainGotoPage.AutoSize = false;
            this.tbrMainGotoPage.BackColor = System.Drawing.Color.Transparent;
            this.tbrMainGotoPage.Image = global::IGenFormsViewer.Properties.Resources._goto;
            this.tbrMainGotoPage.ImageTransparentColor = System.Drawing.Color.White;
            this.tbrMainGotoPage.Name = "tbrMainGotoPage";
            this.tbrMainGotoPage.Size = new System.Drawing.Size(60, 35);
            this.tbrMainGotoPage.Text = "GoTo";
            this.tbrMainGotoPage.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.tbrMainGotoPage.ToolTipText = "First Page";
            // 
            // tbrMainPageNo
            // 
            this.tbrMainPageNo.AutoSize = false;
            this.tbrMainPageNo.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbrMainPageNo.Name = "tbrMainPageNo";
            this.tbrMainPageNo.Size = new System.Drawing.Size(40, 35);
            // 
            // tbrMainOfLabel
            // 
            this.tbrMainOfLabel.AutoSize = false;
            this.tbrMainOfLabel.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbrMainOfLabel.Name = "tbrMainOfLabel";
            this.tbrMainOfLabel.Size = new System.Drawing.Size(25, 35);
            this.tbrMainOfLabel.Text = " of ";
            // 
            // tbrMainTotalPages
            // 
            this.tbrMainTotalPages.AutoSize = false;
            this.tbrMainTotalPages.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbrMainTotalPages.Name = "tbrMainTotalPages";
            this.tbrMainTotalPages.Size = new System.Drawing.Size(40, 35);
            // 
            // toolStripLabel1
            // 
            this.toolStripLabel1.AutoSize = false;
            this.toolStripLabel1.Name = "toolStripLabel1";
            this.toolStripLabel1.Size = new System.Drawing.Size(50, 35);
            // 
            // tbrMainLastDatePrepared
            // 
            this.tbrMainLastDatePrepared.BackColor = System.Drawing.Color.White;
            this.tbrMainLastDatePrepared.Font = new System.Drawing.Font("Arial", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbrMainLastDatePrepared.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.tbrMainLastDatePrepared.ImageTransparentColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.tbrMainLastDatePrepared.Name = "tbrMainLastDatePrepared";
            this.tbrMainLastDatePrepared.Size = new System.Drawing.Size(116, 35);
            this.tbrMainLastDatePrepared.Text = "Last Prepared: ";
            // 
            // toolStripLabel2
            // 
            this.toolStripLabel2.AutoSize = false;
            this.toolStripLabel2.Name = "toolStripLabel2";
            this.toolStripLabel2.Size = new System.Drawing.Size(50, 35);
            // 
            // tbrMainProgress
            // 
            this.tbrMainProgress.Name = "tbrMainProgress";
            this.tbrMainProgress.Size = new System.Drawing.Size(100, 35);
            // 
            // tbrMainPercentage
            // 
            this.tbrMainPercentage.AutoSize = false;
            this.tbrMainPercentage.Name = "tbrMainPercentage";
            this.tbrMainPercentage.Size = new System.Drawing.Size(30, 35);
            // 
            // tbrMainStatus
            // 
            this.tbrMainStatus.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.tbrMainStatus.Font = new System.Drawing.Font("Arial", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbrMainStatus.ForeColor = System.Drawing.Color.Blue;
            this.tbrMainStatus.Name = "tbrMainStatus";
            this.tbrMainStatus.Size = new System.Drawing.Size(52, 35);
            this.tbrMainStatus.Text = "Ready";
            this.tbrMainStatus.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // statusStrip
            // 
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.statusStripMessage,
            this.userLoggedOnStatusLabel,
            this.baseDBMSStatusLabel,
            this.customerDBMSStatusLabel,
            this.clockStatusLabel});
            this.statusStrip.Location = new System.Drawing.Point(0, 525);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.Size = new System.Drawing.Size(1428, 22);
            this.statusStrip.TabIndex = 54;
            this.statusStrip.Text = "Ready";
            // 
            // statusStripMessage
            // 
            this.statusStripMessage.AutoSize = false;
            this.statusStripMessage.Name = "statusStripMessage";
            this.statusStripMessage.Size = new System.Drawing.Size(513, 17);
            this.statusStripMessage.Spring = true;
            this.statusStripMessage.Text = "Ready";
            this.statusStripMessage.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // userLoggedOnStatusLabel
            // 
            this.userLoggedOnStatusLabel.AutoSize = false;
            this.userLoggedOnStatusLabel.BorderSides = ((System.Windows.Forms.ToolStripStatusLabelBorderSides)((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left | System.Windows.Forms.ToolStripStatusLabelBorderSides.Right)));
            this.userLoggedOnStatusLabel.BorderStyle = System.Windows.Forms.Border3DStyle.Bump;
            this.userLoggedOnStatusLabel.Name = "userLoggedOnStatusLabel";
            this.userLoggedOnStatusLabel.Size = new System.Drawing.Size(250, 17);
            this.userLoggedOnStatusLabel.Text = "User";
            // 
            // baseDBMSStatusLabel
            // 
            this.baseDBMSStatusLabel.AutoSize = false;
            this.baseDBMSStatusLabel.BorderSides = ((System.Windows.Forms.ToolStripStatusLabelBorderSides)((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left | System.Windows.Forms.ToolStripStatusLabelBorderSides.Right)));
            this.baseDBMSStatusLabel.Name = "baseDBMSStatusLabel";
            this.baseDBMSStatusLabel.Size = new System.Drawing.Size(400, 17);
            this.baseDBMSStatusLabel.Text = "DBConnection";
            // 
            // customerDBMSStatusLabel
            // 
            this.customerDBMSStatusLabel.AutoSize = false;
            this.customerDBMSStatusLabel.BorderSides = ((System.Windows.Forms.ToolStripStatusLabelBorderSides)((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left | System.Windows.Forms.ToolStripStatusLabelBorderSides.Right)));
            this.customerDBMSStatusLabel.Name = "customerDBMSStatusLabel";
            this.customerDBMSStatusLabel.Size = new System.Drawing.Size(100, 17);
            this.customerDBMSStatusLabel.Text = "CustConnection";
            // 
            // clockStatusLabel
            // 
            this.clockStatusLabel.AutoSize = false;
            this.clockStatusLabel.Name = "clockStatusLabel";
            this.clockStatusLabel.Size = new System.Drawing.Size(150, 17);
            this.clockStatusLabel.Text = "08/23/2012 12:35:44 am";
            // 
            // mnuMain
            // 
            this.mnuMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuMainFile,
            this.mnuMainView,
            this.mnuMainActions,
            this.mnuMainTools,
            this.mnuMainHelp});
            this.mnuMain.Location = new System.Drawing.Point(0, 0);
            this.mnuMain.Name = "mnuMain";
            this.mnuMain.Size = new System.Drawing.Size(1428, 24);
            this.mnuMain.TabIndex = 55;
            this.mnuMain.Text = "menuStrip1";
            // 
            // mnuMainFile
            // 
            this.mnuMainFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuMainExportToExcel,
            this.toolStripMenuItem1,
            this.mnuMainFileExit});
            this.mnuMainFile.Name = "mnuMainFile";
            this.mnuMainFile.Size = new System.Drawing.Size(37, 20);
            this.mnuMainFile.Text = "&File";
            // 
            // mnuMainExportToExcel
            // 
            this.mnuMainExportToExcel.Name = "mnuMainExportToExcel";
            this.mnuMainExportToExcel.Size = new System.Drawing.Size(153, 22);
            this.mnuMainExportToExcel.Text = "Export To Excel";
            this.mnuMainExportToExcel.Click += new System.EventHandler(this.mnuMainExportToExcel_Click);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(150, 6);
            // 
            // mnuMainFileExit
            // 
            this.mnuMainFileExit.Name = "mnuMainFileExit";
            this.mnuMainFileExit.Size = new System.Drawing.Size(153, 22);
            this.mnuMainFileExit.Text = "E&xit";
            this.mnuMainFileExit.Click += new System.EventHandler(this.mnuMainFileExit_Click);
            // 
            // mnuMainView
            // 
            this.mnuMainView.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuMainViewDatasets,
            this.mnuMainViewRefresh,
            this.mnuMainShowForms,
            this.mnuMainViewZoom});
            this.mnuMainView.Name = "mnuMainView";
            this.mnuMainView.Size = new System.Drawing.Size(44, 20);
            this.mnuMainView.Text = "&View";
            // 
            // mnuMainViewDatasets
            // 
            this.mnuMainViewDatasets.Name = "mnuMainViewDatasets";
            this.mnuMainViewDatasets.Size = new System.Drawing.Size(159, 22);
            this.mnuMainViewDatasets.Text = "&Datasets";
            this.mnuMainViewDatasets.Click += new System.EventHandler(this.mnuMainViewDatasets_Click);
            // 
            // mnuMainViewRefresh
            // 
            this.mnuMainViewRefresh.Name = "mnuMainViewRefresh";
            this.mnuMainViewRefresh.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.F5)));
            this.mnuMainViewRefresh.Size = new System.Drawing.Size(159, 22);
            this.mnuMainViewRefresh.Text = "&Refresh";
            this.mnuMainViewRefresh.Click += new System.EventHandler(this.mnuMainViewRefresh_Click);
            // 
            // mnuMainViewZoom
            // 
            this.mnuMainViewZoom.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuMainViewZoom50Pct,
            this.mnuMainViewZoom100Pct,
            this.mnuMainViewZoom150Pct,
            this.mnuMainViewZoom200Pct,
            this.mnuMainViewZoom300Pct});
            this.mnuMainViewZoom.Name = "mnuMainViewZoom";
            this.mnuMainViewZoom.Size = new System.Drawing.Size(159, 22);
            this.mnuMainViewZoom.Text = "&Zoom";
            // 
            // mnuMainViewZoom50Pct
            // 
            this.mnuMainViewZoom50Pct.Name = "mnuMainViewZoom50Pct";
            this.mnuMainViewZoom50Pct.Size = new System.Drawing.Size(152, 22);
            this.mnuMainViewZoom50Pct.Text = "50%";
            this.mnuMainViewZoom50Pct.Click += new System.EventHandler(this.mnuMainViewZoom50Pct_Click);
            // 
            // mnuMainViewZoom100Pct
            // 
            this.mnuMainViewZoom100Pct.Name = "mnuMainViewZoom100Pct";
            this.mnuMainViewZoom100Pct.Size = new System.Drawing.Size(152, 22);
            this.mnuMainViewZoom100Pct.Text = "100%";
            this.mnuMainViewZoom100Pct.Click += new System.EventHandler(this.mnuMainViewZoom100Pct_Click);
            // 
            // mnuMainViewZoom150Pct
            // 
            this.mnuMainViewZoom150Pct.Name = "mnuMainViewZoom150Pct";
            this.mnuMainViewZoom150Pct.Size = new System.Drawing.Size(152, 22);
            this.mnuMainViewZoom150Pct.Text = "150%";
            this.mnuMainViewZoom150Pct.Click += new System.EventHandler(this.mnuMainViewZoom150Pct_Click);
            // 
            // mnuMainViewZoom200Pct
            // 
            this.mnuMainViewZoom200Pct.Name = "mnuMainViewZoom200Pct";
            this.mnuMainViewZoom200Pct.Size = new System.Drawing.Size(152, 22);
            this.mnuMainViewZoom200Pct.Text = "200%";
            this.mnuMainViewZoom200Pct.Click += new System.EventHandler(this.mnuMainViewZoom200Pct_Click);
            // 
            // mnuMainViewZoom300Pct
            // 
            this.mnuMainViewZoom300Pct.Name = "mnuMainViewZoom300Pct";
            this.mnuMainViewZoom300Pct.Size = new System.Drawing.Size(152, 22);
            this.mnuMainViewZoom300Pct.Text = "300%";
            this.mnuMainViewZoom300Pct.Click += new System.EventHandler(this.mnuMainViewZoom300Pct_Click);
            // 
            // mnuMainActions
            // 
            this.mnuMainActions.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuMainActionsPrepare,
            this.mnuMainActionsClearPrompts,
            this.mnuMainActionsClearAllPrompts});
            this.mnuMainActions.Name = "mnuMainActions";
            this.mnuMainActions.Size = new System.Drawing.Size(62, 20);
            this.mnuMainActions.Text = "&Actions ";
            // 
            // mnuMainActionsPrepare
            // 
            this.mnuMainActionsPrepare.Name = "mnuMainActionsPrepare";
            this.mnuMainActionsPrepare.ShortcutKeys = System.Windows.Forms.Keys.F5;
            this.mnuMainActionsPrepare.Size = new System.Drawing.Size(171, 22);
            this.mnuMainActionsPrepare.Text = "&Prepare";
            this.mnuMainActionsPrepare.Click += new System.EventHandler(this.mnuMainActionsPrepare_Click);
            // 
            // mnuMainActionsClearPrompts
            // 
            this.mnuMainActionsClearPrompts.Name = "mnuMainActionsClearPrompts";
            this.mnuMainActionsClearPrompts.Size = new System.Drawing.Size(171, 22);
            this.mnuMainActionsClearPrompts.Text = "&Clear Prompts";
            this.mnuMainActionsClearPrompts.Click += new System.EventHandler(this.mnuMainActionsClearPrompts_Click);
            // 
            // mnuMainActionsClearAllPrompts
            // 
            this.mnuMainActionsClearAllPrompts.Name = "mnuMainActionsClearAllPrompts";
            this.mnuMainActionsClearAllPrompts.Size = new System.Drawing.Size(171, 22);
            this.mnuMainActionsClearAllPrompts.Text = "Clear _All Prompts";
            this.mnuMainActionsClearAllPrompts.Click += new System.EventHandler(this.mnuMainActionsClearAllPrompts_Click);
            // 
            // mnuMainTools
            // 
            this.mnuMainTools.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuMainToolsOptions});
            this.mnuMainTools.Name = "mnuMainTools";
            this.mnuMainTools.Size = new System.Drawing.Size(48, 20);
            this.mnuMainTools.Text = "&Tools";
            // 
            // mnuMainToolsOptions
            // 
            this.mnuMainToolsOptions.Name = "mnuMainToolsOptions";
            this.mnuMainToolsOptions.Size = new System.Drawing.Size(116, 22);
            this.mnuMainToolsOptions.Text = "&Options";
            this.mnuMainToolsOptions.Click += new System.EventHandler(this.mnuMainToolsOptions_Click);
            // 
            // mnuMainHelp
            // 
            this.mnuMainHelp.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuMainHelpAbout});
            this.mnuMainHelp.Name = "mnuMainHelp";
            this.mnuMainHelp.Size = new System.Drawing.Size(44, 20);
            this.mnuMainHelp.Text = "&Help";
            // 
            // mnuMainHelpAbout
            // 
            this.mnuMainHelpAbout.Name = "mnuMainHelpAbout";
            this.mnuMainHelpAbout.Size = new System.Drawing.Size(107, 22);
            this.mnuMainHelpAbout.Text = "&About";
            this.mnuMainHelpAbout.Click += new System.EventHandler(this.mnuMainHelpAbout_Click);
            // 
            // tmrClock
            // 
            this.tmrClock.Enabled = true;
            this.tmrClock.Tick += new System.EventHandler(this.tmrClock_Tick);
            // 
            // mnuMainShowForms
            // 
            this.mnuMainShowForms.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuMainShowReturns,
            this.mnuMainShowSummaries,
            this.mnuMainShowSchedules});
            this.mnuMainShowForms.Name = "mnuMainShowForms";
            this.mnuMainShowForms.Size = new System.Drawing.Size(159, 22);
            this.mnuMainShowForms.Text = "&Show";
            // 
            // mnuMainShowReturns
            // 
            this.mnuMainShowReturns.Checked = true;
            this.mnuMainShowReturns.CheckOnClick = true;
            this.mnuMainShowReturns.CheckState = System.Windows.Forms.CheckState.Checked;
            this.mnuMainShowReturns.Name = "mnuMainShowReturns";
            this.mnuMainShowReturns.Size = new System.Drawing.Size(152, 22);
            this.mnuMainShowReturns.Text = "&Returns";
            this.mnuMainShowReturns.Click += new System.EventHandler(this.mnuMainShowReturns_Click);
            // 
            // mnuMainShowSummaries
            // 
            this.mnuMainShowSummaries.Checked = true;
            this.mnuMainShowSummaries.CheckOnClick = true;
            this.mnuMainShowSummaries.CheckState = System.Windows.Forms.CheckState.Checked;
            this.mnuMainShowSummaries.Name = "mnuMainShowSummaries";
            this.mnuMainShowSummaries.Size = new System.Drawing.Size(152, 22);
            this.mnuMainShowSummaries.Text = "&Summaries";
            this.mnuMainShowSummaries.Click += new System.EventHandler(this.mnuMainShowSummaries_Click);
            // 
            // mnuMainShowSchedules
            // 
            this.mnuMainShowSchedules.Checked = true;
            this.mnuMainShowSchedules.CheckOnClick = true;
            this.mnuMainShowSchedules.CheckState = System.Windows.Forms.CheckState.Checked;
            this.mnuMainShowSchedules.Name = "mnuMainShowSchedules";
            this.mnuMainShowSchedules.Size = new System.Drawing.Size(152, 22);
            this.mnuMainShowSchedules.Text = "S&chedules";
            this.mnuMainShowSchedules.Click += new System.EventHandler(this.mnuMainShowSchedules_Click);
            // 
            // frmViewer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1428, 547);
            this.Controls.Add(this.statusStrip);
            this.Controls.Add(this.tbrMain);
            this.Controls.Add(this.mnuMain);
            this.Controls.Add(this.tabForms);
            this.MainMenuStrip = this.mnuMain;
            this.Name = "frmViewer";
            this.Text = "View Forms";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.tabForms.ResumeLayout(false);
            this.tbrMain.ResumeLayout(false);
            this.tbrMain.PerformLayout();
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.mnuMain.ResumeLayout(false);
            this.mnuMain.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl tabForms;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.ToolStrip tbrMain;
        private System.Windows.Forms.ToolStripButton tbrMainSave;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton tbrMainPrint;
        private System.Windows.Forms.ToolStripSeparator tbrMainNavSep2;
        private System.Windows.Forms.ToolStripButton tbrMainClose;
        private System.Windows.Forms.ToolStripButton tbrMainRun;
        private System.Windows.Forms.ToolStripSeparator tbrMainNavSep1;
        private System.Windows.Forms.ToolStripLabel tbrMainStatus;
        private System.Windows.Forms.ToolStripLabel toolStripLabel1;
        private System.Windows.Forms.ToolStripLabel tbrMainLastDatePrepared;
        private System.Windows.Forms.ToolStripLabel toolStripLabel2;
        private System.Windows.Forms.ToolStripButton tbrMainStop;
        private System.Windows.Forms.ToolStripButton tbrMainFirstPage;
        private System.Windows.Forms.ToolStripButton tbrMainPreviousPage;
        private System.Windows.Forms.ToolStripSeparator tbrMainNavSep3;
        private System.Windows.Forms.ToolStripButton tbrMainNextPage;
        private System.Windows.Forms.ToolStripSeparator tbrMainNavSep4;
        private System.Windows.Forms.ToolStripButton tbrMainLastPage;
        private System.Windows.Forms.ToolStripSeparator tbrMainNavSep5;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripLabel tbrMainPageNo;
        private System.Windows.Forms.ToolStripLabel tbrMainTotalPages;
        private System.Windows.Forms.ToolStripButton tbrMainOptions;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel statusStripMessage;
        private System.Windows.Forms.ToolStripStatusLabel userLoggedOnStatusLabel;
        private System.Windows.Forms.ToolStripStatusLabel baseDBMSStatusLabel;
        private System.Windows.Forms.ToolStripStatusLabel customerDBMSStatusLabel;
        private System.Windows.Forms.ToolStripStatusLabel clockStatusLabel;
        private System.Windows.Forms.ToolStripLabel toolStripLabel3;
        private System.Windows.Forms.ToolStripLabel tbrMainOfLabel;
        private System.Windows.Forms.ToolStripProgressBar tbrMainProgress;
        private System.Windows.Forms.MenuStrip mnuMain;
        private System.Windows.Forms.ToolStripMenuItem mnuMainFile;
        private System.Windows.Forms.ToolStripMenuItem mnuMainFileExit;
        private System.Windows.Forms.ToolStripMenuItem mnuMainView;
        private System.Windows.Forms.ToolStripMenuItem mnuMainViewDatasets;
        private System.Windows.Forms.ToolStripMenuItem mnuMainTools;
        private System.Windows.Forms.ToolStripMenuItem mnuMainToolsOptions;
        private System.Windows.Forms.ToolStripMenuItem mnuMainHelp;
        private System.Windows.Forms.ToolStripMenuItem mnuMainHelpAbout;
        private System.Windows.Forms.ToolStripLabel tbrMainPercentage;
        private System.Windows.Forms.ToolStripMenuItem mnuMainExportToExcel;
        private System.Windows.Forms.ToolStripSeparator toolStripMenuItem1;
        private System.Windows.Forms.ToolStripButton tbrMainGotoPage;
        private System.Windows.Forms.ToolStripMenuItem mnuMainViewRefresh;
        private System.Windows.Forms.ToolStripMenuItem mnuMainActions;
        private System.Windows.Forms.ToolStripMenuItem mnuMainActionsPrepare;
        private System.Windows.Forms.ToolStripMenuItem mnuMainActionsClearPrompts;
        private System.Windows.Forms.ToolStripMenuItem mnuMainViewZoom;
        private System.Windows.Forms.ToolStripMenuItem mnuMainViewZoom50Pct;
        private System.Windows.Forms.ToolStripMenuItem mnuMainViewZoom100Pct;
        private System.Windows.Forms.ToolStripMenuItem mnuMainViewZoom150Pct;
        private System.Windows.Forms.ToolStripMenuItem mnuMainViewZoom200Pct;
        private System.Windows.Forms.ToolStripMenuItem mnuMainViewZoom300Pct;
        private System.Windows.Forms.Timer tmrClock;
        private System.Windows.Forms.ToolStripMenuItem mnuMainActionsClearAllPrompts;
        private System.Windows.Forms.ToolStripButton tbrMainLoad;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator5;
        private System.Windows.Forms.ToolStripMenuItem mnuMainShowForms;
        private System.Windows.Forms.ToolStripMenuItem mnuMainShowReturns;
        private System.Windows.Forms.ToolStripMenuItem mnuMainShowSummaries;
        private System.Windows.Forms.ToolStripMenuItem mnuMainShowSchedules;
    }
}

