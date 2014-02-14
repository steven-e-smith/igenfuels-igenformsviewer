using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace IGenFormsViewer
{
    class CSA
    {

        public static string[] logEntries = {
                            "1.1.0.0    SES     Initial draft",
                            "1.1.1.0    SES     Fixed paging in viewer. ",
                            "1.1.2.0    SES     FB-13623 - IGenFormsViewer showing column names instead of values on first row",
                            "1.1.3.0    SES     FB-11399 - Add DSLOOKUP and DS methods to datasets in IGenForms",
                            "1.1.4.0    SES     FB-13765 - NJ SMF 10 issues",
                            "1.1.5.0    SES     Only replace the schema for those WSTF references that don’t have a schema specified.",
                            "                   FB-13796 - Compile Errors on DSLOOKUP",
                            "1.1.6.0    SES     FB-13625 - Add page break logic to multi-page forms",
                            "                   FB-13932 - Add check in IGenForms to ensure rows per page entered",
                            "1.1.6.1    SES     More on FB-13625 - Got the multi-dataset forms to page correctly and print correctly",
                            "                   FB-10417 - trimmed pageBreak field so it would match field name",
                            "                              Added capability to set DSEOF on a page break so the =DSEOF function would work",
                            "1.1.6.2    SES     Fixed issues with paging and leaving last record off",
                            "1.1.6.3    SES     Added capability to add variables that can be used as %VARIABLENAME% in forms",
                            "1.1.6.4    SES     FB-14267 - Fields not resolving",
                            "1.1.6.5    SES     Added ONLASTPAGE, ONPAGEBREAK and DSSUMFIELD functions",
                            "1.1.6.6    SES     FB-14541 - Odd issues in IGenForms/Viewer",
                            "1.1.6.7    SES     FB - Fuzzy printing of forms - converted printing to PDF from composite bitmap",
                            "1.1.6.8    SES     FB-9624 - Added circle capability",
                            "                   Added zoom feature (50% - 300%)",
                            "1.1.6.9    SES     Added all of the page values from the IGenPage to the CSA properties collection",
                            "                   Added new features to the IGenPage class for doing break determination",
                            "                   Fixed Action/Clear Prompts for the current page",
                            "                   FB-14671 - Fields with captions not showing but impact calculations",
                            "1.1.6.10   SES     FB-14701 - Add capability to the OnPageBreak event",
                            "1.1.6.11   SES     FB-14762 - Only First Page of Multipage Forms Printing and Other Printing Issues",
                            "1.1.6.12   SES     FB-14789 - Add symbolic variables to dataset SQL statements",
                            "                   FB-14790 - Add ability to specify the number of pages to print on the print form",
                            "1.1.6.13   SES     Fixed where UDF parms were having the commas stripped.  In the IGenFormCommonRoutines.ResolveValue routine it was stripping " +
                            "                   commas and dollar signs if the field was a numeric type.  checked to make sure doing that resulted in a numeric value, if not " +
                            "                   the value was not changed and was let thru to the resolve symbolics routine"
                        };




        // passed properties from caller
//        public static List<string[]> properties = new List<string[]>();

        public static bool loggedOn = false;
        public static string loggedOnUser = "";
        public static bool loggedOnAsAdmin = false;
        // values are: None, UserIdPassword and Windows
        public static string securityModel = "UserIdPassword";

        public static string currentPalletFileName = "";

        public static string currentProcessName = "";
        public static int currentProcessId = 0;
        public static string currentProcessCategory = "";
        //LAP 20130508 - display mapping name on the new tab
        public static string currentMappingName = "";
        public static int currentMappingId = 0;
        public static string currentMappingCategory = "";
        public static string currentProcessType = "";

        //SES 20130425 v1.2.12.0
        public static int maxExecutionStatus = 0;

        // here are the currently open pallets
        public static TabControl openPallets = null;

        // these are the values for the selected process
        public static string processTreeCategory = "";
        public static string processTreeName = "";
        public static string processTreeDescription = "";

        public static string currentFirstWidget = "";
        public static TreeNode currentProcessTreeNode = null;
        public static TreeNode currentMappingTreeNode = null;

        public static bool continueOperation = false;


        public static int toolHeight = 48;
        public static int toolWidth = 48;

        // this will contain all of the common data between etl objects
        public static PictureBox currentPallet = null;
        public static Control currentControl = null;
        public static Control sourceControl = null;
        public static Control targetControl = null;
        public static Control currentAttributesControl = null;
        public static string currentUser = "";

        public static string inputFileName = "";
        public static string outputFileName = "";
        public static string lastStatus = "";
        public static string lastRightClickItem = "";

        public static List<string> inputRecords = new List<string>();
        public static List<string> outputRecords = new List<string>();

        // mapping fields
        public static List<string> mappedRecords = new List<string>();
        public static string mappingFileName = "";
        public struct mappingFieldsType
        {
            public string inFieldName;
            public string outFieldName;
            public int inFieldOrdinal;
            public int outFieldOrdinal;
        }
        public static List<mappingFieldsType> mappingFields = new List<mappingFieldsType>();

        public static string connectionDBMS = "";
        public static string connectionString = "";

        //public static string[] astrControls = { "ReadFile|Input", "Database|Database", "Writefile|Output", "Decision|Decision", "Process|Process", "SQL|SQL" };

        public static string[] genericItems = { "Change Picture|ChangePicture", "Set First|SetFirst", "Set Link to Target|SetLink", "Clear Links|ClearLink", "Delete|Delete", "Cut|Cut", "Copy|Copy"};
        public static string[] palletItems = { "Paste|Paste" };
        public static string[] inputFileItems = { "FileName|FileName", "First Row Header|HdrsFirstRow", "Map|Map" };
        public static string[] outputFileItems = { "FileName|FileName", "First Row Header|HdrsFirstRow", "Map|Map"};
        public static string[] mapItems = { "FileName|FileName", "Map|Map"};
        public static string[] defaultItems = { "Edit|Edit"};
        public static string[] displaySQLItems = { "SQL Widgets|SQLWidget" };
        public static string[] formItems = { "Edit Form|Edit" };
        public static string[] databaseItems = { "ConnectionObject|ConnectionObject", "Create Table|CreateTable", "Delete Table|DeleteTable", "Rename Table|RenameTable", "Copy Table|CopyTable"};  // "Table Commands|TableCommands" };
        public static string[] databaseSubItems = { "Create Table|CreateTable", "Delete Table|DeleteTable", "Rename Table|RenameTable", "Copy Table|CopyTable" };
        public static string[] decisionItems = { "Condition|Condition", "True Link|True", "False Link|False", "Case|Case" };
        public static string[] decisionSubItems = { "Add Case...|AddCase" };
        public static string[] sqlItems = { "ConnectionObject|ConnectionObject", "Build SQL|BuildSQL", "Edit SQL|EditSQL", "Show Results|ShowSQLResults", "Export Results to CSV|ExportSQLToCSV" };
        public static string[] sqlSubItems = { "Select", "Update", "Copy", "Delete", "Stored Procedure", "SQL" };
        public static string[] sqlExportSubItems = { "FileName", "Delimiter", "Separator"};
        public static string[] logItems = { "Message|Message" };
        public static string[] connectionItems = { "Connection|Connection"};
        public static string[] linkItems = { "Delete|Delete" };
        public static string[] separator = { "-|-" };
        public static string[] basicConstants = { "Current Date", "Current Time", "Computer Name", "Current User" };
        public static string[] symbolicConstants = { "%CURRENT_DATE%","%MONTH%","%DAY%","%YEAR%","%CURRENT_TIME%","%COMPUTER_NAME%","%CURRENT_USER%" };
        public static string[] processItems = { "Assign Process|SelectProcessId"};
        public static string[] workflowItems = { "Assign Process/Workflow|SelectWorkflowId" };
        public static string[] widgetItems = { "Edit Widget|WidgetEdit", "Exclude Widget|WidgetExclude" };
        public static string[] widgetPanelItems = { "New Widget|WidgetNew" };
        public static string[] processNodeItems = { "New Process|New", "View|View", "Edit|Edit", "Duplicate|Duplicate", "Rename|Rename", "Delete|Delete", "Print|Print", "-", "Properties|Properties" };
        public static string[] processTreeItems = { "New Category|NewCategory", "New Process|New", "-", "Delete|DeleteCategory", "Rename|RenameCategory" };
        public static string[] processTreeItemsNoNode = { "New Category|NewCategory", "New Process|New"};
        public static string[] processControlItems = { "Run|Run", "Edit|Edit", "Print|Print" };
        public static string[] mappingNodeItems = { "View|View", "Edit|Edit", "Duplicate|Duplicate", "Rename|Rename", "Delete|Delete", "Print|Print", "-", "Properties|Properties" };
        public static string[] mappingTreeItems = { "New Category|NewCategory", "New Mapping|New", "-", "Delete|DeleteCategory", "Rename|RenameCategory" };
        public static string[] mappingTreeItemsNoNode = { "New Category|NewCategory", "New Mapping|New"};
        public static string[] promptItems = { "Inputs|PromptInputs" };
        public static string[] entityTreeItems = { "New Automated Process|P_New", "New Workflow|W_New", "New Workflow Template|T_New", "-", "New Mapping|M_New", "-", "New Form|F_New" };
        // IGenForms widget
        public static string[] igenformsItems = { "ConnectionObject|ConnectionObject", "Form Group|FormGroup", "Form SQL|FormSQL" };
        public static string[] formsCategoryItems = { "New Form|FC_New", "Rename|FC_Rename", "Delete|FC_Delete", "-", "Properties|Properties" };
        public static string[] formsItems = { "Edit|F_Edit", "-", "Rename|F_Rename", "Delete|F_Delete", "-", "Edit XML|EditXML", "-", "Properties|Properties" };

        
        // LP - dbimport, dbexport
        public static string[] dbImportItems = { "ConnectionObject|ConnectionObject", "Import|Import" };
        public static string[] dbExportItems = { "ConnectionObject|ConnectionObject", "Export|Export" };

        //LAP 20130426 - DBImport progress calculation
        public struct udtFileProperties
        {
            public string fileName;
            public long fileSize;
        }
        public static List<udtFileProperties> fileProperties = new List<udtFileProperties>();
        public static long totalfileSize = 0;

        public static Control copyControl = null;
        public static List<Control> copyControls = new List<Control>();
        public static Control cutControl = null;
        public static List<Control> cutControls = new List<Control>();
        public static bool pastInProcess = false;
        public static int copyCount = 0;
        public static int palletX = 0;
        public static int palletY = 0;
        public static Control hasFocus = new Control();

        public static List<Control> selectedControls = new List<Control>();

        // external routine widget values
        public const string externalNameSpace = "eTlDLL";
        public const string externalClassName = "eTlDLL";

        // modes
        public static bool newMode = false;
        public static bool editMode = false;
        public static bool loadMode = false;


        // control keys
        public static bool controlKeyDown = false;
        public static bool altKeyDown = false;
        public static int lastKeyPressed = 0;

        // string delimiter special chars
        public static string sqlCriteriaPartsDelimiter = ":";

        #region [Properties]

        // property bag
        private struct udtProperty
        {
            public string parentName;
            public string propertyName;
            public string propertyValue;
        }

        private static List<udtProperty> properties = new List<udtProperty>();

        public static int AddProperty(string parent, string name, string value)
        {
            int _newPropertyIndex = -1;
            bool _found = false;
            udtProperty _propertyFound = new udtProperty();

            try
            {
                for (int n=0;n<properties.Count;n++)
                {
                    if (properties[n].parentName.ToUpper() == parent.ToUpper() || parent.Trim() == "")
                    {
                        if (properties[n].propertyName.ToUpper() == name.ToUpper())
                        {
                            // replace the value
                            _propertyFound = properties[n];
                            _propertyFound.propertyValue = value;
                            properties[n] = _propertyFound;
                            _found = true;
                            break;
                        }
                    }
                }

                // if not found, add
                if (!_found)
                {
                    _propertyFound.parentName = parent;
                    _propertyFound.propertyName = name;
                    _propertyFound.propertyValue = value;
                    properties.Add(_propertyFound);
                    _newPropertyIndex = properties.Count;
                }

            }
            catch (Exception ex)
            {
            }

            return _newPropertyIndex;
        }



        public static int SetProperty(string parent, string name, string value)
        {
            int _newPropertyIndex = -1;
            bool _found = false;
            udtProperty _propertyFound = new udtProperty();

            try
            {
                for (int n = 0; n < properties.Count; n++)
                {
                    if (properties[n].parentName.ToUpper() == parent.ToUpper())
                    {
                        if (properties[n].propertyName.ToUpper() == name.ToUpper())
                        {
                            // replace the value
                            _propertyFound = properties[n];
                            _propertyFound.propertyValue = value;
                            properties[n] = _propertyFound;
                            _found = true;
                            break;
                        }
                    }
                }

                // if not found, add
                if (!_found)
                {
                    _propertyFound.parentName = parent;
                    _propertyFound.propertyName = name;
                    _propertyFound.propertyValue = value;
                    properties.Add(_propertyFound);
                    _newPropertyIndex = properties.Count;
                }

            }
            catch (Exception ex)
            {
            }

            return _newPropertyIndex;
        }




        public static string GetProperty(string parent, string name)
        {
            string _value = "^";

            try
            {
                foreach (udtProperty _property in properties)
                {
                    if (_property.parentName.ToUpper() == parent.ToUpper() || parent.Trim() == "")
                    {
                        if (_property.propertyName.ToUpper() == name.ToUpper())
                        {
                            _value = _property.propertyValue;
                            break;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
            }

            return _value;

        }



        public static List<string[]> GetProperties(string parent)
        {
            List<string[]> _values = new List<string[]>();

            try
            {
                foreach (udtProperty _property in properties)
                {
                    if (_property.parentName.ToUpper() == parent.ToUpper() || parent.Trim() == "")
                    {
                        string _propertyName = _property.parentName != "" ? _property.parentName + "." : "";
                        _propertyName = _propertyName + _property.propertyName;
                        string _propertyValue = _property.propertyValue;
                        string[] _propertyPair = { _propertyName, _propertyValue };
                        _values.Add(_propertyPair);
                    }
                }
            }
            catch (Exception ex)
            {
            }

            return _values;

        }



        #endregion [Properties]


    }
}

