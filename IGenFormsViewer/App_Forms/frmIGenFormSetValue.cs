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
    public partial class IGenFormSetValue : Form
    {
        private string moduleName = "IGenFormSetValue";

        private string strValue = "";
        public string SetValueString
        {
            get { return strValue; }
            set
            {
                strValue = value;
                txtValue.Text = strValue;
            }
        }


        private string strSelectedField = "";
        public string SetSelectedField
        {
            get { return strSelectedField; }
            set
            {
                strSelectedField = value;
                this.Text = "Set Field " + strSelectedField + " value";
            }
        }



        public IGenFormSetValue()
        {
            try
            {
                InitializeComponent();

                LoadTree();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".IGenFormSetValue() > " + ex.Message);
            }

            return;

        }









        void trvForm_NodeMouseDoubleClick(object sender, TreeNodeMouseClickEventArgs e)
        {

            try
            {

                if (txtValue.Text == "")
                {
                    txtValue.Text = "=";
                }

                // get the tag
                string _formName = e.Node.Tag.ToString().ToUpper();

                // set the text
                if (_formName == "DS")
                {
                    txtValue.Text = txtValue.Text + "DS(" + e.Node.Name + ")";
                }
                else
                {
                    txtValue.Text = txtValue.Text + "[" + _formName + "." + e.Node.Name + "]";
                }

            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".trvForm_NodeMouseDoubleClick > " + ex.Message);
            }

            return;

        }




        
        private void btnOK_Click(object sender, EventArgs e)
        {

            try
            {
                strValue = txtValue.Text;

                this.Hide();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnOK_Click > " + ex.Message);
            }

            return;

        }





        private void btnCancel_Click(object sender, EventArgs e)
        {

            try
            {
                strValue = null;

                this.Hide();
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".btnCancel_Click > " + ex.Message);
            }

            return;

        }



        public void LoadTree()
        {

            try
            {
                // set the tree 
                trvForm.Nodes.Clear();

                // load the forms
                if (IGenFormCommonRoutines.currentIGenForms.forms.Count > 0)
                {
                        // set the root
                        TreeNode _rootNode = new TreeNode();
                        _rootNode.Name = "Forms";
                        _rootNode.Text = "Forms";
                        _rootNode.Tag = IGenFormCommonRoutines.currentIGenForms;
                        trvForm.Nodes.Add(_rootNode);

                        for (int n=0;n<IGenFormCommonRoutines.currentIGenForms.forms.Count;n++)
                        {
                            IGenForm _form = IGenFormCommonRoutines.currentIGenForms.forms[n];
                            TreeNode _formNode = new TreeNode();
                            _formNode.Name = _form.name;
                            _formNode.Text = _form.title;
                            _formNode.Tag = _form;
                            _rootNode.Nodes.Add(_formNode);

                            List<IGenField> _fields = _form.formFields.fields;

                            for (int m=0;m<_fields.Count;m++)
                            {
                                TreeNode _fieldNode = new TreeNode();
                                _fieldNode.Name = _fields[m].name;
                                _fieldNode.Text = _fields[m].name;
                                _fieldNode.Tag = _formNode.Name;
                                _formNode.Nodes.Add(_fieldNode);

                            }
                        }
                }

                // load the database dataset
                string _connection = IGenFormCommonRoutines.currentIGenForms.dataSource;
                string _sql = IGenFormCommonRoutines.currentIGenForms.sql;

                // see if we can get the recordset
                List<string[]> _rows = DatabaseRoutines.Select(_connection, "SQLServer", _sql);

                if (_rows.Count > 0)
                {
                    // set the root
                    TreeNode _rootNode = new TreeNode();
                    _rootNode.Name = "DataSet";
                    _rootNode.Text = "DataSet";
                    _rootNode.Tag = _rows;
                    trvForm.Nodes.Add(_rootNode);

                    for (int n = 0; n < _rows.Count; n++)
                    {
                        string[] _dsFields = _rows[0];
                        for (int m = 0; m < _dsFields.Length; m++)
                        {
                            TreeNode _fieldNode = new TreeNode();
                            _fieldNode.Name = _dsFields[m];
                            _fieldNode.Text = _dsFields[m];
                            _fieldNode.Tag = "DS";
                            _rootNode.Nodes.Add(_fieldNode);

                        }
                    }
                }


                // set the root
                TreeNode _functionsNode = new TreeNode();
                _functionsNode.Name = "Functions";
                _functionsNode.Text = "Functions";
                _functionsNode.Tag = "";
                trvForm.Nodes.Add(_functionsNode);

                for (int n = 0; n < IGenFormCommonRoutines.functions.Length; n++)
                {
                    TreeNode _functionNode = new TreeNode();
                    _functionNode.Name = IGenFormCommonRoutines.functions[n];
                    _functionNode.Text = IGenFormCommonRoutines.functions[n];
                    _functionNode.Tag = "";
                    _functionsNode.Nodes.Add(_functionNode);
                }

                // give it an event
                trvForm.NodeMouseDoubleClick += new TreeNodeMouseClickEventHandler(trvForm_NodeMouseDoubleClick);
            }
            catch (Exception ex)
            {
                CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".IGenFormSetValue(t) > " + ex.Message);
            }

            return;

        }






    }
}
