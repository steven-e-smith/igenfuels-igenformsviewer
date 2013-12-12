using System;
using System.Collections.Generic;
using System.Windows.Forms;
using System.Text;

namespace IGenFormsViewer
{

    // each form/function will call this security class for it to set fields invisible, disabled or to restrict functionality.


    public class Security
    {
        private static string loggedInUser = "";
        public static string LoggedInUser
        {
            get { return loggedInUser; }
        }


        private static string loggedInUserSecurity = "";
        public static string LoggedInUserSecurity
        {
            get { return loggedInUserSecurity; }
        }



            


        public static string LoginUser()
        {
            string _userLoggedIn = "";

            try
            {
                _userLoggedIn = LoginUser("etluser");
            }
            catch (Exception ex)
            {
            }

            return _userLoggedIn;

        }



        public static string LoginUser(string userId)
        {
            string _userLoggedIn = userId;

            try
            {
                // display the login screen and log the user in, then return the user
            }
            catch (Exception ex)
            {
            }

            return _userLoggedIn;

        }



        public static bool LoadSecurityForUser(string userId)
        {
            bool _returnStatus = true;

            try
            {
            }
            catch (Exception ex)
            {
            }

            return _returnStatus;

        }



        public static bool IsFormAccessible(string formName)
        {
            bool _returnStatus = true;

            try
            {
            }
            catch (Exception ex)
            {
            }

            return _returnStatus;

        }




        public static bool IsMenuAccessible(string menuItemName)
        {
            bool _returnStatus = true;

            try
            {
            }
            catch (Exception ex)
            {
            }

            return _returnStatus;

        }



        public static int GetUserAccessLevelForForm(string userId, string formName)
        {
            int _accessLevel = 3;   // read/write access

            try
            {
            }
            catch (Exception ex)
            {
            }

            return _accessLevel;
        }





        public static void SetFormFields(Form formToCheck)
        {
            // there will be settings in the security database for each field on a form that will tell if it is visible or enabled
            try
            {
            }
            catch (Exception ex)
            {
            }

            return;

        }





    }
}
