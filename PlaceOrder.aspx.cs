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

public partial class PlaceOrder : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        if(con.State==ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("select Product_ID,Brand,Item,Quantity,Price,Total_Price from OrderDetails where Username='" + Session["username"] + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            while(dr.Read())
            {
               
                GridView1.DataSource = dr;
                GridView1.DataBind();
                
            }
        }
        con.Close();
        SqlConnection con2 = new SqlConnection(strcon);
        if (con2.State == ConnectionState.Closed)
        {
            con2.Open();
        }
        SqlCommand cmd1 = new SqlCommand("select * from OrderDetails where Username='" + Session["username"] + "' and Order_date='"+DateTime.Now.ToString()+"'", con2);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if(dr1.HasRows)
        {
            while(dr1.Read())
            {
                Label2.Text = dr1.GetValue(2).ToString();
            }
        }

    }

    protected void btndownload_Click(object sender, EventArgs e)
    {

    }
}