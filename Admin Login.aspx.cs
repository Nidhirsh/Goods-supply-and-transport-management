using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Admin_Login : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from AdminLogin where ADMIN_USERNAME='" + Username.Text.Trim() + "' and ADMIN_PASSWORD='" + Hashing.HashPassword(LoginPassword.Text.Trim()) + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Response.Write("<script> alert('Admin Logged in successfully');window.location='Admin Panel.aspx'; </script>");
                Session["admin"] = dr.GetValue(0).ToString();
                
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid credentials')</script>");
        }
    }
    
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }


    protected void ShowPassword_CheckedChanged(object sender, EventArgs e)
    {
        if (ShowPassword.Checked == true)
        {
            LoginPassword.TextMode = TextBoxMode.SingleLine;
        }
        else if (ShowPassword.Checked == false)
        {
            LoginPassword.TextMode = TextBoxMode.Password;
        }
    }
}

 