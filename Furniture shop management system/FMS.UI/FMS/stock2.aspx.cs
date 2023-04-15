using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace FMS
{
    public partial class stock2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //page loads
            Panel1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Code for searching the database 
            if (TextBox1.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select productid from stocks where productid='" + TextBox1.Text + "'";
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
                    SqlCommand cmd = new SqlCommand("Select * from stocks where productid=@productid", con);
                    cmd.Parameters.AddWithValue("@productid", int.Parse(TextBox1.Text));
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        TextBox2.Text = rd.GetValue(1).ToString();
                        TextBox3.Text = rd.GetValue(2).ToString();
                        TextBox4.Text = rd.GetValue(3).ToString();
                        TextBox5.Text = rd.GetValue(4).ToString();
                        TextBox6.Text = rd.GetValue(5).ToString();
                        TextBox7.Text = rd.GetValue(6).ToString();
                        TextBox8.Text = rd.GetValue(7).ToString();
                        TextBox9.Text = rd.GetValue(8).ToString();
                        TextBox10.Text = rd.GetValue(10).ToString();
                    }
                    con.Close();
                }
            }
            else
            {
                Response.Write("<script>alert('Enter product ID FIRST!!')</script>");

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //code for updating records
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != ""
                    && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != "" && TextBox10.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Update stocks set productname='" + TextBox2.Text + "',company='" + TextBox3.Text + "'," +
                    "suppliername='" + TextBox4.Text + "',catogory='" + TextBox5.Text + "',qty='" + TextBox6.Text + "'" +
                    ",materiaL='" + TextBox7.Text + "',colour='" + TextBox8.Text + "',discount='" + TextBox10.Text + "' ,price='" + TextBox9.Text +
                    "'where productid='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Records been Updated')</script>");

            }
            else
            {
                Response.Write("<script>alert('Search for records First!!')</script>");

            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox9.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox10.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select productid from stocks where productid='" + TextBox1.Text + "'";
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
                    cmd.CommandText = "Delete from stocks where productid='" + TextBox1.Text + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Record is deleted')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox9.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox10.Text = "";
                }
            }
            else
            {
                Response.Write("<script>alert('Insert the Product id First!')</script>");

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminhome.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            con.ConnectionString = ("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            da = new SqlDataAdapter("select * from stocks", con);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.DataBind();

        }
    }
}



                
            
    
