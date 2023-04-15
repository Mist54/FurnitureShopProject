using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace FMS
{
    public partial class signup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //page loads checks for checkbox state
            if (CheckBox1.Checked == false)
            {
                Button1.Enabled = false;
            }
            else
            {
                Button1.Enabled = true;
            }

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Sign-up Code creates new account for a new user
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
              
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "insert  into userlogin(username, email, password, phonenumber) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," +
                    "'" + TextBox5.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Has been Registerd succusfully')</script>");
                Response.Redirect("userlogin.aspx?mail=" + TextBox2.Text);
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;

            }
            else
            {
                Response.Write("<script>alert('Please fill all records first!!')</script>");
            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            //Search for Duplicate phone number
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            string s = "select phonenumber from userlogin where phonenumber='" + TextBox5.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('User with same Phone number is already exsists! Change your Phone number')</script>");
                TextBox5.Text = string.Empty;

            }
        }
    }
}
