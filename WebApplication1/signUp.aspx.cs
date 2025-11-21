using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Validate form inputs
            if (txtPassword.Text != txtConfirmPassword.Text)
            {
                Response.Write("<script>alert('Passwords do not match!');</script>");
                return;
            }

            if (!chkAgree.Checked)
            {
                Response.Write("<script>alert('You must agree to the Terms of Service.');</script>");
                return;
            }

            // MySQL connection string
            string connectionString = "Server=localhost;Database=bloodbank;User ID=root;Password=db@f418c21243556;";

            // Insert query
            string query = "INSERT INTO Users (Name, Email, Password) VALUES (@Name, @Email, @Password)";

            try
            {
                using (MySqlConnection con = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, con))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim()); // Hash the password in real applications

                        // Open connection and execute query
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        Response.Write("<script>alert('Registration successful!');</script>");
                        Response.Redirect("login.aspx"); 
                    }
                    
                }
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
            

        }
    }
}