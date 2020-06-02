using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokado_In
{
    public partial class AdminSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.ClearTextBox tx = new Models.ClearTextBox();
            Models.Admin ad = new Models.Admin();
            ad.name = TextBox1.Text;
            ad.email = TextBox2.Text;
            ad.password = TextBox3.Text;
            ad.Signup(ad);
            Response.Write("<script>alert('Successfully Signup')</script>");
            tx.ClearTextbox(TextBox1,TextBox2,TextBox3);
        }
    }
}