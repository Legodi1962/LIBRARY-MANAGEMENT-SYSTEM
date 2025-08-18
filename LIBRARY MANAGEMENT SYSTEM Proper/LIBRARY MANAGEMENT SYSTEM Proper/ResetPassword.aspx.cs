using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LIBRARY_MANAGEMENT_SYSTEM_Proper
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "";


            if (string.IsNullOrEmpty(txtLibraryNumber.Text) || string.IsNullOrEmpty(txtCurrent.Text) || string.IsNullOrEmpty(txtNew.Text) || string.IsNullOrEmpty(txtConfirm.Text))
            {
                lblMessage.Text = "All fields are required.";
                return;
            }
            else if (txtNew.Text != txtConfirm.Text)
            {
                lblMessage.Text = "Passwords do not match.";
                return;
            }
            else
            {
                lblMessage.Text = "Password reset successfully!";

            }

            string newPassword = txtNew.Text;

            // Validate password strength
            if (!IsPasswordValid(newPassword))
            {
                ShowMessage("Password must be at least 8 characters with uppercase, lowercase, number, and special character.", false);
                return;
            }
        }



        private bool IsPasswordValid(string password)
        {
            // At least 8 characters, with uppercase, lowercase, number, and special character
            Regex regex = new Regex(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$");
            return regex.IsMatch(password);
        }

        private void ShowMessage(string message, bool isSuccess)
        {
            lblMessage.Text = message;
            lblMessage.ForeColor = isSuccess ? System.Drawing.Color.Green : System.Drawing.Color.Red;
            lblMessage.Visible = true;
        }
    }
}