using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test
{
    public partial class ekleme : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True; MultipleActiveResultSets=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True; MultipleActiveResultSets=True");
            SqlCommand cmd = new SqlCommand("select * from urunler", conn);
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("INSERT INTO urunler(urunadi,urundetay,urunstok,urunfiyat,resim) VALUES(' " + TextBox1.Text + " ','" + TextBox2.Text + " ',' " + TextBox3.Text + " ',' " + TextBox4.Text + "',' " + TextBox5.Text + "' )", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/adminpanel.aspx");

        }

    }
}