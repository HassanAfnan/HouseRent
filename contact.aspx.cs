using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokado_In
{
    public partial class contact : System.Web.UI.Page
    {
        Connection con = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Models.ClearTextBox tb = new Models.ClearTextBox();
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.getConnection();
            con.ExecuteQuery("insert into Message values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+TextBox4.Text+"','"+DateTime.Now+"')");
            Response.Write("<script>alert('Message sent')</script>");
            tb.ClearTextbox(TextBox1,TextBox2,TextBox3,TextBox4);
        }
    }
}