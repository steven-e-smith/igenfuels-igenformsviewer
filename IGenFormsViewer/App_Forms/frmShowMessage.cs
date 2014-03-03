using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace IGenFormsViewer
{
    public partial class frmShowMessage : Form
    {

        public string SetMessage 
        {
            get { return lblMessage.Text; }
            set { lblMessage.Text = value; }
        }



        public frmShowMessage()
        {
            InitializeComponent();
        }
    }
}
