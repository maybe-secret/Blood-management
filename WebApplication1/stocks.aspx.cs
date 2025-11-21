using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using Mysqlx.Session;

namespace WebApplication1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBloodStocks();
            }
            if (Session["UserType"] == null)
            {
                re.Visible = false;
            }
            else if (Session["UserType"].Equals("User"))
            {
                re.Visible = false;
            }
            else if (Session["UserType"].Equals("Admin"))
            {
                re.Visible = true;
            }
        }
        private void LoadBloodStocks()
        {
            // Connection string from Web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;

            // SQL query to fetch data
            string query = "SELECT Blood_Group, Blood_Stocks, Collect_Date, Expirey_Date FROM blood_stocks";

            // Use MySQL ADO.NET to fetch data
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        // Bind data to GridView
                        GridViewBloodStocks.DataSource = dt;
                        GridViewBloodStocks.DataBind();
                    }
                }
            }
        }
        protected void redirect_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("smanage.aspx");
            }
            catch (Exception ex)
            {
                // Log the error
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }
    }
}