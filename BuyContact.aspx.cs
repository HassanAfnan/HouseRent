using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokado_In
{
    public partial class BuyContact : System.Web.UI.Page
    {
        Connection con = new Connection();
        SqlCommand com = new SqlCommand();
        SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserInfo"] == null)
            {
                Response.Redirect("Login.aspx");      
            }
          
            string id = Session["contact"].ToString();
            con.getConnection();
            com = new SqlCommand("select * from Sell where sid = '"+id+"'",con.getConnection());
            rd = com.ExecuteReader();
            while (rd.Read())
            {
                Label1.Text = rd["Oname"].ToString();
                Label2.Text = rd["Ophone"].ToString();
                Label3.Text = rd["Oemail"].ToString();
            }
        }
    }
}