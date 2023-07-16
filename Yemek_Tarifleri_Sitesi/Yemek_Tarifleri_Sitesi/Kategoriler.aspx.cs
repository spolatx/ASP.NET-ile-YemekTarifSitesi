using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
   
    public partial class Kategoriler : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();

        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

           
            CallKategoriler();
            Panel2.Visible = false;
            Panel4.Visible = false;
            KategoriSilme();
        }
        void CallKategoriler()
        {
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Kategoriler", dataAccess.SqlConn());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // + butonuna bastığında paneli getir.
            Panel2.Visible = true;
        }

        protected void BtnEksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void BtnEksi0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnArti0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void BtnKategoriEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Kategoriler(KategoriAd,KategoriResim) values(@p1,@p2)", dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            cmd.Parameters.AddWithValue("@p2", FileUpload1.FileName);
            cmd.ExecuteNonQuery();
            dataAccess.SqlConn().Close();
        }

        void KategoriSilme()
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];

            }
            if (islem=="sil")
            {
                SqlCommand cmd = new SqlCommand("Delete from Tbl_Kategoriler where KategoriId=@p1", dataAccess.SqlConn());
                cmd.Parameters.AddWithValue("@p1", id);
                cmd.ExecuteNonQuery();
                dataAccess.SqlConn().Close();
            }
        }
    }
}