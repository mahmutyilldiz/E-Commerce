using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


namespace test
{
	public partial class deneme1 : System.Web.UI.Page
	{
		SqlConnection bag = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");

		protected void Page_Load(object sender, EventArgs e)
		{

			if (!IsPostBack)
			{


				if (string.IsNullOrEmpty(Request.QueryString["ID"]))
				{
					bag.Open();

					SqlCommand komut1 = new SqlCommand("select * from sepet where uyeid=@uyeid and statu=0", bag);
					komut1.Parameters.AddWithValue("@uyeid", Session["ID"].ToString());

					SqlDataReader dr = komut1.ExecuteReader();
					while (dr.Read())
					{
						Repeater1.DataSource = dr;

					}

					Repeater1.DataBind();
					dr.Close();
					bag.Close();
					

				}
				if (Session["userName"] == null)
				{
					sonuc.InnerHtml = "Kullanıcı girisi yok";
					sonuc2.InnerHtml = "girişe yönlendiriyorsunuz";
					sonuc2.InnerHtml += "<meta http-equiv='refresh' content='3;url=users.aspx'>";
				}
				else
				{
					//bir uyenin ikinci urunu icin
					string urunid = Request.QueryString["ID"];
					SqlConnection bag = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True; MultipleActiveResultSets=True");
		
					bag.Open();

					SqlCommand komut = new SqlCommand("select * from sepet where uyeid=@uyeid and statu = 0", bag);
					komut.Parameters.AddWithValue("@uyeid", Session["ID"].ToString());

					SqlDataReader oku = komut.ExecuteReader();
				
					if (oku.Read())
					{
						var id2 = Session["ID"].ToString();
						SqlDataAdapter adap = new SqlDataAdapter("select * from sepet inner join urunler ON sepet.urunid = urunler.ID WHERE uyeid=" + id2 + "and statu=0", bag);
						DataTable dt = new DataTable();

						adap.Fill(dt);
						Repeater1.DataSource = dt;
						Repeater1.DataBind();

						bag.Close();

					}
					else
					{



					}
					

				}

			}

		}
		protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)


		{

			if (e.CommandName == "sil")
			{
				var id = e.CommandArgument;
				SqlConnection conn = new SqlConnection("Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True");
				bag.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM sepet WHERE ID=" + id, bag);

				cmd.ExecuteNonQuery();
				conn.Close();
				Response.Redirect("~/sepet.aspx");
			}

			if (e.CommandName == "odeme")
			{
				//var id = e.CommandArgument;
			//	Response.Redirect("odeme.aspx?ID=" + id);
			}

		}
	} }