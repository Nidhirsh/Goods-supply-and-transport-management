using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Registration : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SaveButton_Click(object sender, EventArgs e)
    {
        try
        {

            String selectcheck = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (selectcheck == "")
                    {
                        selectcheck = CheckBoxList1.Items[i].Text;
                    }
                    else
                    {
                        selectcheck += "," + CheckBoxList1.Items[i].Text;
                    }

                }
            }

            String selectradio = "";
            if (EasyShip.Checked)
            {
                selectradio = EasyShip.Text;
            }
            else if (SelfShip.Checked)
            {
                selectradio = SelfShip.Text;
            }

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insert into Register values('" + Session["username"].ToString() + "', '" + StoreName.Text + "','" + selectcheck + "','" + Address.Text + "','" + selectradio + "','"+bank.SelectedItem.Text+"','"+AccNo.Text+"','"+IFSC.Text+"')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Registered successfully');window.location='Login.aspx';</script>");
            Session["agency"] = StoreName.Text;
            con.Close();

            
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Unsuccessful');</script>");
        }


    }
}
