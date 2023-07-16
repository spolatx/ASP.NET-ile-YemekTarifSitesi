using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            CallTarifler();
            CallKategoriListesi();
        }
        void CallTarifler()
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["TarifId"]);
                SqlCommand cmd = new SqlCommand("Select * from Tbl_Tarifler where TarifId=@p1", dataAccess.SqlConn());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TxtTarifAd.Text = dr[1].ToString();
                    TxtMalzemeler.Text = dr[2].ToString();
                    TxtIcerik.Text = dr[3].ToString();
                    //FileUpload1.FileName = dr[4].ToString();
                    TxtOneren.Text = dr[5].ToString();
                    TxtMail.Text = dr[6].ToString();
                }
                dataAccess.SqlConn().Close();
            }

        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["TarifId"]);
            //Guncelleme
            SqlCommand cmd = new SqlCommand("update tbl_Tarifler set TarifDurum=1 where TarifId=@p1", dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", id);
            cmd.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
            //Yemegi Ana Sayfaya Ekleme
            SqlCommand cmd2 = new SqlCommand("insert into tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,KategoriId)" +
                "values(@p1,@p2,@p3,@p4)", dataAccess.SqlConn());
            cmd2.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            cmd2.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            cmd2.Parameters.AddWithValue("@p3", TxtIcerik.Text);
            cmd2.Parameters.AddWithValue("@p4", DdlKategori.SelectedValue);
            cmd2.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
            //Kategori sayisini 1 arttırma
            SqlCommand cmd3 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@t1", dataAccess.SqlConn());
            cmd3.Parameters.AddWithValue("@t1", DdlKategori.SelectedValue);
            cmd3.ExecuteNonQuery();
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
    }
}