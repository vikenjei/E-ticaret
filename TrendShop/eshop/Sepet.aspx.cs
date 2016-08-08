using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    public partial class Sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["sepet"];
            SepetiDoldur(dt);


        }

        private void SepetiDoldur(DataTable dt)
        {
            if (Session["sepet"] != null)
            {
                repeaterSepetUrun.DataSource = dt;
                repeaterSepetUrun.DataBind();
                lblToplamTutar.Text = ToplamTutarBul().ToString();
                lblToplamAdet.Text = ToplamAdetBul().ToString();
            }
        }
        private decimal ToplamTutarBul()
        {
            decimal toplamtutar = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                toplamtutar += Convert.ToDecimal(dr["urunTutar"]);
            }
            return toplamtutar;
        }
        private int ToplamAdetBul()
        {
            int adet = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                adet += Convert.ToInt32(dr["urunAdet"]);
            }
            return adet;
        }


        protected void lbOnay_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["sepet"];
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Adres.aspx");
            }
            else
            {
                lblHata.Text = "Sepetinizde ürün bulunmamaktadır.";
            }
        }

        

        protected void repeaterSepetUrun_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int ıd = Convert.ToInt32(e.CommandArgument);
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                if (Convert.ToInt32(dr["sepetID"]) == ıd && Convert.ToInt32(dr["urunAdet"]) > 1)
                {
                    dr["urunAdet"] = (Convert.ToInt32(dr["urunAdet"]) - 1).ToString();
                    Session["sepet"] = dt;
                    SepetiDoldur(dt);
                    return;
                }
            }

            if (HttpContext.Current.Session["sepet"] != null)
            {

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["sepetID"].ToString() == ıd.ToString())
                    {
                        dt.Rows[i].Delete();
                        HttpContext.Current.Session["sepet"] = dt;
                        SepetiDoldur(dt);
                        break;
                    }

                }
            }

        }
    }
}