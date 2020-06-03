using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokado_In
{
    public partial class single_property : System.Web.UI.Page
    {
        Connection con = new Connection();
        SqlCommand com = new SqlCommand();
        SqlDataReader rd;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
           id = Convert.ToInt16(Request.QueryString["id"].ToString());
            con.getConnection();
            com = new SqlCommand("select * from Sell where sid ='"+id+"'",con.getConnection());
            rd = com.ExecuteReader();
            while (rd.Read())
            {
                Image1.ImageUrl = rd["pic"].ToString();
                Label1.Text = rd["city"].ToString();
                Label2.Text = rd["proptype"].ToString();
                Label3.Text = rd["price"].ToString();
                Label5.Text = rd["descrip"].ToString();
                Label6.Text = rd["address"].ToString();
                Label7.Text = rd["Oname"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt16(Request.QueryString["id"].ToString());
            Session["contact"] = id;
            Response.Redirect("BuyContact.aspx");
        }
    }
}