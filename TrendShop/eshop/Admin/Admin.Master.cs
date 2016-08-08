using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Admin"] == null)
                {
                    paneladmin.Visible = false;

                }
                else
                {
                    //Response.Redirect("../default.aspx");
                    paneladmin.Visible = true;
                }
            }
        }
    }
}