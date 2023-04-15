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
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            String mycon = "Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False";
            String myquery = "Select * from employee";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Close();
            Label1.Text = dt.Rows.Count.ToString();
            SqlConnection con2 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con2.Open();
            string s = "select * from supplier";
            SqlDataAdapter da2 = new SqlDataAdapter(s, con2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            Label2.Text = dt2.Rows.Count.ToString();

            SqlConnection con3 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con3.Open();
            string s3 = "select * from stocks";
            SqlDataAdapter da3 = new SqlDataAdapter(s3, con3);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            Label3.Text = dt3.Rows.Count.ToString();

            SqlConnection con4 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con4.Open();
            string s4 = "select * from subpurchase";
            SqlDataAdapter da4 = new SqlDataAdapter(s4, con4);
            DataTable dt4 = new DataTable();
            da4.Fill(dt4);
            Label4.Text = dt4.Rows.Count.ToString();

            SqlConnection con5 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con5.Open();
            string s5 = "select * from purchase";
            SqlDataAdapter da5 = new SqlDataAdapter(s5, con5);
            DataTable dt5 = new DataTable();
            da5.Fill(dt5);
            Label5.Text = dt5.Rows.Count.ToString();
            Label6.Text = Label5.Text;

            int a = int.Parse(Label1.Text);
            int b = int.Parse(Label2.Text);
            int c = int.Parse(Label3.Text);
            int d = a + b + c;
            Label7.Text = d.ToString();

            SqlConnection con6 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con6.Open();
            string s6 = "select * from orders";
            SqlDataAdapter da6 = new SqlDataAdapter(s6, con6);
            DataTable dt6 = new DataTable();
            da6.Fill(dt6);
            Label8.Text = dt6.Rows.Count.ToString();



        }
    }
}