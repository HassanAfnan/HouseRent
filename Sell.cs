using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bokado_In.Models
{
    public class Sell:ICurd<Sell>
    {
        public int sid { get; set; }
        public string Oname { get; set; }
        public string Oemail { get; set; }
        public string Ophone { get; set; }
        public string purpose { get; set; }
        public string proptype { get; set; }
        public string city { get; set; }
        public string address { get; set; }
        public string description { get; set; }
        public string price { get; set; }
        public string pic { get; set; }

        Connection gcon = new Connection();

        public void Add(Sell s)
        {
            if (s.purpose == "Sell")
            {
                gcon.getConnection();
                gcon.ExecuteQuery("insert into Sell values('" + s.Oname + "','" + s.Oemail + "','" + s.Ophone + "','" + s.purpose + "','" + s.proptype + "','" + s.city + "','" + s.address + "','" + s.description + "','" + s.price + "','" + s.pic + "')");
            }
            else if(s.purpose == "Rent")
            {
                gcon.getConnection();
                gcon.ExecuteQuery("insert into Rent values('" + s.Oname + "','" + s.Oemail + "','" + s.Ophone + "','" + s.purpose + "','" + s.proptype + "','" + s.city + "','" + s.address + "','" + s.description + "','" + s.price + "','" + s.pic + "')");
            }
            else
            {

            }
        }

        public void Delete(Sell s)
        {
            throw new NotImplementedException();
        }

        public List<Sell> GetIds()
        {
            throw new NotImplementedException();
        }

        public Sell Search(Sell s)
        {
            throw new NotImplementedException();
        }

        public void Update(Sell s)
        {
            throw new NotImplementedException();
        }
    }
}