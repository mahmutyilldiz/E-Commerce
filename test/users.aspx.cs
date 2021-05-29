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
    public partial class users : System.Web.UI.Page
    {
        SqlConnection db = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from loginTB", db);
        }
		protected void Button1_Click(object sender, EventArgs e)
	{

			SqlCommand cmd = new SqlCommand("insert into loginTB (firstName,lastName,eMail,userName,password) values (@firstName,@lastName,@eMail,@userName,@password)", db);

			cmd.Parameters.AddWithValue("@firstName", TextBox1.Text );
			cmd.Parameters.AddWithValue("@lastName", TextBox2.Text);
			cmd.Parameters.AddWithValue("@eMail", TextBox3.Text);
			cmd.Parameters.AddWithValue("@userName", TextBox4.Text);
			cmd.Parameters.AddWithValue("@password", TextBox5.Text);

			db.Open();
			cmd.ExecuteNonQuery();

			db.Close();
		
		}
		protected void Button2_Click(object sender, EventArgs e)
		{

			SqlConnection baglanti = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");


			SqlCommand sorgu = new SqlCommand("select * from loginTB WHERE userName=@userName AND password=@password", baglanti); //reader
			sorgu.Parameters.Add("@userName", SqlDbType.VarChar).Value = userName.Text;
			sorgu.Parameters.Add("@password", SqlDbType.VarChar).Value = TextBox8.Text;
			baglanti.Open();
			SqlDataReader oku = sorgu.ExecuteReader();

			if (oku.Read())
			{
				Session.Add("userName", userName);
				Session.Add("ID", oku["ID"].ToString());
				Response.Redirect("index.aspx?ID" + ID);
			}
			else
			{
				Response.Write("<script>alert('Hatalı Giriş Yaptınız.Tekrar Deneyin...')</script>");


			}

		}
	}
}