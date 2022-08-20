using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class AddProducts : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {

        //try
        //{

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            string filename = Path.GetFileName(upload.PostedFile.FileName);

            upload.SaveAs(Server.MapPath("Products_images/" + filename));
            string filepath = "~/Products_images/" + filename;


            SqlCommand cmd = new SqlCommand("insert into Products values('" + Session["username"].ToString() + "','" + PRODUCT_ID.Text + "','" + Session["agency"].ToString()+"','" + BRAND.Text + "','" + ITEM.Text + "','" + QUANTITY.Text + "','" + NETWT.Text + "','" + PRICE.Text + "','" + filepath + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Inserted successfully');</script>");
    //}


    //    catch (Exception ex)
    //    {
    //        Response.Write("<script>alert('" + ex.Message + "');</script>");
    //    }

    }



    protected void btnreset_Click(object sender, EventArgs e)
    {
        PRODUCT_ID.Text = BRAND.Text=ITEM.Text=QUANTITY.Text=NETWT.Text=PRICE.Text= "";


    }

    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Supplier.aspx");
    }
}



    
    




  






