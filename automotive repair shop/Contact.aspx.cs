using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if(TextBox1.Text.Length<2 || TextBox3.Text.Length<2 ||TextBox3.Text.Length<2)
            {
                Label1.Visible = true;
                Label1.Text = "Please insert all information";
                return;

            }
            SmtpClient client = new SmtpClient();
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("automotive.repair.shop2016@gmail.com", "finalfyp");
            string Subject = TextBox2.Text+" "+TextBox1.Text;
            string Body = TextBox3.Text;
            MailMessage mm = new MailMessage("automotive.repair.shop2016@gmail.com", "automotive.repair.shop2016@gmail.com", Subject, Body);
            mm.BodyEncoding = UTF8Encoding.UTF8;
            mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            try
            {
                client.Send(mm);
                Label1.Visible = false;
                Label1.Text = "You email has been sent successfully";
            }
            catch (Exception ex) { }
        }
    }
}