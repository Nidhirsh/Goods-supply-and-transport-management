using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Purchase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        GridViewRow gr = GridView1.SelectedRow;
        Response.Redirect("Order.aspx?Pid=" + gr.Cells[0].Text + "&Supname=" + gr.Cells[1].Text+ "&Brand=" + gr.Cells[2].Text + "&Item=" + gr.Cells[3].Text + "&Quantity=" + gr.Cells[4].Text + "&Netwt=" + gr.Cells[5].Text + "&Price=" + gr.Cells[6].Text);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCart.aspx");
    }
}