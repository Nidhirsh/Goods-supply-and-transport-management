using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login2 : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from NewAccount where USERNAME='" + Username.Text.Trim() + "' and PASSWORD='" + Hashing.HashPassword(LoginPassword.Text.Trim()) + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
     
            if (dr.HasRows)
            {
                while (dr.Read())
   
                {
                    String cat = dr.GetValue(5).ToString();
                   
                    if(cat=="Supplier")
                    {
                        Response.Write("<script> alert('Logged in successfully');window.location='Supplier.aspx'; </script>");
                        Session["username"] = dr.GetValue(3).ToString();
                       
                       
                    }
                    else
                    {
                        Response.Write("<script> alert('Logged in successfully');window.location='Purchase.aspx'; </script>");
                        Session["username"] = dr.GetValue(3).ToString();
                    }

                  

                }
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials')</script>");


            }
            con.Close();
            SqlConnection con1 = new SqlConnection(strcon);
            if (con1.State == ConnectionState.Closed)
            {
                con1.Open();
            }
            SqlCommand cmd1 = new SqlCommand("select * from Register where USERNAME='" + Session["username"] + "'", con1);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if(dr1.HasRows)

            {
                while(dr1.Read())
                {
                    Session["agency"] = dr1.GetValue(1).ToString();
                }
            }


        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }

       


    }

    protected void ShowPassword_CheckedChanged(object sender, EventArgs e)
    {
       if(ShowPassword.Checked==true)
        {
            LoginPassword.TextMode = TextBoxMode.SingleLine;
        }
      else if(ShowPassword.Checked==false)
        {
           LoginPassword.TextMode = TextBoxMode.Password;
        }
    }
}


    
   
