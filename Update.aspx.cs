using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Update : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="Edit")
        {
            Response.Redirect("UpdateProducts.aspx");
        }

    }

    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("Supplier.aspx");
    }
}
