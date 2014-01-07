using System;
using System.Drawing;
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

namespace IGenForms
{
    public class PlexPrint
    {

        private static Bitmap objBitmap = null;
        private static System.Drawing.Graphics objGraphic = null;
        private static Size objPortraitSizeFull = new Size((int)(8.5 * 96), (int)(11 * 96));
        private static Size objPortraitSizeForm = new Size(790, 800);
        private static string strDefaultPrinter = "HP Photosmart C4700 series";
        private static bool bolPrintAsIs = false;
        public static int intLeftPrintMargin = 0;
        public static int intTopPrintMargin = 0;

        public static void PrintImage(Image argobjImage, string argstrPrinterSelected)
        {
            string strPrinterSelected = argstrPrinterSelected == "" ? strDefaultPrinter : argstrPrinterSelected;
            PrintDocument objPrintDocument = new PrintDocument();
            objPrintDocument.PrintPage += new PrintPageEventHandler(objPrintDocument_PrintPage);

            // 
        }



        public static void PrintImage(string argstrImageFile, string argstrPrinterSelected, bool argbolPrintAsIs)
        {

            bolPrintAsIs = argbolPrintAsIs;
            PrintImage(argstrImageFile, argstrPrinterSelected);

        }


        public static void PrintImage(string argstrImageFile, string argstrPrinterSelected)
        {
            if (System.IO.File.Exists(argstrImageFile))
            {
                string strPrinterSelected = GetDefaultPrinter();
                if (strPrinterSelected == "")
                {
                    string strTemp = ConfigRoutines.GetSetting("DefaultPrinter");
                    strDefaultPrinter = strTemp == "" ? strDefaultPrinter : ConfigRoutines.GetSetting("DefaultPrinter");
                    strPrinterSelected = argstrPrinterSelected == "" ? strDefaultPrinter : argstrPrinterSelected;
                }
                PrintDocument objPrintDocument = new PrintDocument();
                objPrintDocument.PrintPage += new PrintPageEventHandler(objPrintDocument_PrintPage);
                objBitmap = new Bitmap(argstrImageFile);

                // print the file
                try
                {
                    objPrintDocument.PrinterSettings.PrinterName = strPrinterSelected;
                    //if (!bolPrintAsIs)
                    //{
                    //    Margins objMargins = new Margins(150, 20, 20, 20);
                    //    objPrintDocument.DefaultPageSettings.Margins = objMargins;
                    //}
                    objPrintDocument.Print();
                }
                catch (Exception ex)
                {
                    CommonRoutines.Log(ex.Message);
                }
            }

        }



        private static void objPrintDocument_PrintPage(object sender, PrintPageEventArgs e)
        {

            if (objBitmap != null)
            {
                e.Graphics.DrawImage(ResizeImage((Image)objBitmap, objPortraitSizeFull), intLeftPrintMargin, intTopPrintMargin);
                //            e.Graphics.DrawImage(objBitmap, intLeftPrintMargin, intTopPrintMargin);
            }

        }





        private static Image ResizeImage(Image argobjImage, Size argobjSize)
        {
            Image objNewImage = null;
            int sourceWidth = argobjImage.Width;
            int sourceHeight = argobjImage.Height;
            Size objSize = new Size();

            if (bolPrintAsIs)
            {
                return argobjImage;
            }


            if (argobjSize != null)
            {
                objSize = argobjSize;
            }
            else
            {
                objSize = objPortraitSizeForm;
            }

            float nPercent = 0;
            float nPercentW = 0;
            float nPercentH = 0;

            nPercentW = ((float)objSize.Width / (float)sourceWidth);
            nPercentH = ((float)objSize.Height / (float)sourceHeight);

            if (nPercentH < nPercentW)
                nPercent = nPercentH;
            else
                nPercent = nPercentW;

            int destWidth = (int)(sourceWidth * nPercent);
            int destHeight = (int)(sourceHeight * nPercent);

            Bitmap b = new Bitmap(destWidth, destHeight);
            Graphics g = Graphics.FromImage((Image)b);
            g.InterpolationMode = InterpolationMode.HighQualityBicubic;

            g.DrawImage(argobjImage, 0, 0, destWidth, destHeight);
            g.Dispose();

            objNewImage = (Image)b;

            return objNewImage;

        }


        private static void SaveToJpeg(string argstrPath, Bitmap argobjImage, long arglngQuality)
        {

            try
            {
                // create a new bitmap
                Bitmap _newBitMap = new Bitmap(argobjImage);

                _newBitMap.Save(argstrPath);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log(ex.Message);
            }

        }



        private static ImageCodecInfo GetEncoderInfo(string strMimeType)
        {
            // Get image codecs for all image formats
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();
            ImageCodecInfo codec = null;

            // Find the correct image codec
            for (int i = 0; i < codecs.Length; i++)
            {
                if (codecs[i].MimeType == strMimeType)
                {
                    codec = codecs[i];
                    break;
                }
            }

            return codec;
        }


        public static string GetDefaultPrinter()
        {
            string strDefaultPrinterName = "";

            System.Drawing.Printing.PrinterSettings objPrinterSettings = new PrinterSettings();

            try
            {
                if (objPrinterSettings.IsDefaultPrinter)
                {
                    strDefaultPrinterName = objPrinterSettings.PrinterName;
                }
            }
            catch (Exception ex)
            {
            }

            //strDefaultPrinterName = ConfigRoutines.GetSetting("DefaultPrinter");

            return strDefaultPrinterName;

        }


    }

}