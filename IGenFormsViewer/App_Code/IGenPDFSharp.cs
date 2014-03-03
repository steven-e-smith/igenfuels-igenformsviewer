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
using System.Collections.Generic;
using System.Windows.Forms;
using System.Drawing;
using System.Text;
using PdfSharp.Drawing;
using PdfSharp.Drawing.Layout;
using PdfSharp.Drawing.Pdf;
using PdfSharp.Pdf;
using PdfSharp.Pdf.IO;
using PdfGraphics;
using PdfSharp.Pdf.Advanced;
using PdfSharp.Internal;

namespace IGenFormsViewer
{
    class IGenPDFSharp
    {
        private string moduleName = "IGenPDFSharp";

        public PdfDocument pdfDoc = null;
        private PdfGraphics.Images pdfImages = null;
        private PdfGraphics.Text pdfText = null;



        public IGenPDFSharp()
        {

            try
            {
                bool _status = OpenPDF();
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".IGenPDFSharp > " + ex.Message);
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
                pdfText = new Text();
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
                            //_pdfImagesPage.Size = PdfSharp.PageSize.Legal;
                        }
                        else
                        {
                            _pdfImagesPage.Orientation = PdfSharp.PageOrientation.Portrait;
                            //_pdfImagesPage.Size = PdfSharp.PageSize.A4;
                        }
                        XGraphics _pdfGraphics = XGraphics.FromPdfPage(_pdfImagesPage);

                        // now that we have the graphics, we can draw the image and the text onto it                        
                        
                        pdfImages.DrawPng(_pdfGraphics, 1, _image);

                        // draw across
                        for (int m = 0; m < 7; m++)
                        {
                            pdfText.DrawText(_pdfGraphics, m.ToString(), (m * 100), 10);
                        }

                        // draw down 
                        for (int m = 0; m < 10; m++)
                        {
                            pdfText.DrawText(_pdfGraphics, m.ToString(), 10, (m * 100) - 5);
                        }

                        //// Write on top of background with known colors
                        //_pdfGraphics.DrawString("TEXT ON PDF PAGE", new XFont("Helvetica", 12, XFontStyle.Regular), XBrushes.White, 10, 0, XStringFormats.TopLeft);

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



