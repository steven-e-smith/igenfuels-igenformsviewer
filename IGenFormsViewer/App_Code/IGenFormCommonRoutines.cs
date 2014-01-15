using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Reflection;
using System.Drawing;
using System.Globalization;



namespace IGenFormsViewer
{
    public class IGenFormCommonRoutines
    {
        private static string moduleName = "IGenFormCommonRoutines";

        public static IGenFormsMain currentIGenForms = null;
        public static IGenForm currentIGenForm = null;

        public static string dateLastPrepared = "";
        public static string formGroupVersion = "";

        public static string connectionString = "";
        public static string connectionDBMS = "";

        public static bool runMode = false;
        public static bool instantiatedMode = false;

        public static string[] functions = { "SUM(field, field, field,...)", "SUM(field*)", "ADD(field, field, field, ....)", "ADD(field*)" };
        public static Color[] _layerColors = { Color.White, Color.Red, Color.Orange, Color.Yellow, Color.Green, Color.Blue, Color.Indigo, Color.Violet };
        public static string[] _layerOrder = { "None", "First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh" };

        public static string[] symbolics = { "TODAY", "DATE", "MONTH", "YEAR", "DAY", "SOURCE", "ROW", "TOTALROWS", "PAGE", "PAGES", "TOTALPAGES", "RETURNID" };

        public static bool severeError = false;
        public static List<string> _processMessages = new List<string>();


        /// <summary>
        /// List<string[]> GetForms()
        /// Get the list of user forms
        /// </summary>
        /// <returns></returns>
        public static List<string> GetForms()
        {
            List<string> _forms = new List<string>();

            try
            {
                // get all the frm files in the formfiles folder
                string _formFileFolder = CommonRoutines.currentPath + "\\formfiles";
                _forms = CommonRoutines.GetDirectoryFiles(_formFileFolder, "*.frm");
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetForms > " + ex.Message);
            }

            return _forms;

        }




        /// <summary>
        /// string GetFormGroupName(string formFile)
        /// Get the list of user forms
        /// </summary>
        /// <returns></returns>
        public static string GetFormGroupName(string formFile)
        {
            string _formGroupName = "";

            try
            {
                // get the group name from the form file passed
                List<string> _recs = CommonRoutines.ReadFile(formFile, 10);

                for (int n = 0; n < _recs.Count; n++)
                {
                    string _rec = _recs[n].ToUpper();
                    if (_rec.IndexOf("<GROUP>") > 0)
                    {
                        // parse out the group
                        _formGroupName = _rec.Replace("<GROUP>", "");
                        _formGroupName = _formGroupName.Replace("</GROUP>", "");
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetFormGroupName > " + ex.Message);
            }

            return _formGroupName;

        }



        /// <summary>
        /// List<string[]> GetFormGroupInfo(string formFile)
        /// Get the form info from the file passed
        /// </summary>
        /// <returns></returns>
        public static List<string[]> GetFormGroupInfo(string formFile)
        {
            List<string[]> _formInfo = new List<string[]>();
            string _tag = "";
            string _value = "";
            bool _formFlag = false;
            bool _fieldFlag = false;

            try
            {
                // get the group name from the form file passed
                List<string> _recs = CommonRoutines.ReadFile(formFile);

                for (int n = 0; n < _recs.Count; n++)
                {
                    string _rec = _recs[n].ToUpper();

                    if (_rec.IndexOf("<GROUP>") > 0)
                    {
                        _formFlag = false;
                        _fieldFlag = false;
                        // parse out the group
                        _tag = _rec.Replace("<GROUP>", "");
                        _value = _tag.Replace("</GROUP>", "").Trim();
                        _formInfo.Add(new string[] { "GROUP", _value });
                    }

                    if (_rec.IndexOf("<DATASOURCE>") > 0)
                    {
                        // parse out the group
                        _tag = _rec.Replace("<DATASOURCE>", "");
                        _value = _tag.Replace("</DATASOURCE>", "").Trim();
                        _formInfo.Add(new string[] { "DATASOURCE", _value });
                    }

                    if (_rec.IndexOf("<FORMDATASET>") > 0)
                    {
                        // parse out the group
                        _tag = _rec.Replace("<FORMDATASET>", "");
                        _value = _tag.Replace("</FORMDATASET>", "").Trim();
                        _formInfo.Add(new string[] { "FORMDATASET", _value });
                    }

                    if (_rec.IndexOf("<FORM>") > 0)
                    {
                        _formFlag = true;
                        _fieldFlag = false;
                    }

                    if (_rec.IndexOf("<FIELD>") > 0)
                    {
                        _formFlag = false;
                        _fieldFlag = true;
                    }

                    if (_rec.IndexOf("<FIELD>") > 0)
                    {
                        _formFlag = false;
                        _fieldFlag = false;
                    }

                    if (_rec.IndexOf("<NAME>") > 0)
                    {
                        if (_formFlag)
                        {
                            // parse out the group
                            _tag = _rec.Replace("<NAME>", "");
                            _value = _tag.Replace("</NAME>", "").Trim();
                            _formInfo.Add(new string[] { "FORMNAME", _value });
                        }
                    }

                    if (_rec.IndexOf("<TITLE>") > 0)
                    {
                        if (_formFlag)
                        {
                            // parse out the group
                            _tag = _rec.Replace("<TITLE>", "");
                            _value = _tag.Replace("</TITLE>", "").Trim();
                            _formInfo.Add(new string[] { "TITLE", _value });
                        }
                    }

                    if (_rec.IndexOf("<IMAGE>") > 0)
                    {
                        if (_formFlag)
                        {
                            // parse out the group
                            _tag = _rec.Replace("<IMAGE>", "");
                            _value = _tag.Replace("</IMAGE>", "").Trim();
                            _formInfo.Add(new string[] { "IMAGE", _value });
                        }
                    }

                    if (_rec.IndexOf("</FORM>") > 0)
                    {
                        _formFlag = false;
                        _fieldFlag = false;
                    }


                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetFormGroupInfo > " + ex.Message);
            }

            return _formInfo;

        }








        public static string ResolveValue(string formName, string fieldName, string value)
        {
            string _value = value;

            try
            {
                _value = ResolveValue(currentIGenForms, formName, fieldName, value);
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".ResolveValue(s,s,s) > " + ex.Message);
            }

            return _value;

        }








        public static string ResolveValue(IGenFormsMain igenForms, string formName, string fieldName, string value)
        {
            string _value = value;

            try
            {
                IGenForm _form = igenForms.GetForm(formName);
                IGenField _field = _form.GetField(fieldName);
                _value = ResolveValue(igenForms, _form, _field, value);
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".ResolveValue(o,s,s,s) > " + ex.Message);
            }

            return _value;

        }





        public static string ResolveValue(IGenFormsMain igenForms, int formIndex, int fieldIndex, string value)
        {
            string _value = value;

            try
            {
                IGenForm _form = igenForms.GetForm(formIndex);
                IGenField _field = _form.GetField(fieldIndex);
                _value = ResolveValue(igenForms, _form, _field, value);
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".ResolveValue(o,i,i,s) > " + ex.Message);
            }

            return _value;

        }





