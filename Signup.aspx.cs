using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokado_In
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.ClearTextBox tx = new Models.ClearTextBox();
            Models.User us = new Models.User();
            us.name = TextBox1.Text;
            us.email = TextBox2.Text;
            us.password = TextBox3.Text;
            us.Signup(us);
            Response.Write("<script>alert('Successfully Signup')</script>");
            tx.ClearTextbox(TextBox1,TextBox2,TextBox3);
        }
    }
}