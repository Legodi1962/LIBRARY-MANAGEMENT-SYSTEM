using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BCrypt.Net;


namespace BOKAMOSO_CONNECT_LIBRARY_SYSTEM
{
    public partial class ForgotPassword : System.Web.UI.Page
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

            string connectionString = " ";
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                   conn.Open();
                    string query = "SELECT Password FROM Users WHERE UserID = @UserID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@UserID", txtLibraryNumber.Text);
                        string storedHash = (string)cmd.ExecuteScalar();

                        if (storedHash == null || !BCrypt.Net.BCrypt.Verify(txtCurrent.Text, storedHash))
                        {
                            ShowMessage("Invalid library number or current password.", false);
                            return;
                        }
                    }

                    // Update password (hashed)
                    string newPasswordHash = BCrypt.Net.BCrypt.HashPassword(txtNew.Text);
                    string updateQuery = "UPDATE Users SET Password = @NewPassword WHERE LibraryNumber = @LibraryNumber";

                    using (SqlCommand cmd = new SqlCommand(updateQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@NewPassword", newPasswordHash);
                        cmd.Parameters.AddWithValue("@UserID", txtLibraryNumber.Text);
                        int rows = cmd.ExecuteNonQuery();
                        if (rows > 0)
                        {
                            ShowMessage("Password reset successfully!", true);
                        }
                        else
                        {
                            ShowMessage("Failed to update password.", false);
                        }
                    }


                }

            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occured:" + ex.Message;
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
    
