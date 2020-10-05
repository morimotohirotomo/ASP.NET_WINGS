using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Chapter03_03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label1.Text = "値が[" + TextBox1.Text + "]になりました";
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}