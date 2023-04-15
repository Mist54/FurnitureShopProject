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
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Button7.Text = "\u2713 Approved";//Code for Button Symbol
            Button8.Text = "\u274c Declined";//Can be changed
            TextBox10.Text = "Not Set";//Page-load code
            TextBox10.Enabled = false;
            Panel1.Visible = false;
            Button7.Enabled = false;
            Button8.Enabled = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            //Code for approval and Declining the orders
            //Button Code
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != ""
                    && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox10.Text != "" && TextBox9.Text != "")
            {
                TextBox10.Text = "Approved";
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Update orders set status='" + TextBox10.Text + "' where costomerid='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Item has been approved!!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Search for the records  FIRST!!')</script>");
            }


        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //Search code
            if (TextBox1.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select costomerid from orders where costomerid='" + TextBox1.Text + "'";
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
                        SqlCommand cmd = new SqlCommand("Select * from orders where costomerid=@costomerid", con);
                        cmd.Parameters.AddWithValue("@costomerid", int.Parse(TextBox1.Text));
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
                            TextBox10.Text = rd.GetValue(9).ToString();
                            TextBox1.Enabled = false;
                        }
                    }
                    con.Close();
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter the Costomer ID that you want to Search')</script>");
            }
            Button7.Enabled = true;
            Button8.Enabled = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Code For Saving the Record
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != ""
                    && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != "" && TextBox10.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select costomerid from orders where costomerid='" + TextBox1.Text + "'";
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
                    cmd.CommandText = "insert into orders values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," +
                        "'" + TextBox4.Text + "'," +
                        "'" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "'," +
                        "'" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Record is Saved')</script>");
                    Button7.Enabled = true;
                    Button8.Enabled = true;
                }
            }
            else
            {
                Response.Write("<script>alert('Enter the records FIRST!')</script>");
            }
            if (TextBox3.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select phone from costomer where phone='" + TextBox3.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count < 1)
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "insert into costomer values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," +
                        "'" + TextBox4.Text + "','" + TextBox5.Text + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {

            //Code for approval and Declining the orders
            //Button Code
            //Will delete the record from the database
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != ""
                                && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox10.Text != "" && TextBox9.Text != "")
            {
                TextBox10.Text = "Declined";
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Update orders set status='" + TextBox10.Text + "' where costomerid='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Item Order has been declined!!')</script>");
                con.Open();
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandText = "Delete from orders where costomerid='" + TextBox1.Text + "'";
                cmd1.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                Response.Write("<script>alert('Search for the records  FIRST!!')</script>");
            }
            Button7.Enabled = true;
            Button8.Enabled = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            //Reset code
            TextBox1.Text = "";
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
            TextBox1.Enabled = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            //Code for Button "View All"
            Panel1.Visible = true;
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            con.ConnectionString = ("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            da = new SqlDataAdapter("select * from orders", con);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.DataBind();
            Button7.Enabled = true;
            Button8.Enabled = true;
        }
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            //Code for Phone Number 
            //get the costomer data from the Costomer table
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from costomer where phone=@phone", con);
            cmd.Parameters.AddWithValue("@phone", TextBox3.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                TextBox5.Text = rd.GetValue(5).ToString();
                
                TextBox2.Text = rd.GetValue(2).ToString();
                TextBox4.Text = rd.GetValue(4).ToString();
            }
            con.Close();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            string s = "select productid from stocks where productid='" + TextBox6.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count < 1)
            {
                Response.Write("<script>alert('Item does not exisits in stock')</script>");

            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from stocks where productid=@productid", con);
                cmd.Parameters.AddWithValue("@productid", int.Parse(TextBox6.Text));
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {

                    TextBox7.Text = rd.GetValue(1).ToString();
                    TextBox8.Text = rd.GetValue(8).ToString();

                }
                con.Close();
            }
        }
    }
}

        