        private void DrawStuff(PdfPage pdfPage)
        {

            //PdfDocument document = new PdfDocument();
            //PdfPage page = document.AddPage();
            //XGraphics gfx = XGraphics.FromPdfPage(page);
            //XFont font = new XFont("Times New Roman", 10, XFontStyle.Bold);
            //XTextFormatter tf = new XTextFormatter(gfx);
            //XRect rect = new XRect(40, 100, 250, 220);
            //gfx.DrawRectangle(XBrushes.SeaShell, rect);
            ////tf.Alignment = ParagraphAlignment.Left;
            //tf.DrawString(text, font, XBrushes.Black, rect, XStringFormats.TopLeft);
            //rect = new XRect(310, 100, 250, 220);
            //gfx.DrawRectangle(XBrushes.SeaShell, rect);
            //tf.Alignment = XParagraphAlignment.Right;
            //tf.DrawString(text, font, XBrushes.Black, rect, XStringFormats.TopLeft);

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




        public void GeneratePdfPageFromPallet(string pdfFileName, PictureBox pallet, string title, string orientation, bool labelsOpaque)
        {
            // get the image for the current form
            string _value = "";
            string _font = "";
            float _fontSize = 0;
            int _left = 0;
            int _top = 0;
            int _width = 0;
            int _height = 0;
            float _factorX = 1.35F;
            float _factorY = 1.20F;
            Pen _pen = new Pen(Brushes.Black);
            string _defaultFont = "Arial";  // "Microsoft Sans Serif";
            int _printLeftOffset = 0;
            int _printTopOffset = 0;
            string _imageName = pdfFileName;

            try
            {
                // get the offsets from the config settings
                string _temp = ConfigRoutines.GetSetting("PDFPrintLeftOffset");
                if (_temp == "")
                {
                    _temp = "5";
                }
                _printLeftOffset = CommonRoutines.ConvertToInt(_temp);

                _temp = ConfigRoutines.GetSetting("PDFPrintTopOffset");
                if (_temp == "")
                {
                    _temp = "3";
                }
                _printTopOffset = CommonRoutines.ConvertToInt(_temp);

                PdfPage _pdfPage = null;
                XGraphics _pdfGraphics = null;

                string _extension = _imageName.Substring(_imageName.LastIndexOf('.')).ToUpper();
                if (_extension == ".PDF")
                {
                    // load the first page
                    // Open the document to import pages from it.
                    PdfDocument inputDocument = PdfReader.Open(_imageName, PdfDocumentOpenMode.Import);
                    //PdfDocument inputDocument = CompatiblePdfReader.Open(_imageName);  //, PdfDocumentOpenMode.Import);

                    // Iterate pages
                    int count = inputDocument.PageCount;
                    if (count > 0)
                    {
                        _pdfPage = pdfDoc.AddPage(inputDocument.Pages[0]);
                        _pdfGraphics = XGraphics.FromPdfPage(_pdfPage);
//                        _pdfPage.Orientation = (orientation.ToUpper().IndexOf('L') == 0) ? PdfSharp.PageOrientation.Landscape : _pdfPage.Orientation = PdfSharp.PageOrientation.Portrait;
                    }
                }
                else
                {
                    _pdfPage = pdfDoc.AddPage();
                    _pdfPage.Orientation = (orientation.ToUpper().IndexOf('L') == 0) ? PdfSharp.PageOrientation.Landscape : _pdfPage.Orientation = PdfSharp.PageOrientation.Portrait;
                    _pdfGraphics = XGraphics.FromPdfPage(_pdfPage);
                    pdfImages.DrawPng(_pdfGraphics, 1, pallet.Image);
                }

                if (_pdfPage != null)
                {

                    XPdfFontOptions options = new XPdfFontOptions(PdfFontEncoding.WinAnsi, PdfFontEmbedding.Default);
                    XFont _pdfFont = new XFont("Times New Roman", 9, XFontStyle.Regular, options);

                    //pdfText.DrawText(_pdfGraphics, "Test Text", 10, 20);
                    //_pdfGraphics.DrawString("Test Text", _pdfFont, XBrushes.Black, 10, 20);

                    // walk the controls and draw to the image
                    //foreach (Control _control in pallet.Controls)
                    for (int n = 0; n < pallet.Controls.Count;n++ )
                    {
                        Control _control = pallet.Controls[n];

                        IGenField _igenFieldObject = null;
                        if (_control.Tag != null && _control.Tag.GetType().Name.ToUpper() == "IGENFIELD")
                        {
                            _igenFieldObject = (IGenField)_control.Tag;
                        }

                        if (_igenFieldObject != null && _igenFieldObject.visible)
                        {
                            string _type = _igenFieldObject.type.ToUpper();
                            _left = (int)(_igenFieldObject.left * .745) + _printLeftOffset;
                            _top = (int)(_igenFieldObject.top * .755) + _printTopOffset;
                            _width = (int)(_igenFieldObject.width * .745);
                            _height = (int)(_igenFieldObject.height * .755);
                            _fontSize = (float)(_igenFieldObject.fontSize);
                            _font = _igenFieldObject.fontName;
                            _value = _igenFieldObject.text;

                            switch (_type)
                            {
                                case "PICTURE":
                                    // draw the image at the location
                                    _left = _left + 1;
                                    _top = _top - 2;
                                    XImage _image = _igenFieldObject.img;
                                    if (_igenFieldObject.img == null)
                                    {
                                        PictureBox _pic = (PictureBox)_control;
                                        if (_pic.Image != null)
                                        {
                                            Image _picImage = CommonRoutines.ResizeImage(_pic.Image, new Size(_width, _height));
                                            _image = _picImage;
                                        }
                                    }

                                    if (_image != null)
                                    {
                                        _pdfGraphics.DrawImage(_image, new Rectangle(_left, _top, _width, _height));
                                    }
                                    break;

                                case "BUTTON":
                                case "IMAGEBUTTON":
                                    break;

                                default:

                                    // create a rect of where the control sits
                                    XStringFormat _format = new XStringFormat();
                                    XTextFormatter _textFormatter = new XTextFormatter(_pdfGraphics);
                                    _format.LineAlignment = XLineAlignment.Far;

                                    // check alignment
                                    switch (_igenFieldObject.alignment.ToUpper())
                                    {
                                        case "LEFT":
                                            _format.Alignment = XStringAlignment.Near;
                                            _textFormatter.Alignment = XParagraphAlignment.Left;
                                            break;

                                        case "CENTER":
                                            _format.Alignment = XStringAlignment.Center;
                                            _textFormatter.Alignment = XParagraphAlignment.Center;
                                            break;

                                        case "RIGHT":
                                            _format.Alignment = XStringAlignment.Far;
                                            _textFormatter.Alignment = XParagraphAlignment.Right;
                                            break;
                                    }
                                    Rectangle _rect = new Rectangle(_left, _top, _width, _height);

                                    // see if any special processing on the value...
                                    switch (_type.ToUpper())
                                    {
                                        case "CHECKBOX":
                                            _value = _value.ToUpper().IndexOf("TRUE") == 0 ? "X" : "";
                                            break;

                                    }

                                    _pdfFont = new XFont(_font, _fontSize, XFontStyle.Regular, options);

                                    _textFormatter.DrawString(_value, _pdfFont, XBrushes.Black, _rect, XStringFormats.TopLeft);

                                    break;
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GeneratePdfPageFromPallet > " + ex.Message);
            }

            return;
        }




        public Image ExportImageFromPDF(string pdfFileName)
        {
            Image _imageFromPDF = null;

            try
            {
                // open the pdf file
                pdfDoc = PdfReader.Open(pdfFileName, PdfDocumentOpenMode.Import);

                int imageCount = 0;

                // Iterate pages
                foreach (PdfPage page in pdfDoc.Pages)
                {
                    // Get resources dictionary
                    PdfDictionary resources = page.Elements.GetDictionary("/Resources");
                    if (resources != null)
                    {
                        // Get external objects dictionary
                        PdfDictionary xObjects = resources.Elements.GetDictionary("/XObject");
                        if (xObjects != null)
                        {
                            ICollection<PdfItem> items = xObjects.Elements.Values;
                            // Iterate references to external objects
                            foreach (PdfItem item in items)
                            {
                                PdfReference reference = item as PdfReference;
                                if (reference != null)
                                {
                                    PdfDictionary xObject = reference.Value as PdfDictionary;
                                    // Is external object an image?
                                    if (xObject != null && xObject.Elements.GetString("/Subtype") == "/Image")
                                    {
                                        ExportImage(xObject, ref imageCount);
                                    }
                                }
                            }
                        }
                    }
                }

                pdfDoc.Close();
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ExportImageFromPDF > " + ex.Message);
            }

            return _imageFromPDF;

        }






        public void ExportImage(PdfDictionary image, ref int count)
        {

            try
            {
                string filter = image.Elements.GetName("/Filter");
                switch (filter)
                {
                    case "/DCTDecode":
                        ExportJpegImage(image, ref count);
                        break;

                    case "/FlateDecode":
                        ExportAsPngImage(image, ref count);
                        break;
                }
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ExportImage > " + ex.Message);
            }

            return;

        }




        // write a jpg from the pdf
        public Image ExportJpegImage(PdfDictionary image, ref int count)
        {
            string _jpegFileName = "";
            Image _image = null;

            try
            {
                string strTime = DateTime.Now.Hour.ToString() + "_" +
                                    DateTime.Now.Minute.ToString() + "_" +
                                    DateTime.Now.Second.ToString() + "_" +
                                    DateTime.Now.Millisecond.ToString();
                _jpegFileName = Application.StartupPath + "\\pdftemp_" + strTime + ".jpg";

                // Fortunately JPEG has native support in PDF and exporting an image is just writing the stream to a file.
                byte[] stream = image.Stream.Value;
                FileStream fs = new FileStream(String.Format(_jpegFileName, count++), FileMode.Create, FileAccess.Write);
                BinaryWriter bw = new BinaryWriter(fs);
                bw.Write(stream);
                bw.Close();

                // now load the jpeg into the image
                _image = Image.FromFile(_jpegFileName);

                // get rid of the file
                //System.IO.File.Delete(_jpegFileName);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ExportJpegImage > " + ex.Message);
            }

            return _image;

        }





        // write a png from the pdf
        public void ExportAsPngImage(PdfDictionary image, ref int count)
        {
            int width = image.Elements.GetInteger(PdfImage.Keys.Width);
            int height = image.Elements.GetInteger(PdfImage.Keys.Height);
            int bitsPerComponent = image.Elements.GetInteger(PdfImage.Keys.BitsPerComponent);

            try
            {
                // TODO: You can put the code here that converts vom PDF internal image format to a Windows bitmap
                // and use GDI+ to save it in PNG format.
                // It is the work of a day or two for the most important formats. Take a look at the file
                // PdfSharp.Pdf.Advanced/PdfImage.cs to see how we create the PDF image formats.
                // We don't need that feature at the moment and therefore will not implement it.
                // If you write the code for exporting images I would be pleased to publish it in a future release
                // of PDFsharp.
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".ExportAsPngImage > " + ex.Message);
            }

            return;

        }



    }


}



