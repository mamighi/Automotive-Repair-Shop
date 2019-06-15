using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class changePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            DataBase db = new DataBase();
            DataManagment.costumer cost = db.searchCostumer(Session["ID"].ToString().TrimEnd());
            if(!TextBox1.Text.Equals(cost.password))
            {
                Label1.Visible = true;
                Label1.Text = "Wrong Password";
                return;
            }
            if(TextBox2.Text.Length<2)
            {
                Label1.Visible = true;
                Label1.Text = "Please insert new password";
                return;
            }
            if (!TextBox2.Text.Equals(TextBox3.Text))
            {
                Label1.Visible = true;
                Label1.Text = "Passwords are not matched";
                return;
            }

            cost.password = TextBox2.Text;
            db.updatePass(cost);
            Session["msg"] = "Your password has been updated successfully";
            Response.Redirect("Success.aspx");
        }
    }
}