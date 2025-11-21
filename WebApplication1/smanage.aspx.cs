using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBloodStocks();
            }
        }
        private void LoadBloodStocks()
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                string query = "SELECT * FROM blood_stocks";
                MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                string query = "SELECT * FROM blood_stocks WHERE Collect_Date = @CollectDate";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@CollectDate", TxtSearchCollectDate.Text.Trim());
                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                string query = "INSERT INTO blood_stocks (Blood_Group, Blood_Stocks, Collect_Date, Expirey_Date) VALUES (@BloodGroup, @BloodStocks, @CollectDate, @ExpireyDate)";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@BloodGroup", TxtBloodGroup.Text.Trim());
                cmd.Parameters.AddWithValue("@BloodStocks", TxtBloodStocks.Text.Trim());
                cmd.Parameters.AddWithValue("@CollectDate", TxtCollectDate.Text.Trim());
                cmd.Parameters.AddWithValue("@ExpireyDate", TxtExpireyDate.Text.Trim());
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                LoadBloodStocks();
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            if (!int.TryParse(TxtSQ.Text.Trim(), out int sq))
            {
                Response.Write("Error: Enter a valid SQ value.");
                return;
            }

            var updates = new List<string>();
            var parameters = new List<MySqlParameter>();

            void AddField(string field, string value)
            {
                if (!string.IsNullOrWhiteSpace(value))
                {
                    updates.Add($"{field} = @{field}");
                    parameters.Add(new MySqlParameter($"@{field}", value));
                }
            }

            AddField("Blood_Group", TxtBloodGroup.Text.Trim());
            AddField("Blood_Stocks", TxtBloodStocks.Text.Trim());
            AddField("Collect_Date", TxtCollectDate.Text.Trim());
            AddField("Expirey_Date", TxtExpireyDate.Text.Trim());

            if (updates.Count == 0)
            {
                Response.Write("Error: No fields to update.");
                return;
            }

            string query = $"UPDATE blood_stocks SET {string.Join(", ", updates)} WHERE SQ = @SQ";
            parameters.Add(new MySqlParameter("@SQ", sq));

            try
            {
                var conn = new MySqlConnection(connectionString);
                var cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddRange(parameters.ToArray());
                conn.Open();

                if (cmd.ExecuteNonQuery() > 0)
                {
                    Response.Write("Update successful!");
                    LoadBloodStocks();
                }
                else
                    Response.Write("<script>alert('No record found with the given SQ.')</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
            
        }
        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                string query = "DELETE FROM blood_stocks WHERE SQ = @SQ";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@SQ", TxtSQ.Text.Trim());
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                LoadBloodStocks();
            }
        }
    }
 }
