using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class Profile : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        DataManagment.costumer curUser=new DataManagment.costumer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string email = Session["email"].ToString().TrimEnd();
                curUser = db.searchCostumer(email);
                fillupform(curUser);
            }
        }
        public void fillupform(DataManagment.costumer user)
        {
            Label1.Text = user.ID.ToString();
            TextBox1.Text = user.email;
            TextBox10.Text = user.firstName;
            TextBox11.Text = user.lastName;
            DropDownList1.SelectedItem.Text = user.gender;
            TextBox4.Text = user.age.ToString();
            TextBox5.Text = user.contactNumber;
            TextBox6.Text = user.address;
            TextBox7.Text = user.carModel;
            TextBox8.Text = user.carColor;
            TextBox9.Text = user.plateNumber;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!checkInfo())
                return;
            DataManagment.costumer newInfo = new DataManagment.costumer();
            newInfo.ID = Int32.Parse(Label1.Text);
            newInfo.email = TextBox1.Text;
            newInfo.firstName = TextBox10.Text;
            newInfo.lastName = TextBox11.Text;
            newInfo.password = curUser.password;
            newInfo.gender = DropDownList1.SelectedItem.Text;
            newInfo.age = Int32.Parse(TextBox4.Text);
            newInfo.contactNumber = TextBox5.Text;
            newInfo.address = TextBox6.Text;
            newInfo.carModel = TextBox7.Text;
            newInfo.carColor = TextBox8.Text;
            newInfo.plateNumber = TextBox9.Text;
            db.updateProfile(newInfo);
            Session["msg"] = "Your profile has been updated successfully";
            Response.Redirect("Success.aspx");



        }
        public bool checkInfo()
        {
            if (TextBox1.Text.Length < 1 || TextBox4.Text.Length < 1 || TextBox5.Text.Length < 1 || TextBox6.Text.Length < 1 || TextBox7.Text.Length < 1 || TextBox8.Text.Length < 1 || TextBox9.Text.Length < 1 || TextBox10.Text.Length < 1 || TextBox11.Text.Length < 1)
            {
                Label2.Text = "Please insert all information";
                Label2.Visible = true;
                return false;
            }

            return true;
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("costumerMain.aspx");
        }
    }
}