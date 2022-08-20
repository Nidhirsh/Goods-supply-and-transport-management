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

public partial class Registration : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (userexists())
        {
            Response.Write("<script>alert('User already exists');</script>");
        }
        else
        {
            signup();
        }
    }
    void signup()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insert into NewAccount values('" + FullName.Text + "','" + Email.Text + "','" + Contact.Text + "','" + Username.Text + "','" + Hashing.HashPassword(Password1.Text) + "','" + Category.SelectedItem.Text + "')", con);
            
            cmd.ExecuteNonQuery();
            con.Close();


            SqlConnection con1 = new SqlConnection(strcon);
            if (con1.State == ConnectionState.Closed)
            {
                con1.Open();
            }
            SqlCommand cmd1 = new SqlCommand("select * from NewAccount where USERNAME='"+Username.Text.Trim()+"'", con1);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["username"] = dr.GetValue(3).ToString();
                    Session["category"] = dr.GetValue(5).ToString();
                    if ((string)Session["category"] == "Supplier")
                    {
                        Response.Write("<script> alert('Account created successfully');window.location='Registration.aspx'; </script>");
                    }
                    if ((string)Session["category"] == "Retailer")
                    {
                        Response.Write("<script> alert('Account created successfully');window.location='Login.aspx'; </script>");
                    }

                }
            }

            else
            {
                Response.Write("<script>alert('Invalid credentials')</script>");
            }

           
        }
        catch (Exception e1)
        {
            Response.Write("<script>alert('Unsuccessful')</script>");
        }
    }
    bool userexists()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from NewAccount where USERNAME='" + Username.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
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

    protected void ShowPassword2_CheckedChanged(object sender, EventArgs e)
    {
        if (ShowPassword2.Checked == true)
        {
           Password1.TextMode = TextBoxMode.SingleLine;
        }
        else if (ShowPassword2.Checked == false)
        {
            Password1.TextMode = TextBoxMode.Password;
        }
    }
}