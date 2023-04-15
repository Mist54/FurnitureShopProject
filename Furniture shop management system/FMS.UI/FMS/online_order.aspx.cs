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
    public partial class online_order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            string s = "select * from buyproduct";//database name
            SqlDataAdapter da = new SqlDataAdapter(s, con);//Connects the database and grid-view 
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;

            string s2 = "select * from addproduct";//database name
            SqlDataAdapter da2 = new SqlDataAdapter(s2, con);//Connects the database and grid-view 
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            GridView2.DataSource = ds2;
            GridView2.DataBind();
            GridView2.Visible = true;

            string s3 = "select * from userlogin";//database name
            SqlDataAdapter da3 = new SqlDataAdapter(s3, con);//Connects the database and grid-view 
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);
            GridView3.DataSource = ds3;
            GridView3.DataBind();
            GridView3.Visible = true;
            Panel1.Visible = false;
            Button2.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Button2.Visible = true;
            Button1.Visible = false;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Button1.Visible = true;
            Button2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}