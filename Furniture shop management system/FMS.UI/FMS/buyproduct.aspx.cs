using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Text;
using System.Net;

namespace FMS
{
    public partial class buyproduct : System.Web.UI.Page
    {
        int total,qty,GT,dc;

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox9.Text = "cash on delivery";
            Button2.Text = "\u2713";
            Button3.Text = "Select";
            Button4.Text = "Select";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox9.Text = "Credit or debit card";
            Button3.Text = "\u2713";
            Button2.Text = "Select";
            Button4.Text = "Select";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox9.Text = "Net banking";
            Button4.Text = "\u2713";
            Button2.Text = "Select";
            Button3.Text = "Select";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Code for inserting the records in database
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox9.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "insert into buyproduct values('" + Label8.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" 
                    + TextBox6.Text + "','" + TextBox4.Text +
                    "','" + TextBox1.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("placeorder.aspx");
                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                TextBox3.Text = String.Empty;
                TextBox4.Text = String.Empty;
                TextBox5.Text = String.Empty;
                TextBox6.Text = String.Empty;
                TextBox7.Text = String.Empty;
               
            }
            else
            {
                Response.Write("<script>alert('Please Insert all the records')</script>");
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            qty = Convert.ToInt32(TextBox1.Text);
            GT = qty * total+dc;
            TextBox7.Text = GT.ToString();
            if (qty <= 0) { Response.Write("<script>alert('Invalid input')</script>");
                TextBox1.Text = string.Empty;
                TextBox8.Text = string.Empty;
                TextBox7.Text = string.Empty;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from addproduct where Id='" + Request.QueryString["Id"] + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
            //For Total value X QTY
            con.Open();
            Label8.Text = Request.QueryString["Id"];//Shows the product ID
            int Id = Convert.ToInt32(Label8.Text);
            SqlCommand cmd1 = new SqlCommand("Select * from addproduct where Id=@Id", con);
            cmd1.Parameters.AddWithValue("@Id",Id);
            SqlDataReader rd = cmd.ExecuteReader();
         
            while (rd.Read())
            {
                //Display the records from database
                Label9.Text= rd.GetValue(10).ToString();
                TextBox8.Text = rd.GetValue(12).ToString();
                

            }
            con.Close();

            total = Convert.ToInt32(Label9.Text);
            dc = Convert.ToInt32(TextBox8.Text);
        }
    }
}