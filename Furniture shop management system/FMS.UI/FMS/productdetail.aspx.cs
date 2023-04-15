using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FMS
{
    public partial class productdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {//Page loads get the product info
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from addproduct where Id='" + Request.QueryString["Id"] + "'"; //Gets productid from database
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            Label1.Text = Request.QueryString["Id"];
           
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyproduct?Id=" + Label1.Text);//redirects user to buyproduct.aspx
        }
    }
}
