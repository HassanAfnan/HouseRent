using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokado_In
{
    public partial class sell : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserInfo"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/pictures/") + filename);
                Image1.ImageUrl = "pictures/" + filename;
                Label1.Text = "pictures/" + filename;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Models.Sell se = new Models.Sell();
            se.Oname = TextBox1.Text;
            se.Oemail = TextBox2.Text;
            se.Ophone = TextBox3.Text;
            se.purpose = DropDownList1.Text;
            se.proptype = DropDownList2.Text;
            se.city = TextBox4.Text;
            se.address = TextBox5.Text;
            se.description = TextBox6.Text;
            se.price = TextBox7.Text;
            se.pic = Label1.Text;
            se.Add(se);
            Response.Write("<script>alert('Your Property Is Posted')</script>");
            Models.ClearTextBox tx = new Models.ClearTextBox();
            tx.ClearTextbox(TextBox1,TextBox2,TextBox3,TextBox4,TextBox5,TextBox6,TextBox7);
            Label1.Text = "";
            Image1.ImageUrl = "";
        }
    }
}