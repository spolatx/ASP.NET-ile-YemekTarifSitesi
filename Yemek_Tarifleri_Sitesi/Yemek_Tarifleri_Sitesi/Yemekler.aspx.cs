using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        int id;
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            CallYemekListesi();
            CallKategoriListesi();
            CallYemekSilme();
            Panel2.Visible = false;
            Panel4.Visible = false;
        }
       public void CallYemekListesi()
        {
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Yemekler", dataAccess.SqlConn());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dataAccess.SqlConn().Close();
        }
        void CallKategoriSayisiniArttir()
        {
            SqlCommand cmd = new SqlCommand("update Tbl_Kategoriler set KategoriAdet = KategoriAdet+1 where KategoriId=@p1",
                dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", DdlKategori.SelectedValue);
            cmd.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
        }

        protected void BtnYemekEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            cmd.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            cmd.Parameters.AddWithValue("@p3", TxtTarif.Text);
            cmd.Parameters.AddWithValue("@p4", DdlKategori.SelectedValue);
            cmd.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
            CallKategoriSayisiniArttir();
        }

        //Yemek Listesini aç.
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Panel2.Visible = true;
        }

        //Yemek listesini kapa.
        protected void BtnEksi_Click(object sender, EventArgs e)
        {
          
            Panel2.Visible = false;
        }

        protected void BtnArti0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void BtnEksi0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
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
        void CallYemekSilme()
        {
            if (Page.IsPostBack==false)
            {
               id = Convert.ToInt32(Request.QueryString["YemekId"]);
                islem = Request.QueryString["islem"];
                if (islem == "sil")
                {
                    SqlCommand cmd = new SqlCommand("Delete from Tbl_Yemekler where YemekId=@p1", dataAccess.SqlConn());
                    cmd.Parameters.AddWithValue("@p1", id);
                    cmd.ExecuteNonQuery();
                    dataAccess.SqlConn().Close();
                }
            }
            

          
        }
    }
  
}