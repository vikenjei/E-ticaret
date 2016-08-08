﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Admin"] != null)
                {
                    paneladmin.Visible = true;

                }
                else
                {
                    Response.Redirect("../default.aspx");
                    paneladmin.Visible = false;
                }
            }
        }
    }
}