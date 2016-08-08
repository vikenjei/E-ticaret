using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop.Admin
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        DataModel.SatisEntities5 ent = new DataModel.SatisEntities5();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                txtUser.Focus();
            }
        }
        
        protected void btnGiris_Click(object sender, EventArgs e)
        {

            if (txtUser.Text != null)
            {
                var varmi = (from k in ent.Uyeler
                             where k.Email == txtUser.Text && k.Sifre == txtsifre.Text && k.Admin == true
                             select k).Count();
                if (varmi > 0)
                {
                    Session["admin"] = txtUser.Text;
                }

                Response.Redirect("AdminPanel.aspx");
            }
            else
            {
                lblmesaj.Text = "Hatalı giriş!!!";
                txtsifre.Focus();
            }


        }
    }
}