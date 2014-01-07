using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Drawing;
using System.Drawing.Printing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace IGenFormsViewer
{
    public class PrintRoutines
    {
        private static string moduleName = "PrintRoutines";

        private static Bitmap bitmap = null;
        private static Graphics graphic = null;
        private static Size sizeFull = new Size(830, 1056);
        private static Size portraitSizeFull = new Size(830, 1056);
        private static Size portraitSizeForm = new Size(790, 800);
        private static Size landscapeSizeFull = new Size(1056, 830);
        private static Size landscapeSizeForm = new Size(800, 790);
        private static string defaultPrinter = "";
        private static bool printAsIs = false;
        public static int leftPrintMargin = 0;
        public static int topPrintMargin = 0;



        /// <summary>
        /// void Print(PictureBox pallet, string title, bool printPreview)
        /// Print or preview the composite 
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="title"></param>
        /// <param name="printPreview"></param>
        public static void Print(PictureBox pallet, string title, bool printPreview)
        {

            try
            {
                Print(pallet, title, printPreview, "P");
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Print > " + ex.Message);
            }

            return;

        }





        public static bool Print(PictureBox pallet, string title, bool printPreview, string printOrientation)
        {
            bool _status = true;

            try
            {
                string _defaultPrinter = GetDefaultPrinter();

                _status = Print(pallet, title, printPreview, printOrientation, false, _defaultPrinter);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Print > " + ex.Message);
            }

            return _status;

        }





        /// <summary>
        /// void Print(PictureBox pallet, string title, bool printPreview)
        /// Print or preview the composite 
        /// </summary>
        /// <param name="pallet"></param>
        /// <param name="title"></param>
        /// <param name="printPreview"></param>
        public static bool Print(PictureBox pallet, string title, bool printPreview, string printOrientation, bool savePrint, string printer)
        {
            bool _status = true;

            try
            {
                if (pallet != null)
                {
                    if (pallet.Controls.Count >= 0)
                    {
                        string _printPreviewFile = CommonRoutines.CreateBitmapFromPallet(pallet, title);
                        if (printPreview)
                        {
                            // show it
                            CommonRoutines.Shell("mspaint.exe", _printPreviewFile);
                        }
                        else
                        {
                            if (savePrint)
                            {
                                // find out where to save it
                                string _saveToFile = CommonRoutines.SaveDialog("png", "PNG Files (*.png)|*.png|All files (*.*)|*.*");
                                if (_saveToFile != "")
                                {
                                    CommonRoutines.CopyFile(_printPreviewFile, _saveToFile);
                                }
                                else
                                {
                                    bool _answer = CommonRoutines.Ask("Do you wish to cancel all printing?");
                                    if (_answer)
                                    {
                                        _status = false;
                                    }
                                }
                            }
                            else
                            {
                                // print it
                                PrintImage(_printPreviewFile, printer, printOrientation);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".Print > " + ex.Message);
            }

            return _status;

        }




        /// <summary>
        /// void PrintImage(Image image, string printerSelected)
        /// Print the passed image
        /// </summary>
        /// <param name="image"></param>
        /// <param name="printerSelected"></param>
        public static void PrintImage(Image image, string printerSelected)
        {
            try
            {
                string _printerSelected = (printerSelected == "") ? defaultPrinter : printerSelected;
                PrintDocument printDocument = new PrintDocument();
                printDocument.PrintPage += new PrintPageEventHandler(printDocument_PrintPage);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".PrintImage(i,s) > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void PrintImage(string imageFileName, string printerSelected, bool printAsIs)
        /// Print the passed image without resizing it
        /// </summary>
        /// <param name="imageFileName"></param>
        /// <param name="printerSelected"></param>
        /// <param name="printAsIs"></param>
        public static void PrintImage(string imageFileName, string printerSelected, bool printAsIsFlag)
        {

            try
            {
                printAsIs = printAsIsFlag;
                PrintImage(imageFileName, printerSelected);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".PrintImage(s,s,b) > " + ex.Message);
            }

            return;

        }




        /// <summary>
        /// void PrintImage(string imageFileName, string printerSelected)
        /// Print the image from the file passed to the printer passed
        /// </summary>
        /// <param name="imageFileName"></param>
        /// <param name="printerSelected"></param>
        public static void PrintImage(string imageFileName, string printerSelected)
        {

            try
            {
                PrintImage(imageFileName, printerSelected, "P");
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".PrintImage(s,s) > " + ex.Message);
            }

            return;

        }



        /// <summary>
        /// void PrintImage(string imageFileName, string printerSelected)
        /// Print the image from the file passed to the printer passed
        /// </summary>
        /// <param name="imageFileName"></param>
        /// <param name="printerSelected"></param>
        public static void PrintImage(string imageFileName, string printerSelected, string printOrientation)
        {

            try
            {
                if (System.IO.File.Exists(imageFileName))
                {
                    string printer = GetDefaultPrinter();
                    if (printer == "")
                    {
                        string strTemp = ConfigRoutines.GetSetting("DefaultPrinter");
                        defaultPrinter = strTemp == "" ? defaultPrinter : ConfigRoutines.GetSetting("DefaultPrinter");
                        printer = (printerSelected == "") ? defaultPrinter : printerSelected;
                    }
                    PrintDocument printDocument = new PrintDocument();
                    printDocument.PrintPage += new PrintPageEventHandler(printDocument_PrintPage);
                    bitmap = new Bitmap(imageFileName);

                    printDocument.PrinterSettings.PrinterName = printer;
                    printDocument.DefaultPageSettings.Landscape = true;
                    printDocument.DefaultPageSettings.Landscape = (printOrientation.ToUpper().IndexOf('L') == 0 ? true : false);
                    sizeFull = landscapeSizeFull;
                    printDocument.Print();

                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".PrintImage(s,s) > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// void printDocument_PrintPage(object sender, PrintPageEventArgs e)
        /// Process the PrintPage event
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private static void printDocument_PrintPage(object sender, PrintPageEventArgs e)
        {

            try
            {
                if (bitmap != null)
                {
                    e.Graphics.DrawImage(ResizeImage((Image)bitmap, sizeFull), leftPrintMargin, topPrintMargin);
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".printDocument_PrintPage > " + ex.Message);
            }

            return;

        }







        /// <summary>
        /// Image ResizeImage(Image image, Size size)
        /// Resize the passed image to the passed size
        /// </summary>
        /// <param name="image"></param>
        /// <param name="size"></param>
        /// <returns></returns>
        private static Image ResizeImage(Image image, Size size)
        {
            Image _newImage = null;
            int _sourceWidth = image.Width;
            int _sourceHeight = image.Height;
            Size _size = new Size();

            try
            {
                if (printAsIs)
                {
                    return image;
                }


                if (size != null)
                {
                    _size = size;
                }
                else
                {
                    _size = portraitSizeForm;
                }

                float _percent = 0;
                float _percentW = 0;
                float _percentH = 0;

                _percentW = ((float)_size.Width / (float)_sourceWidth);
                _percentH = ((float)_size.Height / (float)_sourceHeight);

                if (_percentH < _percentW)
                    _percent = _percentH;
                else
                    _percent = _percentW;

                int _destWidth = (int)(_sourceWidth * _percent);
                int _destHeight = (int)(_sourceHeight * _percent);

                Bitmap b = new Bitmap(_destWidth, _destHeight);
                Graphics g = Graphics.FromImage((Image)b);
                g.InterpolationMode = InterpolationMode.HighQualityBicubic;

                g.DrawImage(image, 0, 0, _destWidth, _destHeight);
                g.Dispose();

                _newImage = (Image)b;
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ResizeImage > " + ex.Message);
            }

            return _newImage;

        }





        /// <summary>
        /// void SaveToJpeg(string argstrPath, Bitmap image, long arglngQuality)
        /// Save the passed image to a jpg file
        /// </summary>
        /// <param name="argstrPath"></param>
        /// <param name="image"></param>
        /// <param name="arglngQuality"></param>
        private static void SaveToJpeg(string argstrPath, Bitmap image, long arglngQuality)
        {

            try
            {
                image.Save(argstrPath);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".SaveToJpeg > " + ex.Message);
            }

            return;

        }





        /// <summary>
        /// ImageCodecInfo GetEncoderInfo(string strMimeType)
        /// Get the encoder for the passed type
        /// </summary>
        /// <param name="strMimeType"></param>
        /// <returns></returns>
        private static ImageCodecInfo GetEncoderInfo(string strMimeType)
        {
            ImageCodecInfo _codec = null;

            try
            {
                // Get image codecs for all image formats
                ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();

                // Find the correct image codec
                for (int i = 0; i < codecs.Length; i++)
                {
                    if (codecs[i].MimeType == strMimeType)
                    {
                        _codec = codecs[i];
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetEncoderInfo > " + ex.Message);
            }

            return _codec;
        }





        /// <summary>
        /// string GetDefaultPrinter()
        /// Get the default printer 
        /// </summary>
        /// <returns></returns>
        public static string GetDefaultPrinter()
        {
            string _defaultPrinterName = "";

            System.Drawing.Printing.PrinterSettings _printerSettings = new PrinterSettings();

            try
            {
                if (_printerSettings.IsDefaultPrinter)
                {
                    _defaultPrinterName = _printerSettings.PrinterName;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".GetDefaultPrinter > " + ex.Message);
            }

            return _defaultPrinterName;

        }






        /// <summary>
        /// void ShowPageSetup()
        /// This method displays a PageSetupDialog object. If the
        /// user clicks OK in the dialog, selected results of
        /// the dialog are displayed in ListBox1.
        /// </summary>
        public static void ShowPageSetup()
        {

            try
            {
                PageSetupDialog _pageSetup = new PageSetupDialog();

                // Initialize the dialog's PrinterSettings property to hold user
                // defined printer settings.
                _pageSetup.PageSettings = new System.Drawing.Printing.PageSettings();

                // Initialize dialog's PrinterSettings property to hold user
                // set printer settings.
                _pageSetup.PrinterSettings = new System.Drawing.Printing.PrinterSettings();

                //Do not show the network in the printer dialog.
                _pageSetup.ShowNetwork = false;

                //Show the dialog storing the result.
                DialogResult result = _pageSetup.ShowDialog();

                if (result == DialogResult.OK)
                {
                    object[] results = new object[]{ 
				_pageSetup.PageSettings.Margins, 
				_pageSetup.PageSettings.PaperSize, 
				_pageSetup.PageSettings.Landscape, 
				_pageSetup.PrinterSettings.PrinterName, 
				_pageSetup.PrinterSettings.PrintRange};
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ShowPageSetup > " + ex.Message);
            }

            return;
        }



        /// <summary>
        /// void ShowPrinterSetup()
        /// This method displays a PageSetupDialog object. If the
        /// user clicks OK in the dialog, selected results of
        /// the dialog are displayed in ListBox1.
        /// </summary>
        public static void ShowPrinterSetup()
        {

            try
            {
                System.Windows.Forms.PrintDialog _printerDialog = new System.Windows.Forms.PrintDialog();

                _printerDialog.ShowDialog();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".ShowPrinterSetup > " + ex.Message);
            }

            return;
        }

    }

}
