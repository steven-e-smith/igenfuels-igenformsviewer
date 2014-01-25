using System;
using System.IO;
using System.Diagnostics;
using System.Collections.Generic;
using System.Windows.Forms;
using System.Drawing;
using System.Runtime.InteropServices;


namespace IGenFormsViewer
{
    class IGenPDFGhostScript
    {
        private string moduleName = "IGenPDFSharp";

        [DllImport("gsdll32.dll", EntryPoint = "gsapi_new_instance")]
        private static extern int CreateAPIInstance(out IntPtr pinstance,
                                                IntPtr caller_handle);

        [DllImport("gsdll32.dll", EntryPoint = "gsapi_init_with_args")]
        private static extern int InitAPI(IntPtr instance, int argc, IntPtr argv);

        [DllImport("gsdll32.dll", EntryPoint = "gsapi_exit")]
        private static extern int ExitAPI(IntPtr instance);

        [DllImport("gsdll32.dll", EntryPoint = "gsapi_delete_instance")]
        private static extern void DeleteAPIInstance(IntPtr instance);





        public IGenPDFGhostScript()
        {

            try
            {
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".IGenPDFGhostScript > " + ex.Message);
            }

            return;

        }




        public Image CreateImageFromPDF(string inputPath, string outputPath, string imageFormat, int firstPage, int lastPage, int width, int height)
        {
            bool result = false;
            Image _image = null;
            string _imageFileName = outputPath;
            string _imageFormat = imageFormat;

            try
            {
                if (_imageFileName.Trim() == "")
                {
                    _imageFormat = "png16m";
                    _imageFileName = ".\\tmpimage.png";
                    
                }

                // Examples of the imageFormat parameter are "jpeg", "tiff32nc", etc
                string[] args = GetArgs(inputPath, _imageFileName, _imageFormat, firstPage, lastPage, width, height);
                var argStrHandles = new GCHandle[args.Length];
                var argPtrs = new IntPtr[args.Length];

                // Create a handle for each of the arguments after 
                // they've been converted to an ANSI null terminated
                // string. Then store the pointers for each of the handles
                for (int i = 0; i < args.Length; i++)
                {
                    argStrHandles[i] = GCHandle.Alloc(StringToAnsi(args[i]), GCHandleType.Pinned);
                    argPtrs[i] = argStrHandles[i].AddrOfPinnedObject();
                }

                // Get a new handle for the array of argument pointers
                var argPtrsHandle = GCHandle.Alloc(argPtrs, GCHandleType.Pinned);

                // Get a pointer to an instance of the GhostScript API 
                // and run the API with the current arguments
                IntPtr gsInstancePtr;
                CreateAPIInstance(out gsInstancePtr, IntPtr.Zero);

                InitAPI(gsInstancePtr, args.Length, argPtrsHandle.AddrOfPinnedObject());

                // Cleanup arguments in memory
                for (int i = 0; i < argStrHandles.Length; i++)
                    argStrHandles[i].Free();

                argPtrsHandle.Free();

                // Clear API
                ExitAPI(gsInstancePtr);
                DeleteAPIInstance(gsInstancePtr);

                // now if the file exists, load it as an image
                if (System.IO.File.Exists(_imageFileName))
                {
                    _image = Image.FromFile(_imageFileName);
                }

                result = true;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".CreateImage > " + ex.Message);
            }

            return _image;
        }





        private string[] GetArgs(string inputPath, string outputPath, string imageFormat, 
                                 int firstPage, int lastPage, int width, int height)
        {
            string[] _args = { };

            try
            {
                _args = new[]
                {
                    // Keep gs from writing information to standard output
                    "-q",                     
                    "-dQUIET",
       
                    "-dPARANOIDSAFER", // Run this command in safe mode
                    "-dBATCH", // Keep gs from going into interactive mode
                    "-dNOPAUSE", // Do not prompt and pause for each page
                    "-dNOPROMPT", // Disable prompts for user interaction           
                    "-dMaxBitmap=500000000", // Set high for better performance
        
                    // Set the starting and ending pages
                    String.Format("-dFirstPage={0}", firstPage),
                    String.Format("-dLastPage={0}", lastPage),   
        
                    // Configure the output anti-aliasing, resolution, etc
                    "-dAlignToPixels=0",
                    "-dGridFitTT=0",
                    "-sDEVICE=" + imageFormat,
                    "-dTextAlphaBits=4",
                    "-dGraphicsAlphaBits=4",
                    String.Format("-r{0}x{1}", width, height),

                    // Set the input and output files
                    String.Format("-sOutputFile={0}", outputPath),
                    inputPath
                };
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".GetArgs > " + ex.Message);
            }

            return _args;

        }






        private void Cleanup(GCHandle[] argStrHandles, GCHandle argPtrsHandle,
                                               IntPtr gsInstancePtr)
        {

            try
            {
                for (int i = 0; i < argStrHandles.Length; i++)
                    argStrHandles[i].Free();

                argPtrsHandle.Free();

                ExitAPI(gsInstancePtr);
                DeleteAPIInstance(gsInstancePtr);
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".Cleanup > " + ex.Message);
            }

            return;

        }






        public byte[] StringToAnsi(string original)
        {
            var strBytes = new byte[original.Length + 1];

            try
            {
                for (int i = 0; i < original.Length; i++)
                    strBytes[i] = (byte)original[i];

                strBytes[original.Length] = 0;
            }
            catch (Exception ex)
            {
                CommonRoutines.Log("$E:" + moduleName + ".StringToAnsi > " + ex.Message);
            }

            return strBytes;
        }



    }



}
