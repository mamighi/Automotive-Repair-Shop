using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automotive_repair_shop
{
    public partial class ShopMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewAppointment.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCostumer.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upcoming.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("PerformedTask.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteCostumer.aspx");
        }
    }
}