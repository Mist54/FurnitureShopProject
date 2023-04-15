using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace FMS
{
    public partial class attendence1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            string s = "select * from payslip";//database name
            SqlDataAdapter da = new SqlDataAdapter(s, con);//Connects the database and grid-view 
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string sqlquery = "select * from payslip where month like'%'+@month+'%'";
            cmd.CommandText = sqlquery;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("month", TextBox1.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }      
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Code to delete record from database
            if (TextBox2.Text != "")

            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select cid from payslip  where cid='" + TextBox2.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count < 1)
                {
                    Response.Write("<script>alert('Record does not exsists')</script>");

                }
                else
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "Delete from payslip where cid='" + TextBox2.Text + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Record is Deleted')</script>");
                    
                }

            }
        }
    }
}