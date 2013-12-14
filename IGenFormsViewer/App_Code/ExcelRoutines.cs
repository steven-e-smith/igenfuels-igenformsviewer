using System;
using System.Collections.Generic;
using System.Web;
using Excel = Microsoft.Office.Interop.Excel;



namespace IGenFormsViewer
{

    /// <summary>
    /// Summary description for ExcelRoutines
    /// </summary>
    public class ExcelRoutines
    {
        private string moduleName = "ExcelRoutines";

        private Excel.Application app = null;
        private Excel.Workbook wb = null;
        private Excel.Worksheet ws = null;

        public List<string> worksheets = new List<string>();


        /// <summary>
        /// List<string> OpenWorkbook(string workbookFileName)
        /// Open a workbook
        /// </summary>
        /// <param name="argstrWorksheet"></param>
        /// <returns></returns>
        public List<string> OpenWorkbook(string workbookFileName)
        {
            bool _status = false;
            List<string> _worksheets = new List<string>();

            try
            {
                app = new Microsoft.Office.Interop.Excel.Application();

                wb = app.Workbooks.Open(workbookFileName, Type.Missing, true);

                ws = (Microsoft.Office.Interop.Excel.Worksheet)app.ActiveSheet;

                for (int n=1;n<wb.Worksheets.Count;n++)
                {
                    ws = wb.Worksheets[n];
                    _worksheets.Add(ws.Name);
                }

                _status = true;

                worksheets = _worksheets;
              
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".OpenWorkbook >" + ex.Message);
            }

            // open the workbook
            return _worksheets;
        }





        /// <summary>
        /// bool CloseWorkbook()
        /// Close the workbook
        /// </summary>
        /// <returns></returns>
        public bool CloseWorkbook()
        {
            bool _status = false;

            try
            {
                if (wb != null)
                {
                    wb.Close(false);
                    wb = null;
                    ws = null;
                    app = null;
                    _status = true;
                }
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".CloseWorkbook >" + ex.Message);
            }

