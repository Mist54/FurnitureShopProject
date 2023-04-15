using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace FMS
{
    public partial class test : System.Web.UI.Page
    {
        //PoP-Up Refference 
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ShowPopup(object sender, EventArgs e)
        {
            if (TextBox1.Text == "hello")
            {
                string title = "Greetings";
                string body = "Welcome to ASPSnippets.com";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);
            }
            else
            {
                string title = "Welcome";
                string body = "Sankalp";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);
            }
        }
        public static string EncodePasswordToBase64(string password)
        {
            try
            {
                byte[] encData_byte = new byte[password.Length];
                encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
                string encodedData = Convert.ToBase64String(encData_byte);
                return encodedData;
            }
            catch (Exception ex)
            {
                throw new Exception("Error in base64Encode" + ex.Message);
            }
        }
        public string DecodeFrom64(string encodedData)
        {
            System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
            System.Text.Decoder utf8Decode = encoder.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encodedData);
            int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            string result = new String(decoded_char);
            return result;
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Label1.Text = EncodePasswordToBase64(TextBox1.Text);
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Label2.Text = DecodeFrom64(Label1.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(TextBox2.Text);
            int y = Convert.ToInt32(TextBox3.Text);
            int res = Add(x, y);
            Label3.Text = res.ToString();

        }
        protected static int Add(int a, int b)
        {
            int c = a + b;
            return c;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string user = TextBox4.Text.Trim();
            string res = Auth(user);
            Label5.Text = res;


        }
        protected string Auth(string Username)
        {
            if (Username == "sam")
            {
                Label4.Text = "OK";
            }
            else
            {
                Label4.Text = "NO";
            }
            return Username;
        }
       
    }
}