using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class PerformedTask : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Session["appId"] != null)
                    loadTable(Int32.Parse(Session["appId"].ToString().TrimEnd()));
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label10.Visible = false;

            DataManagment.costumer cost = new DataManagment.costumer();
            cost = db.searchCostumer(TextBox1.Text);
            if(cost==null)
            {
                Label10.Text = "Costumer not found";
                Label10.Visible = true;
                return;
            }
            DateTime today = DateTime.Today;

            int appId = db.getAppointmentDate(cost.ID,today);
            if(appId==0)
            {
                Label10.Text = "There is no appointment for this costumer today";
                Label10.Visible = true;
                return;
            }
            Label11.Text = appId.ToString();
            Label1.Text = cost.firstName;
            Label2.Text = cost.lastName;
            Label3.Text = cost.gender;
            Label4.Text = cost.contactNumber;
            Label5.Text = cost.age.ToString();
            Label6.Text = cost.email;
            Label7.Text = cost.carModel;
            Label8.Text = cost.plateNumber;
            Label9.Text = cost.address;
            loadTable(appId);

        }
        public void loadTable(int appId)
        {

            List<string> taskList = db.getTaskList(appId);
            for(int i=0; i<taskList.Count;i++)
            {
                TableRow row = new TableRow();
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
                row.HorizontalAlign = HorizontalAlign.Center;
                TableCell check = new TableCell();
                TableCell num = new TableCell();
                TableCell name = new TableCell();
                TableCell des = new TableCell();

                CheckBox cb = new CheckBox();
                check.Controls.Add(cb);

                num.Text = (i + 1).ToString();
                name.Text = taskList[i];

                TextBox tb = new TextBox();
                tb.Width = 310;
                tb.BackColor = row.BackColor;
                des.Controls.Add(tb);
                row.Cells.Add(check);
                row.Cells.Add(num);
                row.Cells.Add(name);
                row.Cells.Add(des);
                Table1.Rows.Add(row);
            }
            Session["appId"] = appId;
               // Session["tb"] = Table1;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
          //  Table m = (Table) Session["tb"];
            Table m = Table1;
            List<DataManagment.task> ta = new List<DataManagment.task>();
            for(int i=1;i<m.Rows.Count;i++)
            {
                DataManagment.task temptask = new DataManagment.task();
                CheckBox cb= new CheckBox();
                cb=(CheckBox) m.Rows[i].Cells[0].Controls[0];
                if (cb.Checked)
                    temptask.status = 1;
                else
                    temptask.status = 0;
                temptask.appID = Int32.Parse(Label11.Text);
                temptask.name = m.Rows[i].Cells[2].Text;

                TextBox tb = new TextBox();
                tb = (TextBox)m.Rows[i].Cells[3].Controls[0];
                temptask.description = tb.Text;
                ta.Add(temptask);
            }
            db.updateTask(ta);

        }
    }
}