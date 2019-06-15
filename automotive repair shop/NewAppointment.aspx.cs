using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class NewAppointment : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        int costId;
        DateTime appDate;
        List<string> tasks=new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                if (Session["ta"] != null)
                    tasks = (List<string>)Session["ta"];
            }
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            Label8.Visible = false;
            for (int i = 0; i < tasks.Count; i++)
            {
                TableRow row = new TableRow();
                if (i % 2 != 0)
                {
                    row.BackColor = System.Drawing.Color.FromName("#D73739");
                    row.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    row.BackColor = System.Drawing.Color.White;
                    row.ForeColor = System.Drawing.Color.FromName("#D73739");
                }
                TableCell num = new TableCell();
                TableCell ta = new TableCell();
                num.HorizontalAlign = HorizontalAlign.Center;

                num.Text = (i + 1).ToString();

                ta.Text = tasks[i];
                row.Cells.Add(num);
                row.Cells.Add(ta);
                Table1.Rows.Add(row);
            }
            if (TextBox10.Text.Length < 1)
            {
                Label8.Text = "Please insert data";
                Label8.Visible=true;
                return;
            }
            DataManagment.costumer cost = db.searchCostumer(TextBox10.Text);
            if(cost==null)
            {

                Label8.Text = "Costumer not found";
                Label8.Visible = true;
                return;
            }
            Label3.Text = cost.ID.ToString();
            costId = cost.ID;

            Label4.Text = cost.email;
            Label5.Text = cost.firstName + " " + cost.lastName;
            Label6.Text = cost.carModel;
            Label7.Text = cost.plateNumber;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
            for (int i = 0; i < tasks.Count; i++)
            {
                TableRow row = new TableRow();
                if (i % 2 != 0)
                {
                    row.BackColor = System.Drawing.Color.FromName("#D73739");
                    row.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    row.BackColor = System.Drawing.Color.White;
                    row.ForeColor = System.Drawing.Color.FromName("#D73739");
                }
                TableCell num = new TableCell();
                TableCell ta = new TableCell();
                num.HorizontalAlign = HorizontalAlign.Center;

                num.Text = (i + 1).ToString();

                ta.Text = tasks[i];
                row.Cells.Add(num);
                row.Cells.Add(ta);
                Table1.Rows.Add(row);
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < tasks.Count; i++)
            {
                TableRow row = new TableRow();
                if (i % 2 != 0)
                {
                    row.BackColor = System.Drawing.Color.FromName("#D73739");
                    row.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    row.BackColor = System.Drawing.Color.White;
                    row.ForeColor = System.Drawing.Color.FromName("#D73739");
                }
                TableCell num = new TableCell();
                TableCell ta = new TableCell();
                num.HorizontalAlign = HorizontalAlign.Center;

                num.Text = (i + 1).ToString();

                ta.Text = tasks[i];
                row.Cells.Add(num);
                row.Cells.Add(ta);
                Table1.Rows.Add(row);
            }
            appDate = Calendar1.SelectedDate;
            TextBox11.Text = appDate.Year + "/" + appDate.Month + "/" + appDate.Day;

            Calendar1.Visible = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label9.Visible = false;
            if (Session["ta"] != null)
                tasks = (List<string>)Session["ta"];
            string task = TextBox12.Text;
            if(TextBox12.Text.Length<1)
            {
                Label9.Text = "Please insert task";
                Label9.Visible = true;
                return;
            }
            tasks.Add(task);
            for (int i = 0; i < tasks.Count; i++)
            {
                TableRow row = new TableRow();
                if (i % 2 != 0)
                {
                    row.BackColor = System.Drawing.Color.FromName("#D73739");
                    row.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    row.BackColor = System.Drawing.Color.White;
                    row.ForeColor = System.Drawing.Color.FromName("#D73739");
                }
                TableCell num = new TableCell();
                TableCell ta = new TableCell();
                num.HorizontalAlign = HorizontalAlign.Center;
                num.Text = (i + 1).ToString();

                ta.Text = tasks[i];
                row.Cells.Add(num);
                row.Cells.Add(ta);
                Table1.Rows.Add(row);
            }
            Session["ta"] = tasks;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label10.Visible=false;
            if(Label3.Text.Length<1)
            {
                Label10.Visible = true;
                Label10.Text = "Please choose the costumer";
                return;
            }
            if (TextBox11.Text.Length<2)
            {
                Label10.Visible = true;
                Label10.Text = "Please choose the date";
                return;
            }
            DataManagment.appontment app = new DataManagment.appontment();
            app.costumerID = Int32.Parse(Label3.Text);
            app.date = Calendar1.SelectedDate;
            TimeSpan time = new TimeSpan(Int32.Parse(DropDownList1.SelectedItem.ToString()), Int32.Parse(DropDownList2.SelectedItem.ToString()),0);
            app.time = time;
            DataBase db = new DataBase();
            db.newAppointment(app, tasks);
            sendEmail();
            Session["msg"] = "New appointment has been created successfully";
            Response.Redirect("Success.aspx");
        }
        public void sendEmail()
        {
            string costemail = Label4.Text;
            string name = Label5.Text;
            SmtpClient client = new SmtpClient();
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("automotive.repair.shop2016@gmail.com", "finalfyp");
            string Subject="New Appointment";
            string Body="Dear "+name+"\nNew appoinment has been made for you please login to your account to see the details\nRegards,Atomotive Repair Shop";
            MailMessage mm = new MailMessage("automotive.repair.shop2016@gmail.com", costemail, Subject, Body);
            mm.BodyEncoding = UTF8Encoding.UTF8;
            mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            try
            {
                client.Send(mm);
            }
            catch (Exception ex) { }
        }

    }
}