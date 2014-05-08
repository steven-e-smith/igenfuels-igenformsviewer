using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Drawing;
using System.Globalization;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Topaz;



namespace IGenFormsViewer
{
    [Serializable]
    public class IGenFormsMain
    {
        private string moduleName = "IGenFormsMain";

        public bool debugMode = true;
        public bool cancelFlag = false;

        public ToolStripLabel statusLabel = null;

        // keep a list of all the forms in a formgroup
        public string formGroupName = "";
        public string formGroupVersion = "1.0";
        public string formGroupTitle = "";
        public string currentFormName = "";
        public string formGroupPath = "";
        public string formFileName = "";

        public string name = "";
        public string dataSource = "";
        public string comments = "";
        public string dbms = "SQLServer";
        public string originalDataSource = "";
        public int filingId = 0;
        public string errorFlag = "";
        public string sql = "";
        public string datasetName = "";
        public int datasetOrdinal = -1;
        public string fileName = "";
        public bool visible = true;

        public bool compileFormsFlag = false;

        public List<string[]> formVariables = new List<string[]>();

        public List<string[]> dataset = new List<string[]>();
        public List<int> cursorOrdinals = new List<int>();

        public int currentRow = 0;
        public int totalRows = 0;
        public int currentPage = 0;
        public int totalPages = 0;

        // dropdown lists
        public string[] tabItems = { "Delete|DeleteTab", "-", "Properties|PropertiesTab" };
        public string[] palletItems = { "Add Fields|AddFields", "Show|Show", "Rules|Rules", "Paste|Paste", "Edit Image|EditImage", "Refresh Image|RefreshImage", "-", "Instructions|Instructions", "-", "Properties|Properties" };
        public string[] palletShowSubItems = { "Grid|ShowGrid", "Horizontal Ruler|ShowHorizontalRuler", "Vertical Ruler|ShowVerticalRuler" };
        public string[] palletAddFieldsSubItems = { "Textbox|Textbox", "Label|Label", "Button|Button", "CheckBox|CheckBox", "ComboBox|ComboBox", "ListBox|ListBox", "Option|Option", "Table|Table" };
        public string[] controlItems = { "Align|Align", "Size|Size", "Set|Set", "Set Value|SetValue", "Rules|Rules", "-", "Cut|Cut", "Copy|Copy", "Delete|Delete", "Properties|Properties" };
        public string[] controlAlignSubItems = { "Lefts", "Middles", "Rights", "-", "Tops", "Centers", "Bottoms" };
        public string[] controlSizeSubItems = { "Width", "Height", "Both", "-", "To Widest", "To Heighest" };
        public string[] controlSetSubItems = { "FieldType", "Alignment", "DataType", "FormatMask", "EDIFlag", "Visability", "Color", "Font", "Layer" };
        public string[] controlAlignmentSubItems = { "Left", "Center", "Right" };
        public string[] controlDataTypeSubItems = { "Integer", "Numeric", "Decimal", "Currency", "Date", "Text" };
        public string[] controlVisabilitySubItems = { "True", "False" };
        public string[] controlYesNoSubItems = { "Yes", "No" };
        public string[] controlColorSubItems = { "Backcolor", "Forecolor" };
        public string[] controlFontSubItems = { "Name", "Size", "Bold", "Italicised", "Underlined" };


        public bool showGrid = false;

        public List<string> xmlRecs = new List<string>();
        public List<IGenForm> forms = new List<IGenForm>();
        public IGenForm currentForm = null;

        // default colors
        public Color nonSelectedColor = Color.Orange;
        public Color nonEnterableSelectedColor = Color.LightBlue;
        public Color nonButtonSelectedColor = Color.LightGray;
        public Color selectedColor = Color.Tan;
        public Color comboBoxColor = Color.Chocolate;
        public Color checkBoxColor = Color.Turquoise;
        public Color buttonColor = Color.DarkGray;
        public bool compileErrors = false;
        public List<string> compileErrorsMessages = new List<string>();

        // layer collections
        // there will be 7 layers each with the fields in the group that are to be executed in the order of the layers.  Layer 0 is for last
        public List<List<string>> layerFields = new List<List<string>>();

        // datasaet collection
        public List<IGenDataset> datasets = new List<IGenDataset>();
        public ToolStripProgressBar progressBar = null;
        public ToolStripLabel progressPercentage = null;


        frmShowMessage genericMessage = null;


        public IGenFormsMain()
        {

            try
            {
                // set the connection string
                dataSource = IGenFormCommonRoutines.connectionString;
                dbms = IGenFormCommonRoutines.connectionDBMS;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".IGenFormsMain > " + ex.Message);
            }

            return;

        }





        public IGenFormsMain(string formGroupFileName)
        {

            try
            {
                // set the connection string
                dataSource = IGenFormCommonRoutines.connectionString;
                dbms = IGenFormCommonRoutines.connectionDBMS;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".IGenFormsMain(s) > " + ex.Message);
            }

