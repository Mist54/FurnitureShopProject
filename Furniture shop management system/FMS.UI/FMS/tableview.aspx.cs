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
    public partial class tableview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            string s = "select * from supplier";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;

            SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con1.Open();
            string s1 = "select * from employee";
            SqlDataAdapter da1 = new SqlDataAdapter(s1, con1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            GridView2.DataSource = ds1;
            GridView2.DataBind();
            GridView2.Visible = true;

            SqlConnection con3 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con3.Open();
            string s3 = "select * from stocks";
            SqlDataAdapter da3 = new SqlDataAdapter(s3, con3);
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);
            GridView3.DataSource = ds3;
            GridView3.DataBind();
            GridView3.Visible = true;

            SqlConnection con4 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con4.Open();
            string s4 = "select * from orders";
            SqlDataAdapter da4 = new SqlDataAdapter(s4, con4);
            DataSet ds4 = new DataSet();
            da4.Fill(ds4);
            GridView4.DataSource = ds4;
            GridView4.DataBind();
            GridView4.Visible = true;

        }
    }
}