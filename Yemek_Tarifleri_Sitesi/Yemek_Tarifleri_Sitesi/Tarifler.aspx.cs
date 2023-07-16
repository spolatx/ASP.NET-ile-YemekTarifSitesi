using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class Tarifler : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            CallOnayliTarifler();
            CallOnaysizTarifler();
        }

        protected void BtnArti_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void BtnEksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
        void CallOnayliTarifler()
        {
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=1", dataAccess.SqlConn());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dataAccess.SqlConn().Close();
        }
        void CallOnaysizTarifler()
        {
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=0", dataAccess.SqlConn());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            dataAccess.SqlConn().Close();
        }

        protected void BtnOnayliArti_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void BtnOnayliEksi_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}