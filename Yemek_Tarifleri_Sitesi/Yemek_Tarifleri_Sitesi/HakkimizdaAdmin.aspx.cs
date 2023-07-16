using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            CallHakkimizda();
        }
        void CallHakkimizda()
        {
            if (Page.IsPostBack==false)
            {
                SqlCommand cmd = new SqlCommand("Select * from Tbl_Hakkimizda", dataAccess.SqlConn());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                dataAccess.SqlConn().Close();
            }
           
        }

        protected void BtnArti_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void BtnEksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                SqlCommand cmd = new SqlCommand("update Tbl_Hakkimizda set Metin=@p1", dataAccess.SqlConn());
                cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
                cmd.ExecuteReader();
                dataAccess.SqlConn().Close();
            }
           
        }
    }
}