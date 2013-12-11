using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Jint;


namespace IGenForms
{
    public class Expressions
    {
        private static string moduleName = "Expressions";



        public static string EvaluateExpression(string expression)
        {
            string _result = "";
            bool _operator = false;
            string _expression = "";

            try
            {
                // check the expression to make sure there are no extraneous operators
                // first get rid of all spaces
                _expression = expression.Replace(" ", "");

                // now get rid of dups
                _expression = _expression.Replace("++", "+");
                _expression = _expression.Replace("+-", "-");
                _expression = _expression.Replace("-+", "-");
                _expression = _expression.Replace("--", "+");

                _expression = _expression.Replace("+*", "*");
                _expression = _expression.Replace("-*", "*");
                _expression = _expression.Replace("**", "*");
                _expression = _expression.Replace("/*", "*");

                _expression = _expression.Replace("+/", "/");
                _expression = _expression.Replace("-/", "/");
                _expression = _expression.Replace("*/", "/");
                _expression = _expression.Replace("//", "/");

                // now split the expression
                List<string> _expressionParts = new List<string>();

                string _temp = "";
                string _partIndicator = "";

                for (int n = 0; n < _expression.Length; n++)
                {
                    string _char = _expression.Substring(n, 1);
                    if ("1234567890.".IndexOf(_char) >= 0)
                    {
                        if (_partIndicator == "O")
                        {
                            _expressionParts.Add(_temp);
                            _temp = _char;
                        }
                        else
                        {
                            _temp = _temp + _char;
                        }
                        _partIndicator = "N";
                    }
                    else
                    {
                        if (_partIndicator == "N")
                        {
                            _expressionParts.Add(_temp);
                            _temp = _char;
                        }
                        else
                        {
                            _temp = _temp + _char;
                        }
                        _partIndicator = "O";
                    }
                }

                // if temp has something, add it
                if (_temp != "" && (CommonRoutines.IsNumeric(_temp) || _temp.Trim() == ")" ))
                {
                    _expressionParts.Add(_temp);
                }

                // now reassemble the expression
                _expression = "";
                for (int n = 0; n < _expressionParts.Count; n++)
                {
                    _expression = _expression + _expressionParts[n];
                }

                // execute the expression
                _result = CallJInt(_expression);
            }
            catch (Exception ex)
            {
                IGenFormCommonRoutines._processMessages.Add("For expression: " + expression + ", err=" + ex.Message);
                _result = "Error";
                //CommonRoutines.DisplayErrorMessage("$E:" + moduleName + ".EvaluateExpression > " + ex.Message);
            }

            return _result;


        }



        public static string CallJInt(string expression)
        {
            string _result = "";
            string _expression = expression;

            try
            {
                // execute the expression
                object _returnValue = new JintEngine().Run(_expression);

                if (_returnValue != null)
                {
                    _result = _returnValue.ToString();
                }
            }
            catch (Exception ex)
            {
                _result = "$$ERR:" + ex.Message;
                IGenFormCommonRoutines._processMessages.Add("For expression: " + expression + ", err=" + ex.Message);
            }

            return _result;


        }




    }
}
