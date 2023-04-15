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
    public partial class sell1 : System.Web.UI.Page
    {
        float gt;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox10.Enabled = false;
            TextBox11.Enabled = false;
            TextBox13.Enabled = false;
            Button4.Enabled = false;


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                //Gets costomer Detail from costomer table
                string s = "select phone from costomer where phone='" + TextBox2.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count < 1)
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "insert into costomer values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "'," +
                        "'" + TextBox3.Text + "','" + TextBox4.Text + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text != "")
            {
                //Code for Searching 
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select productid from stocks where productid='" + TextBox6.Text + "'";
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
                    cmd.Parameters.AddWithValue("@productid", int.Parse(TextBox6.Text));
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        TextBox7.Text = rd.GetValue(1).ToString();
                        TextBox8.Text = rd.GetValue(5).ToString();
                        TextBox10.Text = rd.GetValue(8).ToString();
                        TextBox12.Text = rd.GetValue(10).ToString();
                    }
                    con.Close();
                }

            }
            else
            {
                Response.Write("<script>alert('Enter Item ID first!! ')</script>");

            }
        }
       

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Code for Purchase 
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" &&
               TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != "" && TextBox10.Text != "" && TextBox11.Text != "" && TextBox12.Text != ""
               && TextBox13.Text != "")
            {
                Button4.Enabled = true;
                int s = int.Parse(TextBox8.Text);
                int qt = int.Parse(TextBox9.Text);
                int ts = s - qt;
                if (ts >= 0)
                {
                    int qty;
                    SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                    con1.Open();
                    SqlCommand cmd1 = con1.CreateCommand();
                    cmd1.CommandText = "insert into purchase values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'" +
                        ",'" + TextBox4.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "'," +
                        "'" + TextBox13.Text + "')";
                    cmd1.ExecuteNonQuery();
                    con1.Close();

                    qty = Convert.ToInt32(TextBox9.Text);
                    con1.Open();
                    SqlCommand sqlcmd = con1.CreateCommand();
                    sqlcmd.CommandText = "Update stocks set qty=qty-" + qty + " where productid='" + TextBox6.Text + "'";
                    sqlcmd.ExecuteNonQuery();
                    con1.Close();
                    Response.Write("<script>alert('Item is purchased')</script>");
                    con1.Open();
                    SqlCommand cmd2 = con1.CreateCommand();
                    cmd2.CommandText = "insert into bill values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox6.Text + "'," +
                        "'" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "')";
                    cmd2.ExecuteNonQuery();
                    con1.Close();
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";
                    TextBox13.Text = "";
                    DataTable dt = new DataTable();
                    String mycon = "Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False";
                    String myquery = "Select * from bill";
                    SqlConnection con = new SqlConnection(mycon);
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = con;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    con.Close();
                    GridView1.FooterRow.Cells[6].Text = "Total Amount=";
                    GridView1.FooterRow.Cells[7].Text = dt.Compute("Sum(grand)", "").ToString();
                }

                else
                {
                    Response.Write("<script>alert('Item is OUT OF STOCK !!')</script>");

                }

            }

            else
            {
                Response.Write("<script>alert('Enter all records first !!')</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Code for Bill
            Response.Redirect("bill1.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeelogin.aspx");
        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" &&
              TextBox7.Text != "" && TextBox8.Text != "")
            {//Code for calculating total
                int qty = Convert.ToInt32(TextBox9.Text);
                int pr = Convert.ToInt32(TextBox10.Text);
                int tot = pr * qty;
                TextBox11.Text = tot.ToString();
                //Code for Discound & grand Total
                int dis;
                dis = Convert.ToInt32(TextBox12.Text);
                tot = Convert.ToInt32(TextBox11.Text);
                gt = tot - dis;
                TextBox13.Text = gt.ToString();
            }
            else { Response.Write("<script>alert('Enter all records first !!')</script>"); }
            
       
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from costomer where phone=@phone", con);
            cmd.Parameters.AddWithValue("@phone", TextBox2.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                TextBox5.Text = rd.GetValue(1).ToString();
                TextBox1.Text = rd.GetValue(2).ToString();
                TextBox3.Text = rd.GetValue(4).ToString();
                TextBox4.Text = rd.GetValue(5).ToString();
            }
            con.Close();
        }
    }
}




