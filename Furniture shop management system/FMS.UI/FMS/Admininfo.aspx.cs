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
    public partial class Admininfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "Select * from admininfo";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Button1.Enabled =false;
            }

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from admininfo", con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                //Display the records from database
                TextBox1.Text = rd.GetValue(0).ToString();
                TextBox2.Text = rd.GetValue(1).ToString();
                TextBox3.Text = rd.GetValue(2).ToString();
                TextBox4.Text = rd.GetValue(3).ToString();
                TextBox6.Text = rd.GetValue(4).ToString();
                TextBox5.Text = rd.GetValue(5).ToString();
              
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {
                String constring = "Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False";
                SqlConnection sqlcon = new SqlConnection(constring);
                FileUpload1.SaveAs(Server.MapPath("~/pictures/") + Path.GetFileName(FileUpload1.FileName));
                String link = "pictures/" + Path.GetFileName(FileUpload1.FileName);
                String query = "insert  into admininfo(name,phone,email,company,address,pincode,image) values('" + TextBox1.Text + "'" +
                    ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "'" +
                    ",'" + link + "')";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();
                Response.Write("<script>alert('Record is Saved')</script>");
                Button1.Enabled = false;
            }
            else
            {
                Response.Write("<script>alert('Insert all the records first!!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {
                SqlCommand cmd;
                cmd = new SqlCommand("delete admininfo where phone=@phone", con);
                con.Open();
                cmd.Parameters.AddWithValue("@phone", TextBox2.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox6.Text = "";
                TextBox5.Text = "";
                Button1.Enabled = true;

            }
            else
            {
                Response.Write("<script>alert('Insert all the records first!!')</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}

                
            
        

       

      