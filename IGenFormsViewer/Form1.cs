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

            string _formFileFolder = ConfigRoutines.GetSetting("FormsFolder");
            if (_formFileFolder != "")
            {
                _interface.FormFilesFolder = _formFileFolder;
            }
            

            string _formFileImageFolder = ConfigRoutines.GetSetting("FormImagesFolder");
            if (_formFileImageFolder != "")
            {
                _interface.FormImagesFolder = _formFileImageFolder;
            }

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "/Good forms/NY";
            //_interface.FormGroup = "PT100-102";
            //_interface.FormFileName = "PT100-102-TEST.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\USOil/SC";
            //_interface.FormGroup = "South_Carolina_Tax";
            //_interface.FormFileName = "SC Supplier.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\IGen\\NJ\\SMF 10";
            //_interface.FormGroup = "SMF10 Supplier";
            //_interface.FormFileName = "SMF10 Supplier.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\Good Forms/AL";
            //_interface.FormGroup = "Alabama Forms Group";
            //_interface.FormFileName = "Supplier.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\Good Forms\\OH\\Aaron";
            //_interface.FormGroup = "Ohio_MF2";
            //_interface.FormFileName = "Ohio_MF2.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "/USOil/IA";
            //_interface.FormGroup = "Iowa Supplier/Distributor";
            //_interface.FormFileName = "IOWA_FORMS (1).frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "/GOOD FORMS/NE";
            //_interface.FormGroup = "Nebraska73";
            //_interface.FormFileName = "FORM_73.frm";

            _interface.FormFilesFolder = _interface.FormFilesFolder + "\\Good Forms\\LA";
            _interface.FormGroup = "LA_UST-MFDR-1";
            _interface.FormFileName = "LA_UST-MFDR-1.frm";

            _interface.GenerateForms();

            this.Close();
        }







    }
}
