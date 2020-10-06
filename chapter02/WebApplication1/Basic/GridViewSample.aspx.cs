using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Basic
{
    public partial class GridViewSample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            var employeeId = GridView1.SelectedValue;
            Response.Redirect(string.Format(
                "~/Basic/FormViewSample.aspx?EmployeeId={0}", employeeId));
        }
        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Custom")
            {
                int rowNumber = int.Parse(e.CommandArgument.ToString());
                GridView1.Rows[rowNumber].Cells[2].BackColor = System.Drawing.Color.Red;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}