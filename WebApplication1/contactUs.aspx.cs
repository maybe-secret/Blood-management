using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string subject = txtSubject.Text.Trim();
            string message = txtMessage.Value.Trim();

            try
            {
                // Create a MailMessage object
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("soumyajitchakraborty067@gmail.com"); // Replace with your email
                mail.To.Add("soumyajitchakraborty556@gmail.com");
                mail.Subject = subject;
                mail.Body = $"<p><b>Full Name:</b> {fullName}</p>" +
                            $"<p><b>Email:</b> {email}</p>" +
                            $"<p><b>Phone:</b> {phone}</p>" +
                            $"<p><b>Message:</b><br />{message}</p>";
                mail.IsBodyHtml = true;

                // Configure SMTP client
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587); // Gmail SMTP server
                smtp.Credentials = new System.Net.NetworkCredential("soumyajitchakraborty067@gmail.com", "bmfg qbrn pzai frnf"); // Replace with your email and password
                smtp.EnableSsl = true;

                // Send the email
                smtp.Send(mail);

                // Display success message
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Message sent successfully!');", true);
            }
            catch (Exception ex)
            {
                // Handle errors
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Error: {ex.Message}');", true);
            }
        }
    }
}