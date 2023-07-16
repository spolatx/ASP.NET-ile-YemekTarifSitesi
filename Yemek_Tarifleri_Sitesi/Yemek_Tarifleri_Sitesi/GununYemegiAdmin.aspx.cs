using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Tarifleri_Sitesi
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            CallYemekListesi();
        }

        protected void BtnArti_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void BtnEksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
        void CallYemekListesi()
        {
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Yemekler", dataAccess.SqlConn());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dataAccess.SqlConn().Close();
        }
    }
}