        public static string ResolveValue(IGenFormsMain igenForms, IGenForm form, IGenField field, string value)
        {
            string _value = value;
            int _offset = 0;
            int _formIndex = -1;
            int _fieldIndex = -1;
            string _fieldAttribute = "VALUE";
            bool _expression = false;
            IGenForm _form = form;
            IGenField _field = field;
            string _formName = _form.name;
            string _fieldName = _field.name;
            string _tempValue = "";
            List<string> _resolvedFields = new List<string>();

            try
            {
                string _fieldType = _field.dataType.ToUpper();
                string _type = _field.type.ToUpper();

                // see if there are any expressions to resolve
                if (_value.IndexOf('=') == 0)
                {
                    _expression = true;
                    _value = _value.Substring(1);
                }

                #region [Resolve Field References]

                // first any symbolic variables?
                _value = ResolveSymbolics(_value);

                if (_value.ToUpper().IndexOf("IF") == 0)
                {
                    string _x = "";
                }

                _tempValue = _value;

                // next any field names (between curly brackets)
                int _startBracket = _tempValue.IndexOf('{');
                while (_startBracket >= 0)
                {
                    // get the field
                    int _endBracket = _tempValue.IndexOf('}');
                    if (_endBracket > _startBracket)
                    {
                        string _fieldDef = _tempValue.Substring(_startBracket + 1, (_endBracket - _startBracket - 1));

                        string[] _parts = _fieldDef.Split(':');

                        _formIndex = CommonRoutines.ConvertToInt(_parts[0]);
                        _fieldIndex = CommonRoutines.ConvertToInt(_parts[1]);
                        _fieldAttribute = _parts[2].ToUpper();

                        IGenField _newField = igenForms.GetField(_formIndex, _fieldIndex);

                        // get the field type
                        string _newFieldDataType = _newField.dataType.Trim().ToUpper();
                        string _newFieldType = _newField.type.Trim().ToUpper();
                        string _temp = "";

                        // get the field value
                        if (_newFieldType == "CHECKBOX")
                        {
                            _temp = _newField.checkedFlag.ToString();
                        }
                        else
                        {
                            _temp = _newField.text; // _newField.compiledValue.Trim();
                            if (_temp.IndexOf(',') >= 0 && _temp.IndexOf("=SQL") < 0)
                            {
                                switch (_fieldType)
                                {
                                    case "NUMERIC":
                                    case "DECIMAL":
                                    case "CURRENCY":
                                    case "INTEGER":
                                        _temp = _temp.Replace(",", "");
                                        if (_temp == "")
                                        {
                                            _temp = "0";
                                        }
                                        break;
                                }
                            }
                        }

                        bool _resolvedAlready = false;

                        // has this one been resolved yet?
                        for (int j = 0; j < _resolvedFields.Count; j++)
                        {
                            if (_fieldDef == _resolvedFields[j])
                            {
                                // possible circular reference
                                string _msg = "Possible circular reference on form " + _formName + ", field " + _fieldName + ", value " + _field.originalValue;
                                //CommonRoutines.DisplayInformationalMessage(_msg);
                                _temp = "";
                                _processMessages.Add(_msg);
                                _resolvedAlready = true;
                            }
                        }

                        if (!_resolvedAlready)
                        {
                            // add the field to the resolved fields
                            _resolvedFields.Add(_fieldDef);
                        }

                        if (_temp.IndexOf('=') == 0)
                        {
                            _temp = _temp.Substring(1);
                        }

                        if (_temp == "")
                        {
                            switch (_newFieldDataType)
                            {
                                case "INTEGER":
                                    _temp = "0";
                                    break;

                                case "NUMERIC":
                                case "DECIMAL":
                                    _temp = "0.000";
                                    break;

                                case "CURRENCY":
                                    _temp = "0.00";
                                    break;

                            }
                        }

                        // replace the bracketed field
                        if (_startBracket >= 1)
                        {
                            _tempValue = _tempValue.Replace("{" + _fieldDef + "}", _temp);
                            //_tempValue = _tempValue.Substring(0, _startBracket) + _temp + _tempValue.Substring(_endBracket + 1);
                        }
                        else
                        {
                            if (_endBracket >= _tempValue.Length)
                            {
                                _tempValue = _temp;
                            }
                            else
                            {
                                _tempValue = _temp + _tempValue.Substring(_endBracket + 1);
                            }
                        }
                    }

                    _startBracket = _tempValue.IndexOf('{');

                }

                #endregion 

                _value = _tempValue.ToUpper();

                // check the value to see if there is nothing to do (operators but no values to operate on)
                string _checkValue = _value;
                string[] _replaceChars = { "+", "-", "*", "/", "=" };
                for (int n = 0; n < _replaceChars.Length; n++)
                {
                    _checkValue = _checkValue.Replace(_replaceChars[n], "");
                }
                _checkValue = _checkValue.Trim();
                if (_checkValue == "")
                {
                    _value = _checkValue;
                    _expression = false;
                }

                // see if this is something other than a literal or such
                if (_expression)
                {
                    _fieldName = "";
                    int _rowIndex = 0;
                    int _startIndex = 0;
                    int _endIndex = 0;

                    #region [Config]

                    // Config value?
                    if (_value.ToUpper().IndexOf("CONFIG(") == 0)
                    {
                        _fieldName = _value.Substring(7);
                        if (_fieldName.IndexOf(')') > 0)
                        {
                            _fieldName = _fieldName.Substring(0, _fieldName.IndexOf(')'));
                        }
                        _value = ConfigRoutines.GetSetting(_fieldName);
                    }

                    #endregion 

                    #region [Process GDS requests]

                    // change to loop until all are found
                    // Group dataset field?
                    if (_value.ToUpper().IndexOf("GDS(") >= 0)
                    {
                        while (_value.ToUpper().IndexOf("GDS(") >= 0)
                        {
                            // get the GDS specification
                            int _startOffset = _value.ToUpper().IndexOf("GDS(");
                            if (_startOffset >= 0)
                            {
                                string _gds = _value.Substring(_startOffset);
                                // find the end
                                int _endOffset = _gds.IndexOf(')');
                                if (_endOffset > 0)
                                {
                                    // next byte may be a :
                                    if (_gds.Length > (_endOffset + 1))
                                    {
                                        if (_gds.Substring(_endOffset + 1, 1) == ":")
                                        {
                                            // find the next space 
                                            if (_gds.IndexOf(' ') > 0)
                                            {
                                                // extend _endoffset to the space
                                                _endOffset = _gds.IndexOf(' ');
                                            }
                                            else
                                            {
                                                _endOffset = _gds.Length - 1;
                                            }
                                        }
                                    }
                                    _gds = _gds.Substring(0, _endOffset + 1);
                                    // is there a row number specified
                                    _rowIndex = 0;
                                    string _tempGds = _gds.Substring(4).Replace(")", "");
                                    string[] _parts = _tempGds.Split(':');
                                    if (_parts.Length > 1)
                                    {
                                        _rowIndex = CommonRoutines.ConvertToInt(_parts[1]);
                                        // now add the current offset in the dataset
                                        _rowIndex = _rowIndex + (igenForms.currentRow - 1);
                                    }
                                    _fieldName = _parts[0];
                                    if (_fieldName.IndexOf('(') > 0)
                                    {
                                        _fieldName = _fieldName.Substring(_fieldName.IndexOf('(') + 1);
                                    }
                                    if (_fieldName.IndexOf(')') > 0)
                                    {
                                        _fieldName = _fieldName.Substring(0, _fieldName.IndexOf(')'));
                                    }
                                    string _gdsValue = igenForms.GetGroupDatasetValue(_fieldName, _rowIndex);
                                    // if the field is a numeric and it is blank, then make it a 0
                                    if (_gdsValue.Trim() == "")
                                    {
                                        if (_field.dataType.ToUpper() == "NUMERIC" ||
                                                _field.dataType.ToUpper() == "CURRENCY" ||
                                                _field.dataType.ToUpper() == "DECIMAL")
                                        {
                                            _gdsValue = "0.00";
                                        }
                                    }
                                    _value = _value.Replace(_gds, _gdsValue);
                                }
                            }
                        }
                    }
                    #endregion 

                    #region [Process DS requests]

                    // note:  change to loop to find all references
                    // Form dataset field?
                    if (_value.ToUpper().IndexOf("DS(") >= 0)
                    {
                        //_form = currentIGenForm;
                        if (_form != null)
                        {
                            _formName = _form.name;

                            while (_value.ToUpper().IndexOf("DS(") >= 0)
                            {
                                int _startOffset = _value.ToUpper().IndexOf("DS(");
                                if (_startOffset >= 0)
                                {
                                    string _ds = _value.Substring(_startOffset);
                                    // find the end
                                    int _endOffset = _ds.IndexOf(')');
                                    if (_endOffset > 0)
                                    {
                                        // next byte may be a :
                                        if (_ds.Length > (_endOffset + 1))
                                        {
                                            if (_ds.Substring(_endOffset + 1, 1) == ":")
                                            {
                                                // find the next non numeric or end of the line 
                                                _endOffset = _endOffset + 2;
                                                while (_endOffset < _ds.Length)
                                                {
                                                    if (CommonRoutines.IsNumeric(_ds.Substring(_endOffset, 1)))
                                                    {
                                                        _endOffset = _endOffset + 1;
                                                    }
                                                    else
                                                    {
                                                        _endOffset = _endOffset - 1;
                                                        break;
                                                    }
                                                }
                                                //if (_ds.IndexOf(' ') > 0)
                                                //{
                                                //    // extend _endoffset to the space
                                                //    _endOffset = _ds.IndexOf(' ');
                                                //}
                                                //else
                                                //{
                                                //    _endOffset = _ds.Length - 1;
                                                //}
                                            }
                                        }

                                        if (_endOffset < _ds.Length)
                                        {
                                            _ds = _ds.Substring(0, _endOffset + 1);
                                        }

                                        // is there a row number specified
                                        // default to the first row
                                        _rowIndex = 1;
                                        int _dsOrdinal = -1;
                                        string _tempDs = _ds.Substring(3).Replace(")", "");
                                        string[] _parts = _tempDs.Split(':');
                                        if (_parts.Length > 1)
                                        {
                                            _dsOrdinal = CommonRoutines.ConvertToInt(_parts[0]);

                                            if (_dsOrdinal >= 0)
                                            {
                                                _fieldName = _parts[1];

                                                if (_parts.Length > 2)
                                                {
                                                    _rowIndex = CommonRoutines.ConvertToInt(_parts[2]);  // -1;
                                                    // now add the current offset in the dataset
                                                    //_rowIndex = _rowIndex + (igenForms.datasets[_dsOrdinal].currentPosition - 1);
                                                }
                                            }
                                            else
                                            {
                                                _rowIndex = -1;
                                            }

                                        }

                                        //if (_fieldName.IndexOf('(') > 0)
                                        //{
                                        //    _fieldName = _fieldName.Substring(_fieldName.IndexOf('(') + 1);
                                        //}
                                        //if (_fieldName.IndexOf(')') > 0)
                                        //{
                                        //    _fieldName = _fieldName.Substring(0, _fieldName.IndexOf(')'));
                                        //}

                                        string _dsValue = "";
                                        if (_dsOrdinal >= 0 && _rowIndex >= 0)
                                        {

                                            _dsValue = igenForms.GetDatasetValue(_dsOrdinal, _fieldName, _rowIndex);

                                        }

                                        // if the field is a numeric and it is blank, then make it a 0
                                        if (_dsValue.Trim() == "")
                                        {
                                            if (_field.dataType.ToUpper() == "NUMERIC" ||
                                                    _field.dataType.ToUpper() == "CURRENCY" ||
                                                    _field.dataType.ToUpper() == "DECIMAL")
                                            {
                                                _dsValue = "0.00";
                                            }
                                        }
                                        _value = _value.Replace(_ds, _dsValue);
                                    }
                                }
                            }
                        }
                        else
                        {
                            _value = "DSErr";
                        }
                    }

                    #endregion 

                    #region [Process DSLOOKUP requests]

                    // Form dataset find field?
                    if (_value.ToUpper().IndexOf("DSLOOKUP(") >= 0)
                    {
                        // syntax is DSLOOKUP(ds:column,criteria)
                        // will return the first row found that matches the criteria and set the current position of the ds
                        _form = currentIGenForm;
                        if (_form != null)
                        {
                            _formName = _form.name;

                            string _column = "";
                            string _criteria = "";
                            int _dsOrdinal = _form.datasetOrdinal;
                            int _colIndex = 0;

                            _rowIndex = 0;

                            // get the function
                            _startIndex = _value.ToUpper().IndexOf("DSLOOKUP(");
                            _endIndex = _value.ToUpper().IndexOf(")", _startIndex);
                            if (_endIndex > _startIndex)
                            {
                                int _length = _endIndex - _startIndex - "DSLOOKUP(".Length;

                                // get the part between the DSFIND( and )
                                string _parms = _value.Substring(_startIndex + "DSLOOKUP(".Length, _length);

                                string[] _parts = _parms.Split(',');
                                _column = _parts[0];

                                if (_parts.Length > 1)
                                {
                                    _criteria = _parts[1];
                                }


                                // now which column did they want?
                                _parts = _column.Split(':');
                                if (_parts.Length >= 0)
                                {
                                    if (_parts.Length > 1)
                                    {
                                        _dsOrdinal = CommonRoutines.ConvertToInt(_parts[0]);
                                        _colIndex = CommonRoutines.ConvertToInt(_parts[1]);
                                    }
                                    else
                                    {
                                        _colIndex = CommonRoutines.ConvertToInt(_parts[0]);
                                    }
                                }

                                // now call the dataset FindValue routine
                                string[] _row = igenForms.datasets[_dsOrdinal].FindRow(_criteria);

                                string _columnValue = "";

                                if (_colIndex < _row.Length)
                                {
                                    _columnValue = _row[_colIndex];
                                }

                                _value = _columnValue;
                            }
                        }
                        else
                        {
                            _value = "DSErr";
                        }
                    }

                    #endregion

                    #region [SQL]

                    // evaluate the sql statements
                    if (_value.ToUpper().IndexOf("SQL(") >= 0)
                    {
                        string _dataSource = igenForms.dataSource;
                        _tempValue = _value.ToUpper();
                        string _sql = "";

                        // see if there is more to the equation...
                        _startIndex = _tempValue.IndexOf("SQL(");
                        while (_startIndex >= 0)
                        {
                            if (_field.name.ToUpper().IndexOf("PAGE2.3.11A.B") >= 0)  // Page2.3.11a.B
                            {
                                string _x = "";
                            }
                            // get the sql statement parsed out
                            int _startParen = _startIndex + 3;
                            int _endParen = _tempValue.Length;
                            int _pairCount = 0;
                            for (int j = _startParen; j < _tempValue.Length; j++)
                            {

                                if (_tempValue.Substring(j, 1) == "(")
                                {
                                    _pairCount = _pairCount + 1;
                                }
                                else
                                {
                                    if (_tempValue.Substring(j, 1) == ")")
                                    {
                                        _pairCount = _pairCount - 1;
                                        if (_pairCount == 0)
                                        {
                                            // matching paren
                                            _endIndex = j;
                                            _endParen = j;
                                            _sql = _tempValue.Substring(_startIndex, (_endIndex - _startIndex + 1));
                                            break;
                                        }
                                    }
                                }

                            }

                            if (_sql != "")
                            {
                                bool _wrapSumWithCoalesce = (ConfigRoutines.GetSetting("WrapSumWithCoalesce").ToUpper().IndexOf('T') == 0) ? true : false;

                                if (_wrapSumWithCoalesce)
                                {
                                    // check for a SUM(...) function and wrapper with Coalesce
                                    string _tempSQL = _sql;
                                    if (_tempSQL.IndexOf("COALESCE") < 0)
                                    {
                                        int _sqlStartIndex = _tempSQL.IndexOf("SUM(");
                                        while (_sqlStartIndex > 0)
                                        {
                                            _endParen = _tempSQL.IndexOf(")", _sqlStartIndex);
                                            _tempSQL = _tempSQL.Substring(0, _sqlStartIndex) + "COALESCE(" + _tempSQL.Substring(_sqlStartIndex);
                                            _sqlStartIndex = _endParen + 9;
                                            _tempSQL = _tempSQL.Substring(0, _sqlStartIndex) + "),0" + _tempSQL.Substring(_sqlStartIndex);
                                            _sqlStartIndex = _tempSQL.IndexOf("SUM(", _sqlStartIndex);
                                        }
                                    }

                                    _sql = _tempSQL;
                                }
                                string _sqlResults = "";

                                // is it a combobox?
                                if (_field.type.ToUpper().IndexOf("COMBOBOX") >= 0)
                                {
                                    // get a recordset and fill in the list 
                                    _sql = _sql.Substring(4);
                                    _endParen = _sql.LastIndexOf(')');
                                    if (_endParen > 5)
                                    {
                                        _sql = _sql.Substring(0, _endParen);
                                        List<string[]> _rows = DatabaseRoutines.Select(_dataSource, "SQLServer", _sql);
                                        if (_rows.Count > 0)
                                        {
                                            // get the first column in the sql
                                            for (int k = 1; k < _rows.Count; k++)
                                            {
                                                _sqlResults = _sqlResults + _rows[k][0].Trim() + "|";
                                            }
                                        }
                                    }
                                    
                                }
                                else
                                {
                                    _sqlResults = DatabaseRoutines.EvaluateSQL(_dataSource, "SQLServer", _sql);
                                    // if the field is a numeric and it is blank, then make it a 0
                                    if (_sqlResults.Trim() == "")
                                    {
                                        if (_field.dataType.ToUpper() == "NUMERIC" ||
                                                _field.dataType.ToUpper() == "CURRENCY" ||
                                                _field.dataType.ToUpper() == "DECIMAL")
                                        {
                                            _sqlResults = "0.00";
                                        }
                                    }
                                }

                                // replace in temp value
                                _tempValue = _tempValue.Substring(0, _startIndex) + _sqlResults + _tempValue.Substring(_endIndex + 1);
                            }
                            _startIndex = _tempValue.IndexOf("SQL(");
                        }

                        _value = _tempValue;

                    }

                    #endregion 

                    #region [Process MATH requests]

                    if (_value.ToUpper().IndexOf("MATH(") == 0)
                    {
                        // now evaluate the expression 
                        _value = _value.Substring(5);
                        _endIndex = _value.LastIndexOf(')');
                        if (_endIndex > 0)
                        {
                            _value = _value.Substring(0, _endIndex);
                        }
                        string _temp = DatabaseRoutines.EvaluateExpression(_value);
                        if (_temp != "")
                        {
                            _value = _temp;
                        }
                    }

                    #endregion

                    #region [Process ROUND requests]

                    if (_value.ToUpper().IndexOf("ROUND(") == 0)
                    {
                        // now evaluate the expression 
                        _value = _value.Substring(6);
                        _endIndex = _value.LastIndexOf(')');
                        if (_endIndex > 0)
                        {
                            _value = _value.Substring(0, _endIndex);
                        }

                        // syntax:  ROUND(<expression>,<num decimal places>)
                        // rounding:  .5 (.05, .005, etc) round up

                        // get the decimals at the end
                        int _lastComma = _value.LastIndexOf(',');
                        int _numDecimals = 0;
                        if (_lastComma > 0)
                        {
                            _numDecimals = CommonRoutines.ConvertToInt(_value.Substring(_value.LastIndexOf(',') + 1));
                            _value = _value.Substring(0, _value.LastIndexOf(','));
                        }

                        // round it
                        string _temp = Expressions.EvaluateExpression(_value);
                        _temp = CommonRoutines.RoundValue(_temp, _numDecimals);
                        if (_temp != "")
                        {
                            _value = _temp;
                        }
                    }

                    #endregion 

                    #region [Process IF requests]

                    if (_value.ToUpper().IndexOf("IF(") == 0)
                    {
                        // now evaluate the if expression 
                        _value = _value.Substring(3);
                        _endIndex = _value.LastIndexOf(')');
                        if (_endIndex > 0)
                        {
                            _value = _value.Substring(0, _endIndex);
                        }
                        string _temp = EvaluateIfExpression(field, _value);
                        _value = _temp;
                    }

                    #endregion

                    #region [Process PAGEBREAK requests]

                    if (_value.ToUpper().IndexOf("PAGEBREAK(") == 0)
                    {
                        // now evaluate the PAGEBREAK expression 
                        _value = _value.Substring("PAGEBREAK(".Length);
                        _endIndex = _value.LastIndexOf(')');
                        if (_endIndex > 0)
                        {
                            _value = _value.Substring(0, _endIndex);
                        }
                        string[] _parts = _value.Split(',');

                        string _temp = "Err:" + _value;

                        // must have 3 parts
                        if (_parts.Length > 2)
                        {
                            // ds ordinal is first part
                            int _dsOrdinal = CommonRoutines.ConvertToInt(_parts[0]);
                            if (currentIGenForms.datasets[_dsOrdinal].pageBreak)
                            {
                                // set value to the true part (1)
                                _temp = _parts[1];
                            }
                            else
                            {
                                _temp = _parts[2];
                            }
                        }
                        _value = _temp;
                    }

                    #endregion

                    #region [Process SETVISIBLE requests]

                    if (_value.ToUpper().IndexOf("SETVISIBLE(") == 0)
                    {
                        // now evaluate the SETVISIBLE expression 
                        _value = _value.Substring("SETVISIBLE(".Length);
                        _endIndex = _value.LastIndexOf(')');
                        if (_endIndex > 0)
                        {
                            _value = _value.Substring(0, _endIndex);
                        }

                        // if value true, set visible, else set false
                        if (_value.ToUpper() == "TRUE")
                        {
                            _field.visible = true;
                        }
                        else
                        {
                            _field.visible = false;
                        }

                        _value = _field.text;
                    }

                    #endregion

                    #region [Process date function requests]

                    if (_value.ToUpper().IndexOf("MONTH(") == 0 || 
                            _value.ToUpper().IndexOf("MONTHNAME(") == 0 ||
                            _value.ToUpper().IndexOf("DAY(") == 0 ||
                            _value.ToUpper().IndexOf("DAYOFWEEK(") == 0 ||
                            _value.ToUpper().IndexOf("YEAR(") == 0 || 
                            _value.ToUpper().IndexOf("YY(") == 0
                            )
                    {
                        // evaluate it
                        string _datePart = _value.Substring(0, _value.IndexOf('('));
                        string _dateValue = _value.Substring(_value.IndexOf('(') + 1).Replace(")", "");
                        _dateValue = CommonRoutines.GetDatePart(_dateValue, _datePart);
                        _value = _dateValue;
                    }

                    #endregion

                    #region [Process Expressions]

                    // now evaluate the expression if there are any operators in it
                    // first strip the =
                    if (_value.Length > 0 && _value.Substring(0, 1) == "=")
                    {
                        _value = _value.Substring(1).ToUpper();
                    }

                    if (_value.IndexOf('+') >= 0 ||
                        _value.IndexOf('-') >= 0 ||
                        _value.IndexOf('*') >= 0 ||
                        _value.IndexOf('/') >= 0)
                    {
                        // see if this is field should be evaluated...
                        switch (_fieldType)
                        {
                            case "DATE":
                            case "DATETIME":
                                if (CommonRoutines.IsDate(_value))
                                {
                                    // format as date
                                    DateTime _dateTime = CommonRoutines.ConvertToDate(_value);
                                    _value = _dateTime.ToShortDateString();
                                }
                                break;

                            case "INTEGER":
                            case "NUMERIC":
                            case "CURRENCY":
                            case "DECIMAL":
                                //string _temp = DatabaseRoutines.EvaluateExpression(_value);
                                _value = _value.Trim();
                                string _lastChar = _value.Substring(_value.Length - 1);
                                if ("+-/*".IndexOf(_lastChar) >= 0)
                                {
                                    _value = _value.Substring(0, _value.Length - 2).Trim();
                                }
                                string _temp = Expressions.EvaluateExpression(_value);
                                if (_temp != "")
                                {
                                    _value = _temp;
                                }
                                break;

                        }
                    }

                    #endregion

                }

            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".ResolveValue(o,s,s,s) > " + ex.Message);
            }

