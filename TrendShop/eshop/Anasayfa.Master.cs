using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    public partial class Anasayfa : System.Web.UI.MasterPage
    {
        DataModel.SatisEntities5 ent = new DataModel.SatisEntities5();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var kat = (from k in ent.Kategoriler
                           where k.Silindi == false
                           select k).ToList();
                repKategoriler.DataSource = kat;
                repKategoriler.DataBind();

                if (Session["sepet"] != null)
                {
                    decimal toplamTutar = 0;
                    DataTable dt = (DataTable)Session["sepet"];
                    dlSepetOzet.DataSource = dt;
                    dlSepetOzet.DataBind();

                    foreach (DataRow dr in dt.Rows)
                    {
                        toplamTutar += Convert.ToDecimal(dr["urunTutar"]);
                    }
                    lblToplamTutar.Text = toplamTutar.ToString();
                   

                }
            }
        }
    }
}