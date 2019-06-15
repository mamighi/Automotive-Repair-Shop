using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class Upcoming : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadTable();
        }
        public void loadTable()
        {
            DataBase db = new DataBase();
            DateTime comp;
            if (RadioButton1.Checked)
                comp = DateTime.Today;
            else if (RadioButton2.Checked)
                comp = DateTime.Today.AddDays(7);
            else if (RadioButton3.Checked)
                comp = DateTime.Today.AddDays(31);
            else
                comp = DateTime.Today.AddYears(5);
            DateTime today = DateTime.Today;

            List<DataManagment.appontment> app = new List<DataManagment.appontment>();
            app = db.getApps();
            int i = 0;
            foreach (DataManagment.appontment temp in app)
            {
                i++;
                if(temp.date>=today && temp.date<=comp)
                {
                    DataManagment.costumer cost = new DataManagment.costumer();
                    cost = db.searchCostumer(temp.costumerID.ToString());

                    TableRow row = new TableRow();
                    row.HorizontalAlign = HorizontalAlign.Center;
                    if(i%2==0)
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
                    id.Text = temp.ID.ToString();
                    TableCell date = new TableCell();
                    date.Text = temp.date.Year + "/" + temp.date.Month + "/" + temp.date.Day;
                    TableCell time = new TableCell();
                    time.Text = temp.time.ToString();

                    TableCell cn = new TableCell();
                    cn.Text = cost.firstName + " " + cost.lastName;
                    TableCell ph = new TableCell();
                    ph.Text = cost.contactNumber;

                    TableCell car = new TableCell();
                    car.Text = cost.carModel;
                    TableCell pn = new TableCell();
                    pn.Text = cost.plateNumber;

                    row.Cells.Add(id);
                    row.Cells.Add(date);
                    row.Cells.Add(time);
                    row.Cells.Add(cn);
                    row.Cells.Add(ph);
                    row.Cells.Add(car);
                    row.Cells.Add(pn);
                    Table1.Rows.Add(row);

                }
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}