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
    public partial class employeelogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            Label5.Text = DateTime.Now.ToString();
            Label5.Visible = false;
            TextBox3.Text = Label5.Text;
            Button3.Visible = false;
            Button1.Enabled = false;
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {
                if (TextBox4.Text == "employee")
                {
                    Button1.Enabled = true;
                }
            }
            if (TextBox2.Text == "admin" && TextBox4.Text == "admin")
            {
                Button1.Enabled = true;
                TextBox1.Text = "0001";
            }
        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {
            if (TextBox1.Text != "admin")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select employeeid from employee where employeeid='" + TextBox1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count < 1)
                {
                    Response.Write("<script>alert('Record Does not match')</script>");
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                }
                else
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from employee where employeeid=@employeeid", con);
                    cmd.Parameters.AddWithValue("@employeeid", int.Parse(TextBox1.Text));
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        TextBox2.Text = rd.GetValue(1).ToString();
                    }
                    con.Close();
                }
                
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            if (TextBox2.Text == "admin" && TextBox4.Text == "admin")
            {
                Button3.Visible = true;

            }

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            if (TextBox4.Text == "admin")
            {
                TextBox2.Enabled = true;
            }
            if (TextBox2.Text == "admin" && TextBox4.Text == "admin")
            {
                Button3.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "insert into employeelogin values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Record is Saved')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox4.Text = "";
                Response.Redirect("sell1.aspx");
            }
            else
            {
                Response.Write("<script>alert('Record Does not match')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            con.ConnectionString = ("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            da = new SqlDataAdapter("select * from employeelogin", con);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.DataBind();
        }
    }
}

           