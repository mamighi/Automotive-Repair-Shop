using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["msg"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["ID"].ToString().TrimEnd().Equals("admin"))
                Response.Redirect("ShopMain.aspx");
            else
                Response.Redirect("costumerMain.aspx");
        }
    }
}