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
            _interface.FormFilesFolder = CommonRoutines.currentFormsPath;
            _interface.FormImagesFolder = CommonRoutines.currentFormImagesPath;
            _interface.FormGroup = "Minnesota_PDA-49";
            _interface.FormFileName = "IGen\\MN\\Minnesota_PDA-49.frm";

            _interface.GenerateForms();

        }







    }
}
