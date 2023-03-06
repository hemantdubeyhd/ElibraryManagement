using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class puppyplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        protected void sendInvitationButton_Click(object sender, EventArgs e)
        {
            // Get the email addresses of the attendees
            string[] emailAddresses = attendees.Text.Split(',');

            // Create the email message
            MailMessage message = new MailMessage();
            message.From = new MailAddress("youremail@example.com");
            foreach (string emailAddress in emailAddresses)
            {
                message.To.Add(new MailAddress(emailAddress.Trim()));
            }
            message.Subject = "Invitation to " + eventName.Text;
            message.Body = "You are invited to attend " + eventName.Text + " on " + eventDate.Text + " at " + eventTime.Text + " at " + eventLocation.Text + ". Please click the link below to confirm your attendance: " /*+ confirmationLink*/;

            // Send the email message
            SmtpClient client = new SmtpClient();
            client.Send(message);
        }
    }
}