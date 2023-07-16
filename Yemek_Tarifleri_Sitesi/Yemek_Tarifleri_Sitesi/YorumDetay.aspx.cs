using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    
    public partial class YorumDetay : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            CallYorumlar();
        }
        void CallYorumlar()
        {
            if (Page.IsPostBack==false)
            {
                id = Convert.ToInt32(Request.QueryString["YorumId"]);
                SqlCommand cmd = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd from Tbl_Yorumlar" +
                    " inner join Tbl_Yemekler on Tbl_Yemekler.YemekId = Tbl_Yorumlar.YemekId where YorumId=@p1", dataAccess.SqlConn());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TxtAdSoyad.Text = dr[0].ToString();
                    TxtMail.Text = dr[1].ToString();
                    TxtIcerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();
                }
                dataAccess.SqlConn().Close();
            }
           
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                SqlCommand cmd = new SqlCommand("update Tbl_Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where YorumId=@p3", dataAccess.SqlConn());
                cmd.Parameters.AddWithValue("@p1", TxtIcerik.Text);
                cmd.Parameters.AddWithValue("@p2", "True");
                cmd.Parameters.AddWithValue("@p3", id);
                cmd.ExecuteNonQuery();
                dataAccess.SqlConn().Close();
            }
        }
    }
}