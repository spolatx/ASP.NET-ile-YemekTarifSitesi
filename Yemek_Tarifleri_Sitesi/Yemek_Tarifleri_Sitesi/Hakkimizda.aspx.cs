using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowHakkimizda();
        }
        void ShowHakkimizda()
        {
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Hakkimizda", dataAccess.SqlConn());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            dataAccess.SqlConn().Close();
        }
    }
}