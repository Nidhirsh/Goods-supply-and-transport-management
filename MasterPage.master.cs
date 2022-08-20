using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Session["username"] != null)
            {
                LinkButton3.Visible = true;
            Linkbutton2.Visible = false;
            LinkButton1.Visible = true;
            LinkButton1.Text =   "Hello" + " " + Session["username"].ToString()+"!";
          
            }
        if (Session["admin"] != null)
        {
            LinkButton1.Visible = true;
            LinkButton1.Text = "Hello Admin!";
            Linkbutton2.Visible = false;
            LinkButton3.Visible = true;
        

        }
    }
        
    

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
        Session.RemoveAll();
        FormsAuthentication.SignOut();
        Response.Write("<script>alert('Logged out successfully');window.location='Home.aspx';</script>");
        LinkButton3.Visible = false;
       
        LinkButton1.Visible = false;
          }


    protected void Linkbutton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateAccount.aspx");
    }

    protected void Linkbutton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }


    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin Login.aspx");
       
       
    }
}
