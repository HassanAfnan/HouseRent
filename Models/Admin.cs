using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bokado_In.Models
{
    public class Admin:Register
    {
        public string role = "Admin";
        public void Signup(Admin u)
        {
            Connection con = new Connection();
            con.getConnection();
            con.ExecuteQuery("insert into Register values('" + u.name + "','" + u.email + "','" + u.password + "','" + u.role + "')");
        }
    }
}