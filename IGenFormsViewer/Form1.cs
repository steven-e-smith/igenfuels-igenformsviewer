using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


// In the DisplayViewer method below, change the set of 3 lines
// to point to a form

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
            DatabaseRoutines.BaseConnection = _interface.BaseConnectionString;
            DatabaseRoutines.BaseDBMS = _interface.BaseConnectionDBMS;

            _interface.ConnectionString = ConfigRoutines.GetSetting("MainConnection");
            _interface.ConnectionDBMS = ConfigRoutines.GetSetting("MainDBMS");
            DatabaseRoutines.MainConnection = _interface.ConnectionString;
            DatabaseRoutines.MainDBMS = _interface.ConnectionDBMS;

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

            // hard code the forms folders
            _interface.FormFilesFolder = "C:\\APPS\\IGENFUELS\\FORMFILES\\";
            _interface.FormImagesFolder = "C:\\APPS\\IGENFUELS\\FORMIMAGES\\";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "USOil/UAT Ready Forms/NC/Supplier";
            //_interface.FormGroup = "Gas-1202";
            //_interface.FormFileName = "North_Carolina_Tax.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\Good Forms/SC/Supplier";
            //_interface.FormGroup = "South_Carolina_Tax";
            //_interface.FormFileName = "South_Carolina_Tax.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\USOil\\UAT Ready Forms\\NJ\\SMF 10";
            //_interface.FormGroup = "SMF10 Supplier";
            //_interface.FormFileName = "SMF10 Supplier.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\Good Forms/AL";
            //_interface.FormGroup = "Alabama Forms Group";
            //_interface.FormFileName = "Supplier.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\USOil\\UAT Ready Forms\\OH";
            //_interface.FormGroup = "Ohio_MF2";
            //_interface.FormFileName = "Ohio_MF2.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\USOil\\UAT Ready Forms\\SC\\Supplier";
            //_interface.FormGroup = "L-2119";
            //_interface.FormFileName = "SC Supplier.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "/USOil/IA";
            //_interface.FormGroup = "Iowa Supplier/Distributor";
            //_interface.FormFileName = "IOWA_FORMS (1).frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "/GOOD FORMS/NE";
            //_interface.FormGroup = "Nebraska73";
            //_interface.FormFileName = "FORM_73.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\Good Forms\\LA";
            //_interface.FormGroup = "LA_UST-MFDR-1";
            //_interface.FormFileName = "LA_UST-MFDR-1.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\Good Forms\\NC\\TOR";
            //_interface.FormGroup = "NC_Terminal_Operator";
            //_interface.FormFileName = "Terminal_Operator_GAS1204.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\Good Forms\\OR\\735-1302";
            //_interface.FormGroup = "OR_735-1302";
            //_interface.FormFileName = "735_1302.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\TASG\\NE";
            //_interface.FormGroup = "Form_73";
            //_interface.FormFileName = "FORM_73.frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\USOil\\AR";
            //_interface.FormGroup = "Arkansas_Tax_Forms";
            //_interface.FormFileName = "AMFT-13(I).frm";

            //_interface.FormFilesFolder = _interface.FormFilesFolder + "\\USOil\\AR";
            //_interface.FormGroup = "Arkansas_Tax_Forms";
            //_interface.FormFileName = "AMFT-22(I).frm";

        //    _interface.FormFilesFolder = _interface.FormFilesFolder + "\\AR";   //  C:\IGenFuels_QA\Formfiles\AR  sgs was here
  //          _interface.FormFilesFolder = "C:\\IGenFuels_QA\\Formfiles\\AR";
  //          _interface.FormGroup = "Arkansas_Tax_Forms";
   //         _interface.FormFileName = "AMFT_DD.frm";

       //         _interface.FormFilesFolder = _interface.FormFilesFolder + "\\AR";   //  C:\IGenFuels_QA\Formfiles\WA  sgs was here  (this works!)
       //               _interface.FormFilesFolder = "C:\\IGenFuels_QA\\Formfiles\\WA";
       //               _interface.FormGroup = "WA_MVF_Supplier";
       //              _interface.FormFileName = "MVF.frm";


            _interface.FormFilesFolder = "C:\\IGenFuels_QA\\Formfiles\\MO";
            _interface.FormGroup = "MO_572_Supplier";
            _interface.FormFileName = "MO_572_Supplier.FRM";





           // _interface.FormFilesFolder = _interface.FormFilesFolder + "Aaron\\MO";
           // _interface.FormGroup = "MO_572_Supplier";
           // _interface.FormFileName = "MO_572_Supplier.frm";

            // now load the filing info..
            List<string[]> _filingInfo = new List<string[]>();
            _filingInfo = GetFilingInfo(49, 40, 11); 

            // add all of the properties to the interface
            for (int n = 1; n < _filingInfo.Count;n++)
            {
                string[] _fields = _filingInfo[0];
                for (int m=0;m<_fields.Length;m++)
                {
                    _interface.AddProperty(_fields[m], _filingInfo[n][m]);
                }
            }

            _interface.GenerateForms();

            this.Close();
        }






        /// <summary>
        /// List<string[]> GetPeriodInfo(int periodId)
        /// Get the period information
        /// </summary>
        /// <param name="valueString"></param>
        /// <returns></returns>
        public List<string[]> GetFilingInfo(int filingId, int submissionId, int submissionReturnId)
        {
            List<string[]> _rows = new List<string[]>();
            string _sql = "";

            try
            {
                _sql = "Select * " +
                       "From vw_Filing_Info " +
                       "Where Filing_ID=" + filingId + " ";

                if (submissionId > 0)
                {
                    _sql = _sql + " and Submission_Id=" + submissionId + " ";
                }

                if (submissionReturnId > 0)
                {
                    _sql = _sql + " and Submission_Return_Id=" + submissionReturnId + " ";
                }
                
                _sql = _sql + "Order By Period_Id, Filing_Id, Submission_Id, Submission_Return_Id ";

                _rows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetPeriodInfo > " + ex.Message);
            }

            return _rows;

        }



        }



}
