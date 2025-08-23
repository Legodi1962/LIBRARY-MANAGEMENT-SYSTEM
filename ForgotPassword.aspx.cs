using BCrypt.Net;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BOKAMOSO_CONNECT_LIBRARY_SYSTEM
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Simulate user verification without database
                string libraryNumber = txtLibraryNumber.Text.Trim();
                string email = txtContact.Text.Trim();
                string captcha = txtCaptcha.Text.Trim();

                // Simple captcha validation
                if (captcha != "human")
                {
                    ShowMessage("Please verify you are human by typing 'human' in the captcha field.", false);
                    return;
                }


                
                //VALIDATE INPUTS
                if (string.IsNullOrEmpty(txtLibraryNumber.Text) ||
                    (string.IsNullOrEmpty(txtCaptcha.Text) && string.IsNullOrEmpty(txtContact.Text)))
                {
                    lblMessage.Text = "Please provide username, an email and verify you are human.";
                    return;
                }else if (!IsValidEmail(email))
                {
                    ShowMessage("Please provide a valid email address.", false);
                    return;
                }

                // Simulate verification and sending 
                lblMessage.Text = "Your password has been sent to your email.";

                //Verify user 
                string connectionString = " ";
                string newPassword = GenerateRandomPassword(); // Randomly generate password

                try
                {
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        string query = "SELECT COUNT(*) FROM Users WHERE LibraryNumber = @UserID AND Email = @Email";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@UserID", libraryNumber);
                            cmd.Parameters.AddWithValue("@Email", email);
                            int count = (int)cmd.ExecuteScalar();
                            if (count == 0)
                            {
                                ShowMessage("No user found with the provided details.", false);
                                return;
                            }
                        }

                        // Update password (hashed)
                        string newPasswordHash = BCrypt.Net.BCrypt.HashPassword(newPassword);
                        string updateQuery = "UPDATE Users SET Password = @NewPassword WHERE LibraryNumber = @LibraryNumber";
                        using (SqlCommand cmd = new SqlCommand(updateQuery, conn))
                        {
                            cmd.Parameters.AddWithValue("@NewPassword", newPasswordHash);
                            cmd.Parameters.AddWithValue("@LibraryNumber", libraryNumber);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Send email with temporary password
                    bool emailSent = SendPasswordEmail(email, libraryNumber, newPassword);
                    if (emailSent)
                    {
                        ShowMessage("A new password has been sent to your email.", true);
                    }
                    else
                    {
                        ShowMessage("Failed to send email. Please try again later.", false);
                    }
                }
                catch (Exception ex)
                {
                    ShowMessage("An error occurred: " + ex.Message, false);
                }

            }


        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        private string GenerateRandomPassword(int length = 8)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*";
            Random random = new Random();
            return new string(Enumerable.Repeat(chars, length)
                .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        private bool SendPasswordEmail(string toEmail, string libraryNumber, string newPassword)
        {
            try
            {
                SmtpClient client = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new System.Net.NetworkCredential(
                        System.Configuration.ConfigurationManager.AppSettings["SmtpUser"],
                        System.Configuration.ConfigurationManager.AppSettings["SmtpPass"])
                };

                MailMessage mail = new MailMessage
                {
                    From = new MailAddress(System.Configuration.ConfigurationManager.AppSettings["SmtpUser"], "Bokamoso Library System"),
                    Subject = "Your New Password",
                    Body = $"Your new password for Library Number {libraryNumber} is: {newPassword}\n\nPlease log in and change your password immediately.\n\nBest regards,\nBokamoso Library System",
                    IsBodyHtml = false
                };
                mail.To.Add(toEmail);

                client.Send(mail);
                return true;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Email error: " + ex.Message);
                return false;
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