using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test
{
    public partial class adminpanel : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.; Initial Catalog=CommerceDB; Integrated Security=True; MultipleActiveResultSets=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}