using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BOKAMOSO_CONNECT_LIBRARY_SYSTEM
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Simulate user verification without database
                string libraryNumber = txtLibraryNumber.Text.Trim();
                string idPassport = txtID.Text.Trim();
                string contactInfo = txtContact.Text.Trim();
                string captcha = txtCaptcha.Text.Trim();

                // Simple captcha validation
                if (captcha != "human")
                {
                    ShowMessage("Please verify you are human by typing 'human' in the captcha field.", false);
                    return;
                }

            
                

                if (string.IsNullOrEmpty(txtLibraryNumber.Text) || string.IsNullOrEmpty(txtID.Text) ||
                    (string.IsNullOrEmpty(txtCaptcha.Text) && string.IsNullOrEmpty(txtContact.Text)))
                {
                    lblMessage.Text = "Please provide username, ID number, and at least one contact method (cell or email).";
                    return;
                }

                // Simulate verification and sending 
                lblMessage.Text = "Your password has been sent to your provided contact method.";
            }


        }
        

        private void ShowMessage(string message, bool isSuccess)
        {
            lblMessage.Text = message;
            lblMessage.ForeColor = isSuccess ? System.Drawing.Color.Green : System.Drawing.Color.Red;
            lblMessage.Visible = true;
        }
    }
    
}