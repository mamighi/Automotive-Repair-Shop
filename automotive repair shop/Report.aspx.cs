using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class Report : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label3.Visible = false;
            DataManagment.costumer cost = new DataManagment.costumer();
            if(cost==null)
            {
                Label3.Visible = true;
                Label3.Text = "Costumer not found";
                return;
            }
            cost = db.searchCostumer(TextBox1.Text);
            Label1.Text = cost.firstName + " " + cost.lastName;
            Label2.Text = cost.contactNumber;
            List<DataManagment.appontment> app = db.getAppsbyID(cost.ID);
            int i = 0;
            foreach(DataManagment.appontment tapp in app)
            {
                List<DataManagment.task> task = db.getTasks(tapp.ID);
                foreach(DataManagment.task ttask in task)
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

                    TableCell id = new TableCell();
                    id.Text = tapp.ID.ToString();
                    TableCell date = new TableCell();
                    date.Text = tapp.date.Year + "/" + tapp.date.Month + "/" + tapp.date.Day;
                    TableCell time = new TableCell();
                    time.Text = tapp.time.ToString();

                    TableCell ta = new TableCell();
                    ta.Text = ttask.name;
                    TableCell des = new TableCell();
                    des.Text = ttask.description;
                    string st=string.Empty;
                    if (ttask.status == 0)
                        st = "Not Done";
                    else
                        st = "Done";
                    TableCell stat = new TableCell();
                    stat.Text = st;
                    row.Cells.Add(id);
                    row.Cells.Add(date);
                    row.Cells.Add(time);
                    row.Cells.Add(ta);
                    row.Cells.Add(des);
                    row.Cells.Add(stat);
                    Table1.Rows.Add(row);
                }
            }
        }
        
    }
}