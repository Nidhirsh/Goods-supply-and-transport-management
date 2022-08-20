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

public partial class UpdateProducts : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
           
            SqlCommand cmd = new SqlCommand("select * from Products where PRODUCT_ID='" +up_product_id.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    upbrand.Text=dr.GetValue(2).ToString();
                    upitem.Text = dr.GetValue(3).ToString();
                    upquantity.Text = dr.GetValue(4).ToString();
                    upntweight.Text = dr.GetValue(5).ToString();
                    up_price.Text = dr.GetValue(6).ToString();


                }
            }

           
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
        }



    protected void Update_Click(object sender, EventArgs e)
    {
        try
        {
            string filename1 = Path.GetFileName(up_upload.PostedFile.FileName);

            up_upload.SaveAs(Server.MapPath("Products_images/" + filename1));
            String filepath1 = "~/Products_images/" + filename1;
            SqlConnection con1 = new SqlConnection(strcon);
            if (con1.State == ConnectionState.Closed)
            {
                con1.Open();
            }
            SqlCommand cmd = new SqlCommand("update Products set  BRAND='" + upbrand.Text + "',ITEM='" + upitem.Text + "',QUANTITY='" + upquantity.Text + "',NETWEIGHT='" + upntweight.Text + "',PRICE='" + up_price.Text + "',IMAGE='"+filepath1+"' where PRODUCT_ID='" + up_product_id.Text+ "'",con1);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Updated successfully');</script>");
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('"+ex.Message+"');</script>");
        }
    }

    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update.aspx");
    }
}
