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
    public partial class purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" &&
                TextBox8.Text != "" && TextBox13.Text != "" && TextBox7.Text != "" && TextBox9.Text != "" && TextBox12.Text != "" && TextBox10.Text != "" &&
                TextBox11.Text != "" && TextBox14.Text!="")

            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select productid from stocks where productid='" + TextBox1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    Response.Write("<script>alert('Record already exsists')</script>");

                }
                else
                {
                    String constring = "Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False";
                    SqlConnection sqlcon = new SqlConnection(constring);
                    FileUpload1.SaveAs(Server.MapPath("~/pictures/") + Path.GetFileName(FileUpload1.FileName));
                    String link = "pictures/" + Path.GetFileName(FileUpload1.FileName);
                    String query = "insert  into stocks(productid,productname,company,suppliername,catogory,qty,material,colour,price,image,discount) values('" + TextBox1.Text + "'" +
                        ",'" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "'" +
                        ",'" + TextBox13.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + link + "','"+TextBox14.Text+"')";
                    SqlCommand cmd = new SqlCommand(query, sqlcon);
                    sqlcon.Open();
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();

                    con.Open();
                    SqlCommand cmd1 = con.CreateCommand();
                    cmd1.CommandText = "insert into subpurchase values('" + TextBox1.Text + "','" + TextBox2.Text + "'," +
                        "'" + TextBox4.Text + "','" + TextBox3.Text + "'," +
                        "'" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "'," +
                        "'" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox13.Text + "'," +
                        "'" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox7.Text + "','" + TextBox14.Text + "')";
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('product has been saved')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Insert the Records First!')</script>");

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            string s = "select * from subpurchase";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
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
    }
}

           
    

