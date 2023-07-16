using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        string kategoriId="";
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowKategoriDetay();
           
        }
        void ShowKategoriDetay()
        {
            kategoriId = Request.QueryString["KategoriId"];
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Yemekler where KategoriId=@p1", dataAccess.SqlConn());
            cmd.Parameters.AddWithValue("@p1", kategoriId);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            dataAccess.SqlConn().Close();
        }
    }
}