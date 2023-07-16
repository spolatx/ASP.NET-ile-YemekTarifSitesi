using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMesajGonder_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Mesajlar " +
              "(MesajAdSoyad, MesajMail,MesajKonu,MesajIcerik) values (@p1,@p2,@p3,@p4)", dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            cmd.Parameters.AddWithValue("@p2", TxtMail.Text);
            cmd.Parameters.AddWithValue("@p3", TxtKonu.Text);
            cmd.Parameters.AddWithValue("@p4", TxtIcerik.Text);
            cmd.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
        }
    }
}