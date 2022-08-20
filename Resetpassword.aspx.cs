using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Resetpassword : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    String Uid;
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        String GUIDvalue = Request.QueryString["Uid"];
        if(GUIDvalue!=null)
        {
            SqlCommand cmd = new SqlCommand("select * from ForgotPassRequest where ID='" + GUIDvalue + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count !=0)
            {
                 Uid =Convert.ToString(dt.Rows[0][1]);

            }
            else
            {
                Response.Write("<script>alert('Your password reset link is expired or Invalid')</scirpt>");

            }

        }
        else
        {
            Response.Redirect("ForgotPassword.aspx");
        }

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd1 = new SqlCommand("update NewAccount set PASSWORD='" + Hashing.HashPassword(txtreset.Text) + "'  where USERNAME='" + Uid + "'", con);
            cmd1.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("delete from ForgotPassRequest where ID='" + Uid + "'", con);
            cmd2.ExecuteNonQuery();

        Response.Write("<script>alert('Password changed successfully');window.location='Login.aspx';</script>");



    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            txtreset.TextMode = TextBoxMode.SingleLine;
        }
        else if (CheckBox1.Checked == false)
        {
            txtreset.TextMode = TextBoxMode.Password;
        }
    }
}