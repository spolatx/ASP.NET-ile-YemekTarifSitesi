using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public class DataAccess
    {
        public SqlConnection SqlConn()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-7GNS0OU\SQLEXPRESS;Initial Catalog=dbo_YemekTarifiSitesi;Integrated Security =True");
            conn.Open();
            return conn;
        }
    }
}