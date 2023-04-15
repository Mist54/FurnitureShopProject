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
    public partial class supplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Code for inserting the records in database
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select supplierid from supplier where supplierid='" + TextBox1.Text + "'";
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
                    cmd.CommandText = "insert into supplier values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Record is Saved')</script>");

                }
            }

            else
            {
                Response.Write("<script>alert('Insert the records FIRST! ')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Code for deleting the records from database
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select supplierid from supplier where supplierid='" + TextBox1.Text + "'";
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
                    cmd.CommandText = "Delete from supplier where supplierid='" + TextBox1.Text + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Record is Deleted')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox6.Text = "";
                    TextBox5.Text = "";
                    TextBox7.Text = "";

                }
            }
            else
            {
                Response.Write("<script>alert('Please Search for the Document you want to Delete')</script>");

            }
        }


        protected void Button6_Click1(object sender, EventArgs e)
        {
            //Code for Searching the records and display it from database
            if (TextBox1.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select supplierid from supplier where supplierid='" + TextBox1.Text + "'";
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
                    SqlCommand cmd = new SqlCommand("Select * from supplier where supplierid=@supplierid", con);
                    cmd.Parameters.AddWithValue("@supplierid", int.Parse(TextBox1.Text));
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        //Display the records from database
                        TextBox2.Text = rd.GetValue(1).ToString();
                        TextBox3.Text = rd.GetValue(2).ToString();
                        TextBox5.Text = rd.GetValue(4).ToString();
                        TextBox6.Text = rd.GetValue(5).ToString();
                        TextBox4.Text = rd.GetValue(3).ToString();
                        TextBox7.Text = rd.GetValue(6).ToString();

                    }
                    con.Close();
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter the Supplier ID that you want to Search')</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Code for Updating the database
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Update supplier set suppliername='" + TextBox2.Text + "',number='" + TextBox3.Text + "',email='" + TextBox4.Text + "',address='" + TextBox5.Text + "',pincode='" + TextBox6.Text + "',company='" + TextBox7.Text + "' where supplierid='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Records been Updated')</script>");

            }
            else
            {
                Response.Write("<script>alert('Please search the Documents that you want to Update')</script>");

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Code for Reset button
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            Panel1.Visible = false;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Code for grid view
            Panel1.Visible = true;
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            string s = "select * from supplier";//database name
            SqlDataAdapter da = new SqlDataAdapter(s, con);//Connects the database and grid-view 
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            //Text_changed code for Phone Number
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            string s = "select number from supplier where number='" + TextBox3.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('This Phone Number already recorderd')</script>");
            }
        }
    }
}


            

        