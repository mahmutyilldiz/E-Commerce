using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace test
{
    public partial class index : System.Web.UI.Page
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
            Repeater2.DataSource = dt;//Veri tabanımızdan gelen kayıtları repeatera yüklüyoruz
            Repeater2.DataBind();
            //if (IsPostBack)
            //{
            //    Response.Redirect("arama.aspx?q=" + txtKelime.Text.Trim());
            //}
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)

        {
            string fiyat = "";
            int urunStok = 1;

            if (e.CommandName == "sepet")
            {
                var id = e.CommandArgument;
                SqlConnection conn = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");
                conn.Open();

                SqlCommand komut1 = new SqlCommand("select * from urunler where ID = @urunid", conn);
                komut1.Parameters.AddWithValue("@urunid", id);

                SqlDataReader dr = komut1.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);


                foreach (DataRow item in dt.Rows)
                {
                    fiyat = item["urunfiyat"].ToString();
                }


                SqlCommand komut2 = new SqlCommand("insert into sepet (uyeid,urunid,statu,fiyat,urunstok) values(@uyeid2,@urunid2,0,@fiyat,@urunstok)", conn);
                komut2.Parameters.AddWithValue("@uyeid2", Session["ID"].ToString());
                komut2.Parameters.AddWithValue("@urunid2", id);
                komut2.Parameters.AddWithValue("@fiyat", fiyat);
                komut2.Parameters.AddWithValue("@urunstok", urunStok);
                komut2.ExecuteNonQuery();
                Response.Redirect("sepet.aspx?ID" + ID);


            }

            if (e.CommandName == "detay")
            {
                var id = e.CommandArgument;
                Response.Redirect("urundetayi.aspx?ID=" + id);
            }
        }


        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string fiyat = "";
            int urunStok = 1;
           
            if (e.CommandName == "sepet")
            {
                var id = e.CommandArgument;
                SqlConnection conn = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");
                conn.Open();

                SqlCommand komut1 = new SqlCommand("select * from urunler where ID = @urunid", conn);
                komut1.Parameters.AddWithValue("@urunid", id);

                SqlDataReader dr = komut1.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);


                foreach (DataRow item in dt.Rows)
                {
                    fiyat = item["urunfiyat"].ToString();
                    //urunStok = Convert.ToInt32(item["urunstok"]);
                }


                SqlCommand komut2 = new SqlCommand("insert into sepet (uyeid,urunid,statu,fiyat,urunstok) values(@uyeid2,@urunid2,0,@fiyat,@urunstok)", conn);
                komut2.Parameters.AddWithValue("@uyeid2", Session["ID"].ToString());
                komut2.Parameters.AddWithValue("@urunid2", id);
                komut2.Parameters.AddWithValue("@fiyat", fiyat);
                komut2.Parameters.AddWithValue("@urunstok", urunStok);
                komut2.ExecuteNonQuery();
                Response.Redirect("sepet.aspx?ID" + ID);


            }

            if (e.CommandName == "detay")
            {
                var id = e.CommandArgument;
                Response.Redirect("urundetayi.aspx?ID=" + id);
            }
        }

       
    }
}