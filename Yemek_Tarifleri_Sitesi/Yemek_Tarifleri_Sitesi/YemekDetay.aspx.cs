using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        string yemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //anasayfadan taşımış olduğum yemek id yi yemekIdnin içine at.
            YemekCagirma();
            YorumListeleme();
        }

        //Yorumları Listeleme

        void YorumListeleme()
        {

            SqlCommand cmd = new SqlCommand("Select * from Tbl_Yorumlar where YemekId=@p1", dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", yemekId);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            dataAccess.SqlConn().Close();
        }
        void YemekCagirma()
        {
            yemekId = Request.QueryString["YemekId"];
            SqlCommand cmd = new SqlCommand("Select YemekAd from Tbl_Yemekler where YemekId=@p1", dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", yemekId);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            dataAccess.SqlConn().Close();
        }

        protected void BtnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,YorumIcerik,YemekId) values (@p1,@p2,@p3,@p4)", dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            cmd.Parameters.AddWithValue("@p2", TxtMail.Text);
            cmd.Parameters.AddWithValue("@p3", TxtIcerik.Text);
            cmd.Parameters.AddWithValue("@p4", yemekId);
            cmd.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
        }
    }
}