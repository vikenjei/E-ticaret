using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop.Admin
{
    public partial class UrunEkle : System.Web.UI.Page
    {

        DataModel.SatisEntities1 ent = new DataModel.SatisEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] != null)
                {
                    KategorileriGetir();
                    AltKategorileriGetirByKategoriNo(Convert.ToInt32(ddlKategoriler.SelectedValue));

                    altaltkategoriesbycatno(Convert.ToInt32(ddlKategoriler.SelectedValue), Convert.ToInt32(ddlAltKategoriler.SelectedValue));

                    UrunleriGetir(Convert.ToInt32(ddlKategoriler.SelectedValue), Convert.ToInt32(ddlAltKategoriler.SelectedValue),Convert.ToInt32(ddlAltaltkategoriler.SelectedValue));
                }
                else
                {
                    Response.Redirect("admin.aspx");
                }
            }
        }

        private void AltKategorileriGetirByKategoriNo(int katno)
        {
            var sub = (from cat in ent.AltKategoriler
                       where cat.Silindi == false && cat.KategoriNo == katno
                       select cat).ToList();
            ddlAltKategoriler.DataTextField = "altkategoriad";
            ddlAltKategoriler.DataValueField = "id";
            ddlAltKategoriler.DataSource = sub;
            ddlAltKategoriler.DataBind(); 
        }


        private void KategorileriGetir()
        {
            var categories = (from k in ent.Kategoriler
                              where k.Silindi == false
                              select k).ToList();
            ddlKategoriler.DataTextField = "kategoriad";
            ddlKategoriler.DataValueField = "id";
            ddlKategoriler.DataSource = categories;
            ddlKategoriler.DataBind();
        }

        protected void ddlKategoriler_SelectedIndexChanged(object sender, EventArgs e)
        {
            AltKategorileriGetirByKategoriNo(Convert.ToInt32(ddlKategoriler.SelectedValue));
            UrunleriGetir(Convert.ToInt32(ddlKategoriler.SelectedValue), Convert.ToInt32(ddlAltKategoriler.SelectedValue), Convert.ToInt32(ddlAltaltkategoriler.SelectedValue));

        }

        protected void ddlAltKategoriler_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnKaydet.Enabled = false;
            btnDegistir.Enabled = true;
            btnSil.Enabled = true;
            altaltkategoriesbycatno(Convert.ToInt32(ddlKategoriler.SelectedValue), Convert.ToInt32(ddlAltKategoriler.SelectedValue));
            UrunleriGetir(Convert.ToInt32(ddlKategoriler.SelectedValue), Convert.ToInt32(ddlAltKategoriler.SelectedValue), Convert.ToInt32(ddlAltaltkategoriler.SelectedValue));


        }

        private void UrunleriGetir(int kno, int altkno, int altaltkno)
        {
            
            var urunler = (from u in ent.Urunler
                           where u.UrunKategoriNo == kno && u.UrunAltKategoriNo == altkno && u.UrunAltAltKategoriNo == altaltkno
                           select u).ToList();
            gvUrunler.DataSource = urunler;
            gvUrunler.DataBind();
        }
        private void altaltkategoriesbycatno(int kno, int altkno)
        {
            var subcat = (from c in ent.AltAltKategoriler
                          join ak in ent.AltKategoriler on c.AltKategoriNo equals ak.id
                          where c.Silindi == false && c.AltKategoriNo == altkno && ak.KategoriNo == kno
                          select c).ToList();
            ddlAltaltkategoriler.DataTextField = "AltAltKategoriAdi";
            ddlAltaltkategoriler.DataValueField = "id";
            ddlAltaltkategoriler.DataSource = subcat;
            ddlAltaltkategoriler.DataBind(); 

        }


        protected void lbYeniUrun_Click(object sender, EventArgs e)
        {
            pnlEkle.Visible = true;
        }

        protected void gvUrunler_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtUrunKodu.Text = HttpUtility.HtmlDecode(gvUrunler.SelectedRow.Cells[1].Text);
            txtUrunAdi.Text = HttpUtility.HtmlDecode(gvUrunler.SelectedRow.Cells[2].Text);
            txtMiktar.Text = HttpUtility.HtmlDecode(gvUrunler.SelectedRow.Cells[3].Text);
            txtFiyat.Text = HttpUtility.HtmlDecode(gvUrunler.SelectedRow.Cells[4].Text);
            txtUrunBilgisi.Text = HttpUtility.HtmlDecode(gvUrunler.SelectedRow.Cells[5].Text);
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {

        }

        protected void btnDegistir_Click(object sender, EventArgs e)
        {

        }

        protected void btnSil_Click(object sender, EventArgs e)
        {

        }
    }
}