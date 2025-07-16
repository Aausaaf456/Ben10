using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Ben10
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

		protected void btnSubmit_Click(object sender, EventArgs e)
		{

			string conn = ConfigurationManager.ConnectionStrings["loginConnectionString"].ConnectionString;
			RegisterDataContext db = new RegisterDataContext(conn);
			var user = db.register1s.FirstOrDefault(u => u.Email == txtEmail.Text && u.password1 == txtPassword.Text);
			if (user != null)
			{
				Session["UserName"] = user.Name1;
				Session["UserEmail"] = user.Email;
				Response.Redirect("Ben.aspx");
			}
			else
			{
				Response.Write("Enter valid Email and password");
			}

		}
        
    }
}