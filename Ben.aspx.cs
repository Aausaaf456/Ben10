using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ben10
{
	public partial class Ben : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                if (Session["UserName"] != null || Session["UserEmail"] != null)
                {
                    Welcome.Text = "Welcome " + Session["UserName"].ToString() + "\n" + Session["UserEmail"].ToString();
                    Welcome.Visible = true;
                    Logout.Visible = true;
                    Login.Visible = false;
                    register.Visible = false;
                    favourites.Visible = true;

                    

                }
                else
                {
                    favourites.Visible = false;
                    Login.Visible = true;
                    register.Visible = true;
                    Welcome.Text = "You are not logged in.";
                    Logout.Visible = false;
                }
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string search = txtsearch.Text.Trim().ToLower();
            string[] keyword = search.Split(new char[] { ',', ' ' }, StringSplitOptions.RemoveEmptyEntries);


            string conn = ConfigurationManager.ConnectionStrings["loginConnectionString1"].ConnectionString;
            SearchDataContext sd = new SearchDataContext(conn);

            var result = sd.Bens
                .Where(b=> keyword.Contains(b.Name1.ToLower()))
                .ToList();
            switch(search.ToLower())
            {
                case "four arms":
                    Response.Redirect("four.aspx");
                    break;
                case "xlr8":
                    Response.Redirect("xl.aspx");
                    break;
                case "lodestar":
                    Response.Redirect("brain.aspx");
                    break;
                case "upgrade":
                    Response.Redirect("up.aspx");
                    break;
                case "grey matter":
                    Response.Redirect("rip.aspx");
                    break;
                case "ultimate echo echo":
                    Response.Redirect("chrom.aspx");
                    break;
                case "armodrillo":
                    Response.Redirect("acc.aspx");
                    break;
                case "cannonbolt":
                    Response.Redirect("cann.aspx");
                    break;
                case "wildmutt":
                    Response.Redirect("wild.aspx");
                    break;
            }
        }
    }
}