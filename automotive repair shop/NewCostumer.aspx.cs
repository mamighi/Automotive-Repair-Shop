using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class NewCostumer : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = db.getCostumerId();
            Label1.Text = ID.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!checkInfo())
                return;
            DataManagment.costumer cost = new DataManagment.costumer();
            cost.ID = Int32.Parse(Label1.Text);
            cost.firstName = TextBox10.Text;
            cost.lastName = TextBox11.Text;
            cost.email = TextBox1.Text;
            cost.password = TextBox2.Text;
            cost.gender = DropDownList1.SelectedItem.ToString();
            try
            {
                cost.age = Int32.Parse(TextBox4.Text);
            }
            catch (Exception) { cost.age = 0; }
            cost.contactNumber = TextBox5.Text;
            cost.address = TextBox6.Text;
            cost.carModel = TextBox7.Text;
            cost.carColor = TextBox8.Text;
            cost.plateNumber = TextBox9.Text;
            bool result=db.addCostumer(cost);
            Session["msg"] = "New costumer has been created successfully";
            Response.Redirect("Success.aspx");
        }
        public bool checkInfo()
        {
            if(TextBox1.Text.Length<1 ||TextBox2.Text.Length<1 ||TextBox3.Text.Length<1 ||TextBox4.Text.Length<1 ||TextBox5.Text.Length<1 ||TextBox6.Text.Length<1 ||TextBox7.Text.Length<1 ||TextBox8.Text.Length<1 ||TextBox9.Text.Length<1 ||TextBox10.Text.Length<1 ||TextBox11.Text.Length<1)
            {
                Label2.Text = "Please insert all information";
                Label2.Visible = true;
                return false;
            }
            if(!TextBox2.Text.Equals(TextBox3.Text))
            {
                Label2.Text = "Passwords are not match";
                Label2.Visible = true;
                return false;
            }
            return true;
        }
    }
}