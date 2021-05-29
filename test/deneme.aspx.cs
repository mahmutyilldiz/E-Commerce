using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test
{
    public partial class deneme : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
            SqlConnection conn = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");
            conn.Open();

            SqlCommand cmd = new SqlCommand("select * from urunler", conn);
            SqlDataAdapter adap = new SqlDataAdapter(cmd);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            Repeater1.DataSource = dt;//Veri tabanımızdan gelen kayıtları repeatera yüklüyoruz
            Repeater1.DataBind();
           
        }
    }
}