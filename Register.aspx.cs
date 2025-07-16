using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ben10
{
	public partial class Register : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
			try
			{
				string conn = ConfigurationManager.ConnectionStrings["loginConnectionString"].ConnectionString;
				RegisterDataContext r = new RegisterDataContext(conn);
				register1 r1 = new register1();

				r1.id = Convert.ToInt32(TextBoxId.Text);
				r1.Name1 = TextBoxName.Text;
				r1.Email = TextBoxEmail.Text;
					if(TextBoxPassword.Text==TextBoxConfirmPassword.Text)
				{
					r1.password1 = TextBoxPassword.Text;
				}

				r.register1s.InsertOnSubmit(r1);
				r.SubmitChanges();

				Response.Write("Succesfully registered");



				
			}
			catch
			{
				Response.Write("Error is happening");
			}
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
			TextBoxPassword.Text = "";
			TextBoxName.Text = "";
			TextBoxId.Text = "";
        }
    }
}