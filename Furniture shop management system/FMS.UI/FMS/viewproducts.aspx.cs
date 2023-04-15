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
    public partial class viewproducts : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
            //Binds the Data to repeater (Code will run once the page loads)
            if (!this.IsPostBack)
            {
                this.BindRepeater();
            }
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from addproduct";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
            con.Open();
            string mail = Request.QueryString["mail"];//passed parameter from userlogin page
            string pass = Request.QueryString["pass"];
            SqlCommand cmd1 = new SqlCommand("select * from userlogin where email= '" + mail + "' AND password = '" + pass + "'", con);//Used to get the user info from database
            SqlDataReader rd = cmd1.ExecuteReader();
            while (rd.Read())
            {
                string uid = rd.GetValue(0).ToString();
                string username = rd.GetValue(1).ToString();
                Label1.Text = "Welcome" + " " + username + " " + "Happy shopping";//identify whose account is been used 
                Label2.Text = uid;

            }

            con.Close();//if user does not exisits or not logged in it will redirect to login page
            
        }

        private void BindRepeater()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from addproduct";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
            //Binds the repeater controle
        }
    }
}

   


           