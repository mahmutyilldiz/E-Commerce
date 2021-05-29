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
    public partial class odeme : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var toplam = 0;
                var toplam1 = 0;
                var kargoucret = 10;

                SqlConnection conn = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");
                conn.Open();

                SqlCommand cmd = new SqlCommand("SELECT fiyat FROM sepet   where uyeid=" + Session["ID"].ToString() + " and statu=0", conn);

              
                SqlDataAdapter adap = new SqlDataAdapter(cmd);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    toplam += Convert.ToInt32(dr["fiyat"]);
                    SqlCommand cmd2 = new SqlCommand("UPDATE sepet SET urunstok=urunstok-1 where uyeid=" + Session["ID"].ToString() + " and statu=0", conn);
                    
                }
                toplam1 += toplam + kargoucret;
                Label1.Text = toplam1.ToString();

                Label2.Text = toplam.ToString();
             

            }



        }
        protected void odeme_Click(object sender, EventArgs e)

        {
            SqlCommand cmd = new SqlCommand("SELECT SUM(urunstok) as urunstok,min(uyeid) as uyeid,urunid FROM sepet  where  uyeid=" + Session["ID"].ToString() + " and statu=0 group by urunid", conn);
            DataTable dtSepet = new DataTable();
            SqlDataAdapter adap = new SqlDataAdapter(cmd);
            adap.Fill(dtSepet);

            foreach (DataRow item in dtSepet.Rows)
            {
                if (conn.State==ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmdurunStok = new SqlCommand("SELECT urunstok  from  urunler where ID=" + item["urunid"].ToString() + "", conn);
                int stok = (int)cmdurunStok.ExecuteScalar();

                int result = stok - (int)item["urunstok"];


                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd2 = new SqlCommand("UPDATE urunler SET urunstok=@urunstok where ID=" + item["urunid"].ToString() + "", conn);
                cmd2.Parameters.AddWithValue("@urunstok", result);
                cmd2.ExecuteNonQuery();

                ////SqlCommand cmd3 = new SqlCommand("UPDATE sepet SET statu=1 where ID=" + item["urunid"].ToString() + "", conn);
                //int x = 1;
                //SqlCommand cmd3 = new SqlCommand("update sepet set statu=@statu where ID=" + item["urunid"].ToString() + "", conn);
                //cmd3.Parameters.AddWithValue("@statu", x);
                //cmd3.ExecuteNonQuery();


                //Response.Write("<script LANGUAGE='JavaScript' >alert('Ödeme işlemi başarılı bir şekilde gerçekleştirilmiştir...')</script>");

              

            }
           

        }
       




    }


}