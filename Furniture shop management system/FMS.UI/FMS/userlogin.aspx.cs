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
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //Page Loads 
            Label5.Visible = false;
           
          
        }
    

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Code for User Login 
            if (TextBox2.Text != "" && TextBox3.Text != "" )
            { 
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "SELECT * FROM userlogin WHERE   email ='"+TextBox2.Text+"' AND Password ='"+ TextBox3.Text+"' COLLATE SQL_Latin1_General_CP1_CS_AS";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count == 1)
                {
                    Response.Redirect("viewproducts.aspx?mail=" + TextBox2.Text + "&pass=" + TextBox3.Text);

                }

                else
                {
                    Label5.Visible = true; 
                } 
            }
            else
            {
                Response.Write("<script>alert('Please fill all the records or check the email and password')</script>");
            }
        }
    }
}
           

 


