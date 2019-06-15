using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class DeleteCostumer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopMain.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataBase db = new DataBase();
            if (db.deleteCostumer(TextBox1.Text))
            {
                Session["msg"] = "Costumer has been deleted successfully";
                Response.Redirect("Success");

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Wrong email";
            }
        }
    }
}