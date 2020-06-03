using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokado_In
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Login log = new Models.Login();
            log.Email = TextBox1.Text;
            log.Password = TextBox2.Text;
            log.GetLogin(log);
            if (log.cond == true && log.role == "Admin")
            {
                Response.Write("<script>alert('Welcome Admin')</script>");
                Session["AdminInfo"] = TextBox1.Text;
                Response.Redirect("AdminIndex.aspx");
            }
            else if (log.cond == true && log.role == "User")
            {
                Response.Write("<script>alert('Welcome User')</script>");
                Session["UserInfo"] = TextBox1.Text;
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid User Id Or Password')</script>");
            }
        }
    }
}