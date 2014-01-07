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

namespace IGenForms.App_Code
{
    class IGenPDF
    {

        public void PrintPDFPage(Image image)
        {
            string pdfFileName = "";

            try
            {
                #region [PDF]

                // get all the pngs in the folder
                string[] _pngFiles = Directory.GetFiles(".", "*.png");

                // init the pdf stuff
                // Create a temporary file
                pdfFileName = String.Format("{0}_tempfile.pdf", Guid.NewGuid().ToString("D").ToUpper());
                PdfDocument pdfDoc = new PdfDocument();
                PdfGraphics.Images _pdfImages = new Images();
                pdfDoc.Info.Title = "PDFsharp XGraphic Sample";
                pdfDoc.Info.Author = "IGenFuels";
                pdfDoc.Info.Subject = "Created with code snippets that show the use of graphical functions";
                pdfDoc.Info.Keywords = "PDFsharp, XGraphics";

                for (int n = 0; n < _pngFiles.Length; n++)
                {
                    string _imageFileName = _pngFiles[n];
                    PdfPage _pdfImagesPage = pdfDoc.AddPage();
                    XGraphics _pdfGraphics = XGraphics.FromPdfPage(_pdfImagesPage);
                    _pdfImages.DrawPng(_pdfGraphics, 1, _imageFileName);
                }

                //PdfPage _textPage = pdfDoc.AddPage();
                //new Graphics.Text().DrawPage(_textPage);

                // now save to the pdf
                pdfDoc.Save(pdfFileName);
                // ...and start a viewer
                Process.Start(pdfFileName);
                #endregion
            }
            catch (Exception ex1)
            {
            }
            finally
            {
            }

            return;

        }

    }


}



