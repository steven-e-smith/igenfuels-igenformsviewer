#region PDFsharp - A .NET library for processing PDF
//
// Copyright (c) 2005-2009 empira Software GmbH, Cologne (Germany)
//
// http://www.pdfsharp.com
//
// http://sourceforge.net/projects/pdfsharp
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.
#endregion

using System;
using System.IO;
using System.Diagnostics;
using PdfSharp.Drawing;
using PdfSharp.Pdf;
using System.Windows.Forms;
using System.Drawing;
using PdfGraphics;

namespace IGenFormsViewer
{
    class IGenPDF
    {
        private string moduleName = "CommonRoutines";

        public PdfDocument pdfDoc = null;
        private PdfGraphics.Images pdfImages = null;



        public IGenPDF()
        {

            try
            {
                bool _status = OpenPDF();
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".IGenPDF > " + ex.Message);
            }

            return;

        }





        public bool OpenPDF()
        {
            bool _status = true;

            try
            {
                pdfDoc = new PdfDocument();
                pdfImages = new Images();
                pdfDoc.Info.Title = "IGenFuels PDF Creator";
                pdfDoc.Info.Author = "IGenFuels";
                pdfDoc.Info.Subject = "Create a PDF file";
                pdfDoc.Info.Keywords = "IGenFuels, PDFsharp, XGraphics";

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".OpenPDF > " + ex.Message);
            }

            return _status;

        }



        public void PrintPDFPage(Image[] images, string orientation)
        {

            try
            {

                if (pdfDoc != null)
                {
                    for (int n = 0; n < images.Length; n++)
                    {
                        XImage _image = (XImage) images[n];
                        PdfPage _pdfImagesPage = pdfDoc.AddPage();
                        if (orientation.ToUpper().IndexOf('L') == 0)
                        {
                            _pdfImagesPage.Orientation = PdfSharp.PageOrientation.Landscape;
                        }
                        else
                        {
                            _pdfImagesPage.Orientation = PdfSharp.PageOrientation.Portrait;
                        }
                        _pdfImagesPage.Size = PdfSharp.PageSize.A4;
                        XGraphics _pdfGraphics = XGraphics.FromPdfPage(_pdfImagesPage);
                        pdfImages.DrawPng(_pdfGraphics, 1, _image);
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ClosePDF > " + ex.Message);
            }
            finally
            {
            }

            return;

        }






        public void PrintPDFPage(string[] imageFiles, string orientation)
        {

            try
            {

                if (pdfDoc != null)
                {
                    // get all the pngs in the folder
                    string[] _pngFiles = Directory.GetFiles(".", "*.png");


                    for (int n = 0; n < _pngFiles.Length; n++)
                    {
                        string _imageFileName = _pngFiles[n];
                        PdfPage _pdfImagesPage = pdfDoc.AddPage();
                        XGraphics _pdfGraphics = XGraphics.FromPdfPage(_pdfImagesPage);
                        pdfImages.DrawPng(_pdfGraphics, 1, _imageFileName);
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ClosePDF > " + ex.Message);
            }
            finally
            {
            }

            return;

        }




        
        public string SavePDF(string pdfFileName, bool display)
        {
            string _pdfFileName = pdfFileName;

            try
            {
                if (pdfDoc != null)
                {

                    if (_pdfFileName == "")
                    {
                        // Create a temporary file
                        pdfFileName = String.Format("{0}_tempfile.pdf", Guid.NewGuid().ToString("D").ToUpper());
                    }

                    // now save to the pdf
                    pdfDoc.Save(pdfFileName);

                    if (display)
                    {
                        // start a viewer
                        Process.Start(pdfFileName);
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".SavePDF > " + ex.Message);
            }

            return _pdfFileName;

        }





        public bool ClosePDF()
        {
            bool _status = true;

            try
            {
                if (pdfDoc != null)
                {

                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ClosePDF > " + ex.Message);
            }

            return _status;

        }




    }


}



