using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_Panel : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int Rcount = 0, Scount = 0;
            string cat;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from NewAccount", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Accounts");
            DataTable dt = ds.Tables["Accounts"];

              if(dt.Rows.Count>0)
            {
                for(int i=0;i<dt.Rows.Count;i++)
                {
                    cat = Convert.ToString(dt.Rows[i].ItemArray[5]);
                    if(cat=="Supplier")
                    {
                        Scount++;

                    }
                    else if(cat=="Retailer")
                    {
                        Rcount++;
                    }
                }
            }

            lblretailer.Visible = true;
            lblsupplier.Visible = true;
            lblretailer.Text = Convert.ToString(Rcount);
            lblsupplier.Text = Convert.ToString(Scount);

        }
        catch(Exception)
        {

        }

       

        

    }
}
       



   