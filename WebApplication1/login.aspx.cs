using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Retrieve user inputs
            string name = txtName.Text.Trim();
            string firstName = name.Split(' ')[0];
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string userType = ddlType.SelectedValue;

            // Validate inputs
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                Response.Write("<script>alert('Please fill out all required fields.');</script>");
                return;
            }

            // MySQL Connection String from Web.config
            string connString = ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;


            // Query to validate user credentials
            string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND Password = @Password AND Type = @Type";

            try
            {
                using (MySqlConnection conn = new MySqlConnection(connString))
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        // Add parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);
                        cmd.Parameters.AddWithValue("@Type", userType);

                        conn.Open();

                        // Execute query and get count
                        int count = Convert.ToInt32(cmd.ExecuteScalar());

                        if (count > 0)
                        {
                            // Successful login - store session variables
                            Session["UserName"] = firstName;
                            Session["UserType"] = userType;

                            if (userType == "Admin")
                            {
                                Response.Redirect("home.aspx"); // Redirect to Admin Dashboard
                            }
                            else
                            {
                                Response.Redirect("home.aspx"); // Redirect to User Dashboard
                            }
                        }
                        else
                        {
                            // Invalid credentials
                            Response.Write("<script>alert('Invalid credentials or user type. Please try again.');</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log and display error message
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
 }