            return;

        }





        public IGenFormsMain(IGenFormsMain oldObject)
        {

            try
            {
                // copy the passed object to this object

                // copy the base properties
                this.currentFormName = oldObject.currentFormName;
                this.dataset = oldObject.dataset;
                this.dataSource = oldObject.dataSource;
                this.fileName = oldObject.fileName;
                this.formGroupName = oldObject.formGroupName;
                this.name = oldObject.name;
                this.sql = oldObject.sql;
                this.visible = oldObject.visible;

                // now copy the sub class objects

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".IGenFormsMain(o) > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// IGenForm GetForm(string formName)
        /// Get the form specified by the form name
        /// </summary>
        /// <returns></returns>
        public IGenForm GetForm(string formName)
        {
            IGenForm _form = new IGenForm();

            try
            {
                for (int n = 0; n < forms.Count; n++)
                {
                    if (formName.ToUpper() == forms[n].name.ToUpper())
                    {
                        _form = forms[n];
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetForm(s) > " + ex.Message);
            }

            return _form;

        }




        /// <summary>
        /// IGenForm GetForm(int index)
        /// Get the form specified by the index
        /// </summary>
        /// <returns></returns>
        public IGenForm GetForm(int index)
        {
            IGenForm _form = new IGenForm();

            try
            {
                if (index >= 0 && index < forms.Count)
                {
                    _form = forms[index];
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetForm(i) > " + ex.Message);
            }

            return _form;

        }





        /// <summary>
        /// string LoadFormGroup(string formFile)
        /// Load the form group
        /// </summary>
        /// <returns></returns>
        public string LoadFormGroup(string formFile, TabControl tabForms)
        {
            string _formGroupName = "";

            try
            {
                LoadFormGroup(formFile, tabForms, false);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadFormGroup(s, tab) > " + ex.Message);
            }

            return _formGroupName;

        }



        /// <summary>
        /// string LoadFormGroup(string formFile)
        /// Load the form group
        /// </summary>
        /// <returns></returns>
        public string LoadFormGroup(string formFile, TabControl tabForms, bool runMode)
        {
            string _formGroupName = "";

            try
            {
                // load the form into the class
                if (formFile != "")
                {
                    // get the path for the form specified
                    formFileName = formFile;
                    formGroupPath = formFile.Substring(0, formFile.LastIndexOf('\\'));
                    List<string> _recs = CommonRoutines.ReadFile(formFile);
                    if (_recs.Count > 0)
                    {
                        List<string> _xmlRecords = CommonRoutines.ConvertXMLToNameValuePairs(_recs);
                        if (_xmlRecords.Count > 0)
                        {
                            // add the formgrouppath tag
                            _xmlRecords.Insert(0, "FormGroupPath=" + formGroupPath);
                            // fill in the form object with its fields
                            CreatePalletForms(_xmlRecords, tabForms); // this needs to be broken out
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadFormGroup(s, tab, b) > " + ex.Message);
            }

            return _formGroupName;

        }



        /// <summary>
        /// string LoadFormGroup(string formFile)
        /// Load the form group
        /// </summary>
        /// <returns></returns>
        public string LoadFormGroup(List<string> xmlRecs, TabControl tabForms, bool runMode)
        {
            string _formGroupName = "";

            try
            {
                // load the form into the class
                if (xmlRecs.Count > 0)
                {
                    formGroupPath = CommonRoutines.currentFormGroupPath;
                    List<string> _recs = xmlRecs;
                    if (_recs.Count > 0)
                    {
                        List<string> _xmlRecords = CommonRoutines.ConvertXMLToNameValuePairs(_recs);
                        if (_xmlRecords.Count > 0)
                        {
                            // add the formgrouppath tag
                            _xmlRecords.Insert(0, "FormGroupPath=" + formGroupPath);
                            // fill in the form object with its fields
                            CreatePalletForms(_xmlRecords, tabForms); // this needs to be broken out
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadFormGroup(l<s>, tab, b) > " + ex.Message);
            }

            return _formGroupName;

        }



        /// <summary>
        /// int CreatePalletForms(List<string> xmlRecords, TabControl tabForms)
        /// Create forms and fields on the passed tab control from the XML document
        /// </summary>
        /// <param name="xmlRecords"></param>
        private int CreatePalletForms(List<string> xmlRecords, TabControl tabForms)
        {
            List<string> _xmlRecords = xmlRecords;
            int _numForms = 0;

            try
            {
                // clear the tabs 
                tabForms.TabPages.Clear();

                // read the form defs from the xml
                _numForms = CreateForms(_xmlRecords);

                // now walk the forms and add them to the tabcontrol
                if (!IGenFormCommonRoutines.runMode)
                {
                    if (_numForms > 0)
                    {
                        DisplayForms(tabForms);
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreatePalletForms(<s>) >" + ex.Message);
            }

            return _numForms;

        }



        /// <summary>
        /// string LoadFormGroup(string formFile)
        /// Load the form group
        /// </summary>
        /// <returns></returns>
        public int CreateForms(List<string> xmlRecords)
        {
            int _numForms = 0;
            string _tagName = "";
            string _tagValue = "";
            bool _formFlag = false;
            bool _fieldFlag = false;
            bool _ruleFlag = false;
            bool _datasetFlag = false;
            IGenForm _form = null;
            IGenField _field = null;
            IGenDataset _dataset = null;
            string _formGroupPath = "";
            bool _variableFlag = false;
            string _variableName = "";
            string _variableValue = "";

            try
            {
                // clear the forms collection
                forms.Clear();

                // clear the datasets
                datasets.Clear();

                // walk the XML and create the entities
                for (int _recNo=0;_recNo < xmlRecords.Count;_recNo++)
                //foreach (string _xmlRecord in xmlRecords)
                {
                    string _xmlRecord = xmlRecords[_recNo];

                    // parse the string
                    int _offset = _xmlRecord.IndexOf('=');
                    if (_offset > 0)
                    {
                        _tagName = _xmlRecord.Substring(0, _offset);
                        _tagValue = _xmlRecord.Substring(_offset + 1);
                    }
                    else
                    {
                        _tagName = _xmlRecord;
                        _tagValue = "";
                    }

                    _tagName = _tagName.Trim().ToUpper();
                    _tagValue = _tagValue.Trim();

                    if (_tagName != "")
                    {
                        // process the tag
                        switch (_tagName)
                        {

                            case "FORMGROUPPATH":
                                _formGroupPath = _tagValue;
                                break;

                            case "FORMS":
                                _formFlag = false;
                                _fieldFlag = false;
                                _ruleFlag = false;
                                _form = null;
                                break;

                            case "FORM":
                                _formFlag = true;
                                _fieldFlag = false;
                                _ruleFlag = false;
                                // create a form object
                                _form = new IGenForm();
                                _form.formGroupPath = _formGroupPath;
                                forms.Add(_form);
                                break;

                            case "FIELDS":
                                _formFlag = false;
                                _fieldFlag = false;
                                _ruleFlag = false;
                                _field = null;
                                break;

                            case "FIELD":
                                _formFlag = false;
                                _fieldFlag = true;
                                _ruleFlag = false;
                                _field = new IGenField();
                                _field.parentFormName = _form.name;
                                //// add it
                                //_form.AddField(_field);
                                break;

                            case "FONT":
                                break;

                            case "/FONT":
                                break;

                            case "PROPERTIES":
                                break;

                            case "/PROPERTIES":
                                break;

                            case "RULES":
                                break;

                            case "/RULES":
                                break;

                            case "RULE":
                                break;

                            case "/RULE":
                                break;

                            case "VARIABLES":
                                _variableFlag = true;
                                break;

                            case "/VARIABLES":
                                _variableFlag = false;
                                break;

                            case "VARIABLE":
                                break;

                            case "/VARIABLE":
                                // write the variable to the csa properties
                                if (_variableName != "")
                                {
                                    formVariables.Add(new string[] { _variableName, _variableValue });
                                    // add to the csa area
                                    CSA.AddProperty("FORM",_variableName, _variableValue);
                                }
                                break;

                            case "/FIELD":
                                _formFlag = false;
                                _fieldFlag = false;
                                _ruleFlag = false;
                                // add it
                                _form.AddField(_field);
                                break;

                            case "/FORM":
                                _formFlag = false;
                                _fieldFlag = false;
                                _ruleFlag = false;
                                break;

                            case "/FORMS":
                                break;

                            // not the attribute tags
                            case "GROUP":
                                formGroupName = _tagValue;
                                break;

                            case "VERSION":
                                formGroupVersion = _tagValue;
                                break;

                            case "DATASOURCE":
                                // see if this datasource is valid by checking the connection pool.
                                originalDataSource = _tagValue;
                                dataSource = "";
                                for (int n = 0; n < DatabaseRoutines.connectionObjects.Count; n++)
                                {
                                    if (DatabaseRoutines.connectionObjects[n].connectionString.ToUpper() == _tagValue.ToUpper())
                                    {
                                        dataSource = _tagValue;
                                        break;
                                    }
                                }
                                // if datasource is blank, default to main connection
                                if (dataSource == "")
                                {
                                    dataSource = DatabaseRoutines.MainConnection;
                                }
                                break;

                            case "GROUPDATASET":
                                datasetName = "";
                                if (_tagValue != "")
                                {
                                    _dataset = new IGenDataset();
                                    _dataset.cursorName = formGroupName;
                                    datasetName = formGroupName;
                                    _dataset.sql = _tagValue;
                                    datasets.Add(_dataset);
                                    _dataset = new IGenDataset();
                                }
                                break;

                            case "FORMDATASET":
                                if (_formFlag)
                                {
                                    _form.datasetName = "";
                                    if (_tagValue != "")
                                    {
                                        _dataset = new IGenDataset();
                                        _dataset.cursorName = _form.name;
                                        _form.datasetName = _form.name;
                                        _dataset.sql = _tagValue;
                                        datasets.Add(_dataset);
                                        _dataset = new IGenDataset();
                                    }
                                }
                                break;

                            case "DATASET":
                                _datasetFlag = true;
                                _dataset = new IGenDataset();
                                break;

                            case "/DATASET":
                                _datasetFlag = false;
                                // add to the dataset collection
                                datasets.Add(_dataset);
                                _dataset = new IGenDataset();
                                break;

                            case "SQL":
                                if (_datasetFlag)
                                {
                                    _dataset.sql = _tagValue;
                                }
                                break;

                            case "DATASETNAME":
                                string _datasetName = _tagValue;
                                int _datasetOrdinal = -1;
                                // find it in the group datasets collection
                                for (int n = 0; n < datasets.Count; n++)
                                {
                                    if (datasets[n].cursorName.ToUpper() == _datasetName.ToUpper())
                                    {
                                        _datasetOrdinal = n;
                                        break;
                                    }
                                }
                                if (_formFlag)
                                {
                                    // add it to the datasetname list for the form
                                    _form.datasetOrdinals.Add(_datasetOrdinal);
                                    _form.datasetNames.Add(_datasetName);
                                    if (_form.datasetName == "")
                                    {
                                        // default name is the first one in the xml list
                                        _form.datasetName = _datasetName;
                                        _form.datasetOrdinal = _datasetOrdinal;
                                    }
                                }
                                else
                                {
                                    datasetName = _datasetName;        // for the GDS function
                                    datasetOrdinal = _datasetOrdinal;
                                }
                                break;

                            case "ROWSPERPAGE":
                                if (_formFlag)
                                {
                                    int _rowsPerPage = CommonRoutines.ConvertToInt(_tagValue);
                                    // check to see if this is a multipage form
                                    if (_form.multiPageForm.ToUpper() == "TRUE")
                                    {
                                        if (_rowsPerPage < 1)
                                        {
                                            // give an error!
                                            CommonRoutines.DisplayErrorMessage(_form.name + " - Rows per page must be greater than 0 if a multipage form");
                                        }
                                        else
                                        {
                                            _form.rowsPerPages.Add(_rowsPerPage);
                                            if (_form.rowsPerPage < 0)
                                            {
                                                _form.rowsPerPage = _rowsPerPage;
                                            }
                                        }
                                    }
                                }
                                break;

                            case "/SQL":
                                break;

                            case "IMAGE":
                                if (_formFlag)
                                {
                                    _form.imageName = _tagValue;
                                }
                                else
                                {
                                    if (_fieldFlag)
                                    {
                                        _field.imageName = _tagValue;
                                    }
                                    else
                                    {

                                    }
                                }
                                break;

                            case "COMMENTS":
                                if (_formFlag)
                                {
                                    _form.comments = _tagValue;
                                }
                                else
                                {
                                    if (_fieldFlag)
                                    {
                                        _field.comments = _tagValue;
                                    }
                                    else
                                    {
                                        comments = _tagValue;
                                    }
                                }
                                break;

                            case "NAME":
                                if (_formFlag)
                                {
                                    _form.name = _tagValue;
                                }
                                else
                                {
                                    if (_fieldFlag)
                                    {
                                        _field.name = _tagValue;
                                    }
                                    else
                                    {
                                        if (_datasetFlag)
                                        {
                                            _dataset.cursorName = _tagValue;
                                        }
                                        else
                                        {
                                            if (_variableFlag)
                                            {
                                                _variableName = _tagValue;
                                            }
                                        }
                                    }
                                }
                                break;

                            case "CREATESYMBOLICS":
                                if (_datasetFlag)
                                {
                                    _dataset.createSymbolics = CommonRoutines.ConvertToBool(_tagValue);
                                }
                                break;

                            case "FORMATMASK":
                                if (_formFlag)
                                {
                                }
                                else
                                {
                                    if (_fieldFlag)
                                    {
                                        _field.formatMask = _tagValue;
                                    }
                                }
                                break;

                            case "NEGNUMBERSRED":
                                if (_formFlag)
                                {
                                }
                                else
                                {
                                    if (_fieldFlag)
                                    {
                                        _field.AddProperty("NegNumbersRed", _tagValue);
                                    }
                                }
                                break;

                            case "NEGNUMBERSINPARENS":
                                if (_formFlag)
                                {
                                }
                                else
                                {
                                    if (_fieldFlag)
                                    {
                                        _field.AddProperty("NegNumbersInParens", _tagValue);
                                    }
                                }
                                break;

                            case "VISIBLE":
                                if (_formFlag)
                                {
                                    _form.visible = (_tagValue.ToUpper() == "TRUE") ? true : false;
                                }
                                else
                                {
                                    if (_fieldFlag)
                                    {
                                        _field.visible = (_tagValue.ToUpper() == "TRUE") ? true : false;
                                    }
                                    else
                                    {

                                    }
                                }
                                break;

                            case "WRAPTEXT":
                                if (_fieldFlag)
                                {
                                    _field.wrapText = (_tagValue.ToUpper() == "TRUE") ? true : false;
                                }
                                break;

                            case "FORMTYPE":
                                if (_formFlag)
                                {
                                    _form.formType = _tagValue;
                                }
                                break;

                            case "TITLE":
                                if (_formFlag)
                                {
                                    _form.title = _tagValue;
                                }
                                break;

                            case "MULTIPAGEFORM":
                                if (_formFlag)
                                {
                                    _form.multiPageForm = (_tagValue.ToUpper() == "TRUE") ? "True" : "False";
                                }
                                break;

                            case "PAGEBREAKS":
                                if (_formFlag)
                                {
                                    _form.pageBreaks = _tagValue;
                                }
                                break;

                            case "PROCESSINGORDER":
                                if (_formFlag)
                                {
                                    _form.processingOrder = CommonRoutines.ConvertToInt(_tagValue);
                                    if (_form.processingOrder == 0)
                                    {
                                        _form.processingOrder = 999;
                                    }
                                }
                                break;

                            case "TYPE":
                                if (_fieldFlag)
                                {
                                    _field.type = _tagValue;
                                }
                                else
                                {

                                }
                                break;

                            case "DATATYPE":
                                if (_fieldFlag)
                                {
                                    _field.dataType = _tagValue;
                                }
                                else
                                {

                                }
                                break;

                            case "SPACEDTEXTBOXSIZE":
                                if (_fieldFlag)
                                {
                                    _field.spacedTextBoxSize = CommonRoutines.ConvertToInt(_tagValue);
                                    if (_field.spacedTextBoxSize < 1)
                                    {
                                        _field.spacedTextBoxSize = 1;
                                    }
                                }
                                break;

                            case "ALIGNMENT":
                                if (_fieldFlag)
                                {
                                    _field.alignment = _tagValue;
                                }
                                else
                                {

                                }
                                break;


                            case "TOP":
                                if (_fieldFlag)
                                {
                                    _field.top = CommonRoutines.ConvertToInt(_tagValue);
                                }
                                else
                                {

                                }
                                break;

                            case "LEFT":
                                if (_fieldFlag)
                                {
                                    _field.left = CommonRoutines.ConvertToInt(_tagValue);
                                }
                                else
                                {

                                }
                                break;

                            case "WIDTH":
                                if (_fieldFlag)
                                {
                                    _field.width = CommonRoutines.ConvertToInt(_tagValue);
                                }
                                else
                                {

                                }
                                break;

                            case "HEIGHT":
                                if (_fieldFlag)
                                {
                                    _field.height = CommonRoutines.ConvertToInt(_tagValue);
                                }
                                else
                                {

                                }
                                break;

                            case "TAG":
                                if (_fieldFlag)
                                {
                                    _field.tag = _tagValue;
                                }
                                else
                                {

                                }
                                break;

                            case "FONTNAME":
                                if (_fieldFlag)
                                {
                                    _field.fontName = _tagValue;
                                }
                                else
                                {

                                }
                                break;

                            case "FONTSIZE":
                                if (_fieldFlag)
                                {
                                    _field.fontSize = CommonRoutines.ConvertToFloat(_tagValue);
                                }
                                else
                                {

                                }
                                break;

                            case "FONTBOLD":
                                if (_fieldFlag)
                                {
                                    _field.fontBold = (_tagValue.ToUpper() == "TRUE") ? true : false; ;
                                }
                                else
                                {

                                }
                                break;

                            case "FONTITALIC":
                                if (_fieldFlag)
                                {
                                    _field.fontItalic = (_tagValue.ToUpper() == "TRUE") ? true : false; ;
                                }
                                else
                                {

                                }
                                break;

                            case "FONTUNDERLINE":
                                if (_fieldFlag)
                                {
                                    _field.fontUnderline = (_tagValue.ToUpper() == "TRUE") ? true : false; ;
                                }
                                else
                                {

                                }
                                break;

                            case "TABINDEX":
                                if (_fieldFlag)
                                {
                                    _field.tabIndex = CommonRoutines.ConvertToInt(_tagValue);
                                }
                                else
                                {

                                }
                                break;

                            case "LIST":
                                if (_fieldFlag)
                                {
                                    _field.list = _tagValue;
                                }
                                else
                                {

                                }
                                break;

                            case "VALUE":
                                if (_fieldFlag)
                                {
                                    _field.value = _tagValue;
                                    // if it is not an expression
                                    if (_tagValue.IndexOf('=') < 0)
                                    {
                                        if (_field.type.ToUpper().IndexOf("CHECKBOX") >= 0)
                                        {
                                            bool _checkValue = CommonRoutines.ConvertToBool(_tagValue);
                                            _field.value = _checkValue.ToString();
                                            _field.checkedFlag = _checkValue;
                                        }
                                        else
                                        {
                                            // also set the caption if not set
                                            _field.caption = (_field.caption == "") ? _field.value : _field.caption;
                                            _field.text = (_field.text == "") ? _field.value : _field.text;
                                        }
                                    }
                                    _field.originalValue = _field.value;
                                    _field.compiledValue = _field.value;
                                }
                                else
                                {
                                    if (_variableFlag)
                                    {
                                        _variableValue = _tagValue;
                                    }
                                }
                                break;

                            case "TEXT":
                                if (_fieldFlag)
                                {
                                    _field.text = _tagValue;
                                }
                                else
                                {

                                }
                                break;

                            case "CAPTION":
                                if (_fieldFlag)
                                {
                                    _field.caption = _tagValue;
                                }
                                else
                                {

                                }
                                break;

                            case "INSTRUCTIONS":
                                if (_formFlag)
                                {
                                    _form.instructions = _tagValue;
                                }
                                else
                                {
                                    if (_fieldFlag)
                                    {
                                        _field.instructions = _tagValue;
                                    }
                                    else
                                    {

                                    }
                                }
                                break;

                            case "PRINTORIENTATION":
                                if (_formFlag)
                                {
                                    _form.printOrientation = _tagValue;
                                }
                                else
                                {
                                    if (_fieldFlag)
                                    {
                                    }
                                    else
                                    {

                                    }
                                }
                                break;

                            case "LAYER":
                                if (_fieldFlag)
                                {
                                    _field.layer = CommonRoutines.ConvertToInt(_tagValue);
                                }
                                else
                                {

                                }
                                break;

                            case "EDIFLAG":
                                if (_fieldFlag)
                                {
                                    _field.ediFlag = (_tagValue + "N").Substring(0, 1);
                                }
                                else
                                {

                                }
                                break;

                            case "EDINAME":
                                if (_fieldFlag)
                                {
                                    _field.ediName = _tagValue.ToUpper();
                                }
                                else
                                {

                                }
                                break;

                            case "EXEMPTFROMSUM":
                                if (_fieldFlag)
                                {
                                    _field.exemptFromSum = (_tagValue + "N").Substring(0, 1);
                                }
                                else
                                {

                                }
                                break;

                            default:
                                // all other tags
                                if (_fieldFlag)
                                {
                                    _field.AddProperty(_tagName, _tagValue);
                                }
                                else
                                {

                                }
                                break;

                        }
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreateForms > " + ex.Message);
            }

            _numForms = forms.Count;

            return _numForms;

        }




        public int CompileFormValues()
        {
            int _numFields = 0;

            try
            {
                // get the global default
                string _defaultSchema = ConfigRoutines.GetSetting("DefaultSchema");

                _numFields = CompileFormValues(_defaultSchema);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CompileFormValues > " + ex.Message);
            }

            return _numFields;

        }






        public int CompileFormValues(string useSchema)
        {
            int _numFields = 0;
            bool _fieldReferencesResolved = true;
            int _startIndex = 0;
            int _endIndex = 0;
            string _sql = "";
            string _tableName = "";
            string _schema = "";
            IGenForm _form = new IGenForm();
            IGenField _field = new IGenField();
            string _useSchema = useSchema.Trim();

            try
            {
                compileErrors = false;
                compileErrorsMessages.Clear();

                if (_useSchema.ToUpper() == "<DEFAULT>" || _useSchema == "")
                {
                    _useSchema = "dbo";
                }

                CommonRoutines.compileErrors.Items.Clear();

                DisplayProgress(0, 0);
                int _totalFieldsToCompile = 0;
                int _fieldToCompile = 0;

                CommonRoutines.compileErrors.Items.Add("Compiling...");

                sql = "";

                #region [Resolve Datasets]

                DisplayStatus("Resolving datasets...");

                foreach (IGenDataset _ds in datasets)
                {
                    if (_ds.sql != "")
                    {
                        // resolve symbolics 
                        _ds.sql = IGenFormCommonRoutines.ResolveSymbolics(_ds.sql);

                        // is this a WSTF table reference or a vw_WSTF view reference?
                        string _overrideSchema = ConfigRoutines.GetSetting("OverrideSchema").ToUpper();
                        if (_overrideSchema.IndexOf('T') == 0)
                        {
                            _sql = _ds.sql;
                            // get the table/view specified
                            int _fromOffset = _sql.ToUpper().IndexOf(" FROM ");
                            if (_fromOffset > 0)
                            {
                                // is there a where clause?
                                int _whereOffset = _sql.ToUpper().IndexOf(" WHERE ", _fromOffset);
                                if (_whereOffset > 0)
                                {
                                    _tableName = _sql.Substring(_fromOffset, _whereOffset - _fromOffset).Trim();
                                    // set a marker
                                    _sql = _sql.Substring(0, _fromOffset + 6) + "^" + _sql.Substring(_whereOffset);
                                }
                                else
                                {
                                    _tableName = _sql.Substring(_fromOffset);
                                    _sql = _sql.Substring(0, _fromOffset + 6) + "^";
                                }

                                _tableName = _tableName.Substring(5).Trim();
                                // is there a prefix on it?
                                int _lastPeriod = _tableName.LastIndexOf('.');
                                if (_lastPeriod > 0)
                                {
                                    _schema = _tableName.Substring(0, _lastPeriod);
                                    if (_schema.ToUpper() == "DBO")
                                    {
                                        _tableName = _tableName.Substring(_lastPeriod + 1);
                                        _schema = _useSchema;
                                    }
                                    else
                                    {
                                        _schema = "";
                                    }
                                }
                                else
                                {
                                    if (_tableName.ToUpper().IndexOf("WSTF") >= 0)
                                    {
                                        _schema = _useSchema;
                                    }
                                }

                                if (_schema != "")
                                {
                                    if (_tableName.ToUpper().IndexOf("WSTF") >= 0)
                                    {
                                        _tableName = "[" + _useSchema + "]." + _tableName;
                                    }
                                }

                                // replace the table
                                _sql = _sql.Replace("^", _tableName).Replace("..", ".");

                                _ds.sql = _sql;
                            }
                        }

                        // get the fields from the sql
                        string[] _fieldNames = DatabaseRoutines.GetSQLFields(_ds.sql);
                        _ds.fieldNames = _fieldNames;

                        // get a count of the rows this will find
                        _ds.numRows = _ds.GetRowCount();
                    }
                }

                #endregion

                #region [Compiling forms]

                DisplayStatus("Compiling forms...");

                // reset the forms with the original values
                for (int n = 0; n < forms.Count; n++)
                {
                    _form = forms[n];
                    _totalFieldsToCompile = _totalFieldsToCompile + _form.formFields.fields.Count;
                    _form.datasets.Clear();

                    // for each of the datasetordinals, create a dataset entry
                    for (int m = 0; m < _form.datasetOrdinals.Count; m++)
                    {
                        int _dsOrdinal = _form.datasetOrdinals[m];

                        if (_dsOrdinal < 0)
                        {
                            break;
                        }

                        if (m == 0)
                        {
                            _form.datasetOrdinal = _dsOrdinal;
                            _form.dataset = datasets[_dsOrdinal];
                        }

                        // clone a dataset 
                        IGenDataset _formDataset = datasets[_dsOrdinal].Clone();
                        _formDataset.referenceDatasetOrdinal = _dsOrdinal;
                        _form.datasets.Add(_formDataset);
                    }

                    // set the page collection
                    if (_form.datasetOrdinal >= 0)
                    {
                        _form.DeterminePages();
                    }

                    for (int m = 0; m < _form.formFields.fields.Count; m++)
                    {
                        // put here to fix the first textbox not retaining entered values
                        _field = _form.formFields.fields[m];

                        if (_field.name.ToUpper().IndexOf("FUEL_TAX_RATE_PER") >= 0)
                        {
                            int fdfd = 0;
                        }

                        switch (_field.type.ToUpper())
                        {
                            case "TEXTBOX":
                            case "COMBOBOX":
                            case "CHECKBOX":
                                break;

                            default:
                                _field.compiledValue = _field.originalValue;
                                _field.value = _field.originalValue;
                                _field.text = "";
                                _form.formFields.fields[m] = _field;
                                break;

                        }
                    }
                }

                #endregion


                bool _needsResolving = true;

                while (_needsResolving)
                {
                    _fieldReferencesResolved = true;
                    _needsResolving = false;

                    for (int n = 0; n < forms.Count; n++)
                    {
                        _form = forms[n];

                        // for each field, resolve any [field] references to their {formnumber:fieldnumber}
                        for (int m = 0; m < _form.formFields.fields.Count; m++)
                        {
                            // get the value
                            _field = _form.formFields.fields[m];

                            if (_field.name.ToUpper().IndexOf("FUEL_TAX_RATE_PER") >= 0)
                            {
                                int fdfd = 0;
                            }

                            _fieldToCompile = _fieldToCompile + 1;
                            DisplayProgress(_fieldToCompile, _totalFieldsToCompile);

                            string _value = _field.compiledValue;
                            string _compiledValue = _value;
                            string _fieldName = _field.name;

                            if (_value.Trim() != "" && _field.type.ToUpper() != "TEXTBOX")
                            {
                                // now loop until no more fields references are found
                                _needsResolving = true;

                                DisplayStatus("Resolving field " + _field.name + ", value=" + _value);

                                while (_needsResolving)
                                {
                                    _needsResolving = false;
                                    bool _keepChecking = true;

                                    #region [Functions]
                                    // check for functions that need expanding
                                    if (_value.ToUpper().IndexOf("=SUM(") >= 0 || _value.IndexOf("=ADD(") >= 0 ||
                                                _value.ToUpper().IndexOf("=SUBTRACT(") >= 0 || _value.IndexOf("=SUB(") >= 0 ||
                                                _value.ToUpper().IndexOf("=MULTIPLY(") >= 0 || _value.IndexOf("=MULT(") >= 0 ||
                                                _value.ToUpper().IndexOf("=DIVIDE(") >= 0 || _value.IndexOf("=DIV(") >= 0)
                                    {
                                        _needsResolving = true;

                                        // get the start...
                                        int _index = _value.IndexOf('=');

                                        // sum the fields given
                                        _startIndex = _value.IndexOf('(');
                                        _endIndex = _value.IndexOf(')');
                                        string _fields = "";
                                        if (_endIndex <= _startIndex)
                                        {
                                            _needsResolving = false;
                                            compileErrors = true;
                                            compileErrorsMessages.Add(_fieldName + " has missing ending paren: " + _compiledValue);
                                        }

                                        if (_endIndex > _startIndex)
                                        {
                                            _fields = _value.Substring(_startIndex + 1, _endIndex - _startIndex - 1);
                                            if (_fields != "")
                                            {
                                                if (_fields.IndexOf('*') >= 0)
                                                {
                                                    // get the list, exclude the field on if it is part of the pattern
                                                    _fields = GetFieldNames(forms[n].name, _fieldName, _fields);
                                                    // not parse it out and create [field] + [field] + [field] + ...
                                                    string[] _parts = _fields.Split('~');
                                                    _fields = "";
                                                    for (int k = 0; k < _parts.Length; k++)
                                                    {
                                                        if (_parts[k].Trim() != "")
                                                        {
                                                            //_fields = _fields + "[" + _parts[k].Trim() + "] + ";
                                                            // now determine the operator
                                                            if (_value.ToUpper().IndexOf("=SUM(") >= 0 || _value.IndexOf("=ADD(") >= 0)
                                                            {
                                                                _fields = _fields + "[" + _parts[k].Trim() + "] + ";
                                                            }
                                                            else
                                                            {
                                                                if (_value.ToUpper().IndexOf("=SUBTRACT(") >= 0 || _value.IndexOf("=SUB(") >= 0)
                                                                {
                                                                    _fields = _fields + "[" + _parts[k].Trim() + "] - ";
                                                                }
                                                                else
                                                                {
                                                                    if (_value.ToUpper().IndexOf("=MULTIPLY(") >= 0 || _value.IndexOf("=MULT(") >= 0)
                                                                    {
                                                                        _fields = _fields + "[" + _parts[k].Trim() + "] / ";
                                                                    }
                                                                    else
                                                                    {
                                                                        if (_value.ToUpper().IndexOf("=DIVIDE(") >= 0 || _value.IndexOf("=DIV(") >= 0)
                                                                        {
                                                                            _fields = _fields + "[" + _parts[k].Trim() + "] * ";
                                                                        }
                                                                    }
                                                                }

                                                            }
                                                        }
                                                    }

                                                    // get rid of the last +
                                                    if (_fields.Length > 0)
                                                    {
                                                        _fields = _fields.Substring(0, _fields.Length - 2);
                                                    }
                                                }
                                                else
                                                {
                                                    char _listChar = ' ';
                                                    // is there a list (separated by comma)
                                                    if (_fields.IndexOf(',') > 0)
                                                    {
                                                        _listChar = ',';
                                                    }
                                                    else 
                                                    {
                                                        if (_fields.IndexOf('+') > 0)
                                                        {
                                                            _listChar = '+';
                                                        }
                                                    }
                                                    if (_listChar != ' ')
                                                    {
                                                        string[] _fieldList = _fields.Split(_listChar);
                                                        if (_fieldList.Length > 1)
                                                        {
                                                            _fields = "";
                                                            for (int j = 0; j < _fieldList.Length; j++)
                                                            {
                                                                if (_fieldList[j].Trim() != "")
                                                                {
                                                                    _fields = _fields + "[" + _fieldList[j] + "] + ";
                                                                }
                                                            }
                                                            // get rid of the last +
                                                            _fields = _fields.Substring(0, _fields.Length - 2);
                                                        }
                                                    }
                                                    else
                                                    {
                                                        _fields = "[" + _fields + "]";
                                                    }
                                                }

                                                // now replace the functional part
                                                if (_index == 0)
                                                {
                                                    _value = _fields + _value.Substring(_endIndex + 1);
                                                }
                                                else
                                                {
                                                    _value = _value.Substring(0, _index) + _fields + _value.Substring(_endIndex + 1);
                                                }
                                                if (_value.Length > 0)
                                                {
                                                    _value = "=" + _value;
                                                }
                                            }
                                            else
                                            {
                                                _value = "";
                                            }

                                            // replace the compiled value
                                            _field = _form.formFields.fields[m];
                                            _field.compiledValue = _value;
                                            _field.text = "";
                                            _form.formFields.fields[m] = _field;

                                        }
                                    }

                                    #endregion 

                                    // check for fields
                                    if (_value.IndexOf('[') >= 0)
                                    {
                                        IGenField _tempField = _form.formFields.fields[m];
                                        // resolve the value to it's compiled format
                                        string _tempValue = ResolveFields(_tempField);
                                        _value = _tempValue;
                                        _fieldReferencesResolved = false;
                                        _numFields = _numFields + 1;
                                        _needsResolving = true;
                                    }

                                    #region [Check for GDS(]

                                    // check for GDS columns
                                    if (_value.ToUpper().IndexOf("GDS(") >= 0)
                                    {
                                        if (datasetName != "")
                                        {
                                            // replace the compiled value
                                            _field = _form.formFields.fields[m];
                                            _value = _field.value;
                                            // datasetname here is the default one specified for the form group
                                            _value = ResolveDS(datasetName, _field, _value, "GDS(");
                                        }
                                        else
                                        {
                                            _value = "";
                                        }
                                        _field.compiledValue = _value;
                                        _field.text = "";
                                        _form.formFields.fields[m] = _field;
                                        _keepChecking = false;
                                    }

                                    #endregion [Check for GDS(]
                                    
                                    #region [Check for DS(]

                                    if (_value.ToUpper().IndexOf("DS(") >= 0)
                                    {
                                        // replace the compiled value
                                        _field = _form.formFields.fields[m];
                                        //_value = _field.value;
                                        _value = ResolveDS(_form.datasetName, _field, _value, "DS(");
                                        _field.compiledValue = _value;
                                        _field.text = "";
                                        _form.formFields.fields[m] = _field;
                                        _keepChecking = false;
                                    }
                                    #endregion [Check for DS(]

                                    #region [Check for DSSUMFIELD(]

                                    if (_value.ToUpper().IndexOf("DSSUMFIELD(") >= 0)
                                    {
                                        // replace the compiled value
                                        _field = _form.formFields.fields[m];
                                        //_value = _field.value;
                                        _value = ResolveDS(_form.datasetName, _field, _value, "DSSUMFIELD(");
                                        _field.compiledValue = _value;
                                        _field.text = "";
                                        _form.formFields.fields[m] = _field;
                                        _keepChecking = false;
                                    }
                                    #endregion [Check for DSSUMFIELD(]

                                    #region [Check for DSBOF(]

                                    if (_value.ToUpper().IndexOf("DSBOF(") >= 0)
                                    {
                                        // replace the compiled value
                                        _field = _form.formFields.fields[m];
                                        //_value = _field.value;
                                        _value = ResolveDS(_form.datasetName, _field, _value, "DSBOF(");
                                        _field.compiledValue = _value;
                                        _field.text = "";
                                        _form.formFields.fields[m] = _field;
                                        _keepChecking = false;
                                    }
                                    #endregion [Check for DSEOF(]

                                    #region [Check for DSEOF(]

                                    if (_value.ToUpper().IndexOf("DSEOF(") >= 0)
                                    {
                                        // replace the compiled value
                                        _field = _form.formFields.fields[m];
                                        //_value = _field.value;
                                        _value = ResolveDS(_form.datasetName, _field, _value, "DSEOF(");
                                        _field.compiledValue = _value;
                                        _field.text = "";
                                        _form.formFields.fields[m] = _field;
                                        _keepChecking = false;
                                    }
                                    #endregion [Check for DSEOF(]

                                    #region [Check for DSLOOKUP(]

                                    if (_value.ToUpper().IndexOf("DSLOOKUP(") >= 0)
                                    {
                                        // syntax:  DSLOOKUP(<dsname|dsordinal!>columnname, filter>
                                        // replace the compiled value
                                        _field = _form.formFields.fields[m];
                                        //_value = _field.value;
                                        _value = ResolveDS(_form.datasetName, _field, _value, "DSLOOKUP(");
                                        _field.compiledValue = _value;
                                        _field.text = "";
                                        _form.formFields.fields[m] = _field;
                                        _keepChecking = false;
                                    }
                                    #endregion [Check for DSLOOKUP(]

                                    #region [Check for ONLASTPAGE(]

                                    if (_value.ToUpper().IndexOf("ONLASTPAGE(") >= 0)
                                    {
                                        // replace the compiled value
                                        _field = _form.formFields.fields[m];
                                        //_value = _field.value;
                                        _value = ResolveDS(_form.datasetName, _field, _value, "ONLASTPAGE(");
                                        _field.compiledValue = _value;
                                        _field.text = "";
                                        _form.formFields.fields[m] = _field;
                                        _keepChecking = false;
                                    }
                                    #endregion [Check for ONLASTPAGE(]

                                    #region [Check for ONPAGEBREAK(]

                                    if (_value.ToUpper().IndexOf("ONPAGEBREAK(") >= 0)
                                    {
                                        // syntax:  PAGEBREAK(dsname|dsordinal!, true stmt, false stmt>
                                        // replace the compiled value
                                        _field = _form.formFields.fields[m];
                                        //_value = _field.value;
                                        _value = ResolveDS(_form.datasetName, _field, _value, "ONPAGEBREAK(");
                                        _field.compiledValue = _value;
                                        _field.text = "";
                                        _form.formFields.fields[m] = _field;
                                        _keepChecking = false;
                                    }
                                    #endregion [Check for ONPAGEBREAK(]

                                    if (_keepChecking)
                                    {
                                        // regular
                                        #region [No functions found]
                                        // replace the compiled value
                                        _field = _form.formFields.fields[m];
                                        _field.compiledValue = _value;
                                        _field.text = "";
                                        _form.formFields.fields[m] = _field;
                                        #endregion
                                    }
                                }
                            }

                        }
                    }
                }

                DisplayStatus("Done!");

                DisplayProgress(0, 0);

                // were there any errors?
                if (compileErrors)
                {
                    DisplayStatus("Compiled with errors.");
                    CommonRoutines.compileErrors.Items.Add("Compiled with errors");

                    if (CommonRoutines.compileErrors == null)
                    {
                        CommonRoutines.compileErrors = new ListBox();
                    }
                    // output the errors
                    if (compileErrorsMessages.Count > 0)
                    {
                        // write out the compile errors.
                        CommonRoutines.WriteFile(".\\compile_errors.txt", compileErrorsMessages);

                        for (int n = 0; n < compileErrorsMessages.Count; n++)
                        {
                            CommonRoutines.compileErrors.Items.Add(compileErrorsMessages[n]);
                        }

                    }

                }

                CommonRoutines.compileErrors.Items.Add("Done.");


            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CompileFormValues > " + ex.Message);
            }

            // output the fields for debugging
            OutputFormInfo("CompiledFields.txt");

            return _numFields;

        }







        //public string ResolveGDS(IGenForm form, IGenField field, string value)
        //{
        //    IGenForm _form = form;
        //    IGenField _field = field;
        //    string _value = value.ToUpper();

        //    try
        //    {
        //        _value = _value.ToUpper();
        //        // get the field(s)
        //        int _openBracket = _value.IndexOf("GDS(");
        //        if (_openBracket >= 0)
        //        {
        //            while (_openBracket >= 0)
        //            {
        //                int _closeBracket = _value.IndexOf(")", _openBracket);

        //                if (_closeBracket > _openBracket)
        //                {
        //                    string _fieldReference = _value.Substring(_openBracket + 4, (_closeBracket - _openBracket - 4)).ToUpper();
        //                    string _fieldOrdinal = "-1";
        //                    bool _fieldFound = false;

        //                    if (dataset.Count > 0)
        //                    {
        //                        // get the field names for the global dataset
        //                        string[] _fieldNames = dataset[0];

        //                        // find the ordinal in the current forms dataset
        //                        for (int j = 0; j < _fieldNames.Length; j++)
        //                        {
        //                            if (_fieldNames[j].ToUpper() == _fieldReference)
        //                            {
        //                                _fieldOrdinal = j.ToString();
        //                                _fieldFound = true;
        //                                break;
        //                            }
        //                        }
        //                    }

        //                    // did it find it?
        //                    if (!_fieldFound)
        //                    {
        //                        // add to compile error messages
        //                        string _msg = "Global Dataset Field " + _fieldReference + " not found or misspelled";
        //                        compileErrors = true;
        //                        compileErrorsMessages.Add(_msg);
        //                    }


        //                    if (_openBracket == 0)
        //                    {
        //                        _value = "GDS(" + _fieldOrdinal + _value.Substring(_closeBracket);
        //                    }
        //                    else
        //                    {
        //                        _value = _value.Substring(0, _openBracket) + "GDS(" + _fieldOrdinal + _value.Substring(_closeBracket);
        //                    }
        //                }

        //                _openBracket = _value.IndexOf("GDS(", _openBracket + 1);
        //            }

        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResolveGDS > " + ex.Message);
        //    }

        //    return _value;

        //}





        public string ResolveDS(string datasetName, IGenField field, string value, string prefix)
        {
            IGenField _field = field;
            string _value = value.ToUpper();
            string _datasetName = datasetName;

            try
            {
                // check for DS columns
                _value = _value.ToUpper();

                if (_field.name == "1.1.5.C")
                {
                    int xxx = 0;
                }

                // format can be 
                //      DS(field):row 
                //      DS(cursorOrdinal!field):row
                //      DS(cursorName!field):row
                //      DSLOOKUP(cursorName!field, filter)
                //      PAGEBREAK(cursorName, true stmt, false stmt)
                
                // get the field(s)
                int _openBracket = _value.IndexOf(prefix.ToUpper());
                if (_openBracket >= 0)
                {
                    while (_openBracket >= 0)
                    {
                        if (_field.name == "1.1.5.C")
                        {
                            int xxx = 0;
                        }

                        // find the end of the DS(
                        int _closeBracket = _value.LastIndexOf(")", _openBracket);

                        // if there is no opening paren, then get the first closing paren
                        if (_value.Substring(0,1) != "(")
                        {
                            _closeBracket = _value.IndexOf(")", _openBracket);
                        }

                        string[] _fieldNames = { };

                        if (_closeBracket > _openBracket)
                        {
                            int _lenReference =  _closeBracket - _openBracket - prefix.Length;
                            string _fieldReference = _value.Substring(_openBracket + prefix.Length, _lenReference).ToUpper().Trim();

                            // get rid of enclosing parens...
                            bool _enclosedParens = true;
                            while (_enclosedParens)
                            {
                                _enclosedParens = false;
                                if (_fieldReference.Substring(0,1) == "(")
                                {
                                    _enclosedParens = true;
                                    _fieldReference = _fieldReference.Substring(1);
                                }

                                if (_fieldReference.Substring(_fieldReference.Length - 1) == ")" && _enclosedParens)
                                {
                                    _fieldReference = _fieldReference.Substring(0,_fieldReference.Length - 1);
                                }

                            }

                            _fieldReference = _fieldReference.Trim();

                            string _dsName = "";
                            string _fieldName = _fieldReference;
                            string _fieldOrdinal = "-1";
                            bool _fieldFound = false;
                            int _dsOrdinal = -1;

                            // see how many parts there are to the values in the parens
                            string[] _parts = _fieldReference.Split(',');

                            if (_parts.Length >= 1)
                            {
                                // now, the first part should be the ds!column spec.
                                _fieldName = _parts[0];

                                // check to see if the fieldname is already resolved to dsordinal:fieldordinal
                                if (_fieldName.IndexOf(':') < 0)
                                {
                                    string[] _dsParts = _fieldName.Split('!');

                                    if (_dsParts.Length > 1)
                                    {
                                        // a dsname or ordinal was specified
                                        _datasetName = _dsParts[0].Trim();
                                        _fieldName = _dsParts[1].Trim();
                                        if (prefix.ToUpper().IndexOf("ONLASTPAGE") == 0 || prefix.ToUpper().IndexOf("ONPAGEBREAK") == 0)
                                        {
                                            _fieldName = _dsParts[1];
                                        }
                                    }
                                    else
                                    {
                                        if (prefix.ToUpper().IndexOf("ONLASTPAGE") == 0 || prefix.ToUpper().IndexOf("ONPAGEBREAK") == 0)
                                        {
                                            // a dsname or ordinal was specified
                                            _datasetName = _dsParts[0];
                                            _fieldName = "";
                                            _fieldOrdinal = "";
                                        }
                                    }

                                    // get the cursor associated with this form
                                    if (_datasetName != "")
                                    {
                                        _dsOrdinal = -1;

                                        // may be one of the ordinal, field or name,field formats
                                        if (CommonRoutines.IsNumeric(_datasetName) &&
                                                    (CommonRoutines.ConvertToInt(_datasetName) >= 0 && CommonRoutines.ConvertToInt(_datasetName) < datasets.Count))
                                        {
                                            _dsOrdinal = CommonRoutines.ConvertToInt(_datasetName);
                                            _fieldNames = datasets[_dsOrdinal].results[0];
                                            if (_fieldNames.Length < 1)
                                            {
                                                _dsOrdinal = -1;
                                            }
                                        }

                                        if (_dsOrdinal < 0)
                                        {
                                            // not found, see if it is there by name...
                                            for (int m = 0; m < datasets.Count; m++)
                                            {
                                                if (datasets[m].cursorName.ToUpper() == _datasetName.ToUpper())
                                                {
                                                    _fieldNames = datasets[m].fieldNames;
                                                    _dsOrdinal = m;
                                                    break;
                                                }
                                            }
                                        }

                                    }

                                    if (_dsOrdinal >= 0)
                                    {
                                        _fieldFound = false;

                                        if (_fieldName != "")
                                        {
                                            if (prefix.ToUpper().IndexOf("ONLASTPAGE") == 0 || prefix.ToUpper().IndexOf("ONPAGEBREAK") == 0)
                                            {
                                                _fieldOrdinal = _fieldName;
                                            }
                                            else
                                            {
                                                // find the ordinal in the current forms dataset
                                                // trim and upper each one to resolve correctly
                                                for (int j = 0; j < _fieldNames.Length; j++)
                                                {
                                                    if (_fieldNames[j].Trim().ToUpper() == _fieldName.Trim().ToUpper())
                                                    {
                                                        _fieldOrdinal = j.ToString();
                                                        _fieldFound = true;
                                                        break;
                                                    }
                                                }

                                                // did it find it?
                                                if (!_fieldFound)
                                                {
                                                    // add to compile error messages
                                                    string _msg = "Form:" + _field.parentFormName + "  Dataset:" + _datasetName + "  Field:" + _fieldReference + " not found or misspelled";
                                                    compileErrors = true;
                                                    compileErrorsMessages.Add(_msg);
                                                }

                                            }
                                            _fieldOrdinal = ":" + _fieldOrdinal;
                                            
                                        }

                                        string _tempValue = "";

                                        if (_openBracket > 0)
                                        {
                                            _tempValue = _value.Substring(0, _openBracket);
                                        }

                                        _tempValue = _tempValue + prefix + _dsOrdinal + _fieldOrdinal;

                                        for (int m = 1; m < _parts.Length; m++)
                                        {
                                            _tempValue = _tempValue + "," + _parts[m];
                                        }

                                        _tempValue = _tempValue + _value.Substring(_closeBracket);

                                        _value = _tempValue;
                                    }
                                }
                            }
                        }

                        _openBracket = _value.IndexOf(prefix, _openBracket + 1);
                    }

                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResolveDS > " + ex.Message);
            }

            return _value;

        }






        public string ResolveFields(IGenField field)
        {
            string _value = field.compiledValue;
            string _formName = field.parentFormName.ToUpper();
            string _originalFormName = _formName;
            string _fieldName = field.name.ToUpper();
            string _originalFieldName = _fieldName;
            string _fieldAttribute = "VALUE";
            string _validAttributes = "VALUE;LIST;NAME;";

            try
            {
                // get the field(s)
                int _openBracket = _value.IndexOf('[');
                int _closeBracket = _value.IndexOf(']');

                // if no close bracket is found, exit with error...
                if (_closeBracket > _openBracket)
                {

                    while (_openBracket >= 0)
                    {
                        if (_closeBracket > _openBracket)
                        {
                            string _fieldReference = _value.Substring(_openBracket + 1, (_closeBracket - _openBracket - 1));
                            // is this a non explicit field? (no form. as a prefix)
                            string[] _parts = _fieldReference.ToUpper().Split('!');
                            if (_parts.Length > 0)
                            {
                                if (_parts.Length == 1)
                                {
                                    // just the field, it should be on the current form
                                    _fieldName = _parts[0];
                                    _formName = _originalFormName;
                                }
                                else
                                {
                                    if (_parts.Length == 2)
                                    {
                                        // could be form.field or field.attribute
                                        if (_validAttributes.IndexOf(_parts[1] + ";") >= 0)
                                        {
                                            // a valid attribute so assume field.attribute
                                            _fieldName = _parts[0];
                                            _fieldAttribute = _parts[1];
                                        }
                                        else
                                        {
                                            // not valid, so assume form.field and attribute = VALUE
                                            _formName = _parts[0];
                                            _fieldName = _parts[1];
                                            _fieldAttribute = "VALUE";
                                        }
                                    }
                                    else
                                    {
                                        // more than 2 assume form.field.attribute
                                        _formName = _parts[0];
                                        _fieldName = _parts[1];
                                        _fieldAttribute = _parts[2];
                                    }
                                }
                            }

                            string _formFieldIndexes = "ERR";
                            bool _fieldFound = false;

                            // find the formnumber:fieldnumber for the form and field referenced
                            for (int n = 0; n < forms.Count; n++)
                            {
                                if (forms[n].name.ToUpper() == _formName)
                                {
                                    // find the field
                                    for (int m = 0; m < forms[n].formFields.fields.Count; m++)
                                    {
                                        if (forms[n].formFields.fields[m].name.ToUpper() == _fieldName)
                                        {
                                            _formFieldIndexes = "{" + n + ":" + m + ":" + _fieldAttribute + "}";
                                            _fieldFound = true;
                                        }
                                    }
                                }
                            }

                            // was the field found?
                            if (!_fieldFound)
                            {
                                // add to compile error messages
                                string _msg = "Field {" + _originalFormName + "}-{" + _originalFieldName + "} references " + _fieldName + " but name not found or misspelled";
                                compileErrors = true;
                                compileErrorsMessages.Add(_msg);
                            }

                            if (_openBracket == 0)
                            {
                                _value = _formFieldIndexes + _value.Substring(_closeBracket + 1);
                            }
                            else
                            {
                                _value = _value.Substring(0, _openBracket) + _formFieldIndexes + _value.Substring(_closeBracket + 1);
                            }
                            _openBracket = _value.IndexOf('[');
                            _closeBracket = _value.IndexOf(']');
                        }
                        else
                        {
                            _openBracket = _closeBracket + 1;
                            _closeBracket = _value.IndexOf(']', _openBracket);
                        }

                    }
                }

                // replace the compiled value
                field.compiledValue = _value;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResolveFields > " + ex.Message);
            }

            return _value;

        }






        public string ResolveDSColumns(IGenField field)
        {
            string _value = field.compiledValue;
            string _formName = field.parentFormName.ToUpper();
            string _fieldName = field.name.ToUpper();

            try
            {

                // replace the compiled value
                field.compiledValue = _value;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResolveFields > " + ex.Message);
            }

            return _value;

        }







        /// <summary>
        /// List<string> GeneratePalletXML(string formFile, TabControl tabForms)
        /// Create the XML definitions for the controls on the pallet
        /// </summary>
        /// <returns></returns>
        public List<string> GeneratePalletXML(TabControl tabForms)
        {
            List<string> _recs = new List<string>();
            int _indent = 0;

            try
            {
                // create the xml to output
                _recs.Add("<?xml version=\"1.0\" encoding=\"utf-8\" ?> ");

                // output the formgroup level info
                _recs.Add("<Forms> ");
                _recs.Add("    <Group>" + formGroupName + "</Group> ");
                _recs.Add("    <Version>" + formGroupVersion + "</Version> ");
                _recs.Add("    <Datasource>" + dataSource + "</Datasource> ");
                _recs.Add("    <DataSetName>" + datasetName + "</DataSetName> ");
                _recs.Add("    <Comments>" + comments.Replace("'", "").Replace("\r", "").Replace("\n", "").Trim() + "</Comments> ");

                _recs.Add("    <Datasets>");
                // output the datasets if any
                for (int n = 0; n < datasets.Count; n++)
                {
                    _recs.Add("        <Dataset>");
                    _recs.Add("            <Name>" + datasets[n].cursorName + "</Name> ");
                    _recs.Add("            <CreateSymbolics>" + datasets[n].createSymbolics.ToString() + "</CreateSymbolics> ");
                    _recs.Add("            <SQL>" + datasets[n].sql + "</SQL> ");
                    _recs.Add("        </Dataset>");
                }
                _recs.Add("    </Datasets>");

                //_recs.Add("    <GroupDataSet>" + sql + "</GroupDataSet> ");

                foreach (IGenForm _form in forms)
                {
                    _recs.Add("    <Form>");
                    _recs.Add("        <Name>" + _form.name + "</Name> ");
                    _recs.Add("        <Title>" + _form.title + "</Title> ");
                    _recs.Add("        <Visible>" + _form.visible + "</Visible> ");
                    _recs.Add("        <Image>" + _form.imageName + "</Image> ");
                    _recs.Add("        <FormType>" + _form.formType + "</FormType> ");
                    _recs.Add("        <ImageHeight>" + _form.imageHeight.ToString() + "</ImageHeight> ");
                    _recs.Add("        <ImageWidth>" + _form.imageWidth.ToString() + "</ImageWidth> ");
                    _recs.Add("        <MultiPageForm>" + _form.multiPageForm + "</MultiPageForm> ");
                    if (_form.rowsPerPages.Count > 0)
                    {
                        for (int n = 0; n < _form.rowsPerPages.Count; n++)
                        {
                            _recs.Add("        <RowsPerPage>" + _form.rowsPerPages[n] + "</RowsPerPage> ");
                        }
                    }
                    else
                    {
                        _recs.Add("        <RowsPerPage>0</RowsPerPage> ");
                    }
                    _recs.Add("        <ProcessingOrder>" + _form.processingOrder.ToString() + "</ProcessingOrder> ");
                    _recs.Add("        <PrintOrientation>" + _form.printOrientation + "</PrintOrientation> ");
                    if (_form.datasetNames.Count > 0)
                    {
                        for (int n = 0; n < _form.datasetNames.Count; n++)
                        {
                            _recs.Add("        <DataSetName>" + _form.datasetNames[n] + "</DataSetName> ");
                        }
                    }
                    else
                    {
                        _recs.Add("        <DataSetName></DataSetName> ");
                    }
                    _recs.Add("        <Instructions>" + _form.instructions + "</Instructions> ");
                    _recs.Add("        <Comments>" + _form.comments.Replace("'","").Replace("\r", "").Replace("\n", "").Trim() + "</Comments> ");
                    _recs.Add("        <Fields>");

                    //foreach (Control _ctl in _pallet.Controls)
                    //{
                        //if (_ctl.Tag != null)
                        //{
                        //    IGenField _field = (IGenField)_ctl.Tag;
                        foreach (IGenField _field in _form.formFields.fields)
                        {

                            _recs.Add("            <Field>");
                            _recs.Add("                <Name>" + _field.name.Trim() + "</Name> ");
                            _recs.Add("                <Type>" + _field.type.Trim() + " </Type> ");
                            _recs.Add("                <DataType>" + _field.dataType.Trim() + " </DataType> ");
                            _recs.Add("                <Visible>" + _field.visible + " </Visible> ");
                            _recs.Add("                <Text>" + _field.text.Trim() + "</Text> ");
                            _recs.Add("                <Caption>" + _field.text.Trim() + "</Caption> ");
                            _recs.Add("                <Value>" + _field.value.Trim() + "</Value> ");
                            _recs.Add("                <FormatMask>" + _field.formatMask.Trim() + "</FormatMask> ");
                            _recs.Add("                <Instructions>" + _field.instructions + "</Instructions> ");
                            _recs.Add("                <List>" + _field.list.Trim() + "</List> ");
                            _recs.Add("                <Tag>" + _field.tag.Trim() + " </Tag> ");
                            _recs.Add("                <TabIndex>" + _field.tabIndex + " </TabIndex> ");
                            _recs.Add("                <Image>" + _field.imageName.Trim() + "</Image> ");
                            _recs.Add("                <Top>" + _field.top + "</Top> ");
                            _recs.Add("                <Left>" + _field.left + "</Left> ");
                            _recs.Add("                <Width>" + _field.width + "</Width> ");
                            _recs.Add("                <Height>" + _field.height + "</Height> ");
                            _recs.Add("                <Alignment>" + _field.alignment.Trim() + "</Alignment> ");
                            _recs.Add("                <Layer>" + _field.layer + "</Layer> ");
                            _recs.Add("                <EDIFlag>" + _field.ediFlag + "</EDIFlag> ");
                            _recs.Add("                <EDIName>" + _field.ediName.Trim().ToUpper() + "</EDIName> ");
                            _recs.Add("                <Font> ");
                            _recs.Add("                    <FontName>" + _field.fontName.Trim() + "</FontName> ");
                            _recs.Add("                    <FontSize>" + _field.fontSize.ToString().Trim() + "</FontSize> ");
                            _recs.Add("                    <FontBold>" + _field.fontBold + "</FontBold> ");
                            _recs.Add("                    <FontItalic>" + _field.fontItalic + "</FontItalic> ");
                            _recs.Add("                </Font> ");
                            _recs.Add("                <Comments>" + _field.comments.Replace("'", "").Replace("\r", "").Replace("\n", "").Trim() + "</Comments> ");
                            _recs.Add("                <exemptFromSum>" + _field.exemptFromSum + "</exemptFromSum> ");
                            _recs.Add("                <Properties> ");
                            //List<string[]> _properties = _field.GetProperties();
                            //for (int n = 0; n < _properties.Count; n++)
                            //{
                            //    string[] _parts = _properties[n];
                            //    _recs.Add("                    <Property> ");
                            //    _recs.Add("                        <Name>" + _parts[0].Trim() + "</Name> ");
                            //    _recs.Add("                        <Value>" + _parts[1].Trim() + "</Value> ");
                            //    _recs.Add("                    </Property> ");
                            //}
                            _recs.Add("                </Properties> ");

                            _recs.Add("                <Rules> ");
                            _recs.Add("                    <Rule></Rule> ");
                            _recs.Add("                </Rules> ");
                            _recs.Add("            </Field>");
                            
                        }

                    //}

                    _recs.Add("        </Fields>");
                    _recs.Add("    </Form>");
                }

                _recs.Add("</Forms> ");

                // now last thing, remove a  line feed/returns
                for (int n = 0; n < _recs.Count; n++)
                {
                    string _rec = _recs[n];
                    _rec = _rec.Replace("\n"," ").Replace("\r","");
                    _recs[n] = _rec;
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GeneratePalletXML > " + ex.Message);
            }

            return _recs;

        }





        public void DisplayStatus(string msg)
        {

            try
            {
                CommonRoutines.DisplayStatus(msg);
                if (statusLabel != null)
                {
                    statusLabel.Text = msg;
                    Application.DoEvents();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DisplayStatus > " + ex.Message);
            }

            return;

        }







        public void DisplayProgress(int entity, int totalEntities)
        {

            try
            {
                if (progressBar != null && progressBar.ProgressBar != null)
                {
                    if (entity == 0 || totalEntities == 0)
                    {
                        // clear the progress bar
                        progressBar.Minimum = 0;
                        progressBar.Maximum = 100;
                        progressBar.Visible = false;  // !progressBar.Visible;
                        if (progressPercentage != null)
                        {
                            progressPercentage.Text = "";
                            progressPercentage.Visible = progressBar.Visible;
                        }
                    }
                    else
                    {
                        progressBar.Visible = true;
                        // calc percentage
                        double _percent = (entity * 100 / totalEntities);
                        progressBar.Value = CommonRoutines.ConvertToInt(_percent.ToString());
                        Application.DoEvents();
                        if (progressPercentage != null)
                        {
                            progressPercentage.Text = progressBar.Value.ToString() + "%";
                        }
                    }
                }
                else
                {
                    int x = 0;
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DisplayProgress > " + ex.Message);
            }

            return;

        }








        public void DisplayForms(TabControl tabForms)
        {

            try
            {

                DisplayForms(tabForms, false);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DisplayForms > " + ex.Message);
            }

            return;

        }









        public void ExportForms()
        {

            try
            {
                // create a new excel workbook
                ExcelRoutines _excel = new ExcelRoutines();
                bool _workbookCreated = _excel.CreateNewExcelWorkbook();

                // walk the forms collection and export it to excel, a new tab for each form
                // for non-multipage forms, output each field as a row with the field name/comments and value
                for (int n = 0; n < forms.Count; n++)
                {
                    IGenForm _form = forms[n];

                    // create a worksheet for this form
                    if (_excel.CreateNewExcelWorksheet(_form.name))
                    {
                        List<IGenField> _fields = _form.formFields.fields;

                        List<string[]> _fieldValues = new List<string[]>();

                        if (_form.datasetOrdinal >= 0)
                        {
                            IGenDataset _ds = datasets[_form.datasetOrdinal];
                            int _pageNo = 1;

                            DisplayStatus("Processing form " + _form.name + " page " + _pageNo + "...");

                            // fill in the worksheet
                            // for a multipage form, reconfigure
                            if (_form.multiPageForm.ToUpper().IndexOf('T') == 0)
                            {
                                int _numRows = _ds.numRows;
                                if (_form.rowsPerPage < 1)
                                {
                                    _form.rowsPerPage = 1;
                                }

                                int _numPages = (_numRows / _form.rowsPerPage);
                                string _columnNames = "";
                                string _rowValue = "";
                                List<string> _rowValues = new List<string>();

                                // create a bunch of rows
                                for (int m = 0; m < 100; m++)
                                {
                                    _rowValues.Add("");
                                }

                                // get the next page of data 
                                int _position = (_pageNo - 1) * _form.rowsPerPage + 1;
                                _ds.results = _ds.GetRows(_position, _form.rowsPerPage);

                                while (_pageNo < _numPages)
                                {
                                    DisplayStatus("Processing form " + _form.name + " page " + _pageNo + "...");

                                    DisplayProgress(0, 0);

                                    _fieldValues.Clear();

                                    // get the next page of data 
                                    _position = (_pageNo - 1) * _form.rowsPerPage + 1;
                                    _ds.results = _ds.GetRows(_position, _form.rowsPerPage);

                                    // multipage, the rows to export will have a DS( and rowindex on them...
                                    for (int m = 0; m < _fields.Count; m++)
                                    {
                                        DisplayProgress(m + 1, _fields.Count);

                                        IGenField _field = _fields[m];
                                        string _columnName = _field.name;
                                        int _rowIndex = -1;
                                        // find the first ): and then the number
                                        int _offset = _columnName.LastIndexOf("_");
                                        if (_offset > 0)
                                        {
                                            // get the row referenced
                                            string _rowSpec = _columnName.Substring(_offset + 1).Trim();
                                            _columnName = _columnName.Substring(0, _offset);
                                            // go till the first space or the end of the field
                                            _offset = _rowSpec.IndexOf(" ");
                                            if (_offset > 0)
                                            {
                                                _rowSpec = _rowSpec.Substring(_offset);
                                            }
                                            _rowIndex = CommonRoutines.ConvertToInt(_rowSpec);

                                            if (_rowIndex == 1)
                                            {
                                                // add to the columns list
                                                _columnNames = _columnNames + _columnName + ";";
                                            }

                                            _field.text = _field.compiledValue;

                                            // if the value is blank, then give it a few chars to allow to select it
                                            string _value = _field.compiledValue.Trim();

                                            _value = IGenFormCommonRoutines.ResolveValue(this, _form.name, _field.name, _value);

                                            if (_rowIndex > 0 && _rowIndex <= _rowValues.Count)
                                            {
                                                _rowValues[_rowIndex] = _rowValues[_rowIndex] + _value + ";";
                                            }
                                        }

                                    }

                                    // add the column names
                                    if (_pageNo == 1 && _rowValues.Count > 0)
                                    {
                                        _rowValues[0] = _columnNames;
                                    }

                                    // walk the rows
                                    for (int k = 0; k < _rowValues.Count; k++)
                                    {
                                        if (_rowValues[k].Trim() != "")
                                        {
                                            _fieldValues.Add(_rowValues[k].Split(';'));
                                        }
                                    }

                                    int _startRow = ((_pageNo - 1) * _form.rowsPerPage) + 1;
                                    _excel.WriteToWorksheet(_fieldValues, _startRow);
                                    _pageNo = _pageNo + 1;

                                    if (_pageNo > 3)
                                    {
                                        break;
                                    }

                                }
                            }
                        }
                        else
                        {
                            for (int m = 0; m < _fields.Count; m++)
                            {
                                _fieldValues.Add(new string[] { _fields[m].name, _fields[m].text });
                            }
                            _excel.WriteToWorksheet(_fieldValues, 1);
                        }

                    }
                }

                // get the name of the workbook to save
                string _workbookName = CommonRoutines.SaveDialog("xlsx", "");

                if (_workbookName != "")
                {
                    _excel.SaveWorksheet(_workbookName);
                }

                _excel.CloseWorkbook();

                DisplayStatus("Ready");

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ExportForms(Tab, b) > " + ex.Message);
            }

            return;

        }







        public void DisplayForms(TabControl tabForms, bool runMode)
        {

            try
            {
                // clear the tab control
                tabForms.TabPages.Clear();

                foreach (IGenForm _form in forms)
                {
                    if (_form.visible)
                    {
                        // create a new tab 
                        TabPage _tabPage = new TabPage();

                        _tabPage.Name = _form.name;
                        _tabPage.Text = (_form.title == "") ? _form.name : _form.title;
                        _tabPage.Tag = _form.name;
                        tabForms.TabPages.Add(_tabPage);

                        CommonRoutines.DisplayMessageStatus("Processing display of form " + _form.name);

                        // create a new pallet
                        PictureBox _pallet = new PictureBox();
                        _pallet.Visible = true;
                        _pallet.Top = 0;
                        _pallet.Left = 0;
                        _pallet.Width = 2000;
                        _pallet.Height = 2000;
                        _pallet.Tag = _form;

                        string _imageName = _form.imageName;
                        // reset the path
                        if (_imageName.LastIndexOf('\\') > 0)
                        {
                            _imageName = _imageName.Substring(_imageName.LastIndexOf('\\') + 1);
                        }

                        string _imagePath = ConfigRoutines.GetSetting("FormImagesFolder");
                        if (_imagePath == "")
                        {
                            _imagePath = CommonRoutines.currentPath + "\\formimages";
                        }

                        // see if an image exists in the same folder as the formgroup
                        if (_form.formGroupPath != "")
                        {
                            string _tempImageName = _form.formGroupPath + "\\" + _imageName;
                            if (CommonRoutines.FileExists(_tempImageName))
                            {
                                // good!
                                _imageName = _form.formGroupPath + "\\" + _imageName;
                            }
                            else
                            {
                                _imageName = _imagePath + "\\" + _imageName;
                            }
                        }
                        else
                        {
                            _imageName = _imagePath + "\\" + _imageName;
                        }

                        if (CommonRoutines.FileExists(_imageName))
                        {
                            // replace the form imagename
                            _form.imageName = _imageName;

                            Image _tempImage = null;

                            // is it a pdf?
                            string _extension = _imageName.Substring(_imageName.LastIndexOf('.')).ToUpper();
                            if (_extension == ".PDF")
                            {
                                // load the image from the pdf first page
                                IGenPDFGhostScript _pdfAPI = new IGenPDFGhostScript();
                                _tempImage = _pdfAPI.CreateImageFromPDF(_imageName, "./tmpimage.png", "png16m", 1, 1, 96, 96);
                                // delete the temp image
                                CommonRoutines.DeleteFile("./tmpimage.png", false, false, true);
                            }
                            else
                            {
                                _tempImage = Image.FromFile(_imageName);
                            }

                            if (_tempImage != null)
                            {
                                // load the image into the pallet
                                _pallet.SizeMode = PictureBoxSizeMode.Normal;
                                _pallet.Image = _tempImage;
                                _form.originalImage = new Bitmap(_tempImage);
                                PictureBox _gridPallet = new PictureBox();
                                _gridPallet.Image = new Bitmap(_tempImage);
                                _form.gridImage = CommonRoutines.DrawGrid(_gridPallet, 20);
                                _pallet.Refresh();
                                
                            }

                            // free up the image file
                            _tempImage = null;
                        }

                        _tabPage.Controls.Add(_pallet);

                        // now add the fields
                        for (int n = 0; n < _form.formFields.fields.Count; n++)
                        {
                            IGenField _field = _form.formFields.fields[n];
                            if (_field.name.ToUpper().IndexOf("$HANDLE") < 0)
                            {
                                if (_field.name == "1.5.19.0")
                                {
                                    int xxxxy = 0;
                                }
                                Control _control = CreateFieldControl(_pallet, _field, runMode);
                                _control.KeyUp += new KeyEventHandler(Control_KeyUp);
                                _field.controlContainer = _control;
                                _field.SetHandles();

                            }
                        }

                    }
                }

                Application.DoEvents();

                CommonRoutines.DisplayMessageStatus("Done.");
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DisplayForms > " + ex.Message);
            }

            return;

        }




        void Control_KeyUp(object sender, KeyEventArgs e)
        {
            Control _control = (Control)sender;

            try
            {
                //if (_control.Tag != null && _control.Tag.GetType().Name.ToUpper().IndexOf("IGENFIELD") >= 0)
                //{
                //    IGenField _field = (IGenField)_control.Tag;
                //    _field.manualInput = true;
                //    _field.text = _control.Text;
                //    _field.originalValue = _control.Text;
                //    _field.value = _field.text;
                //    _control.Tag = _field;
                //}
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + "._control_KeyPress > " + ex.Message);
            }

            return;

        }





        public int ProcessForms()
        {
            int _numRecs = 0;

            try
            {
                _numRecs = ProcessForms(null);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ProcessForms > " + ex.Message);
            }

            return _numRecs;

        }





        public int ProcessForms(ToolStripLabel statusControl)
        {
            int _numRecs = 0;
            bool _processForm = true;
            string _formName = "";
            string _title = "";
            string _value = "";

            try
            {
                if (statusControl != null)
                {
                    statusLabel = statusControl;
                }

                DisplayStatus("Starting processing...");

                IGenFormCommonRoutines.severeError = false;
                IGenFormCommonRoutines._processMessages.Clear();

                DisplayStatus("Sorting forms...");

                // sort the forms by processing order
                List<int> _sortedForms = new List<int>();
                for (int n = 0; n < forms.Count; n++)
                {
                    _sortedForms.Add(n);
                }

                bool _sorted = false;
                while (!_sorted)
                {
                    _sorted = true;
                    for (int n = 0; n < _sortedForms.Count - 1; n++)
                    {
                        int k = _sortedForms[n];
                        int l = _sortedForms[n + 1];
                        if (forms[k].processingOrder > forms[l].processingOrder)
                        {
                            // swap
                            int _saveForm = _sortedForms[n];
                            _sortedForms[n] = _sortedForms[n + 1];
                            _sortedForms[n + 1] = _saveForm;
                            _sorted = false;
                        }
                    }
                }

                DisplayStatus("Executing dataset SQLs...");

                // go thru and execute the datasets
                foreach (IGenDataset _ds in datasets)
                {
                    Application.DoEvents();
                    if (cancelFlag)
                    {
                        return -1;
                    }
                    _ds.Execute();

                }

                DisplayStatus("Processing Layers...");

                // now sort the layers to be in the sorted form order
                // reset the layers
                layerFields.Clear();
                for (int n = 0; n < 8; n++)
                {
                    layerFields.Add(new List<string>());
                }

                DisplayStatus("Resetting forms and resolving form datasets...");

                for (int n = 0; n < _sortedForms.Count; n++)
                {
                    int _index = _sortedForms[n];

                    IGenForm _form = forms[_index];

                    if (_form.datasetOrdinal < 0)
                    {
                        _form.datasetOrdinal = -1;

                        if (_form.datasetName != "")
                        {
                            // set the dataset ordinal
                            for (int m = 0; m < datasets.Count; m++)
                            {
                                if (_form.datasetName.ToUpper() == datasets[m].cursorName.ToUpper())
                                {
                                    _form.datasetOrdinal = m;
                                    // if a multi-row form, then calc the total pages and such
                                    if (_form.multiPageForm.ToUpper().IndexOf("T") == 0)
                                    {
                                        _form.currentPage = 1;
                                        _form.currentRow = 1;
                                        _form.totalRows = datasets[m].numRows;
                                        double _numPages = CommonRoutines.ConvertToDouble(datasets[m].numRows.ToString()) / CommonRoutines.ConvertToDouble(_form.rowsPerPage.ToString());
                                        _form.totalPages = CommonRoutines.ConvertToInt(_numPages.ToString());
                                        if (_numPages > _form.totalPages)
                                        {
                                            _form.totalPages = _form.totalPages + 1;
                                        }
                                    }
                                    else
                                    {
                                    }
                                    break;
                                }
                            }
                        }
                    }

                    // determine the pages, if any, for this form
                    _form.DeterminePages();

                    for (int m = 0; m < _form.formFields.fields.Count; m++)
                    {
                        // get the layer
                        int _layer = _form.formFields.fields[m].layer;
                        _layer = (_layer < 0 || _layer > 7) ? 0 : _layer;
                        layerFields[_layer].Add(_index + "." + m);
                    }
                }

                // output the fields for debugging
                OutputFormInfo("PreRefresh.txt");

                DisplayStatus("Resetting fields...");

                int _totalFieldsToProcess = 0;

                // refresh the text
                for (int n = 0; n < forms.Count; n++)
                {
                    IGenForm _form = forms[n];

                    _totalFieldsToProcess = _totalFieldsToProcess + forms[n].formFields.fields.Count;

                    for (int m = 0; m < forms[n].formFields.fields.Count; m++)
                    {
                        IGenField _field = forms[n].formFields.fields[m];

                        switch (_field.type.ToUpper())
                        {
                            case "BUTTON":
                                _field.value = _field.originalValue.Trim();
                                break;

                            case "TEXTBOX":
                                // leave it alone
                                break;

                            default:
                                if (_field.value == "")
                                {
                                    _field.text = _field.caption;
                                }
                                else
                                {
                                    _field.text = _field.compiledValue;
                                    // if the value is blank, then give it a few chars to allow to select it
                                    _value = _field.compiledValue.Trim();
                                }
                                break;

                        }
                    }

                }

                // output the fields for debugging
                OutputFormInfo("PostRefresh.txt");

                // output the layers for debugging
                OutputLayerInfo("Layers.txt");

                int _processingField = 0;
                DisplayProgress(0, 0);

                int _firstLayer = 1;
                int _lastLayer = layerFields.Count;
                for (int i = 0; i < 2; i++)
                {
                    _firstLayer = (i == 0) ? 1 : 0;
                    _lastLayer = (i == 0) ? layerFields.Count : 1;

                    // first execute the layers in the sorted form order
                    for (int k = _firstLayer; k < _lastLayer; k++)
                    {
                        int _layer = k;

                        // do all the fields for this form in the current layer
                        for (int m = 0; m < layerFields[k].Count; m++)
                        {
                            Application.DoEvents();
                            if (cancelFlag)
                            {
                                return -1;
                            }
                            DisplayStatus("Processing layer " + k + ", field " + layerFields[k][m] + "...");

                            _processingField = _processingField + 1;
                            DisplayProgress(_processingField, _totalFieldsToProcess);


                            string[] _parts = layerFields[k][m].Split('.');
                            if (_parts.Length > 1)
                            {
                                bool _processField = true;

                                int _formIndex = CommonRoutines.ConvertToInt(_parts[0]);
                                int _fieldIndex = CommonRoutines.ConvertToInt(_parts[1]);

                                if (_formIndex < 0 || _formIndex > (forms.Count - 1))
                                {
                                    CommonRoutines.DisplayErrorMessage("ProcessForms: Form index " + _formIndex + " out of range");
                                    _processField = false;
                                }
                                else
                                {
                                    if (_fieldIndex < 0 || _fieldIndex > (forms[_formIndex].formFields.fields.Count - 1))
                                    {
                                        CommonRoutines.DisplayErrorMessage("ProcessForms: Form field index " + _formIndex + "." + _fieldIndex + " out of range");
                                        _processField = false;
                                    }
                                }

                                if (_processField)
                                {
                                    IGenForm _form = forms[_formIndex];

                                    // evaluate the field
                                    IGenField _field = _form.formFields.fields[_fieldIndex];

                                    CommonRoutines.DisplayStatus("Processing field " + _field.name + " on form " + _form.name + "...");

                                    // for a test, ignore
                                    if (_field.name.ToUpper() == "Point_Of_Origin_Terminal_1".ToUpper())
                                    {
                                        int y = 0;
                                    }

                                    _value = _field.text;

                                    IGenFormCommonRoutines.currentIGenForm = _form;

                                    // check the text to see if it is an assignment
                                    if (_value.IndexOf('=') == 0)
                                    {
                                        // resolve the value
                                        try
                                        {
                                            _value = IGenFormCommonRoutines.ResolveValue(this, _formIndex, _fieldIndex, _value);
                                            // if this is a numeric field then set to zero if blank
                                            if (_value == "")
                                            {
                                            }

                                            // is this a combo box?
                                            if (_field.type.ToUpper().IndexOf("COMBOBOX") >= 0)
                                            {
                                                _field.list = _value;
                                                _value = "";
                                            }
                                        }
                                        catch (Exception ex)
                                        {
                                            CommonRoutines.DisplayErrorMessage("Processforms.Resolvevalue: " + _formIndex + "." + _fieldIndex + "=" + _value);
                                        }
                                    }
                                    else
                                    {
                                        // just normal processing
                                        // any symbolic variables?
                                        _value = IGenFormCommonRoutines.ResolveSymbolics(_value);
                                    }

                                    _field.text = _value;
                                    _form.formFields.fields[_fieldIndex] = _field;
                                }

                            }


                        }
                    }
                }

                // output the fields for debugging
                OutputFormInfo("ProcessedFields.txt");

                DisplayProgress(0, 0);

                // save the form values to the database
                //SaveForms();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ProcessForms > " + ex.Message);
            }

            return _numRecs;

        }





        public string RedisplaySelectedForm(PictureBox pallet, string formName)
        {
            string _result = "";

            try
            {
                _result = RedisplaySelectedForm(pallet, formName, true, true);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ProcessForms > " + ex.Message);
            }

            return _result;

        }





        /// <summary>
        /// string RedisplaySelectedForm()
        /// Reisplay the current form
        /// </summary>
        public string RedisplaySelectedForm(PictureBox pallet, string formName, bool displayForm, bool resolveFields)
        {
            string _result = "";

            try
            {

                // process the form controls on each form to do forward and backward references
                //ProcessForms();

                // get the current form
                IGenForm _form = this.GetForm(formName);
                IGenFormCommonRoutines.currentIGenForm = _form;
                PictureBox _pallet = pallet;

                DisplayStatus("Loading page " + formName + " data....");

                DisplayProgress(0, 0);

                for (int m = 0; m < _form.formFields.fields.Count; m++)
                {
                    IGenField _field = _form.formFields.fields[m];

                    if (cancelFlag)
                    {
                        break;
                    }

                    if (_field.name.ToUpper() == "1.1.6.C")
                    {
                        int xxxxxx = 0;
                    }

                    DisplayProgress((m + 1), _form.formFields.fields.Count);

                    if (_field.name.ToUpper() == "Total_Description".ToUpper())
                    {
                        int xyz = 0;
                    }

                    string _value = _field.text;

                    if (_field.value != "")
                    {
                        string _fieldText = _field.text;

                        if (resolveFields)
                        {
                            _field.text = _field.compiledValue;

                            // if the value is blank, then give it a few chars to allow to select it
                            _value = _field.compiledValue.Trim();

                            _value = IGenFormCommonRoutines.ResolveValue(this, _form.name, _field.name, _value);
                        }
                    }
                    else
                    {
                        if (_field.caption != "")
                        {
                            _value = _field.caption;
                        }
                    }

                    _field.text = IGenFormCommonRoutines.FormatValue(_value, _field.dataType);

                    // check the value to see if there is nothing but extraneous characters . . negate if so
                    string _checkValue = _field.text.Trim();
                    if ((_checkValue == @",") || (_checkValue == @", "))
                    {
                        _field.text = "";
                    }

                    switch (_field.type.ToUpper())
                    {
                        case "BUTTON":
                            _field.value = _field.originalValue.Trim();
                            break;

                        case "CHECKBOX":
                            break;

                    }

                    _form.formFields.fields[m] = _field;
                }

                if (_form != null && displayForm)
                {
                    //_pallet.Controls.Clear();

                    // now add the fields
                    for (int n = 0; n < _pallet.Controls.Count; n++)
                    {
                        if (cancelFlag)
                        {
                            break;
                        }

                        Control _control = _pallet.Controls[n];
                        if (_control.Tag != null && _control.Tag.GetType().Name.ToUpper().IndexOf("IGENFIELD") >= 0)
                        {
                            IGenField _field = (IGenField)_control.Tag;
                            switch (_field.type.ToUpper())
                            {
                                case "CHECKBOX":
                                    if (_control.GetType().Name.ToUpper().IndexOf("CHECKBOX") >= 0)
                                    {
                                        CheckBox _checkBox = (CheckBox)_control;
                                        _checkBox.Checked = CommonRoutines.ConvertToBool(_field.text);
                                    }
                                    break;

                                case "PICTURE":
                                    // if the text var is not filled in, prompt for the image
                                    PictureBox _pic = (PictureBox)_control;
                                    string _fileName = _field.imageName;
                                    _pic.Image = CommonRoutines.LoadTransparentImage(_fileName);
                                    _pic.SizeMode = PictureBoxSizeMode.StretchImage;
                                    _pic.BackColor = Color.Transparent;
                                    break;

                                default:
                                    // if the value is blank, show the caption
                                    if (_field.text == "" && _field.value == "")
                                    {
                                        _control.Text = _field.caption;
                                    }
                                    else
                                    {
                                        // if the field is a spaced text field, then format it here...
                                        if (_field.dataType.ToUpper() == "SPACEDTEXT")
                                        {
                                            // break up the text putting spaces between chars to allow for boxes on the image
                                            // get the box size to determine how to format the text.  this is the number of pixels the box the char goes in is wide
                                            // space the chars on the control
                                            SpaceText(_control, _field);
                                        }
                                        else
                                        {
                                            _control.Text = _field.text;
                                        }
                                    }
                                    break;

                            }

                            _control.Visible = _field.visible;
                            _control.ForeColor = CommonRoutines.GetColorFromString(_field.foreColor);
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".RedisplaySelectedForm(p,s) > " + ex.Message);
                _result = ex.Message;
            }

            DisplayStatus("Ready");

            DisplayProgress(0, 0);

            return _result;

        }




        public void SpaceText(Control control, IGenField field)
        {
            string _newValue = "";
            int _boxSize = field.spacedTextBoxSize;

            try
            {
                control.Controls.Clear();

                // get the form
                IGenForm _form = GetForm(field.parentFormName);
                int _zoomPct = _form.zoomPCT;

                // get the font for the field
                Font _font = new Font(field.fontName, field.fontSize);
                int _fontHeight = _font.Height;

                // create controls on this control
                string _value = field.text;

                for (int n=0;n<_value.Length;n++)
                {
                    string _char = _value.Substring(n, 1);

                    Label _charLabel = new Label();
                    _charLabel.Top = 1;
                    _charLabel.Height = (_fontHeight + 1) * (_zoomPct / 100);
                    _charLabel.Width = _charLabel.Height;
                    _charLabel.Left = (n * (_charLabel.Width + _boxSize)) - 1;
                    _charLabel.Text = _char;
                    _charLabel.Visible = true;
                    control.Controls.Add(_charLabel);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SpaceText(c,o) > " + ex.Message);
            }

            return;

        }








        public Control CreateFieldControl(Control pallet,
                                   IGenField field)
        {

            Control _control = new Control();

            try
            {
                _control = CreateFieldControl(pallet, field, false);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreateFieldControl(c, o) > " + ex.Message);
            }

            return _control;
        }





        public Control CreateFieldControl(Control pallet,
                                   IGenField field,
                                   bool runMode)
        {
            Control _control = new Control();
            Image _img = null;
            string _list = "";

            try
            {
                bool _makeOpaque = (ConfigRoutines.GetSetting("MakeLabelsOpaque").ToUpper().IndexOf('T') == 0) ? true : false;

                // create a control based on the field type
                _control = CreateControlOfType(field.type, runMode);

                _control.Name = field.name;
                _control.Text = field.text;

                if (runMode)
                {
                    switch (field.dataType.ToUpper())
                    {
                        case "TEXT":
                            break;

                        case "INTEGER":
                        case "NUMERIC":
                        case "CURRENCY":
                        case "DECIMAL":
                            // get the fields round up/down
                            string _roundIntegers = field.GetProperty("RoundIntegers").ToUpper();
                            _control.Text = IGenFormCommonRoutines.FormatValue(field.text, field.dataType, -1, field.formatMask, _roundIntegers);
                            field.alignment = "Right";
                            break;

                    }
                }
                _control.Left = field.left;
                _control.Top = field.top;
                _control.Width = field.width;
                _control.Height = field.height;
                _control.Parent = pallet;

                if (runMode)
                {
                    switch (field.type.ToUpper())
                    {
                        case "LABEL":
                            if (_makeOpaque)
                            {
                                _control.BackColor = Color.White;
                            }
                            else
                            {
                                _control.BackColor = Color.Transparent;
                            }
                            break;

                        case "BUTTON":
                            _control.BackColor = buttonColor;
                            break;

                        case "TEXTBOX":
                            _control.BackColor = Color.LightBlue;
                            break;

                        case "COMBOBOX":
                            _control.BackColor = Color.LightBlue;
                            break;

                        case "CHECKBOX":
                            _control.BackColor = Color.Transparent;
                            break;

                        default:
                            break;

                    }
                }
                else
                {
                    if (field.layer > 0 && field.layer <= 7)
                    {
                        _control.BackColor = IGenFormCommonRoutines._layerColors[field.layer];
                    }
                    else
                    {
                        // if it is a enterable control, then show it as the nonSelectEnterableColor
                        switch (field.type.ToUpper())
                        {
                            case "LABEL":
                                _control.BackColor = nonSelectedColor;
                                break;

                            case "BUTTON":
                                _control.BackColor = buttonColor;
                                break;

                            case "TEXTBOX":
                                _control.BackColor = nonEnterableSelectedColor;
                                break;

                            case "COMBOBOX":
                                _control.BackColor = comboBoxColor;
                                break;

                            case "CHECKBOX":
                                _control.BackColor = checkBoxColor;
                                break;

                            default:
                                _control.BackColor = nonEnterableSelectedColor;
                                break;

                        }
                    }
                }

                if (runMode) //if (IGenFormCommonRoutines.runMode)
                {
                    _control.Visible = field.visible;
                }
                else
                {
                    _control.Visible = true;
                }

                // set the font
                string _fontName = field.fontName;
                if (_fontName != "")
                {
                    float _fontSize = field.fontSize;
                    if (_fontSize > 0)
                    {
                        Font _font = new Font(_fontName, _fontSize);
                        _control.Font = _font;
                    }
                }

                // format it 

                field.controlContainer = _control;
                field.SetHandles();

                if (runMode)
                {
                    field.HideHandles();
                }

                _control.Tag = field;

                // add to the forms fields collection
                
                //_control.Enabled = false;
                //_control.BackColor = nonSelectedColor;

                if (runMode)
                {
                    // check for special types of fields
                    switch (field.type.ToUpper())
                    {
                        case "CHECKBOX":
                            CheckBox _checkBox = (CheckBox)_control;
                            _checkBox.Checked = field.checkedFlag;
                            break;

                        case "PICTURE":
                            // if the text var is not filled in, prompt for the image
                            PictureBox _pic = (PictureBox)_control;
                            string _fileName = field.imageName;
                            _pic.Image = CommonRoutines.LoadTransparentImage(_fileName);
                            _pic.SizeMode = PictureBoxSizeMode.StretchImage;
                            _pic.BackColor = Color.Transparent;
                            break;

                        case "COMBOBOX":
                            ComboBox _comboBox = (ComboBox)_control;
                            // check to see if a list was given 
                            _list = field.list;
                            if (_list != "")
                            {
                                // resolve the value
                                _comboBox.Items.Clear();

                                // is it a sql statement?
                                if (_list.ToUpper().IndexOf("=SQL(") == 0)
                                {
                                    // resolve it

                                }
                                string[] _listValues = _list.Split('|');
                                foreach (string _listValue in _listValues)
                                {
                                    _comboBox.Items.Add(_listValue);
                                }
                            }
                            // set the value
                            _comboBox.Text = field.comboValue;
                            break;

                        case "LISTBOX":
                            // check to see if a list was given 
                            _list = field.list;
                            if (_list != "")
                            {
                                // resolve the value
                                ListBox _listBox = (ListBox)_control;
                                _listBox.Items.Clear();

                                string[] _listValues = _list.Split('|');
                                foreach (string _listValue in _listValues)
                                {
                                    _listBox.Items.Add(_listValue);
                                }
                            }
                            break;

                        case "TEXTBOX":
                            Label _textBox = (Label)_control;
                            if (field.alignment.ToUpper().IndexOf('C') == 0)
                            {
                                _textBox.TextAlign = ContentAlignment.BottomCenter;
                            }
                            else
                            {
                                if (field.alignment.ToUpper().IndexOf('R') == 0)
                                {
                                    _textBox.TextAlign = ContentAlignment.BottomRight;
                                }
                                else
                                {
                                    _textBox.TextAlign = ContentAlignment.BottomLeft;
                                }
                            }
                            break;

                        case "LABEL":
                            Label _label = (Label)_control;
                            if (field.alignment.ToUpper().IndexOf('C') == 0)
                            {
                                _label.TextAlign = ContentAlignment.BottomCenter;
                            }
                            else
                            {
                                if (field.alignment.ToUpper().IndexOf('R') == 0)
                                {
                                    _label.TextAlign = ContentAlignment.BottomRight;
                                }
                                else
                                {
                                    _label.TextAlign = ContentAlignment.BottomLeft;
                                }
                            }
                            break;

                        case "SIGNATURE":
                            // create a sigplus control
                            //Signature _signature = (Signature)_control;
                            //_signature.BackColor = Color.LightBlue;
                            break;

                        default:
                            if (field.text == "")
                            {
                            }
                            break;

                    }
                }

                field.controlName = _control.Name;
                pallet.Controls.Add(_control);
                field.controlIndex = pallet.Controls.Count - 1;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreateFieldControl(c, o, b) > " + ex.Message);
            }

            return _control;
        }




        public Control CreateControlOfType(string type)
        {
            Control _control = new PictureBox();

            try
            {
                _control = CreateControlOfType(type, false);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreateControlOfType(s) > " + ex.Message);
            }

            return _control;

        }





        /// <summary>
        /// Control CreateControlOfType(string type, bool runMode)
        /// Return a control of the passed type
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public Control CreateControlOfType(string type, bool runMode)
        {
            Control _control = new PictureBox();

            try
            {
                if (!runMode)
                {
                    _control = new Label();
                }
                else
                {
                    switch (type.ToUpper())
                    {
                        case "TEXTBOX":
                            //_control = new Label();
                            //Label _label = (Label)_control;
                            //_label.BorderStyle = BorderStyle.FixedSingle;
                            //_label.BackColor = Color.LightGray;
                            _control = new Label();
                            //if (IGenFormCommonRoutines.runMode)
                            //{
                            //    _control = new TextBox();
                            //    TextBox _textBox = (TextBox)_control;
                            //    _textBox.Multiline = false;
                            //}
                            //else
                            //{
                            //    _control = new Panel();
                            //    Panel _panel = (Panel)_control;
                            //    _panel.BackColor = Color.LightBlue;
                            //}
                            break;

                        case "LABEL":
                            _control = new Label();
                            break;

                        case "BUTTON":
                            if (runMode)
                            {
                                _control = new Button();
                            }
                            else
                            {
                                _control = new Label();
                            }
                            break;

                        case "CHECKBOX":
                            _control = new CheckBox();
                            break;

                        case "COMBOBOX":
                            _control = new ComboBox();
                            break;

                        case "LISTBOX":
                            _control = new ListBox();
                            break;

                        case "FRAME":
                            _control = new GroupBox();
                            break;

                        case "HYPERLINK":
                            break;

                        case "BOX":
                            break;

                        case "LINE":
                            break;

                        case "OPTION":
                            _control = new RadioButton();
                            break;

                        case "PICTUREBOX":
                            _control = new PictureBox();
                            break;

                        case "TABS":
                            _control = new TabControl();
                            break;

                        case "BROWSER":
                            _control = new WebBrowser();
                            break;

                        case "PANEL":
                            _control = new Panel();
                            break;

                        case "SIGNATURE":
                            _control = new PictureBox();  // Signature();
                            break;

                        default:
                            _control = new PictureBox();
                            break;

                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".CreateControlOfType(s,b) > " + ex.Message);
            }

            return _control;

        }







        public IGenField GetField(string formName, string fieldName)
        {
            IGenField _field = new IGenField();

            try
            {
                // find the form
                foreach (IGenForm _form in forms)
                {
                    if (_form.name.ToUpper() == formName.ToUpper())
                    {
                        _field = _form.formFields.GetField(fieldName);
                        break;
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetField(s, s) > " + ex.Message);
            }

            return _field;

        }





        public IGenField GetField(string formName, int fieldIndex)
        {
            IGenField _field = new IGenField();

            try
            {
                // find the form
                foreach (IGenForm _form in forms)
                {
                    if (_form.name.ToUpper() == formName.ToUpper())
                    {
                        _field = _form.formFields.GetField(fieldIndex);
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetField(s, i) > " + ex.Message);
            }

            return _field;

        }




        public IGenField GetField(int formIndex, int fieldIndex)
        {
            IGenField _field = new IGenField();

            try
            {
                IGenForm _form = GetForm(formIndex);
                _field = _form.formFields.GetField(fieldIndex);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetField(i, i) > " + ex.Message);
            }

            return _field;

        }




        public int UpdateField(IGenField field)
        {
            IGenField _field = field;
            int _fieldIndex = -1;

            try
            {
                // find the form and field
                foreach (IGenForm _form in forms)
                {
                    if (_form.name.ToUpper() == _field.parentFormName.ToUpper())
                    {
                        for (int n = 0; n < _form.formFields.fields.Count; n++)
                        {
                            if (_form.formFields.fields[n].controlName.ToUpper() == _field.controlName.ToUpper())
                            {
                                _fieldIndex = n;
                                _form.formFields.fields[n] = _field;
                                break;
                            }
                        }
                        break;
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".UpdateField > " + ex.Message);
            }

            return _fieldIndex;

        }





        public Image DrawGrid(Image image, int gridPixelsPerPoint)
        {
            Image _img = image;  // Image.FromFile(_pallet.ImageLocation);

            try
            {
                if (_img != null)
                {

                    if (showGrid)
                    {
                        if (_img != null)
                        {
                            Graphics _graphics = Graphics.FromImage(_img);
                            Pen _pen = new Pen(System.Drawing.Color.Gray, 1);
                            for (int n = 0; n < _img.Height; n += gridPixelsPerPoint)
                            {
                                for (int m = 0; m < _img.Width; m += gridPixelsPerPoint)
                                {
                                    _graphics.DrawRectangle(_pen, new Rectangle(m, n, 1, 1));
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DrawGrid > " + ex.Message);
            }

            return _img;

        }




        /// <summary>
        /// string Execute()
        /// Execute
        /// </summary>
        /// <returns></returns>
        public string Execute()
        {
            string _result = "";
            
            try
            {

                ShowMessage("Loading form, please wait...");

                // load the viewer form
                IGenFormCommonRoutines.runMode = true;
                frmViewer _viewer = new frmViewer();
                _viewer.WindowState = FormWindowState.Maximized;
                _viewer.displayIGenForms = this;
                _viewer.DisplayForms();

                ShowMessage("");

                _viewer.ShowDialog();
                IGenFormCommonRoutines.runMode = false;
                _viewer.Dispose();
                CommonRoutines.DisplayStatus("Done");
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Execute > " + ex.Message);
            }

            return _result;
        }




        /// <summary>
        /// string Execute()
        /// Execute
        /// </summary>
        /// <returns></returns>
        public void ShowMessage(string msg)
        {

            try
            {
                if (msg == "")
                {
                    if (genericMessage != null)
                    {
                        genericMessage.Close();
                        genericMessage = null;
                    }
                }
                else
                {
                    genericMessage = new frmShowMessage();
                    genericMessage.Text = "Load Form";
                    genericMessage.SetMessage = msg;
                    genericMessage.Visible = true;
                    genericMessage.Show();
                    genericMessage.BringToFront();
                    Application.DoEvents();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Execute > " + ex.Message);
            }

            return;
        }






        /// <summary>
        /// List<string[]> GetResults()
        /// Get the results from the execute
        /// </summary>
        /// <returns></returns>
        public List<string[]> GetResults()
        {
            List<string[]> _results = new List<string[]>();

            try
            {
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetResults > " + ex.Message);
            }

            return _results;
        }



        public string GetGroupDatasetValue(string fieldName, int rowIndex)
        {
            string _value = "";
            string _fieldName = fieldName.ToUpper();
            int _rowIndex = (rowIndex > 0) ? rowIndex : 1;

            try
            {
                if (dataset.Count > 0)
                {
                    // get the value
                    if (_rowIndex > 0 && _rowIndex <= dataset.Count)
                    {
                        // get the column name
                        string[] _fieldNames = dataset[0];
                        if (_rowIndex > 0 && _rowIndex < dataset.Count)
                        {
                            string[] _row = dataset[_rowIndex];
                            // get the value
                            if (CommonRoutines.IsNumeric(_fieldName))
                            {
                                int _index = CommonRoutines.ConvertToInt(_fieldName);
                                if (_index >= 0 && _index < _fieldNames.Length)
                                {
                                    _value = _row[_index];
                                }
                                else
                                {
                                    _value = "";
                                }
                            }
                            else
                            {
                                for (int n = 0; n < _fieldNames.Length; n++)
                                {
                                    if (_fieldNames[n].ToUpper() == _fieldName)
                                    {
                                        _value = _row[n];
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".GetGroupDatasetValue > " + ex.Message);
            }

            return _value;

        }






        public string GetDatasetValue(string formName, string fieldName, int rowIndex)
        {
            string _value = "";
            string _fieldName = fieldName.ToUpper();
            int _rowIndex = (rowIndex > 0) ? rowIndex : 1;

            try
            {
                IGenForm _form = GetForm(formName);

                if (_form.datasetRows.Count > 0)
                {
                    // get the value
                    if (_rowIndex > 0 && _rowIndex <= _form.datasetRows.Count)
                    {
                        // get the column name
                        string[] _fieldNames = _form.datasetRows[0];
                        string[] _row = _form.datasetRows[_rowIndex];
                        // get the value
                        for (int n = 0; n < _fieldNames.Length; n++)
                        {
                            if (_fieldNames[n].ToUpper() == _fieldName)
                            {
                                _value = _row[n];
                                break;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".GetDatasetValue(s,s,s) > " + ex.Message);
            }

            return _value;

        }




        public string GetDatasetValue(int datasetOrdinal, string fieldName, int rowIndex)
        {
            string _value = "";
            string _fieldName = fieldName.ToUpper();
            int _rowIndex = (rowIndex >= 0) ? rowIndex : 1;
            int _datasetOrdinal = datasetOrdinal;

            try
            {
                if (_datasetOrdinal >= 0 && _datasetOrdinal < datasets.Count)
                {
                    // get the value
                    if (_rowIndex >= 0 && _rowIndex < datasets[_datasetOrdinal].results.Count)
                    {
                        // row 0 is the headers
                        string[] _fields = datasets[_datasetOrdinal].fieldNames;
                        string[] _row = datasets[_datasetOrdinal].results[_rowIndex];

                        // is the fieldname numeric?
                        if (CommonRoutines.IsNumeric(fieldName))
                        {
                            int _fieldIndex = CommonRoutines.ConvertToInt(fieldName);
                            if (_fieldIndex >= 0 && _fieldIndex < _fields.Length)
                            {
                                _value = _row[_fieldIndex];
                            }
                        }
                        else
                        {
                            // get the column name
                            for (int n = 0; n < _fields.Length; n++)
                            {
                                if (_fields[n].ToUpper() == _fieldName.ToUpper())
                                {
                                    _value = _row[n];
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".GetDatasetValue(o,s,s) > " + ex.Message);
            }

            return _value;

        }




        public string SumDatasetField(int datasetOrdinal, string fieldName)
        {
            string _value = "";
            double _sumOfField = 0.0;
            string _fieldName = fieldName.ToUpper();
            int _datasetOrdinal = datasetOrdinal;

            try
            {
                if (_datasetOrdinal >= 0 && _datasetOrdinal < datasets.Count)
                {
                    IGenDataset _ds = datasets[_datasetOrdinal];

                    // set the fieldname to a column ordinal
                    int _fieldOrdinal = CommonRoutines.ConvertToInt(_fieldName);

                    for (int n = 0; n < _ds.dataTable.Rows.Count;n++)
                    {
                        // get the value
                        _value = _ds.dataTable.Rows[n][_fieldOrdinal].ToString();
                        double _doubleValue = CommonRoutines.ConvertToDouble(_value);
                        _sumOfField = _sumOfField + _doubleValue;
                    }

                    _value = _sumOfField.ToString();
                }
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".SumDatasetField > " + ex.Message);
            }

            return _value;

        }





        public string SumFields(string formName, string fieldList)
        {
            string _sumOfFields = "";
            decimal _decFieldSum = 0.00m;
            IGenForm _form = GetForm(formName);

            try
            {
                string[] _fields = fieldList.Split('~');
                if (_fields.Length > 0)
                {
                    for (int n = 0; n < _fields.Length; n++)
                    {
                        if (_fields[n].Trim() != "")
                        {
                            string _fieldValue = _fields[n].Trim();

                            if (!CommonRoutines.IsNumeric(_fieldValue))
                            {
                                // get the field value
                                _fieldValue = _form.GetField(_fieldValue).value;
                            }
                            _decFieldSum = _decFieldSum + CommonRoutines.ConvertToDecimal(_fieldValue);
                        }
                    }
                    _sumOfFields = _decFieldSum.ToString();
                }
            }
            catch (Exception ex)
            {
                // error
            }

            return _sumOfFields;
        }



        public string SubtractFields(string formName, string fieldList)
        {
            string _sumOfFields = "";
            decimal _decFieldSum = 0.00m;
            IGenForm _form = GetForm(formName);

            try
            {
                string[] _fields = fieldList.Split('~');
                if (_fields.Length > 0)
                {
                    for (int n = 0; n < _fields.Length; n++)
                    {
                        string _fieldValue = _fields[n].Trim();

                        if (!CommonRoutines.IsNumeric(_fieldValue))
                        {
                            // get the field value
                            _fieldValue = _form.GetField(_fieldValue).value;
                        }
                        _decFieldSum = _decFieldSum - CommonRoutines.ConvertToDecimal(_fieldValue);
                    }
                    _sumOfFields = _decFieldSum.ToString();
                }
            }
            catch (Exception ex)
            {
                // error
            }

            return _sumOfFields;
        }



        public string MultiplyFields(string formName, string fieldList)
        {
            string _sumOfFields = "";
            decimal _decFieldSum = 0.00m;
            IGenForm _form = GetForm(formName);

            try
            {
                string[] _fields = fieldList.Split('~');
                if (_fields.Length > 0)
                {
                    for (int n = 0; n < _fields.Length; n++)
                    {
                        string _fieldValue = _fields[n].Trim();

                        if (!CommonRoutines.IsNumeric(_fieldValue))
                        {
                            // get the field value
                            _fieldValue = _form.GetField(_fieldValue).value;
                        }

                        if (n == 0)
                        {
                            // first one
                            _decFieldSum = CommonRoutines.ConvertToDecimal(_fieldValue);
                        }
                        else
                        {
                            _decFieldSum = _decFieldSum * CommonRoutines.ConvertToDecimal(_fieldValue);
                        }
                    }
                    _sumOfFields = _decFieldSum.ToString();
                }
            }
            catch (Exception ex)
            {
                // error
            }

            return _sumOfFields;
        }



        public string SumDSField(string fieldName)
        {
            string _sumOfFields = "";
            decimal _decFieldSum = 0.00m;
            int _fieldIndex = -1;

            try
            {
                string[] _fieldNames = dataset[0];
                // first find the column in the ds rows
                for (int n = 0; n < _fieldNames.Length; n++)
                {
                    if (_fieldNames[n].ToUpper().Equals(fieldName.ToUpper()))
                    {
                        _fieldIndex = n;
                        break;
                    }
                }

                if (_fieldIndex >= 0)
                {
                    for (int n = 1; n < dataset.Count; n++)
                    {
                        string[] _row = dataset[n];
                        // get the field value
                        string _fieldValue = _row[_fieldIndex];
                        _decFieldSum = _decFieldSum + CommonRoutines.ConvertToDecimal(_fieldValue);
                    }
                    _sumOfFields = _decFieldSum.ToString();
                }
            }
            catch (Exception ex)
            {
                // error
            }

            return _sumOfFields;
        }




        public string GetFieldNames(string formName, string fieldName, string pattern)
        {
            string _fieldNames = "";
            string _prePattern = pattern.ToUpper();
            string _postPattern = "";
            string _fldnm = "";

            try
            {
                int _wildcardChar = _prePattern.IndexOf('*');
                // is this a wildcard?  * at end of field name
                if (_wildcardChar == _prePattern.Length - 1)
                {
                    // a pattern
                    _prePattern = _prePattern.Substring(0, _wildcardChar);
                }
                else
                {
                    // it is a pre and post pattern
                    _postPattern = _prePattern.Substring(_wildcardChar + 1);
                    _prePattern = _prePattern.Substring(0, _wildcardChar);
                }

                // get the form info
                IGenForm _form = GetForm(formName);

                // set the value in the udt
                for (int n = 0; n < _form.formFields.fields.Count; n++)
                {
                    IGenField _field = _form.formFields.fields[n];
                   
                    _fldnm = fieldName.ToUpper();
                    string _checkFieldName = _field.name.ToUpper();
                    int _preLength = _prePattern.Length;
                    int _postLength = _postPattern.Length;
                    if (_checkFieldName != _fldnm)
                    {
                        // check to see if the form and field match...
                        if (_checkFieldName.IndexOf(_prePattern) == 0)
                        {
                            if (_postLength > 0)
                            {
                                if (_checkFieldName.IndexOf(_postPattern) == (_checkFieldName.Length - _postLength))
                                {
                                    if (_field.exemptFromSum == "N" | _field.exemptFromSum == "")
                                    {
                                        _fieldNames = _fieldNames + _field.name.ToUpper() + "~";
                                    }
                                }
                            }
                            else
                            {
                                if (_field.exemptFromSum == "N" | _field.exemptFromSum == "")
                                {
                                    _fieldNames = _fieldNames + _field.name.ToUpper() + "~";
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".GetFieldNames > " + ex.Message);
            }

            return _fieldNames;
        }






        public string GetFieldList(string formName, string fieldName)
        {
            string _value = "";
            string _fieldName = formName.ToUpper();

            // get the form info
            IGenForm _form = GetForm(formName);

            // set the value in the udt
            for (int n = 0; n < _form.formFields.fields.Count; n++)
            {
                try
                {
                    IGenField _field = _form.formFields.fields[n];

                    if (_field.name.ToUpper() == _fieldName)
                    {
                        _value = _field.list;
                        break;
                    }
                }
                catch (Exception ex)
                {
                    // an error
                    CommonRoutines.Log("Error: " + moduleName + ".GetFieldList > " + ex.Message);
                }
            }

            return _value;
        }




        public void OutputFormInfo(string fileName)
        {


            try
            {

                if (debugMode)
                {
                    // output the fields for debugging
                    List<string> _recs = new List<string>();
                    for (int n = 0; n < forms.Count; n++)
                    {
                        _recs.Add("***" + forms[n].name + "-" + n);

                        for (int m = 0; m < forms[n].formFields.fields.Count; m++)
                        {
                            _recs.Add("\t" + forms[n].formFields.fields[m].name + "-" + m +
                                                " O=[" + forms[n].formFields.fields[m].originalValue + "], " +
                                                " C=[" + forms[n].formFields.fields[m].compiledValue + "], " +
                                                " T=[" + forms[n].formFields.fields[m].text + "], " +
                                                " V=[" + forms[n].formFields.fields[m].value + "]");
                        }
                    }

                    if (_recs.Count > 0)
                    {
                        CommonRoutines.WriteFile(fileName, _recs);
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".OutputFormInfo > " + ex.Message);
            }

            return;

        }



        public void OutputLayerInfo(string fileName)
        {


            try
            {
                if (debugMode)
                {
                    // output the fields for debugging
                    List<string> _recs = new List<string>();
                    for (int n = 0; n < layerFields.Count; n++)
                    {
                        _recs.Add("*** Layer " + n + "-" + n);

                        List<string> _layerField = layerFields[n];

                        for (int m = 0; m < _layerField.Count; m++)
                        {
                            _recs.Add("\t[" + _layerField[m] + "]");
                        }
                    }

                    if (_recs.Count > 0)
                    {
                        CommonRoutines.WriteFile(fileName, _recs);
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".OutputLayerInfo > " + ex.Message);
            }

            return;

        }




        public void LoadFormValues(int filingId, int submissionReturnId)
        {
            string _sql = "";

            try
            {
                // get the header
                _sql = "Select * From IGenForms " +
                                "Where Form_Group='" + formGroupName + "' " +
                                "   and Filing_Id=" + filingId +
                                "   and Submission_Return_Id=" + submissionReturnId + " " +
                                "Order By Run_Date Desc";
                List<string[]> _headerRows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                if (_headerRows.Count > 0)
                {
                    for (int n = 0; n < forms.Count; n++)
                    {
                        IGenForm _form = forms[n];

                        int _igenFormsId = CommonRoutines.ConvertToInt(DatabaseRoutines.GetRowValue(_headerRows[0], _headerRows[1], "ID"));
                        // load the fields
                        _sql = "Select * " +
                               "From IGenForm_Fields " +
                               "Where IGenForms_Id=" + _igenFormsId + " " +
                               "    and Form_Name='" + _form.name + "' ";
;
                        List<string[]> _fieldRows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);
                        if (_fieldRows.Count > 0)
                        {
                            for (int m = 1; m < _fieldRows.Count; m++)
                            {
                                // get the field name and value
                                string _fieldName = DatabaseRoutines.GetRowValue(_fieldRows[0], _fieldRows[m], "Field_Name");
                                string _fieldValue = DatabaseRoutines.GetRowValue(_fieldRows[0], _fieldRows[m], "Field_Value");
                                IGenField _field = _form.GetField(_fieldName);
                                if (_field.name != "")
                                {
                                    _field.text = _fieldValue;
                                    switch (_field.type.ToUpper())
                                    {
                                        case "TEXTBOX":
                                            if (_field.manualInput)
                                            {
                                                // leave it
                                            }
                                            else
                                            {
                                                _field.originalValue = _fieldValue;
                                            }
                                            break;

                                        case "CHECKBOX":
                                            _field.text = "";
                                            _field.checkedFlag = (_fieldValue.ToUpper() == "TRUE") ? true : false;
                                            break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoadFormValues > " + ex.Message);
            }

            return;


        }






        public int SaveFormGroup(string fileName)
        {
            List<string> _recs = new List<string>();
            int _indent = 0;
            string _fileName = CSA.currentPalletFileName;
            int _numWritten = 0;

            try
            {
                if (fileName != "")
                {
                    _fileName = fileName;
                    CSA.currentPalletFileName = _fileName;
                    this.fileName = _fileName;
                }

                // save the current pallet to the processes folder
                if (_fileName == "" || fileName == "$$NEW$$")  // || !CommonRoutines.FileExists(_fileName))
                {
                    string _savePath = CommonRoutines.lastPath;
                    // get the name to save this process under
                    string _formPath = ConfigRoutines.GetSetting("FormFiles");
                    if (_formPath == "")
                    {
                        _formPath = CommonRoutines.currentPath + "\\FormFiles";
                    }
                    CommonRoutines.lastPath = _formPath;

                    _fileName = CommonRoutines.SaveDialog("FRM", "");
                    CommonRoutines.lastPath = _savePath;
                    if (_fileName == "")
                    {
                        return -1;
                    }
                    CSA.currentPalletFileName = _fileName;
                    this.fileName = _fileName;
                }

                _recs = GeneratePalletXML(null);

                // now output the xml to the file
                _numWritten = CommonRoutines.WriteFile(_fileName, _recs);

                CSA.currentPalletFileName = _fileName;

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SaveFormGroup > " + ex.Message);
            }

            return _numWritten;

        }







        public void SaveFormsToDatabase(int filingId, int submissionReturnId)
        {
            string _formFileName = "";
            string _sql = "";
            int _numRowsAffected = 0;
            string _fieldList = "";
            string _fieldValues = "";
            int igenFormsId = 0;
            string _runDate = CommonRoutines.GetCurrentDateTime();

            try
            {
                // get the info for the submission return sent

                // save the form to the database

                // if the IGenForms header has been created, get the id otherwise create one
                // get the id
                _sql = "Select Id " +
                       "From IGenForms " +
                       "Where Form_Group='" + formGroupName + "' " +
                       "      and Filing_Id=" + filingId + 
                       "      and Submission_Return_Id=" + submissionReturnId;

                List<string[]> _rows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                if (_rows.Count > 0)
                {
                    // use the ID
                    igenFormsId = CommonRoutines.ConvertToInt(DatabaseRoutines.GetRowValue(_rows[0], _rows[1], "Id"));
                }
                else
                {
                    #region [Create IGenForms record]
                    // insert the igenforms record
                    _runDate = CommonRoutines.GetCurrentDateTime();
                    // insert into the table
                    _sql = "Insert into IGenForms " +
                           "(Form_Group, Run_Date, Error_Flag, Filing_Id, Submission_Return_Id, Description, Status) " +
                           "Values(" + 
                           "'" + formGroupName + "'," +
                            "'" + _runDate + "'," +
                            "'" + errorFlag + "'," +
                            filingId + "," +
                            submissionReturnId + "," +
                            "'Form'," +
                            "'A')";

                    _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);
                    if (_numRowsAffected > 0)
                    {
                        // get the new one
                        // get the id
                        _sql = "Select Id " +
                               "From IGenForms " +
                               "Where Form_Group='" + formGroupName + "' " +
                               "      and Filing_Id=" + filingId +
                               "      and Submission_Return_Id=" + submissionReturnId;
                        _rows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                        if (_rows.Count > 0)
                        {
                            // use the ID
                            igenFormsId = CommonRoutines.ConvertToInt(DatabaseRoutines.GetRowValue(_rows[0], _rows[1], "Id"));
                        }
                    }
                    #endregion 
                }

                // was one found or was one successfully created?
                if (igenFormsId > 0)
                {
                    // first delete all the rows added before
                    _sql = "Delete From IGenForm_Errors Where IGenForms_Id=" + igenFormsId + " ";
                    _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                    _sql = "Delete From IGenForm_Fields Where IGenForms_Id=" + igenFormsId + " ";
                    _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                    _fieldList = "IGenForms_Id, Form_Name, Field_Sequence, Field_Name, Field_Value, Field_Expression, EDI_Flag, EDI_Name, Field_Status, Status";
                    for (int n = 0; n < forms.Count; n++)
                    {
                        // output each field
                        for (int m = 0; m < forms[n].formFields.fields.Count; m++)
                        {
                            IGenField _field = forms[n].formFields.fields[m];
                            // check for a checkbox
                            if (_field.type.ToUpper().IndexOf("CHECKBOX") >= 0)
                            {
                                // set the text
                                _field.text = _field.checkedFlag.ToString();
                            }

                            string _newValue = _field.text;

                            // clean the value based on it's datatype
                            switch (_field.dataType.ToUpper())
                            {
                                case "TEXT":
                                    break;

                                case "INTEGER":
                                case "NUMERIC":
                                case "CURRENCY":
                                case "DECIMAL":
                                    // strip out any values not numeric
                                    _newValue = IGenFormCommonRoutines.CleanNumericField(_newValue);
                                    break;

                            }

                            _fieldValues = igenFormsId + "," +
                                            "'" + forms[n].name + "'," +
                                            (m + 1) + "," +
                                            "'" + _field.name + "'," +
                                            "'" + _newValue.Replace("'", "''") + "'," +
                                            "'" + _field.originalValue.Replace("'", "''") + "'," +
                                            "'" + (_field.ediFlag + "N").Substring(0, 1) + "'," +
                                            "'" + _field.ediName + "'," +
                                            "'A'," +
                                            "'A'";

                            _sql = "Insert into IGenForm_Fields " +
                                            "(" + _fieldList + ") " +
                                            "Values(" + _fieldValues + ")";

                            _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                        }

                    }
                }
                else
                {
                    CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SaveForms > IGenForms header not created.");
                }


            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SaveFormToDatabase(i) > " + ex.Message);
            }

            return;

        }




        public string UpdateLastPreparedDate()
        {
            int _numRowsAffected = 0;
            string _sql = "";
            string _runDate = CommonRoutines.GetCurrentDateTime();

            try
            {
                // update the run_date
                _sql = "Update IGenForms " +
                       "Set Run_Date='" + _runDate + "', " +
                       "    Updated_Date='" + _runDate + "' " +
                        "Where Form_Group='" + formGroupName + "' " +
                        "      and Filing_Id=" + filingId;

                _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                if (_numRowsAffected < 1)
                {
                    _runDate = "";
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".UpdateLastPreparedDate > " + ex.Message);
            }

            return _runDate;

        }




        public string GetLastPreparedDate()
        {
            string _lastDatePrepared = "";
            string _sql = "";

            try
            {
                // Get the IGenForms header for the last date prepared

                // get the id
                _sql = "Select Max(Run_Date) as LastDateRun " +
                        "From IGenForms " +
                        "Where Form_Group='" + formGroupName + "' " +
                        "      and Filing_Id=" + filingId;

                List<string[]> _rows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                if (_rows.Count > 0)
                {
                    if (_rows[0].Length > 1)
                    {
                        _lastDatePrepared = DatabaseRoutines.GetRowValue(_rows[0], _rows[1], "LastDateRun");
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetLastPreparedDate > " + ex.Message);
            }

            return _lastDatePrepared;

        }





        public void SaveEDIFormFieldValues()
        {
            string _formFileName = "";
            string _sql = "";
            int _numRowsAffected = 0;
            string _fieldList = "";
            string _fieldValues = "";

            try
            {
                // save the form to the database

                // first delete all the rows added before
                _sql = "Delete From IGenForm_Errors Where IGenForms_Id in (Select Id From IGenForms Where Form_Group='" + formGroupName + "' and Filing_Id=" + filingId + ") ";
                _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                _sql = "Delete From IGenForm_Fields Where IGenForms_Id in (Select Id From IGenForms Where Form_Group='" + formGroupName + "' and Filing_Id=" + filingId + ") ";
                _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                _sql = "Delete From IGenForms Where Form_Group='" + formGroupName + "' and Filing_Id=" + filingId;
                _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                string _runDate = CommonRoutines.GetCurrentDateTime();
                // insert the igenforms record
                _fieldList = "Form_Group, Run_Date, Error_Flag, Filing_Id, Description, Status";
                _fieldValues = "'" + formGroupName + "'," +
                                        "'" + _runDate + "'," +
                                        "'" + errorFlag + "'," +
                                        filingId + "," +
                                        "'Form'," +
                                        "'A'";

                // insert into the table
                _sql = "Insert into IGenForms " +
                                "(" + _fieldList + ") " +
                                "Values(" + _fieldValues + ")";

                _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                if (_numRowsAffected > 0)
                {
                    // get the id
                    _sql = "Select Id From IGenForms " +
                           "Where Form_Group='" + formGroupName + "' " +
                           "      and Filing_Id=" + filingId +
                           "      and Run_Date='" + _runDate + "' ";
                    List<string[]> _rows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                    if (_rows.Count > 0)
                    {
                        int igenFormsId = CommonRoutines.ConvertToInt(DatabaseRoutines.GetRowValue(_rows[0], _rows[1], "Id"));
                        if (igenFormsId > 0)
                        {
                            _fieldList = "IGenForms_Id, Form_Name, Field_Sequence, Field_Name, Field_Value, Field_Expression, EDI_Flag, Field_Status, Status";
                            for (int n = 0; n < forms.Count; n++)
                            {
                                // output each field
                                for (int m = 0; m < forms[n].formFields.fields.Count; m++)
                                {
                                    IGenField _field = forms[n].formFields.fields[m];
                                    _fieldValues = igenFormsId + "," +
                                                    "'" + forms[n].name + "'," +
                                                    (m + 1) + "," +
                                                    "'" + _field.name + "'," +
                                                    "'" + _field.text.Replace("'", "''") + "'," +
                                                    "'" + _field.originalValue.Replace("'", "''") + "'," +
                                                    "'" + (_field.ediFlag + "N").Substring(0, 1) + "'," +
                                                    "'A'," +
                                                    "'A'";
                                    _sql = "Insert into IGenForm_Fields " +
                                                    "(" + _fieldList + ") " +
                                                    "Values(" + _fieldValues + ")";
                                    _numRowsAffected = DatabaseRoutines.Execute(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);

                                    // now, does this field belong in the EDI_Values table?

                                }

                            }
                        }
                    }
                }


            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SaveEDIFormFieldValues > " + ex.Message);
            }

            return;

        }


    }


    

    [Serializable]
    public class IGenForm
    {
        private string moduleName = "IGenForm";

        public string name = "";
        public string formGroupPath = "";
        public string formType = "";
        public string dataSource = "";
        public string sql = "";
        public string datasetName = "";
        public List<string> datasetNames = new List<string>();
        public string comments = "";
        public int datasetOrdinal = -1;
        public List<int> datasetOrdinals = new List<int>();
        public IGenDataset dataset = new IGenDataset();
        public List<IGenDataset> datasets = new List<IGenDataset>();
        public List<IGenPage> pages = new List<IGenPage>();

        public string multiPageForm = "False";
        public int rowsPerPage = -1;
        public List<int> rowsPerPages = new List<int>();
        public string pageBreaks = "";
        public List<string[]> datasetRows = new List<string[]>();
        public List<int> cursorOrdinals = new List<int>();
        public string instructions = "";
        public string title = "";
        public bool visible = true;
        public string imageName = "";
        public int imageHeight = 900;
        public int imageWidth = 900;
        public int zoomPCT = 100;

        public int currentRow = 0;
        public int totalRows = 0;
        public int currentPage = 0;
        public int totalPages = 0;

        public string printOrientation = "P";
        public IGenFields formFields = new IGenFields();
        public int processingOrder = 0;

        public Image originalImage = null;
        public List<Control> originalControls = new List<Control>(); 
        public Image gridImage = null;
        public bool gridShowing = false;
        public bool deleteForm = false;

        public IGenForm()
        {


        }


        public void AddField(IGenField field)
        {

            try
            {
                formFields.AddField(field);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".AddField > " + ex.Message);
            }

            return;

        }






        public IGenField GetField(string fieldName)
        {
            IGenField _field = new IGenField();

            try
            {
                _field = formFields.GetField(fieldName);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetField(s) > " + ex.Message);
            }

            return _field;

        }





        public IGenField GetField(int fieldIndex)
        {
            IGenField _field = new IGenField();

            try
            {
                _field = formFields.GetField(fieldIndex);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetField(i) > " + ex.Message);
            }

            return _field;

        }



        public void RemoveField(int fieldIndex)
        {

            try
            {
                formFields.RemoveField(fieldIndex);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".RemoveField(i) > " + ex.Message);
            }

            return;

        }





        public void RemoveField(string fieldName)
        {

            try
            {
                formFields.RemoveField(fieldName);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".RemoveField(s) > " + ex.Message);
            }

            return;

        }





        public int DeterminePages()
        {
            int _numberPages = 0;
            int _dsOrdinal = 0;
            int _dsRowsPerPage = 0;
            IGenDataset _dataset = null;
            IGenDataset _formDataset = null;
            bool _failed = false;

            try
            {
                // for each dataset configured
                for (int _ds = 0; _ds < datasets.Count; _ds++)
                {
                    // this is the ordinal of the group dataset definitions
                    _dsOrdinal = datasets[_ds].referenceDatasetOrdinal;
                    if (_dsOrdinal < 0)
                    {
                        break;
                    }

                    // output the pages
                    List<string> _pageRecs = new List<string>();
                    _pageRecs.Add("For form " + name);

                    _pageRecs.Add("    for DS " + datasets[_ds].cursorName);

                    _dsRowsPerPage = (_ds < rowsPerPages.Count) ? rowsPerPages[_ds] : 0;
                    _dataset = IGenFormCommonRoutines.currentIGenForms.datasets[_dsOrdinal];
                    _formDataset = datasets[_ds];

                    _formDataset.pages.Clear();

                    // walk the rows and set the pages
                    if (_dsOrdinal >= 0 && _dsRowsPerPage > 0)
                    {
                        #region [Create Page]

                        // get the rows in the dataset
                        if (_dataset.dataTable != null)
                        {
                            int _dsRows = _dataset.numRows;

                            string _breakValues = "";

                            // split the fields to check
                            string[] _pageBreakFields = { };
                            string[] _pageBreakFieldOrdinals = { };
                            string[] _prevBreakFieldValues = { };
                            string[] _currentBreakFieldValues = { };

                            if (pageBreaks.Trim() != "")
                            {
                                _pageBreakFields = pageBreaks.Split(',');

                                _pageBreakFieldOrdinals = (string[])_pageBreakFields.Clone();
                                _prevBreakFieldValues = (string[])_pageBreakFields.Clone();
                                _currentBreakFieldValues = (string[])_pageBreakFields.Clone();

                                // resolve the break fields to ordinals for reference
                                if (_pageBreakFields.Length > 0)
                                {
                                    // fill in the ordinals
                                    // change them to ordinals
                                    for (int m = 0; m < _pageBreakFields.Length; m++)
                                    {
                                        //// add the variable entry
                                        //_page.SetPageBreakVariable(_pageBreakFields[m], "TRUE", "FALSE", "", "", "");

                                        for (int n = 0; n < _dataset.fieldNames.Length; n++)
                                        {
                                            if (_pageBreakFields[m].Trim().ToUpper() == _dataset.fieldNames[n].Trim().ToUpper())
                                            {
                                                _pageBreakFieldOrdinals[m] = n.ToString();
                                            }
                                        }
                                    }
                                }
                            }

                            int _startingRow = 1;
                            int _pageNo = 1;
                            bool _pageBreak = false;

                            while (_startingRow <= _dsRows)
                            {
                                IGenPage _page = new IGenPage();

                                // init the page break variables
                                for (int m = 0; m < _pageBreakFields.Length; m++)
                                {
                                    // add the variable entry
                                    _page.SetPageBreakVariable(_pageBreakFields[m], "TRUE", "FALSE", "", "", "");
                                }

                                int _endingRow = _startingRow + rowsPerPage - 1;

                                if (_endingRow > _dsRows)
                                {
                                    _endingRow = _dsRows;
                                }

                                string _breakFieldName = ";";
                                string _atBeginning = null;
                                string _atEnd = null;
                                string _currentValue = null;
                                string _prevValue = null;
                                string _nextValue = null;

                                // see if there are any page breaks defined
                                if (_pageBreakFields.Length > 0)
                                {
                                    #region [Page Break Logic]
                                    // see if there is a page break in the block defined 
                                    List<string[]> _rows = _dataset.GetRows(_startingRow, rowsPerPage);
                                    if (_rows.Count > 0)
                                    {
                                        // init prev values for first time thru
                                        for (int n = 0; n < _pageBreakFields.Length; n++)
                                        {
                                            int _colIndex = CommonRoutines.ConvertToInt(_pageBreakFieldOrdinals[n]);
                                            _prevBreakFieldValues[n] = _rows[1][_colIndex];
                                        }

                                        int _breakRow = 0;
                                        _pageBreak = false;

                                        for (int n = 1; n < _rows.Count; n++)
                                        {
                                            if (_pageBreak)
                                            {
                                                break;
                                            }

                                            _breakValues = "";

                                            for (int m = 0; m < _pageBreakFields.Length; m++)
                                            {
                                                // get the field value
                                                int _colIndex = CommonRoutines.ConvertToInt(_pageBreakFieldOrdinals[m]);
                                                _breakValues = _breakValues + _rows[n][_colIndex] + ";";
                                            }

                                            for (int m = 0; m < _pageBreakFields.Length; m++)
                                            {
                                                // get the field value
                                                int _colIndex = CommonRoutines.ConvertToInt(_pageBreakFieldOrdinals[m]);
                                                string _currentFieldValue = _rows[n][_colIndex];
                                                if (_currentFieldValue.ToUpper() != _prevBreakFieldValues[m].ToUpper())
                                                {
                                                    // page break criteria met
                                                    _pageBreak = true;
                                                    _page.SetPageBreakVariable(_pageBreakFields[m], _atBeginning, "TRUE", _prevBreakFieldValues[m], _prevBreakFieldValues[m], _currentFieldValue);
                                                    _breakFieldName = _breakFieldName + _pageBreakFields[m] + ";";
                                                    _currentValue = _currentValue + _prevBreakFieldValues[m] + ";";
                                                    _prevValue = _prevValue + _currentValue + ";";
                                                    _nextValue = _nextValue + _currentFieldValue + ";";
                                                    //break;
                                                }

                                            }

                                            if (_pageBreak)
                                            {
                                                // page break criteria met, exit
                                                _endingRow = _startingRow + _breakRow - 1;
                                                _atEnd = "True";
                                            }

                                            _breakRow = _breakRow + 1;

                                        }

                                    }

                                    #endregion 

                                }
                                
                                // set the page values
                                _page.datasetOrdinal = _ds;
                                _page.pageNo = _pageNo;
                                _page.startingRow = _startingRow;
                                _page.endingRow = _endingRow;
                                _page.pageBreak = _pageBreak;
                                _page.breakValues = _breakValues;
                                _page.breakCriteria = pageBreaks;
                                _page.breakFieldName = _breakFieldName;
                                _page.lastPage = (_page.endingRow >= _dsRows) ? true : false;
                                _page.pageBreak = (_page.lastPage) ? true : _page.pageBreak;

                                // add it to the page collection
                                _pageRecs.Add("        Form page " + _page.pageNo);
                                _pageRecs.Add("            startingRow=" + _page.startingRow.ToString());
                                _pageRecs.Add("            endingRow=" + _page.endingRow.ToString());
                                _pageRecs.Add("            breakCriteria=" + _page.breakCriteria.ToString());
                                _pageRecs.Add("            breakValues=" + _page.breakValues.ToString());
                                _pageRecs.Add("            breakFieldName=" + _page.breakFieldName.ToString());
                                _pageRecs.Add("            pageBreak=" + _page.pageBreak.ToString());
                                _pageRecs.Add("            lastPage=" + _page.lastPage.ToString());
                                _pageRecs.Add("            Variables:");
                                for (int k = 0; k < _page.breakFieldVariables.Count; k++)
                                {
                                    _pageRecs.Add("                " + _page.breakFieldVariables[k].breakFieldName + ":" + _page.breakFieldVariables[k].current);
                                    _pageRecs.Add("                    atBegin=" + _page.breakFieldVariables[k].atBegin.ToString());
                                    _pageRecs.Add("                    atEnd=" + _page.breakFieldVariables[k].atEnd.ToString());
                                    _pageRecs.Add("                    current=" + _page.breakFieldVariables[k].current);
                                    _pageRecs.Add("                    prev=" + _page.breakFieldVariables[k].prev);
                                    _pageRecs.Add("                    next=" + _page.breakFieldVariables[k].next);
                                }

                                // add the page
                                _formDataset.pages.Add(_page);

                                _startingRow = _endingRow + 1;
                                _pageNo = _pageNo + 1;

                            }

                            if (_formDataset.pages.Count > 0)
                            {
                                // load the first page
                                int _initialRows = _formDataset.pages[0].endingRow - _formDataset.pages[0].startingRow + 1;
                                _formDataset.results = _dataset.GetRows(1, _initialRows);
                            }

                            if (_dataset.pages.Count > _numberPages)
                            {
                                _numberPages = _dataset.pages.Count;
                            }

                            pages = _formDataset.pages;

                            if (_formDataset.pages.Count > _numberPages)
                            {
                                // set the max pages for all datasets
                                _numberPages = _formDataset.pages.Count;
                            }

                        }

                        #endregion       
       
                    }

                    _pageRecs.Add("Done.  Total pages=" + pages.Count);
                    CommonRoutines.WriteFile("./pageinfo.txt", _pageRecs, false);

                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".DeterminePages > " + ex.Message);
            }

            totalPages = _numberPages;

            currentPage = (totalPages > 0) ? 1 : 0;

            return _numberPages;

        }






    }


    [Serializable]
    public class IGenFields
    {
        private string moduleName = "IGenFields";

        public List<IGenField> fields = new List<IGenField>();




        public IGenFields()
        {

            return;

        }



        public IGenField AddField(string fieldName,
                                   string fieldType,
                                   string fieldText,
                                   string fieldValue,
                                   Image fieldImage,
                                   Rectangle rect,
                                   string innerType)
        {
            IGenField _field = new IGenField();

            try
            {
                // create a field object and attach it
                _field = new IGenField(fieldName, fieldType, fieldText, rect.X, rect.Y, rect.Width, rect.Height, innerType);
                _field.name = fieldName;
                _field.type = fieldType;
                _field.text = fieldText;
                _field.value = fieldValue;
                _field.left = rect.X;
                _field.top = rect.Y;
                _field.width = rect.Width;
                _field.height = rect.Height;
                _field.innerType = innerType;
                // add to the fields collection 
                AddField(_field);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Createfield > " + ex.Message);
            }

            return _field;
        }





        public void AddField(IGenField field)
        {

            try
            {
                int _tabIndex = field.tabIndex;

                // put it in the correct order based on the tab index
                if (_tabIndex > 0)
                {
                    bool _foundIndex = false;
                    // find out where to insert it
                    for (int n=0;n<fields.Count;n++)
                    {
                        if (fields[n].tabIndex > _tabIndex)
                        {
                            // insert it here
                            fields.Insert(n, field);
                            _foundIndex = true;
                            break;
                        }

                    }
                    if (!_foundIndex)
                    {
                        // add it to the end
                        fields.Add(field);
                    }
                }
                else
                {
                    if (_tabIndex < 0)
                    {
                        // add it to the end
                        fields.Add(field);
                    }
                    else
                    {
                        // add it to the front
                        fields.Insert(0, field);
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".AddField > " + ex.Message);
            }

            return;

        }






        public IGenField GetField(string fieldName)
        {
            IGenField _field = new IGenField();

            try
            {
                foreach (IGenField _igenField in fields)
                {
                    if (_igenField.name.ToUpper() == fieldName.ToUpper())
                    {
                        _field = _igenField;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetField(s, s) > " + ex.Message);
            }

            return _field;

        }





        public IGenField GetField(int fieldIndex)
        {
            IGenField _field = new IGenField();

            try
            {
                if (fieldIndex >= 0 && fieldIndex < fields.Count)
                {
                    _field = fields[fieldIndex];
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetField(s, i) > " + ex.Message);
            }

            return _field;

        }






        public void RemoveField(int fieldIndex)
        {

            try
            {
                if (fieldIndex >= 0 && fieldIndex < fields.Count)
                {
                    fields.RemoveAt(fieldIndex);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".RemoveField(i) > " + ex.Message);
            }

            return;

        }



        public void RemoveField(string fieldName)
        {

            try
            {
                for (int n=0;n<fields.Count;n++) 
                {
                    IGenField _igenField = fields[n];

                    if (_igenField.name.ToUpper() == fieldName.ToUpper())
                    {
                        fields.RemoveAt(n);
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".RemoveField(s) > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// string Serialize()
        /// Serialize the fields to a delimited string
        /// </summary>
        /// <returns></returns>
        public string Serialize()
        {
            string _stream = "";

            try
            {
                foreach (IGenField _field in fields)
                {
                    _stream = _stream + _field.name + ";";
                    _stream = _stream + _field.type + ";";
                    _stream = _stream + _field.text + ";";
                    _stream = _stream + _field.value + ";";
                    _stream = _stream + _field.left + ";";
                    _stream = _stream + _field.top + ";";
                    _stream = _stream + _field.width + ";";
                    _stream = _stream + _field.height + ";";
                    _stream = _stream + _field.imageName + ";";
                    _stream = _stream + _field.foreColor + ";";
                    _stream = _stream + _field.backColor + ";";
                    _stream = _stream + _field.innerType + ";";
                    _stream = _stream + "|";
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Serialize > " + ex.Message);
            }

            return _stream;
        }






    }


    [Serializable]
    public class IGenField
    {
        private string moduleName = "IGenField";

        public Control typedControl;
        public Control controlContainer;
        public bool manualInput = false;
        public int controlIndex = -1;
        public string controlName = "";
        public string name = "";
        public string type = "LABEL";
        public string text = "";
        public string caption = "";
        public string value = "";
        public bool checkedFlag = false;
        public string comboValue = "";
        public string ediFlag = "N";
        public string ediName = "";
        public string parentFormName = "";
        public string compiledValue = "";
        public string originalValue = "";
        public string instructions = "";
        public bool visible = true;
        public bool wrapText = false;
        public string innerType = "";
        public string imageName = "";
        public string formatMask = "";
        public string sourceDesignation = "";
        public string exemptFromSum = "";

        // spaced text value
        public int spacedTextBoxSize = 1;

        public string comments = "";
        public int layer = 0;
        public Image img = null;
        public int left = 0;
        public int top = 0;
        public int width = 0;
        public int height = 0;
        public int tabIndex = 0;
        public string foreColor = "Black";
        public string backColor = "White";
        public string list = "";
        public string dataType = "";
        public string fontName = "Microsoft Sans Sarif";
        public float fontSize = 12.0F;
        public bool fontBold = false;
        public bool fontItalic = false;
        public bool fontUnderline = false;
        public string alignment = "";
        public string tag = "";

        private const int BOX_SIZE = 8;
        private Color BOX_COLOR = Color.Black;
        private ContainerControl m_container;
        private Label[] lbls = new Label[8];
        private int startl;
        private int startt;
        private int startw;
        private int starth;
        private int startx;
        private int starty;
        private bool dragging;
        private Cursor[] arrArrow = new Cursor[] {Cursors.SizeNWSE, Cursors.SizeNS,
			Cursors.SizeNESW, Cursors.SizeWE, Cursors.SizeNWSE, Cursors.SizeNS,
			Cursors.SizeNESW, Cursors.SizeWE};
        private Cursor oldCursor;

        private const int MIN_SIZE = 20;

        private struct FieldPropertyType
        {
            public string name;
            public string value;
        }
        private List<FieldPropertyType> fieldProperties = new List<FieldPropertyType>();

        private List<string> fieldRules = new List<string>();


        /// <summary>
        /// Field()
        /// Constructor
        /// </summary>
        public IGenField()
        {

            try
            {
                typedControl = new Control();
                InitializeApp();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Field > " + ex.Message);
            }

        }




        /// <summary>
        /// Field(Control container, string ctrlName, string ctrlType, string ctrlText, int X, int Y, int width, int height, string innerType)
        /// Constructor
        /// </summary>
        /// <param name="container"></param>
        /// <param name="ctrlName"></param>
        /// <param name="ctrlType"></param>
        /// <param name="ctrlText"></param>
        /// <param name="X"></param>
        /// <param name="Y"></param>
        /// <param name="width"></param>
        /// <param name="height"></param>
        /// <param name="innerType"></param>
        public IGenField(string ctrlName, string ctrlType, string ctrlText, int X, int Y, int width, int height, string innerType)
        {

            try
            {
                InitializeApp();

                typedControl = CommonRoutines.CreateControlOfType(ctrlType);
                if (typedControl != null)
                {
                    typedControl.Name = ctrlName;
                    typedControl.Text = ctrlText;
                    typedControl.Left = X;
                    typedControl.Top = Y;
                    typedControl.Width = width;
                    typedControl.Height = height;
                }
                //innerType = innerType;
                text = ctrlText;
                imageName = innerType + ".png";

                // set the handles
                SetHandles();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Field(s,s,i,i,i,i) > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// InitializeApp()
        /// Initialize the app
        /// </summary>
        private void InitializeApp()
        {

            try
            {
                typedControl = null;
                controlContainer = null;
                name = "";
                type = "";
                text = "";
                value = "";
                innerType = "";
                imageName = "";
                formatMask = "";
                sourceDesignation = "";
                img = null;
                left = 0;
                top = 0;
                width = 0;
                height = 0;
                tabIndex = 0;
                foreColor = "Black";
                backColor = "White";
                list = "";
                dataType = "";
                fontName = "Microsoft Sans Sarif";
                fontSize = 12.0F;
                fontBold = false;
                fontItalic = false;
                fontUnderline = false;
                alignment = "";
                tag = "";

                // init the handles
                for (int n = 0; n < lbls.Length; n++)
                {
                    lbls[n] = new Label();
                    lbls[n].Name = "$HANDLE_" + n;
                    lbls[n].Top = 0;
                    lbls[n].Left = 0;
                    lbls[n].Width = BOX_SIZE;
                    lbls[n].Height = BOX_SIZE;
                    lbls[n].BackColor = BOX_COLOR;
                    lbls[n].Visible = false;
                    lbls[n].MouseMove += new MouseEventHandler(lbl_MouseMove);
                    lbls[n].MouseDown += new MouseEventHandler(lbl_MouseDown);
                    lbls[n].MouseUp += new MouseEventHandler(lbl_MouseUp);
                    lbls[n].TabIndex = n;
                    lbls[n].FlatStyle = 0;
                    lbls[n].BorderStyle = BorderStyle.FixedSingle;
                    lbls[n].Cursor = arrArrow[n];
                    lbls[n].Text = "";
                    lbls[n].BringToFront();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void SetFocus()
        /// Set focus to this object
        /// </summary>
        public void SetFocus()
        {

            try
            {
                // show the focus labels
                ShowHandles();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetFocus > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void LoseFocus()
        /// Lose focus on this object
        /// </summary>
        public void LoseFocus()
        {

            try
            {
                // hide the focus labels
                HideHandles();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".LoseFocus > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void lbl_MouseDown(object sender, MouseEventArgs e)
        /// Store control position and size when mouse button pushed over
        /// any sizing handle
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lbl_MouseDown(object sender, MouseEventArgs e)
        {

            try
            {
                dragging = true;
                startl = controlContainer.Left;
                startt = controlContainer.Top;
                startw = controlContainer.Width;
                starth = controlContainer.Height;
                HideHandles();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".lbl_MouseDown > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void lbl_MouseMove(object sender, MouseEventArgs e)
        /// Size the picked control in accordance with sizing handle being dragged
        ///	0   1   2
        /// 7       3
        /// 6   5   4
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lbl_MouseMove(object sender, MouseEventArgs e)
        {

            try
            {
                int l = controlContainer.Left;
                int w = controlContainer.Width;
                int t = controlContainer.Top;
                int h = controlContainer.Height;

                if (dragging)
                {
                    switch (((Label)sender).TabIndex)
                    {
                        case 0: // Dragging top-left sizing box
                            l = startl + e.X < startl + startw - MIN_SIZE ? startl + e.X : startl + startw - MIN_SIZE;
                            t = startt + e.Y < startt + starth - MIN_SIZE ? startt + e.Y : startt + starth - MIN_SIZE;
                            w = startl + startw - controlContainer.Left;
                            h = startt + starth - controlContainer.Top;
                            break;
                        case 1: // Dragging top-center sizing box
                            t = startt + e.Y < startt + starth - MIN_SIZE ? startt + e.Y : startt + starth - MIN_SIZE;
                            h = startt + starth - controlContainer.Top;
                            break;
                        case 2: // Dragging top-right sizing box
                            w = startw + e.X > MIN_SIZE ? startw + e.X : MIN_SIZE;
                            t = startt + e.Y < startt + starth - MIN_SIZE ? startt + e.Y : startt + starth - MIN_SIZE;
                            h = startt + starth - controlContainer.Top;
                            break;
                        case 3: // Dragging right-middle sizing box
                            w = startw + e.X > MIN_SIZE ? startw + e.X : MIN_SIZE;
                            break;
                        case 4: // Dragging right-bottom sizing box
                            w = startw + e.X > MIN_SIZE ? startw + e.X : MIN_SIZE;
                            h = starth + e.Y > MIN_SIZE ? starth + e.Y : MIN_SIZE;
                            break;
                        case 5: // Dragging center-bottom sizing box
                            h = starth + e.Y > MIN_SIZE ? starth + e.Y : MIN_SIZE;
                            break;
                        case 6: // Dragging left-bottom sizing box
                            l = startl + e.X < startl + startw - MIN_SIZE ? startl + e.X : startl + startw - MIN_SIZE;
                            w = startl + startw - controlContainer.Left;
                            h = starth + e.Y > MIN_SIZE ? starth + e.Y : MIN_SIZE;
                            break;
                        case 7: // Dragging left-middle sizing box
                            l = startl + e.X < startl + startw - MIN_SIZE ? startl + e.X : startl + startw - MIN_SIZE;
                            w = startl + startw - controlContainer.Left;
                            break;
                    }
                    l = (l < 0) ? 0 : l;
                    t = (t < 0) ? 0 : t;
                    controlContainer.SetBounds(l, t, w, h);
                    // set the object position and size
                    left = l;
                    top = t;
                    width = w;
                    height = h;
                    controlContainer.Refresh();
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".lbl_MouseMove > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void lbl_MouseUp(object sender, MouseEventArgs e)
        /// Display sizing handles around picked control once sizing has completed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lbl_MouseUp(object sender, MouseEventArgs e)
        {

            try
            {
                dragging = false;
                MoveHandles();
                ShowHandles();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".lbl_MouseUp > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void HideHandles()
        /// Hide the sizing handles
        /// </summary>
        public void HideHandles()
        {

            try
            {
                for (int n = 0; n < lbls.Length; n++)
                {
                    lbls[n].Visible = false;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".HideHandles > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void ShowHandles()
        /// Show the sizing handles
        /// </summary>
        public void ShowHandles()
        {

            try
            {
                for (int n = 0; n < lbls.Length; n++)
                {
                    lbls[n].Visible = true;
                }

                controlContainer.Refresh();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ShowHandles > " + ex.Message);
            }

            return;

        }



        public void SetHandles()
        {

            try
            {
                SetHandles(false);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetHandles > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void SetHandles(bool visibleFlag)
        /// Set the resizing handles
        /// </summary>
        public void SetHandles(bool visibleFlag)
        {

            try
            {
                for (int n = 0; n < lbls.Length; n++)
                {
                    lbls[n].Visible = visibleFlag;
                    lbls[n].Parent = controlContainer;
                }

                // set their positions
                MoveHandles();

                controlContainer.Refresh();

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetHandles > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void MoveHandles()
        /// Move the sizing handles
        /// </summary>
        public void MoveHandles()
        {

            try
            {
                int sX = 0; // control.Left - BOX_SIZE;
                int sY = 0; // control.Top - BOX_SIZE;
                int sW = controlContainer.Width;
                int sH = controlContainer.Height;
                int hB = BOX_SIZE;

                int[] arrPosX = new int[] {sX,           // 0,0
                                       sX + sW / 2 - (hB / 2),     // middle of top of control
                                       sX + sW-hB,      // far right corner
                                       sX + sW-hB,      // middle of height of control
            			               sX + sW-hB,      // far right, middle of height of control
                                       sX + sW / 2 - (hB / 2),     // 
                                       sX, 
                                       sX};

                int[] arrPosY = new int[] {sY, 
                                       sY, 
                                       sY, 
                                       sY + sH / 2 - (hB / 2), 
                                       sY + sH-hB,
            			               sY + sH-hB, 
                                       sY + sH-hB, 
                                       sY + sH / 2 - (hB / 2)};

                // set the top handles
                for (int n = 0; n < lbls.Length; n++)
                {
                    lbls[n].SetBounds(arrPosX[n], arrPosY[n], BOX_SIZE, BOX_SIZE);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".MoveHandles > " + ex.Message);
            }

            return;

        }








        /// <summary>
        /// string GetProperty(string property)
        /// Get the property passed
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public string GetProperty(string property)
        {
            string _value = "";

            try
            {
                foreach (FieldPropertyType _property in fieldProperties)
                {
                    if (_property.name.ToUpper().Equals(property.ToUpper()))
                    {
                        _value = _property.value;
                        break;
                    }

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetProperty > " + ex.Message);
            }

            return _value;

        }







        /// <summary>
        /// void SetProperty(string property, string value)
        /// Set the property passed with the passed value
        /// </summary>
        /// <param name="property"></param>
        /// <param name="value"></param>
        public void SetProperty(string property, string value)
        {

            try
            {
                for (int n = 0; n < fieldProperties.Count; n++)
                {
                    if (fieldProperties[n].name.ToUpper().Equals(property.ToUpper()))
                    {
                        SetProperty(n, value);
                        break;
                    }

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetProperty(s,s) > " + ex.Message);
            }

            return;

        }






        /// <summary>
        /// void SetProperty(int property, string value)
        /// Set the property passed with the passed value
        /// </summary>
        /// <param name="property"></param>
        /// <param name="value"></param>
        public void SetProperty(int property, string value)
        {

            try
            {
                if (property >= 0 && property < fieldProperties.Count)
                {
                    FieldPropertyType _fieldProperty = fieldProperties[property];
                    _fieldProperty.value = value;
                    fieldProperties[property] = _fieldProperty;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetProperty(i,s) > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void RemoveProperty(string property)
        /// Remove the passed property
        /// </summary>
        /// <param name="property"></param>
        public void RemoveProperty(string property)
        {

            try
            {
                for (int n = 0; n < fieldProperties.Count; n++)
                {
                    if (fieldProperties[n].name.ToUpper().Equals(property.ToUpper()))
                    {
                        RemoveProperty(n);
                        break;
                    }

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".RemoveProperty(s) > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void RemoveProperty(int property)
        /// Remove the passed property
        /// </summary>
        /// <param name="property"></param>

        public void RemoveProperty(int property)
        {

            try
            {
                if (property >= 0 && property < fieldProperties.Count)
                {
                    fieldProperties.RemoveAt(property);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".RemoveProperty(i) > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void AddProperty(string property, string value)
        /// Add a property
        /// </summary>
        /// <param name="property"></param>
        /// <param name="value"></param>
        public void AddProperty(string property, string value)
        {
            int _foundIndex = -1;

            try
            {
                for (int n = 0; n < fieldProperties.Count; n++)
                {
                    if (fieldProperties[n].name.ToUpper().Equals(property.ToUpper()))
                    {
                        _foundIndex = n;
                        break;
                    }

                }

                if (_foundIndex >= 0)
                {
                    // replace the value
                    SetProperty(_foundIndex, value);
                }
                else
                {
                    // add the property
                    FieldPropertyType _fieldProperty = new FieldPropertyType();
                    _fieldProperty.name = property;
                    _fieldProperty.value = value;
                    fieldProperties.Add(_fieldProperty);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".AddProperty > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// List<string[]> GetAttributes()
        /// Return the attributes
        /// </summary>
        /// <returns></returns>
        public List<string[]> GetAttributes()
        {
            List<string[]> _attributes = new List<string[]>();

            try
            {
                _attributes.Add(new string[] { "Name", name });
                _attributes.Add(new string[] { "Type^", type });
                _attributes.Add(new string[] { "DataType^", dataType });
                _attributes.Add(new string[] { "Caption", text });
                _attributes.Add(new string[] { "Visible", visible.ToString() });
                _attributes.Add(new string[] { "FormatMask", formatMask });
                _attributes.Add(new string[] { "Value", value });
                _attributes.Add(new string[] { "Compiled Value", compiledValue });
                _attributes.Add(new string[] { "List", list });
                _attributes.Add(new string[] { "Alignment", alignment });
                _attributes.Add(new string[] { "EDIFlag", ediFlag });
                _attributes.Add(new string[] { "EDIName", ediName });
                _attributes.Add(new string[] { "Layer", layer.ToString() });
                _attributes.Add(new string[] { "Image", imageName });
                _attributes.Add(new string[] { "Left", left.ToString() });
                _attributes.Add(new string[] { "Top", top.ToString() });
                _attributes.Add(new string[] { "Width", width.ToString() });
                _attributes.Add(new string[] { "Height", height.ToString() });
                _attributes.Add(new string[] { "WrapText", wrapText.ToString() });
                _attributes.Add(new string[] { "TabOrder", tabIndex.ToString() });
                _attributes.Add(new string[] { "BackColor", backColor });
                _attributes.Add(new string[] { "ForeColor", foreColor });
                _attributes.Add(new string[] { "FontName", fontName });
                _attributes.Add(new string[] { "FontSize", fontSize.ToString() });
                _attributes.Add(new string[] { "FontBold", fontBold.ToString() });
                _attributes.Add(new string[] { "FontItalic", fontItalic.ToString() });
                _attributes.Add(new string[] { "FontUnderline", fontUnderline.ToString() });
                _attributes.Add(new string[] { "Exempt from SUM", exemptFromSum });

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetAttributes > " + ex.Message);
            }

            return _attributes;

        }





        /// <summary>
        /// List<string[]> GetProperties()
        /// Get the properties
        /// </summary>
        /// <returns></returns>
        public List<string[]> GetProperties()
        {
            List<string[]> _properties = new List<string[]>();

            try
            {
                foreach (FieldPropertyType _property in fieldProperties)
                {
                    string[] _parts = { _property.name, _property.value };
                    _properties.Add(_parts);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetProperties > " + ex.Message);
            }

            return _properties;

        }




        /// <summary>
        /// List<string[]> GetProperties()
        /// Get the properties
        /// </summary>
        /// <returns></returns>
        public List<string> GetRules()
        {
            List<string> _rules = new List<string>();

            try
            {
                _rules = fieldRules;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetRules > " + ex.Message);
            }

            return _rules;

        }





    }


    [Serializable]
    public class Signature  //: SigPlusNET 
    {
        private string moduleName = "Signature";

        public string signatureEntered = "";

        int penWidth = 1;

        public Signature()
        {

            try
            {
                InitializeApp();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Signature > " + ex.Message);
            }

            return;

        }

        /// <summary>
        /// InitializeApp()
        /// Initialize the app
        /// </summary>
        private void InitializeApp()
        {

            try
            {
                //this.ClearTablet();
                //this.BackColor = Color.LightBlue;
                //this.SetImagePenWidth(penWidth);
                //this.SetDisplayPenWidth(penWidth);

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".InitializeApp > " + ex.Message);
            }

            return;

        }



        public void OnClear()
        {

            try
            {
                //this.ClearTablet();
                //this.SetTabletState(0);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".OnClear > " + ex.Message);
            }

            return;

        }




        public void OnCancel()
        {

            try
            {
                //this.SetTabletState(0);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".OnCancel > " + ex.Message);
            }

            return;

        }




        public void OnSave()
        {

            try
            {
                //this.SetTabletState(0);
                //signatureEntered = this.GetSigString();
                //OnClear();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".OnSave > " + ex.Message);
            }

            return;

        }




    }



    public class IGenDataset
    {
        private static string moduleName = "IGenDataset";

        public string cursorName;
        public string sql = "";
        public string[] fieldNames = { };
        public SqlDataReader cursor;
        public SqlDataAdapter dataAdapter;
        public DataTable dataTable;
        public List<IGenPage> pages = new List<IGenPage>();
        public List<string[]> results;
        public int numRows = 0;
        public int currentPosition = 0;
        public int currentPageNo = 0;
        public bool createSymbolics = false;
        public int referenceDatasetOrdinal = -1;        // this is the global dataset that will be called for the results

        public bool eof = false;
        public bool bof = false;
        public bool pageBreak = false;




        public IGenDataset()
        {


        }


        public IGenDataset Clone()
        {
            IGenDataset _cloneToDataset = new IGenDataset();

            try
            {
                // clone this properties to the passed dataset
                _cloneToDataset.cursorName = this.cursorName;
                _cloneToDataset.sql = this.sql;
                _cloneToDataset.fieldNames = this.fieldNames;
                _cloneToDataset.cursor = this.cursor;
                _cloneToDataset.pages = new List<IGenPage>();
                _cloneToDataset.results = this.results;
                _cloneToDataset.numRows = this.numRows;
                _cloneToDataset.currentPosition = this.currentPosition;
                _cloneToDataset.currentPageNo = this.currentPageNo;
                _cloneToDataset.createSymbolics = this.createSymbolics;
                _cloneToDataset.referenceDatasetOrdinal = this.referenceDatasetOrdinal;
                _cloneToDataset.pageBreak = this.pageBreak;
                _cloneToDataset.eof = this.eof;
                _cloneToDataset.bof = this.bof;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Clone > " + ex.Message);
            }

            return _cloneToDataset;

        }






        public List<string[]> GetRows(int numRows)
        {
            List<string[]> _rows = new List<string[]>();

            try
            {
                _rows = GetRows(currentPosition, numRows);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetRows > " + ex.Message);
            }

            return _rows;

        }




        public List<string[]> GetRows(int position, int numRows)
        {
            List<string[]> _rows = new List<string[]>();
            int _position = position - 1;

            try
            {
                if (dataTable != null)
                {
                    if (dataTable.Rows.Count > 0)
                    {
                        if (_position < 0)
                        {
                            _position = 0;
                        }

                        currentPosition = position;

                        //for (int n = 0; n < numRows; n++)
                        //{
                        //    _rows.Add(GetRow());
                        //    currentPosition++;
                        //}
                        // load the _foundrows array

                        _rows.Add(fieldNames);

                        for (int n = 0; n < numRows; n++)
                        {
                            List<string> _foundRows = new List<string>();

                            object[] _dtRows = dataTable.Rows[_position].ItemArray;
                            // add it to the dtrows
                            for (int m = 0; m < _dtRows.Length; m++)
                            {
                                _foundRows.Add(_dtRows[m].ToString());
                            }
                            _rows.Add(_foundRows.ToArray());

                            _position = _position + 1;
                            if (_position >= this.numRows)
                            {
                                break;
                            }

                        }

                        //if (_foundRows.Length > 0)
                        //{
                        //    for (int n = 0; n < numRows; n++)
                        //    {
                        //        for (int m = 0; m < _foundRows.Length; m++)
                        //        {
                        //            _rows.Add(_foundRows);
                        //            _position = _position + 1;
                        //            _foundRows = (string[])dataTable.Rows[_position].ItemArray;
                        //        }
                        //    }
                        //}
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetRows > " + ex.Message);
            }

            return _rows;

        }




        public string[] GetRow()
        {
            string[] _row = { };

            try
            {
                _row = GetRow(currentPosition);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetRow > " + ex.Message);
            }

            return _row;

        }





        public string GetColumnValue(string columnName, int rowIndex)
        {
            string _columnValue = "";

            try
            {
                // find the column
                for (int n = 0; n < fieldNames.Length; n++)
                {
                    if (fieldNames[n].ToUpper() == columnName.ToUpper())
                    {
                        // get the value
                        _columnValue = GetColumnValue(n, rowIndex);
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetColumnValue(s,i) > " + ex.Message);
            }

            return _columnValue;

        }





        public string GetColumnValue(int columnIndex, int rowIndex)
        {
            string _columnValue = "";

            try
            {
                if (columnIndex >= 0 && columnIndex <= numRows)
                {
                    string[] _row = GetRow(rowIndex);

                    _columnValue = _row[columnIndex];
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetColumnValue(i,i) > " + ex.Message);
            }

            return _columnValue;

        }






        public string[] GetRow(int position)
        {
            string[] _row = { };

            try
            {
                if (position > 0 && position <= numRows)
                {
                    _row = results[position];
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetRow(i) > " + ex.Message);
            }

            return _row;

        }





        public int GetRowCount()
        {
            int _numRows = 0;

            try
            {
                // take the sql and strip the field list
                int _fromOffset = sql.ToUpper().IndexOf(" FROM ");
                if (_fromOffset > 0)
                {
               //     string _sql = "Select count(*) " + sql.Substring(_fromOffset);

                    // resolve symbolics 
              //      _sql = IGenFormCommonRoutines.ResolveSymbolics(_sql);

                    // check for an order by
               //     int _orderOffset = _sql.ToUpper().IndexOf(" ORDER BY ");
               //     if (_orderOffset > 0)
               //     {
               //         _sql = _sql.Substring(0, _orderOffset);
               //     }

               //     List<string[]> _rows = DatabaseRoutines.Select(DatabaseRoutines.MainConnection, DatabaseRoutines.MainDBMS, _sql);
               //     if (_rows.Count > 0)
               //     {
                        // first row, first field should be the number of rows
               //         if (_rows[1][0] != "")
               //         {
               //             _numRows = CommonRoutines.ConvertToInt(_rows[1][0]);
               //         }
               //     }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetRowCount > " + ex.Message);
            }

            return _numRows;

        }





        public int MoveFirst()
        {

            try
            {
                currentPosition = 1;
                eof = false;
                bof = false;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".MoveFirst > " + ex.Message);
            }

            return currentPosition;

        }





        public int MoveLast()
        {

            try
            {
                currentPosition = numRows;
                eof = false;
                bof = false;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".MoveLast > " + ex.Message);
            }

            return currentPosition;

        }




        public int MoveNext()
        {

            try
            {
                MoveNext(1);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".MoveNext > " + ex.Message);
            }

            return currentPosition;

        }




        public int MoveNext(int moveRows)
        {

            try
            {
                currentPosition = currentPosition + moveRows;
                if (currentPosition > numRows)
                {
                    currentPosition = numRows;
                    eof = true;
                    bof = false;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".MoveNext(i) > " + ex.Message);
            }

            return currentPosition;

        }




        public int MovePrevious()
        {

            try
            {
                MovePrevious(1);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".MovePrevious > " + ex.Message);
            }

            return currentPosition;

        }





        public int MovePrevious(int moveRows)
        {

            try
            {
                currentPosition = currentPosition - moveRows;
                if (currentPosition < 1)
                {
                    currentPosition = 1;
                    eof = false;
                    bof = true;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".MovePrevious(i) > " + ex.Message);
            }

            return currentPosition;

        }





        public int Move(int position)
        {

            try
            {
                if (position > 0 && position <= numRows)
                {
                    currentPosition = position;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Move(i) > " + ex.Message);
            }

            return currentPosition;

        }




        public string[] FindRow(string criteria)
        {
            List<string> _foundRow = new List<string>();

            try
            {
                // for the current datatable, find the first row that satisfies the passed criteria
                DataRow[] _foundRows = dataTable.Select(criteria);
                if (_foundRows.Length > 0)
                {
                    // found it
                    DataRow _dataRow = _foundRows[0];
                    for (int n = 0; n < _dataRow.ItemArray.Length; n++)
                    {
                        string _value = (_dataRow.ItemArray[n] != null) ? _dataRow.ItemArray[n].ToString() : "";
                        _foundRow.Add(_value);
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".FindRow > " + ex.Message);
            }

            return _foundRow.ToArray();

        }




        public bool Execute()
        {
            bool _status = false;

            try
            {
                // check for any symbolics in the sql
                string _sql = IGenFormCommonRoutines.ResolveSymbolics(sql);
                
                IGenDataset _dataset = DatabaseRoutines.SelectCursor(DatabaseRoutines.MainConnection, 
                                DatabaseRoutines.MainDBMS, 
                                cursorName, 
                                _sql, 
                                true);

                if (_dataset.currentPosition >= 0)
                {
                    this.dataTable = _dataset.dataTable;
                    this.results = _dataset.results;
                    this.numRows = _dataset.numRows;
                    this.currentPosition = _dataset.currentPosition;

                    // do we create symbolics of the first row?
                    if (this.createSymbolics)
                    {
                        // get the first row
                        if (this.dataTable.Rows.Count > 0)
                        {
                            List<string[]> _rows = GetRows(1);
                            // first entry is the fields
                            if (_rows.Count > 0)
                            {
                                string[] _fieldNames = _rows[0];
                                string[] _values = _rows[1];
                                for (int n = 0; n < _fieldNames.Length; n++)
                                {
                                    CSA.AddProperty("DS", _fieldNames[n], _values[n]);

                                }
                            }
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Execute > " + ex.Message);
            }

            return _status;

        }










    }

    public class IGenPage
    {
        private string moduleName = "IGenPage";

        public int datasetOrdinal = 0;
        public int pageNo = 0;
        public int startingRow = 0;
        public int endingRow = 0;
        public string breakCriteria = "";
        public string breakValues = "";
        public string breakFieldName = "";
        public bool pageBreak = false;
        public bool lastPage = false;

        public List<IGenBreakFieldVariables> breakFieldVariables = new List<IGenBreakFieldVariables>();


        public IGenPage()
        {

            try
            {
                datasetOrdinal = -1;
                pageNo = -1;
                startingRow = -1;
                endingRow = -1;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".IGenPage() > " + ex.Message);
            }

            return;

        }




        public void SetPageBreakVariable(IGenBreakFieldVariables breakFieldVariable)
        {

            try
            {
                SetPageBreakVariable(breakFieldVariable.breakFieldName,
                                     breakFieldVariable.atBegin.ToString(),
                                     breakFieldVariable.atEnd.ToString(),
                                     breakFieldVariable.current,
                                     breakFieldVariable.prev,
                                     breakFieldVariable.next);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetPageBreakVariable(udt) > " + ex.Message);
            }

            return;

        }





        public void SetPageBreakVariable(string breakVariableName, string atBeginningOfBreak, string atEndOfBreak, string currentValue, string prevValue, string nextValue)
        {
            bool _found = false;

            try
            {
                // find the variable in the pool
                for (int n = 0; n < breakFieldVariables.Count;n++)
                {
                    if (breakFieldVariables[n].breakFieldName.ToUpper().Equals(breakVariableName.ToUpper()))
                    {
                        IGenBreakFieldVariables _breakFieldVariable = breakFieldVariables[n];

                        // set the values
                        _breakFieldVariable.atBegin = (atBeginningOfBreak != null) ? CommonRoutines.ConvertToBool(atBeginningOfBreak) : false;
                        _breakFieldVariable.atEnd = (atEndOfBreak != null) ? CommonRoutines.ConvertToBool(atEndOfBreak) : false;
                        _breakFieldVariable.current = (currentValue != null) ? currentValue : "";
                        _breakFieldVariable.prev = (prevValue != null) ? prevValue : "";
                        _breakFieldVariable.next = (nextValue != null) ? nextValue : "";

                        breakFieldVariables[n] = _breakFieldVariable;
                        _found = true;

                    }
                }

                // if not found, add
                if (!_found)
                {
                    IGenBreakFieldVariables _breakFieldVariable = new IGenBreakFieldVariables();
                    _breakFieldVariable.breakFieldName = breakVariableName;

                    // set the values
                    _breakFieldVariable.atBegin = (atBeginningOfBreak != null) ? CommonRoutines.ConvertToBool(atBeginningOfBreak) : false;
                    _breakFieldVariable.atEnd = (atEndOfBreak != null) ? CommonRoutines.ConvertToBool(atEndOfBreak) : false;
                    _breakFieldVariable.current = (currentValue != null) ? currentValue : "";
                    _breakFieldVariable.prev = (prevValue != null) ? prevValue : "";
                    _breakFieldVariable.next = (nextValue != null) ? nextValue : "";

                    breakFieldVariables.Add(_breakFieldVariable);
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SetPageBreakVariable(s,b,b,s,s,s) > " + ex.Message);
            }

            return;

        }





        public IGenBreakFieldVariables GetPageBreakVariable(string breakVariableName)
        {
            IGenBreakFieldVariables _breakFieldVariable = null;

            try
            {
                // find the variable in the pool
                for (int n = 0; n < breakFieldVariables.Count; n++)
                {
                    if (breakFieldVariables[n].breakFieldName.ToUpper().Equals(breakVariableName.ToUpper()))
                    {
                        _breakFieldVariable = breakFieldVariables[n];
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetPageBreakVariable(s) > " + ex.Message);
            }

            return _breakFieldVariable;

        }




        public void GetPageBreakVariable(string breakVariableName, ref bool atBeginningOfBreak, ref bool atEndOfBreak, ref string currentValue, ref string prevValue, ref string nextValue)
        {
            IGenBreakFieldVariables _breakFieldVariable = null;

            try
            {
                // find the variable in the pool
                for (int n = 0; n < breakFieldVariables.Count; n++)
                {
                    if (breakFieldVariables[n].breakFieldName.ToUpper().Equals(breakVariableName.ToUpper()))
                    {
                        _breakFieldVariable = breakFieldVariables[n];
                        atBeginningOfBreak = _breakFieldVariable.atBegin;
                        atEndOfBreak = _breakFieldVariable.atEnd;
                        currentValue = _breakFieldVariable.current;
                        prevValue = _breakFieldVariable.prev;
                        nextValue = _breakFieldVariable.next;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetPageBreakVariable(s,b,b,s,s,s) > " + ex.Message);
            }

            return;

        }






        public void UpdateCSAProperties()
        {

            try
            {
                // update the csa settings with the current values
                CSA.SetProperty("","PAGEDATASETORDINAL%", datasetOrdinal.ToString());
                CSA.SetProperty("","PAGENO", pageNo.ToString());
                CSA.SetProperty("","PAGESTARTINGROW", startingRow.ToString());
                CSA.SetProperty("","PAGEENDINGROW", endingRow.ToString());
                CSA.SetProperty("", "PAGEBREAKCRITERIA", breakCriteria);
                CSA.SetProperty("", "PAGEBREAKVALUES", breakValues);
                CSA.SetProperty("","PAGEPAGEBREAK", pageBreak.ToString());
                CSA.SetProperty("", "PAGELASTPAGE", lastPage.ToString());

                foreach (IGenBreakFieldVariables _breakFieldVariable in breakFieldVariables)
                {
                    CSA.SetProperty("", _breakFieldVariable.breakFieldName + "_AT_BEGIN", _breakFieldVariable.atBegin.ToString());
                    CSA.SetProperty("", _breakFieldVariable.breakFieldName + "_AT_END", _breakFieldVariable.atEnd.ToString());
                    CSA.SetProperty("", _breakFieldVariable.breakFieldName + "_CURRENT", _breakFieldVariable.current);
                    CSA.SetProperty("", _breakFieldVariable.breakFieldName + "_PREV", _breakFieldVariable.prev);
                    CSA.SetProperty("", _breakFieldVariable.breakFieldName + "_NEXT", _breakFieldVariable.next);
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".UpdateCSAProperties > " + ex.Message);
            }

            return;

        }

    
    }


    // break field variables
    public class IGenBreakFieldVariables
    {
        public string breakFieldName;  // the name of the field to break on
        public bool atBegin;       // is this the beginning of the break variable set?
        public bool atEnd;         // is this the end of the break variable set?
        public string current;     // current value of the variable
        public string prev;        // last value of the variable
        public string next;        // next value of the variable

    }


}
