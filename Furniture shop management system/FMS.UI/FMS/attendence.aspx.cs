using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace FMS
{
    public partial class attendence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            TextBox3.Enabled = false;
            Label2.Text = DateTime.Now.ToString();
            Panel1.Visible = false;
            if (DropDownList1.SelectedIndex == 0)
                TextBox3.Text = "31/JAN".ToString();
            else if (DropDownList1.SelectedIndex == 1)
                TextBox3.Text = "29/FEB".ToString();
            if (DropDownList1.SelectedIndex == 2)
                TextBox3.Text = "31/MAR".ToString();
            else if (DropDownList1.SelectedIndex == 3)
                TextBox3.Text = "30/APR".ToString();
            if (DropDownList1.SelectedIndex == 4)
                TextBox3.Text = "31/MAY".ToString();
            else if (DropDownList1.SelectedIndex == 5)
                TextBox3.Text = "30/JUN".ToString();
            if (DropDownList1.SelectedIndex == 6)
                TextBox3.Text = "31/JUL".ToString();
            else if (DropDownList1.SelectedIndex == 7)
                TextBox3.Text = "31/AUG".ToString();
            if (DropDownList1.SelectedIndex == 8)
                TextBox3.Text = "31/SEP".ToString();
            else if (DropDownList1.SelectedIndex == 9)
                TextBox3.Text = "30/OCT".ToString();
            if (DropDownList1.SelectedIndex == 10)
                TextBox3.Text = "31/NOV".ToString();
            else if (DropDownList1.SelectedIndex == 11)
                TextBox3.Text = "30/DEC".ToString();
        }




        protected void Button7_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                int salary, nlt;
                double da, hra, pf, tax, Total, pt;
                Label24.Text = TextBox1.Text;
                Label25.Text = TextBox2.Text;
                Label26.Text = TextBox3.Text;

                Panel1.Visible = true;
                nlt = Int32.Parse(TextBox4.Text);
                salary = Int32.Parse(TextBox5.Text);
                if (salary <= 10000)
                {
                    da = salary * 0.2;
                    hra = salary * 0.1;
                    pf = salary * 0.12;
                    tax = salary * 0.5;
                    pt = 200;
                    Total = da + hra + pf + tax + pt;
                    if (nlt >= 15 && nlt < 20)
                    {
                        Total -= 1000;

                    }
                    else if (nlt >= 20)
                    {
                        Total = 0;
                    }
                    Label20.Text = Total.ToString();
                    Label10.Text = da.ToString();
                    Label12.Text = hra.ToString();
                    Label14.Text = pf.ToString();
                    Label16.Text = tax.ToString();
                    Label18.Text = salary.ToString();
                }
                else if (salary > 10000)
                {


                    da = salary * 0.2;
                    hra = salary * 0.1;
                    pf = salary * 0.12;
                    tax = salary * 0.5;
                    Total = da + hra + pf + tax;
                    if (nlt >= 15 && nlt < 20)
                    {
                        Total -= 1000;

                    }
                    else if (nlt > 20)
                    {
                        Total = 0;
                    }
                    Label20.Text = Total.ToString();
                    Label10.Text = da.ToString();
                    Label12.Text = hra.ToString();
                    Label14.Text = pf.ToString();
                    Label16.Text = tax.ToString();
                    Label18.Text = salary.ToString();
                }
                SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                con1.Open();
                SqlCommand cmd = con1.CreateCommand();
                cmd.CommandText = "insert into payslip values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + DropDownList1.Text + "'," +
                    "'" + TextBox4.Text + "','" + Label10.Text + "','" + Label12.Text + "','" + Label14.Text + "','" + Label20.Text + "')";

                cmd.ExecuteNonQuery();
                con1.Close();

            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //Code for saving the records 
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select employeeid from attendence where employeeid='" + TextBox1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    Response.Write("<script>alert('Record already exsists')</script>");
                }
                else
                {
                    SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                    con1.Open();
                    SqlCommand cmd = con1.CreateCommand();
                    cmd.CommandText = "insert into attendence values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','"
                        + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                    cmd.ExecuteNonQuery();
                    con1.Close();
                    Response.Write("<script>alert('Record is Saved')</script>");
                    TextBox3.Enabled = false;
                    TextBox1.Enabled = false;
                    TextBox2.Enabled = false;
                    TextBox5.Enabled = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Please enter all the Records FIRST!!!')</script>");


            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Code for Searching the records
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            if (TextBox1.Text != "")
            {
                SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                string s = "select employeeid from attendence where employeeid='" + TextBox1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con1);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count < 1)
                {
                    Response.Write("<script>alert('Record does not exsists')</script>");
                }
                else
                {
                    TextBox1.Enabled = false;
                    TextBox2.Enabled = false;
                    TextBox3.Enabled = false;
                    TextBox5.Enabled = false;
                    SqlCommand cmd = new SqlCommand("Select * from attendence where employeeid=@employeeid", con);
                    cmd.Parameters.AddWithValue("@employeeid", int.Parse(TextBox1.Text));
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        TextBox2.Text = rd.GetValue(2).ToString();
                        DropDownList1.Text = rd.GetValue(3).ToString();
                        TextBox3.Text = rd.GetValue(4).ToString();
                        TextBox4.Text = rd.GetValue(5).ToString();
                        TextBox5.Text = rd.GetValue(6).ToString();

                    }
                }

            }
            else
            {
                Response.Write("<script>alert('Please enter the Employee ID')</script>");

            }
            con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Code for Updating the Records
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox5.Enabled = false;
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Update attendence set nlt='" + TextBox4.Text + "' ,month='" + DropDownList1.Text + "',nwd='" + TextBox3.Text + "'  " +
                    " where  employeeid='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Records been Updated')</script>");
            }
            else
            {
                Response.Write("<script>alert('Search Records first!!')</script>");

            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //Code for Reset
            TextBox2.Text = "";
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox1.Enabled = true;
            TextBox5.Enabled = true;
            TextBox2.Enabled = true;
            Panel1.Visible = false;
            Button1.Enabled = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Code for view all
            Response.Redirect("attendence1.aspx");
        }
    }
}



