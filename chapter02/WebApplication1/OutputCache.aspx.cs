using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class OutputCache : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = string.Format("時刻:{0}<br/>categoryキー:{1}<br/>keywordキー:{2}", DateTime.Now.ToLongTimeString(), Request.QueryString["category"], Request.QueryString["keyword"]);
        }
    }
}