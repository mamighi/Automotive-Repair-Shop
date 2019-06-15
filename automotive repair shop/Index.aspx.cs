using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible=false;
            string userName = TextBox1.Text;
            string password = TextBox2.Text;
            if (userName.Equals("admin") && password.Equals("admin"))
            {
                Session["ID"] = "admin";
                Response.Redirect("ShopMain.aspx");
            }
            else
            {
                DataBase db = new DataBase();
                DataManagment.costumer cost = new DataManagment.costumer();
                cost = db.auth(userName, password);
                if (cost == null)
                {
                    Label1.Text = "Wrong user name or password";
                    Label1.Visible = true;
                    return;
                }
                Session["email"] = cost.email;
                Session["name"] = cost.firstName + " " + cost.lastName;
                Session["ID"] = cost.ID.ToString();
                Response.Redirect("costumerMain.aspx");
            }
        }
    }
}