using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace ElibraryManagement
{
    public partial class puppyplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string toEmails = Email.Text;
            string sub = Subject.Text;

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("hemantdubeyme@gmail.com","Hemant");
            mail.Subject = sub;
            mail.Body = sub;
            mail.IsBodyHtml = true;

            string[] ToEMailsMultiIds=toEmails.Split(',');
            foreach(string toEmail in ToEMailsMultiIds)
            {
                mail.To.Add(new MailAddress(toEmail));
            }

            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("hemantdubeyhd@gmail.com", "texqzhnswxxrnhfv");
            
            smtp.Send(mail);

            lblMsg.Text = "Email Sent Successfully";

        }
    }
}