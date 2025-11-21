using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                vis1.Visible = false;
                vis2.Visible = false;
                vis3.Visible = false;
                vis4.Visible = false;
                btnLogout.Visible = false;
            }
            else if (Session["UserType"].Equals("User"))
            {
                vis1.Visible = true;
                vis2.Visible = true;
                vis3.Visible = true;
                vis4.Visible = true;
                btnLoginn.Visible = false;
                btnSignUp.Visible = false;
                btnLogout.Visible = true;
                greet.InnerHtml = "Hello, " + Session["UserName"].ToString();
            }
            else if (Session["UserType"].Equals("Admin"))
            {
                vis1.Visible = true;
                vis2.Visible = true;
                vis3.Visible = true;
                vis4.Visible = true;
                btnLoginn.Visible = false;
                btnSignUp.Visible = false;
                btnLogout.Visible = true;
                greet.InnerHtml = "Hello, " + Session["UserType"].ToString();
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                // Log the error
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("signUp.aspx");
            }
            catch (Exception ex)
            {
                // Log the error
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear the session variables
            Session["UserType"] = null;
            Session["UserName"] = null;

            // Redirect to the login page
            Response.Redirect("home.aspx");
        }

    }
}