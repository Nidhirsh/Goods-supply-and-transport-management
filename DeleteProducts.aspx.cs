using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.IO;
using System.Data.SqlClient;

public partial class DeleteProducts : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }







    protected void Delete_Click(object sender, EventArgs e)
    {
        lblpid.Visible = true;
        txtpid.Visible = true;
        btndelete.Visible = true;
    }

    protected void Refresh_Click(object sender, EventArgs e)
    {
       
        GridView1.DataBind();
        lblpid.Visible = false;
       txtpid.Visible = false;
        btndelete.Visible = false;
    }

    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("Supplier.aspx");
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        if(product_exist())
        {
            product_delete();

        }
        else
        {
            Response.Write("<script>alert('Product deleted successfully');</script");
        }
    }

    bool product_exist()
    {
        try
        {
            SqlConnection con2 = new SqlConnection(strcon);
            if (con2.State == ConnectionState.Closed)
            {
                con2.Open();
            }
            SqlCommand cmd2 = new SqlCommand("select * from Products where PRODUCT_ID='" + txtpid.Text.Trim() + "';", con2);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch (Exception e1)
        {
            Response.Write("<script>alert('" + e1.Message + "')</script>");
            return false;
        }
    }

    void product_delete()
    {
        String pid = txtpid.Text;
        //try
        //{
            SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where PRODUCT_ID='" + pid + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                con.Close();
                SqlConnection con1 = new SqlConnection(strcon);
                if (con1.State == ConnectionState.Closed)
                {
                    con1.Open();
                }
                SqlCommand cmd1 = new SqlCommand("delete from Products where PRODUCT_ID='" + pid + "'", con1);
                int i = cmd1.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Deleted successfully');</script>");
                   lblpid.Visible = false;
                    txtpid.Visible = false;
                    btndelete.Visible = false;

                }
                else
                {
                    Response.Write("<script>alert('Unsuccessful');</script>");
                }

            }

        }
        //}
        //catch (Exception ex)
        //{
        //    Response.Write("<script>alert('" + ex.Message + "')</script>");
        //}

    }
}