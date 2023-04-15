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
    public partial class bill1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            string s1 = "select *  from bill";
            SqlDataAdapter da1 = new SqlDataAdapter(s1, con1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count < 1)
            {
                Response.Redirect("sell2.aspx");

            }
            Label1.Text = DateTime.Now.ToString();
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
            GridView1.FooterRow.Cells[5].Text = "Total Amount=";
            GridView1.FooterRow.Cells[6].Text = dt.Compute("Sum(grand)", "").ToString();


            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select * from bill", con);
            SqlDataReader rd = cmd1.ExecuteReader();
            while (rd.Read())
            {
                Label3.Text = rd.GetValue(0).ToString();
                Label5.Text = rd.GetValue(1).ToString();

            }
            con.Close();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q723TRIH;Initial Catalog=admindata1;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Delete from bill";
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("sell2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }

        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}