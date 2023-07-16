using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            CallKategoriDetay();

        }
        void CallKategoriDetay()
        {
            //sayfayı bir kere yükledikten sonra o haliyle al.
            if (Page.IsPostBack==false)
            {
                //update butonu uzerine denk gelen kategori idsini al.
                id = Request.QueryString["KategoriId"];
                SqlCommand cmd = new SqlCommand("Select * from Tbl_Kategoriler where KategoriId=@p1", dataAccess.SqlConn());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    //table daki indexe gore veriyi al.
                    TxtKategoriAd.Text = dr[1].ToString();
                    TxtAdet.Text = dr[2].ToString();
                }
                dataAccess.SqlConn().Close();
            }
           
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            //id yi convert etmediğim zaman hata veriyor.
           int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
            SqlCommand cmd = new SqlCommand("update tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where KategoriId = @p3", dataAccess.SqlConn()); 
            cmd.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            cmd.Parameters.AddWithValue("@p2", TxtAdet.Text);
            cmd.Parameters.AddWithValue("@p3", id);
            cmd.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
        }
    }
}