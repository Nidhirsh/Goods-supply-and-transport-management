using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }


    protected void btnsend_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("select * from NewAccount where EMAIL='" + ResetEmail.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count>0)
        {
            String myGUID = Guid.NewGuid().ToString();
            String Uid = dt.Rows[0][3].ToString();
             SqlCommand cmd1 = new SqlCommand("insert into ForgotPassRequest values('"+myGUID+"','"+Uid+"',getdate())", con);
            cmd1.ExecuteNonQuery();

            //send email
            //try
            //{
                String EmailAddress = dt.Rows[0][2].ToString();
            String EmailBody = "Hi " + Uid + ", <br/><br/> Click the link below to reset your password <br/><br/> http://localhost:49699/Resetpassword.aspx?Uid=" + myGUID;
                MailMessage PassMail = new MailMessage("shipmentgap@gmail.com", ResetEmail.Text);
                PassMail.Body = EmailBody;
                PassMail.IsBodyHtml = true;
                PassMail.Subject = "Reset Password";
                PassMail.Priority = MailPriority.High;

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential()
                {
                    UserName = "shipmentgap@gmail.com",
                    Password = "1000%pro#21"
                };
                smtp.EnableSsl = true;
                smtp.Send(PassMail);
                Response.Write("<script>alert('Check your email to reset your password');</script>");
                ResetEmail.Text = " ";


            //}
            //catch (Exception)
            //{
            //    Response.Write("<script>alert('Message not sent!');</script>");
            //}


        }
        else
        {
            Response.Write("<script>alert('Invalid Email id!');</script>");
        }

    }
}