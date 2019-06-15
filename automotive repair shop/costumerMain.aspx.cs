using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class costumerMain : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
                Response.Redirect("Index.aspx");
            string email = Session["email"].ToString();
            Label1.Text ="WELCOME "+ Session["name"].ToString().TrimEnd().ToUpper();
            id = Int32.Parse(Session["ID"].ToString().TrimEnd());
            DataManagment.appontment app = db.getupcoming(id);
            getTaskList();
            if (app == null)
            {
                Label2.Text = "There is no upcoming appointment for you";
                Label3.Visible = false;
                Table1.Visible = false;
                return;
            }
            else
            {
                Label2.Text = app.date.Year + "/" + app.date.Month + "/" + app.date.Day;
                Label3.Text = app.time.ToString();
            }
            List<string> tasks = db.getTaskList(app.ID);
            for(int i=0;i<tasks.Count;i++)
            {
                TableRow row = new TableRow();
                row.HorizontalAlign = HorizontalAlign.Center;
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

                TableCell task = new TableCell();
                task.Text = tasks[i];
                row.Cells.Add(task);
                Table1.Rows.Add(row);
            }

        }
        public void getTaskList()
        {
            int i = 0;
            List<DataManagment.appontment> apps = db.getAppsbyID(id);
            foreach(DataManagment.appontment temp in apps)
            {
                if (temp.date > DateTime.Today)
                    continue;
                List<DataManagment.task> tasks = db.getTasks(temp.ID);
                foreach(DataManagment.task tTasks in tasks)
                {
                    
                    i++;
                    TableRow row = new TableRow();
                    row.HorizontalAlign = HorizontalAlign.Center;
                    if (i % 2 == 0)
                    {
                        row.BackColor = System.Drawing.Color.FromName("#D73739");
                        row.ForeColor = System.Drawing.Color.White;
                    }
                    else
                    {
                        row.BackColor = System.Drawing.Color.White;
                        row.ForeColor = System.Drawing.Color.FromName("#D73739");
                    }
                    TableCell date = new TableCell();
                    date.Text = temp.date.Year + "/" + temp.date.Month + "/" + temp.date.Day;
                    TableCell task = new TableCell();
                    task.Text = tTasks.name;
                    TableCell des = new TableCell();
                    des.Text = tTasks.description;
                    string st=string.Empty;
                    if (tTasks.status == 0)
                        st = "NOT DONE";
                    else
                        st = "DONE";
                    TableCell status = new TableCell();
                    status.Text = st;
                    row.Cells.Add(date);
                    row.Cells.Add(task);
                    row.Cells.Add(des);
                    row.Cells.Add(status);
                    Table2.Rows.Add(row);


                }
            }
        }
    }
}