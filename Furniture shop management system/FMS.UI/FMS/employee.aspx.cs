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
    public partial class employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;//Panel and Grid view Will not be visible while loading page 
           
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Code for Saving a Employee Records
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != ""
                    && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != "" && TextBox10.Text!="")

            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select employeeid from employee where employeeid='" + TextBox1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    Response.Write("<script>alert('Record already exsists')</script>");
                }
                else
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "insert into employee values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +
                        "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox10.Text + "','" + TextBox9.Text + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Record is Saved')</script>");
                    TextBox2.Enabled = false;
                    TextBox3.Enabled = false;
                    TextBox4.Enabled = false;
                    TextBox5.Enabled = false;
                    TextBox6.Enabled = false;
                    TextBox7.Enabled = false;
                    TextBox8.Enabled = false;
                    TextBox9.Enabled = false;


                }
            }
            else
            {
                Response.Write("<script>alert('Insert all the records FIRST!!')</script>");
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                //Code for Searching a Records from Database
              
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select employeeid from employee where employeeid='" + TextBox1.Text + "'";
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
                    if (TextBox1.Text != "")
                    {
                        SqlCommand cmd = new SqlCommand("Select * from employee where employeeid=@employeeid", con);
                        cmd.Parameters.AddWithValue("@employeeid", int.Parse(TextBox1.Text));
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
                            TextBox9.Text = rd.GetValue(9).ToString();
                            TextBox10.Text = rd.GetValue(8).ToString();
                            TextBox1.Enabled = false;

                        }


                    }
                    con.Close();
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter the Employee ID that you want to Search')</script>");
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //R
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != ""
                    && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != "" && TextBox10.Text != "")

            {
                //Code for Updating the records from the database
                TextBox1.Enabled = false;
                TextBox2.Enabled = true;
                TextBox3.Enabled = true;
                TextBox4.Enabled = true;
                TextBox5.Enabled = true;
                TextBox6.Enabled = true;
                TextBox7.Enabled = true;
                TextBox8.Enabled = true;
                TextBox9.Enabled = true;
                TextBox10.Enabled = true;

                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Update employee set name='" + TextBox2.Text + "',dob='" + TextBox3.Text + "',doj='" + TextBox4.Text
                    + "', phone='" + TextBox5.Text + "',email='" + TextBox6.Text + "',address='" + TextBox7.Text + "',designation='"
                    + TextBox8.Text + "',addharnumber='" + TextBox10.Text + "',salary='" + TextBox9.Text + "' where employeeid='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Records been Updated')</script>");



            }
            else
            {
                Response.Write("<script>alert('Search for the Records first!!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Code to delete record from database
            if (TextBox1.Text != "" )

            {
                TextBox1.Enabled = true;
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select employeeid from employee where employeeid='" + TextBox1.Text + "'";
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
                    cmd.CommandText = "Delete from employee where employeeid='" + TextBox1.Text + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Record is Deleted')</script>");
                    TextBox2.Text = "";
                    TextBox1.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                }

            }
            else
            {
                Response.Write("<script>alert('Search for the records first')</script>");

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            Panel1.Visible = false;
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;
            TextBox5.Enabled = true;
            TextBox6.Enabled = true;
            TextBox7.Enabled = true;
            TextBox8.Enabled = true;
            TextBox9.Enabled = true;
            TextBox10.Enabled = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Code for Gridview & tables
            Panel1.Visible = true;
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            con.ConnectionString = ("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            da = new SqlDataAdapter("select * from employee", con);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.DataBind();
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            //Text_changed code for Phone Number
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            string s = "select phone from employee where phone='" + TextBox5.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('This Phone Number already recorderd')</script>");
            }
        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {
            //Text_changed Code for Addhar number
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            string s = "select addharnumber from employee where addharnumber='" + TextBox10.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('This addhar number is already recorderd')</script>");
                TextBox10.Text = "";
            }
        }
    }
}











