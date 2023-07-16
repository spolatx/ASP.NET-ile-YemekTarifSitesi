using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Yemek_Tarifleri_Sitesi;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
       
 
        protected void Page_Load(object sender, EventArgs e)
        {
            CallYemekListesi();
            CallKategoriListesi();
        }
        void CallYemekListesi()
        {
            //id yi convert etmediğim zaman hata veriyor.
            int id = Convert.ToInt32(Request.QueryString["YemekId"]);
            if (Page.IsPostBack==false)
            {
                SqlCommand cmd = new SqlCommand("Select * from Tbl_Yemekler where YemekId=@p1", dataAccess.SqlConn());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TxtYemekAd.Text=dr[1].ToString();
                    TxtMalzemeler.Text = dr[2].ToString();
                    TxtTarif.Text = dr[3].ToString();
                    
                }
                dataAccess.SqlConn().Close();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            //resimleri serverdan al.
            FileUpload1.SaveAs(Server.MapPath("/Pictures/" + FileUpload1.FileName));

            int id = Convert.ToInt32(Request.QueryString["YemekId"]);
            SqlCommand cmd = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3, KategoriId=@p4, YemekResim=@p6 where yemekId=@p5 ", dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            cmd.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            cmd.Parameters.AddWithValue("@p3", TxtTarif.Text);
            cmd.Parameters.AddWithValue("@p4", DdlKategori.SelectedValue);
            cmd.Parameters.AddWithValue("@p6", "~/Pictures/" + FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@p5", id);
            cmd.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
        }
        public void CallKategoriListesi()
        {

            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * from tbl_Kategoriler", dataAccess.SqlConn());
                SqlDataReader dr = cmd.ExecuteReader();
                //databasedeki kolon adıyla aynı olmak zorunda.
                DdlKategori.DataTextField = "KategoriAd";
                //Arka planda çalışacak deger.
                DdlKategori.DataValueField = "KategoriId";
                DdlKategori.DataSource = dr;
                DdlKategori.DataBind();

            }

        }

        protected void BtnGununYemegi_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["YemekId"]);
            //Tüm yemeklerin durumunu false yaptım.
            SqlCommand cmd = new SqlCommand("update Tbl_Yemekler set durum=0", dataAccess.SqlConn());
            cmd.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
            //Gunun Yemegi için ID ye göre durumu true yapalım.
            SqlCommand cmd2 = new SqlCommand("update Tbl_Yemekler set durum=1 where YemekId=@p1", dataAccess.SqlConn());
            cmd2.Parameters.AddWithValue("@p1",id);
            cmd2.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
        }
    }
}