            return _value;

        }





        public static string FormatValue(string value, string dataType)
        {
            string _newValue = value;

            try
            {
                int _numDecimalPlaces = CommonRoutines.ConvertToInt(ConfigRoutines.GetSetting("NumberDecimalPlaces"));
                _newValue = FormatValue(value, dataType, _numDecimalPlaces, "");
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".FormatValue(s, s) > " + ex.Message);
            }

            return _newValue;

        }




        public static string FormatValue(string value, string dataType, int numDecimalPlaces)
        {
            string _newValue = value;

            try
            {
                _newValue = FormatValue(value, dataType, numDecimalPlaces, "");
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".FormatValue(s, s, i) > " + ex.Message);
            }

            return _newValue;

        }








        public static string FormatValue(string value, string dataType, int numDecimalPlaces, string formatMask)
        {
            string _newValue = value;
            bool _fieldIsNumeric = false;

            try
            {
                bool _suppressZeroFields = (ConfigRoutines.GetSetting("SuppressZeroFields").ToUpper().IndexOf('T') == 0) ? true : false;
                bool _showSpaceInsteadOfPeriod = (ConfigRoutines.GetSetting("ShowSpaceInsteadOfPeriod").ToUpper().IndexOf('T') == 0) ? true : false; 

                decimal _decimal = CommonRoutines.ConvertToDecimal(_newValue);
                bool _showCommas = (ConfigRoutines.GetSetting("ShowCommas").ToUpper().IndexOf('T') == 0) ? true : false;

                decimal _numDecimalPlaces = CommonRoutines.ConvertToDecimal(numDecimalPlaces.ToString());

                int _defaultNumDecimalPlaces = CommonRoutines.ConvertToInt(ConfigRoutines.GetSetting("NumberDecimalPlaces"));
                if (numDecimalPlaces < 0)
                {
                    _numDecimalPlaces = CommonRoutines.ConvertToDecimal(_defaultNumDecimalPlaces.ToString());
                }

                string _formatString = "0";
                string _integerString = "0";
                string _currencyString = "$0.00";

                if (_showCommas)
                {
                    _formatString = "#,##0";
                    _integerString = "#,##0";
                    _currencyString = "$#,#.#0";
                }

                if (_numDecimalPlaces > 0)
                {
                    _formatString = _formatString + ".";
                    for (int n = 0; n < _numDecimalPlaces; n++)
                    {
                        _formatString = _formatString + "0";
                    }
                }

                switch (dataType.ToUpper())
                {
                    case "INTEGER":
                        _integerString = (formatMask != "") ? formatMask : _integerString;
                        _newValue = _decimal.ToString(_integerString, CultureInfo.InvariantCulture);
                        _fieldIsNumeric = true;
                        break;

                    case "NUMERIC":
                    case "DECIMAL":
                        _formatString = (formatMask != "") ? formatMask : _formatString;
                        _newValue = _decimal.ToString(_formatString, CultureInfo.InvariantCulture);
                        _fieldIsNumeric = true;
                        break;

                    case "CURRENCY":
                        _currencyString = (formatMask != "") ? formatMask : "$#,##0.00";
                        _newValue = _decimal.ToString(_currencyString, CultureInfo.InvariantCulture);
                        _fieldIsNumeric = true;
                        break;

                }

                if (_fieldIsNumeric)
                {
                    if (_suppressZeroFields && _decimal == 0)
                    {
                        // don't reformat it
                        _newValue = "";
                    }

                    if (_showSpaceInsteadOfPeriod)
                    {
                        // replace the . with 2 spaces.  If no period, then add 4 spaces to the end
                        if (_newValue.IndexOf('.') >= 0)
                        {
                            _newValue = _newValue.Replace(".", "  ");
                        }
                        else
                        {
                            _newValue = _newValue + "  ";
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".FormatValue(s, s, i, s) > " + ex.Message);
            }

            return _newValue;

        }








        public static string ResolveSymbolics(string value)
        {
            string _value = value;
            string _newValue = "";
            int _offset1 = 0;
            int _offset2 = 0;

            try
            {
                _offset1 = _value.IndexOf('%');

                while (_offset1 >= 0)
                {
                    // find the next one
                    string _symbolic = _value.Substring(_offset1 + 1);
                    _offset2 = _symbolic.IndexOf('%');

                    if (_offset2 >= 0)
                    {
                        _symbolic = _symbolic.Substring(0, _offset2);
                    }

                    string _symbolicName = _symbolic;

                    _symbolic = "%" + _symbolic + "%";

                    _newValue = "^";

                    switch (_symbolic.ToUpper())
                    {
                        case "%TODAY%":
                        case "%DATE%":
                            _newValue = CommonRoutines.GetCurrentDate();
                            break;

                        case "%MONTH%":
                            _newValue = CommonRoutines.GetMonth(CommonRoutines.GetCurrentDate());
                            break;

                        case "%YEAR%":
                            _newValue = CommonRoutines.GetYear(CommonRoutines.GetCurrentDate());
                            break;

                        case "%DAY%":
                            _newValue = CommonRoutines.GetDay(CommonRoutines.GetCurrentDate());
                            break;

                        case "%SOURCE%":
                            _newValue = "";
                            break;

                        case "%ROW":
                            _newValue = currentIGenForm.currentRow.ToString();
                            break;

                        case "%TOTALROWS%":
                            _newValue = currentIGenForm.totalRows.ToString();
                            break;

                        case "%PAGE%":
                            _newValue = currentIGenForm.currentPage.ToString();
                            break;

                        case "%TOTALPAGES%":
                        case "%PAGES%":
                            _newValue = currentIGenForm.totalPages.ToString(); 
                            break;

                        default:
                            // there is a symbolic that may be in the properties passed by the calling program
                            _newValue = CSA.GetProperty("", _symbolicName);
                            break;

                    }

                    // only if symbolic has been found
                    if (_newValue != "^")
                    {
                        _value = _value.Replace(_symbolic, _newValue);
                        _offset1 = _value.IndexOf('%');
                    }
                    else
                    {
                        _offset1 = _value.IndexOf('%', _offset1 + 1);
                    }

                }


            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".ResolveSymbolics > " + ex.Message);
            }

            // any functions?

            return _value;

        }






        public static T DeepCopySerialized<T>(T other)
        {
            T _newObject = default(T);

            try
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    BinaryFormatter formatter = new BinaryFormatter();
                    formatter.Serialize(ms, other);
                    ms.Position = 0;
                    _newObject = (T)formatter.Deserialize(ms);
                }
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".DeepCopy<t> > " + ex.Message);
            }

            return _newObject;

        }





        public static T DeepCopy<T>(T obj)
        {
            T _newObject = default(T);

            try
            {
                if (obj == null)
                    throw new ArgumentNullException("Object cannot be null");
                _newObject = (T)Process(obj);
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".DeepCopy<t> > " + ex.Message);
            }

            return _newObject;

        }




        private static object Process(object obj)
        {
            object _newObject = null;

            try
            {
                if (obj == null)
                {
                    _newObject = null;
                }
                else
                {
                    Type type = obj.GetType();
                    if (type.IsValueType || type == typeof(string))
                    {
                        _newObject = obj;
                    }
                    else
                    {
                        if (type.IsArray)
                        {
                            Type elementType = Type.GetType(
                                 type.FullName.Replace("[]", string.Empty));
                            var array = obj as Array;
                            Array copied = Array.CreateInstance(elementType, array.Length);
                            for (int i = 0; i < array.Length; i++)
                            {
                                copied.SetValue(Process(array.GetValue(i)), i);
                            }
                            _newObject = Convert.ChangeType(copied, obj.GetType());
                        }
                        else
                        {
                            if (type.IsClass)
                            {
                                object toret = Activator.CreateInstance(obj.GetType());
                                FieldInfo[] fields = type.GetFields(BindingFlags.Public |
                                            BindingFlags.NonPublic | BindingFlags.Instance);
                                foreach (FieldInfo field in fields)
                                {
                                    object fieldValue = field.GetValue(obj);
                                    if (fieldValue == null)
                                    {
                                        continue;
                                    }
                                    field.SetValue(toret, Process(fieldValue));
                                }
                                _newObject = toret;
                            }
                            else
                            {
                                //throw new ArgumentException("Unknown type");
                                CommonRoutines.Log("Error: " + moduleName + ".Process > Unknown Type " + type.Name);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // an error
                CommonRoutines.Log("Error: " + moduleName + ".Process > " + ex.Message);
            }

            return _newObject;

        }



        public static string EvaluateIfExpression(IGenField field, string expression)
         {
            string _result = "";
            string _quote = "\"";
            string _command = "";

            try
            {
                // format will be:
                //    <expression>,<true value>,<false value>

                string _expression = "";
                bool _quoted = false;
                bool _partsFound = false;
                bool _openParen = false;
                bool _closeParen = false;

                // parse the 3 sections by hand 
                for (int n = 0; n < expression.Length; n++)
                {
                    switch(expression.Substring(n, 1).ToUpper())
                    {
                        case "(":
                            _openParen = true;
                            _expression = _expression + expression.Substring(n, 1);
                            break;

                        case ")":
                            _openParen = false;
                            _expression = _expression + expression.Substring(n, 1);
                            break;

                        case ",":
                            if (!_quoted && !_openParen)
                            {
                                _expression = _expression + "~";
                                _partsFound = true;
                            }
                            else
                            {
                                _expression = _expression + expression.Substring(n, 1);
                            }
                            break;

                        case "\"":
                        case "'":
                            _quoted = !_quoted;
                            break;

                        default:
                            _expression = _expression + expression.Substring(n, 1);
                            break;
                    }

                }

                // make sure there are at least 3 parts
                _expression = _expression + "~~~";

                // convert the quotes 
                _expression = _expression.Replace("'", "");

                // now parse it into 3 sections
                string[] _parts = _expression.Split('~');

                // check the expression
                string _firstPart = _parts[0];
                // break it up into 3 parts (value,operator,value)
                string[] _firstParts = { "", "", "" };
                int _partNo = 0;
                bool _operatorFound = false;

                for (int n = 0; n < _firstPart.Length; n++)
                {
                    if ("=><!".IndexOf(_firstPart.Substring(n, 1)) >= 0)
                    {
                        // operator
                        _firstParts[1] = _firstParts[1] + _firstPart.Substring(n, 1);
                        _operatorFound = true;
                        _partNo = 2;
                    }
                    else
                    {
                        _firstParts[_partNo] = _firstParts[_partNo] + _firstPart.Substring(n, 1);
                    }
                }

                //if ("IN".IndexOf((_firstPart + " ").Substring(n, 2)) >= 0)
                //{
                //    //// find the end paren
                //    //_firstParts[1] = _firstParts[1] + _firstPart.Substring(n, 2);
                //    //_operatorFound = true;
                //    //_partNo = 2;
                //}

                string _leftValue = "";
                string _operator = "";
                string _rightValue = "";
                string _condition = "";

                // if no operator found, the IF is malformed.  Give an error and exit
                if (_operatorFound)
                {
                    _leftValue = _firstParts[0];
                    _operator = _firstParts[1];
                    _rightValue = _firstParts[2];

                    // if numeric values, then don't quote
                    if (CommonRoutines.AllNumeric(_leftValue) && CommonRoutines.AllNumeric(_rightValue))
                    {
                        // leave
                    }
                    else
                    {
                        // quote them
                        _leftValue = "\"" + _leftValue.Trim() + "\"";
                        _rightValue = "\"" + _rightValue.Trim() + "\"";
                    }

                    // check the operator
                    if (_operator == "=")
                    {
                        _operator = "==";
                    }

                    _leftValue = "var a = " + _leftValue + "; ";
                    _rightValue = "var b = " + _rightValue + "; ";
                    _condition = "a " + _operator + " b";
                }
                else
                {
                    // check to see if there is an IN in the expression
                    if (_firstParts[0].Trim() != "" && _firstParts[1].Trim() == "" && _firstParts[2].Trim() == "")
                    {
                        string _inExpression = _firstParts[0].Trim().ToUpper();
                        if (_inExpression.IndexOf(" IN ") > 0)
                        {
                            int _offset = _inExpression.IndexOf(" IN ");
                            _leftValue = "\"" + _inExpression.Substring(0, _offset) + "\"";
                            _operator = "IN";
                            _rightValue = _inExpression.Substring(_offset + 4);
                            _operatorFound = true;

                            // parse out the right value into separate conditions
                            _rightValue = _rightValue.Replace("(", "");
                            _rightValue = _rightValue.Replace(")", "");
                            _rightValue = _rightValue.Replace("\"", "");
                            _rightValue = _rightValue.Replace("'", "");
                            string[] _rightValues = _rightValue.Split(',');
                            for (int m = 0; m < _rightValues.Length; m++)
                            {
                                _condition = _condition + _leftValue + " == \"" + _rightValues[m] + "\" || ";
                            }

                            int _lastOr = _condition.LastIndexOf("||");
                            if (_lastOr > 0)
                            {
                                _condition = _condition.Substring(0, _lastOr);
                            }

                            _leftValue = "";
                            _rightValue = "";
                        }
                    }

                    // recreate the first part
                    //_parts[0] = _leftValue + " " + _operator + " " + _rightValue;
                }

                if (_operatorFound)
                {
                    string _trueStatement = _parts[1].Trim();
                    string _falseStatement = _parts[2].Trim();

                    // if numeric values, then don't quote
                    if (CommonRoutines.AllNumeric(_trueStatement) && CommonRoutines.AllNumeric(_falseStatement))
                    {
                        // leave
                    }
                    else
                    {
                        // quote them
                        _trueStatement = "\"" + _trueStatement.Trim() + "\"";
                        _falseStatement = "\"" + _falseStatement.Trim() + "\"";
                    }


                    // make a var for each of the conditional sections and compare them
                    _command = _leftValue +
                                _rightValue +
                                    "var x; " +
                                    "if (" + _condition + ") " +
                                    "    {x=" + _trueStatement + ";} " +
                                    "else " +
                                    "    {x=" + _falseStatement + ";}";

                    CommonRoutines.Log("JInt: " + _command);

                    _result = Expressions.CallJInt(_command);

                }
                else
                {
                    // no operator found
                    string _errMsg = "Field " + field.parentFormName + "!" + field.name + ": IF statement " + expression + " is malformed. ";
                    _errMsg = (!_operatorFound) ? _errMsg = _errMsg + " No Operator was found." : _errMsg;
                    _errMsg = (!_partsFound) ? _errMsg = _errMsg + " No true/false parts were found." : _errMsg;
                    CommonRoutines.DisplayErrorMessage(_errMsg + "  Please check.");
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".EvaluateIfExpression > " + ex.Message);
            }

            return _result;

        }










    }
}
