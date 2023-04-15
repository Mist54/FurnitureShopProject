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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" &&
                TextBox8.Text != "" && TextBox13.Text != "" && TextBox7.Text != "" && TextBox9.Text != "" && TextBox12.Text != "" && TextBox11.Text != "" && TextBox13.Text != "" && TextBox14.Text != "" && TextBox15.Text != "" && TextBox16.Text != "")
            {
                String constring = "Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False";
                SqlConnection sqlcon = new SqlConnection(constring);
                FileUpload1.SaveAs(Server.MapPath("~/pictures/") + Path.GetFileName(FileUpload1.FileName));
                String link = "pictures/" + Path.GetFileName(FileUpload1.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/pictures/") + Path.GetFileName(FileUpload2.FileName));
                String link2 = "pictures/" + Path.GetFileName(FileUpload2.FileName);
                FileUpload3.SaveAs(Server.MapPath("~/pictures/") + Path.GetFileName(FileUpload3.FileName));
                String link3 = "pictures/" + Path.GetFileName(FileUpload3.FileName);
                FileUpload4.SaveAs(Server.MapPath("~/pictures/") + Path.GetFileName(FileUpload4.FileName));
                String link4 = "pictures/" + Path.GetFileName(FileUpload4.FileName);
                String query = "insert  into addproduct values('" + TextBox1.Text + "'" + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," +
                    "'" + TextBox5.Text + "','" + TextBox6.Text + "'" + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "'," +
                    "'" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "'," +
                    "'" + TextBox14.Text + "','" + link + "','"+link2+"','"+link3+"','"+link4+"','"+TextBox15.Text+"','"+TextBox16.Text+"')";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();
                Response.Write("<script>alert('Item has been Saved!!')</script>");
            }   
            else
            {
                Response.Write("<script>alert('Insert all the records FIRST!!')</script>");
            }
        }
    }
}