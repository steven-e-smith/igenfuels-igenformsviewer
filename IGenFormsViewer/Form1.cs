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
    public partial class Form1 : Form
    {
        string moduleName = "Form1";

        IGenFormsViewerInterface _interface = new IGenFormsViewerInterface();


        public Form1()
        {
            InitializeComponent();

            this.Load += Form1_Load;

        }




        void Form1_Load(object sender, EventArgs e)
        {
            DisplayViewer();
        }





        private void button1_Click(object sender, EventArgs e)
        {

            DisplayViewer();

        }



        private void DisplayViewer()
        {

            // load the config file
            ConfigRoutines.ReadConfigFile();

            // assign the connection string
            _interface.BaseConnectionString = ConfigRoutines.GetSetting("BaseConnection");
            _interface.BaseConnectionDBMS = ConfigRoutines.GetSetting("BaseDBMS");
            _interface.ConnectionString = ConfigRoutines.GetSetting("MainConnection");
            _interface.ConnectionDBMS = ConfigRoutines.GetSetting("MainDBMS");
            _interface.FormFilesFolder = CommonRoutines.currentFormsPath + "\\USOil/NY/PT100-102";
            _interface.FormImagesFolder = CommonRoutines.currentFormImagesPath;

            _interface.FormFilesFolder = CommonRoutines.currentFormsPath + "\\USOil/NY/PT100-102";
            _interface.FormGroup = "PT100-102";
            _interface.FormFileName = "PT100-102.frm";

            //_interface.FormFilesFolder = CommonRoutines.currentFormsPath + "\\USOil/SC";
            //_interface.FormGroup = "South_Carolina_Tax";
            //_interface.FormFileName = "SC Supplier.frm";

            _interface.GenerateForms();

        }







    }
}
