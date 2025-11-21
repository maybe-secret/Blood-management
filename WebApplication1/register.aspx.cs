using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                // Parse the DOB from VARCHAR and calculate age
                string dobInput = txtDOB.Text; // Input format: "DD-MM-YYYY"
                DateTime dob;
                if (!DateTime.TryParseExact(dobInput, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out dob))
                {
                    Response.Write("<script>alert('Invalid Date of Birth format. Please use DD-MM-YYYY.');</script>");
                    return;
                }

                int age = DateTime.Now.Year - dob.Year;
                if (DateTime.Now < dob.AddYears(age)) age--;

                // Determine gender
                string gender = rbMale.Checked ? "Male" : rbFemale.Checked ? "Female" : "Other";

                // Database Connection String
                string connString = ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;
                using (MySqlConnection conn = new MySqlConnection(connString))
                {
                    conn.Open();

                    string query = @"INSERT INTO donor_info 
                    (FirstName, LastName, DOB, Age, BloodGroup, Gender, Phone, Country, State, City, PIN, CurrentAddress, Email)
                    VALUES (@FirstName, @LastName, @DOB, @Age, @BloodGroup, @Gender, @Phone, @Country, @State, @City, @PIN, @CurrentAddress, @Email)";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                        cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                        cmd.Parameters.AddWithValue("@DOB", dobInput); // Save DOB as a VARCHAR
                        cmd.Parameters.AddWithValue("@Age", age);      // Save the calculated age
                        cmd.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.SelectedValue);
                        cmd.Parameters.AddWithValue("@Gender", gender);
                        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@Country", txtCountry.Text);
                        cmd.Parameters.AddWithValue("@State", txtState.Text);
                        cmd.Parameters.AddWithValue("@City", txtCity.Text);
                        cmd.Parameters.AddWithValue("@PIN", txtPIN.Text);
                        cmd.Parameters.AddWithValue("@CurrentAddress", txtAddress.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);

                        // Execute the query
                        cmd.ExecuteNonQuery();
                    }
                }

                // Success message
                Response.Write("<script>alert('Donor registered successfully!');</script>");
            }
            catch (Exception ex)
            {
                // Log the error and show a user-friendly message
                // Ideally, log the error using a logging framework like log4net
                Response.Write("<script>alert('An error occurred while registering the donor. Please try again later.');</script>");
            }
        }

    }
}