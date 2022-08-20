using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;

public partial class Order : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {


        Dproduct_id.Enabled = false;
        DBrand.Enabled = false;
        DItem.Enabled = false;
        DAStock.Enabled = false;
        DNet.Enabled = false;
        DPrice.Enabled = false;
        DTotal.Enabled = false;
        DSupname.Enabled = false;


        Dproduct_id.Text = Request.QueryString["Pid"];
        DBrand.Text = Request.QueryString["Brand"];
        DItem.Text = Request.QueryString["Item"];
        DAStock.Text = Request.QueryString["Quantity"];
        DNet.Text = Request.QueryString["Netwt"];
        DPrice.Text = Request.QueryString["Price"];
        DSupname.Text = Request.QueryString["Supname"];

        if (DQuantity.Text != "")
        {
            if (Convert.ToInt32(DQuantity.Text) > Convert.ToInt32(DAStock.Text))
            {
                Response.Write("<script>alert('Sorry! Stock unavailable');</script>");
                DTotal.Text = "";
            }
            else
            {
                int val1 = Convert.ToInt32(DQuantity.Text);
                int val2 = Convert.ToInt32(DPrice.Text);
                int val3 = val1 * val2;
                DTotal.Text = Convert.ToString(val3);
            }
        }
    }



    

    

    protected void btncart_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(strcon);
        if(con.State==ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("insert into Addcart values('" + Session["username"].ToString() + "','" + Dproduct_id.Text + "','" + DBrand.Text + "','" + DItem.Text + "','" + DPrice.Text + "','" + DTotal.Text + "')", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Added to cart successfully');</script>");



    }



    //protected void btnorder_Click(object sender, EventArgs e)
    //{
    //    try
    //    {

    //        SqlConnection con = new SqlConnection(strcon);
    //        if (con.State == ConnectionState.Closed)
    //        {
    //            con.Open();
    //        }
    //        SqlCommand cmd = new SqlCommand("insert into OrderDetails values('" + Session["username"].ToString() + "','" + Dproduct_id.Text + "','" + DateTime.Now + "','" + Dproduct_id.Text + "','" + DBrand.Text + "','" + DItem.Text + "','" + DQuantity.Text + "','" + DPrice.Text + "','"+DTotal.Text+"')", con);
    //        cmd.ExecuteNonQuery();
    //        Response.Redirect("PlaceOrder.aspx");
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write("<script>alert('" + ex.Message + "');</script>");
    //    }
    //}



    protected void btnshop_Click(object sender, EventArgs e)
    {
        Response.Redirect("Purchase.aspx");
    }

    protected void btnviewcart_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCart.aspx");
    }
}