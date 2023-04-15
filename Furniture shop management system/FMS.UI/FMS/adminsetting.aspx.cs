using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FMS
{
    public partial class adminsetting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox4.Text != "")
            {
                if (TextBox1.Text == "programmer" && TextBox4.Text == "setting")
                {
                    Button3.Visible = true;
                }
            }
        }
    }
}