using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokado_In
{
    public partial class Buy : System.Web.UI.Page
    {
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["search"] != null)
            {
                con.getConnection();
                cmd.CommandText = "select * from Sell where city like('%"+Request.QueryString["search"].ToString()+"%')";
                cmd.Connection = con.getConnection();
                sdr.SelectCommand = cmd;
                sdr.Fill(ds, "Sell");
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
            }
            else
            {
                Show();
            }
        }
        protected void Show()
        {
            con.getConnection();
            cmd.CommandText = "select * from Sell order by sid desc";
            cmd.Connection = con.getConnection();
            sdr.SelectCommand = cmd;
            sdr.Fill(ds, "Sell");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}