            return _status;
        }






        /// <summary>
        /// bool SaveWorksheet(string worksheetFileName)
        /// Save the current worksheet and optionally to another file
        /// </summary>
        /// <param name="worksheetFileName"></param>
        /// <returns></returns>
        public bool SaveWorksheet(string worksheetFileName)
        {
            bool _status = false;

            try
            {
                if (wb != null)
                {
                    if (ws != null)
                    {
                        if (worksheetFileName == "")
                        {
                            // save current
                            wb.Save();
                        }
                        else
                        {
                            // save as
                            wb.SaveAs(worksheetFileName);
                        }
                        _status = true;
                    }
                }
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".SaveWorksheet >" + ex.Message);
            }

            // open the workbook
            return _status;

        }



        /// <summary>
        /// bool CreateNewExcelWorksheet(string worksheet)
        /// Create a new workbook and add the passed worksheet to it
        /// </summary>
        /// <param name="worksheet"></param>
        /// <returns></returns>
        public bool CreateNewExcelWorksheet(string worksheet)
        {
            bool _status = false;
            string _workSheets = "";

            try
            {
                if (app != null)
                {
                    app.Worksheets.Add();
                    ws = (Microsoft.Office.Interop.Excel.Worksheet)app.ActiveSheet;
                    if (ws != null)
                    {
                        ws.Name = worksheet;

                        // refresh the worksheets 
                        for (int n = 1; n <= app.Worksheets.Count; n++)
                        {
                            _workSheets = _workSheets + app.Worksheets[n].Name + ";";
                        }
                        _status = true;
                    }
                }
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".CreateNewExcelWorksheet >" + ex.Message);
            }

            return _status;

        }





        /// <summary>
        /// bool CreateNewExcelWorkbook()
        /// Create a new workbook
        /// </summary>
        /// <returns>bool</returns>
        public bool CreateNewExcelWorkbook()
        {
            bool _status = false;

            try
            {
                if (app == null)
                {
                    app = new Microsoft.Office.Interop.Excel.Application();
                }

                if (app != null)
                {
                    wb = app.Workbooks.Add();
                    _status = true;
                }
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".CreateNewExcelWorkbook >" + ex.Message);
            }

            return _status;

        }




        /// <summary>
        /// int WriteToWorksheet(List<string[]> _recs, int startAtRow)
        /// Write the records to the current worksheet
        /// </summary>
        /// <param name="_recs"></param>
        /// <returns></returns>
        public int WriteToWorksheet(List<string[]> recs, int startAtRow)
        {
            int _numWritten = 0;

            try
            {
                for (int n = 0; n < recs.Count; n++)
                {
                    string[] _rec = recs[n];

                    for (int m = 0; m < _rec.Length; m++)
                    {
                        ws.Cells[n + 1, m + 1].value = _rec[m];
                    }

                    _numWritten++;

                }

            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".WriteToWorksheet(L<s[]>,i) >" + ex.Message);
            }

            return _numWritten;

        }







        /// <summary>
        /// int WriteToWorksheet(string workbookFileName, List<string[]> _recs)
        /// open a workbook and write to a worksheet
        /// </summary>
        /// <param name="_recs"></param>
        /// <returns></returns>
        public int WriteToWorksheet(string workbookFileName, List<string> recs, char delimiter)
        {
            int _numWritten = 0;
            bool _standalone = false;

            try
            {
                // open the worksheet
                if (app == null)
                {
                    _standalone = true;
                    OpenWorkbook(workbookFileName);
                }

                for (int n = 0; n < recs.Count; n++)
                {
                    string[] _rec = recs[n].Split(delimiter);
                    for (int m = 0; m < _rec.Length; m++)
                    {
                        ws.Cells[n + 1, m + 1].value = _rec[m];
                    }
                    _numWritten++;

                    if (_numWritten > 30)
                    {
                        break;
                    }
                }

                // save the worksheet
                SaveWorksheet("");

                // close the app
                if (_standalone)
                {
                    CloseWorkbook();
                }
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".WriteToWorksheet(s, L<s>, c) >" + ex.Message);
            }


            return _numWritten;

        }






        /// <summary>
        /// string WriteToDelimited(List<string> recs, bool openExcel)
        /// Write the records to a delimited file and then open in Excel if specified
        /// </summary>
        /// <param name="recs"></param>
        /// <param name="openExcel"></param>
        /// <returns></returns>
        public string WriteToDelimited(List<string> recs, bool openExcel)
        {
            int _numWritten = 0;
            bool _standalone = false;
            string _fileName = "";

            try
            {
                _fileName = System.IO.Path.GetTempFileName() + ".csv";
                // write the rows out to a delimited file
                //_numWritten = CommonRoutines.WriteFile(_fileName, recs);
                //if (openExcel)
                //{
                //    // open excel 
                //    CommonRoutines.Shell("excel.exe", _fileName);
                //}
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".WriteToWorksheet(<s>,s) >" + ex.Message);
            }


            return _fileName;

        }






        /// <summary>
        /// int WriteToDelimited(string workbookFileName, List<string> recs, bool openExcel)
        /// Write the records to a delimited file and then open in Excel if specified
        /// </summary>
        /// <param name="workbookFileName"></param>
        /// <param name="recs"></param>
        /// <param name="openExcel"></param>
        /// <returns></returns>
        public int WriteToDelimited(string fileName, List<string> recs, bool openExcel)
        {
            int _numWritten = 0;
            bool _standalone = false;

            try
            {
                // write the rows out to a delimited file
                //_numWritten = CommonRoutines.WriteFile(fileName, recs);
                //CommonRoutines.Shell(fileName, "");
                // open excel 
                //CommonRoutines.Shell("excel.exe", fileName);
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".WriteToWorksheet(s,<s>,s) >" + ex.Message);
            }


            return _numWritten;

        }






        /// <summary>
        /// List<string> ReadExcelWorksheet(string argstrWorksheet)
        /// Read the rows from an excel worksheet and return them as delimited records
        /// </summary>
        /// <param name="argstrWorksheet"></param>
        /// <returns></returns>
        public List<string[]> ReadExcelWorksheet(string worksheetName)
        {
            List<string[]> _recs = new List<string[]>();

            try
            {
                if (wb != null)
                {
                    ws = wb.Worksheets[worksheetName];
                    if (ws != null)
                    {
                        // get last row in spreadsheet
                        Excel.Range last = ws.Cells.SpecialCells(Excel.XlCellType.xlCellTypeLastCell, Type.Missing);
                        long _lastRow = last.Row;

                        // get the last col.  row 1 has the fields, so go until cell is blank
                        long _lastCol = 0;
                        for (int n = 1; n < 1000; n++)
                        {
                            if (ws.Cells[1, n].value == null)
                            {
                                _lastCol = n - 1;
                                break;
                            }
                        }

                        // fill in the recs list
                        for (int n = 1; n <= _lastRow; n++)
                        {
                            if (ws.Cells[n, 1].value != null)
                            {

                                // get the range
                                //Microsoft.Office.Interop.Excel.Range range = ws.get_Range("A" + n,"Z" + n);
                                System.Array _values = (System.Array)ws.get_Range("A" + n, "AZ" + n).Cells.Value;
                                // walk the array and fill in the recs 
                                List<string> _cellValues = new List<string>();
                                for (int m = 1; m <= _lastCol; m++)
                                {
                                    string _cellValue = "";
                                    if (_values.GetValue(1, m) != null)
                                    {
                                        _cellValue = _values.GetValue(1, m).ToString();
                                    }
                                    _cellValues.Add(_cellValue);
                                }

                                if (_cellValues.Count > 0)
                                {
                                    _recs.Add(_cellValues.ToArray());
                                }
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("$E:" + moduleName + ".ReadExcelWorksheet >" + ex.Message);
            }

            // open the workbook
            return _recs;
        }


//using Excel = Microsoft.Office.Interop.Excel;
//Excel.Application xlApp = new Excel.Application();
//Excel.Workbook xlWorkbook = xlApp.Workbooks.Open("somefile.xls");
//Excel.Worksheet xlWorksheet = xlWorkbook.Sheets[1]; // assume it is the first sheet
//Excel.Range xlRange = xlWorksheet.UsedRange; // get the entire used range
//int value = 0;
//if(Int32.TryParse(xlRange.Cells[1,6].Value2.ToString(), out value)) // get the F cell from the first row
//{
//   int numberOfColumnsToRead = value * 4;
//   for(int col=7; col < (numberOfColumnsToRead + 7); col++)
//   {
//      Console.WriteLine(xlRange.Cells[1,col].Value2.ToString()); // do whatever with value
//   }
//}




    }
}