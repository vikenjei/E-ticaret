using eshop.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop.Admin
{
    public partial class Alt_AltKategoriEkle : System.Web.UI.Page
    {
        SatisEntities5 ent = new SatisEntities5();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] == null)
                {
                    Response.Redirect("../default.aspx");
                }
                else
                {
                    KategorileriGetir();
                    AltKategorileriGetirByKategoriNo(Convert.ToInt32(ddlKategoriler.SelectedValue));
                    altaltkategoriesbycatno(Convert.ToInt32(ddlKategoriler.SelectedValue), Convert.ToInt32(ddlaltkategoriler.SelectedValue));
                    //UrunleriGetir();
                }
            }
        }

        private void KategorileriGetir()
        {
            var cat = (from k in ent.Kategoriler
                       where k.Silindi == false
                       select k).ToList();
            ddlKategoriler.DataTextField = "KategoriAd";
            ddlKategoriler.DataValueField = "id";
            ddlKategoriler.DataSource = cat;
            ddlKategoriler.DataBind();
        }



        private void AltKategorileriGetirByKategoriNo(int katno)
        {
            var sub = (from cat in ent.AltKategoriler
                       where cat.Silindi == false && cat.KategoriNo == katno
                       select cat).ToList();
            ddlaltkategoriler.DataTextField = "AltKategoriAd";
            ddlaltkategoriler.DataValueField = "id";
            ddlaltkategoriler.DataSource = sub;
            ddlaltkategoriler.DataBind();
        }

        protected void ddlKategoriler_SelectedIndexChanged(object sender, EventArgs e)
        {
            AltKategorileriGetirByKategoriNo(Convert.ToInt32(ddlKategoriler.SelectedValue));
        }

        protected void lbYeniAltKategori_Click(object sender, EventArgs e)
        {
            pnlEkle.Visible = true;
            btnKaydet.Visible = true;
            btnDegistir.Visible = false;
            btnSil.Visible = false;
            temizle();
        }

        private void temizle()
        {
            txtAltKategoriAdi.Text = "";
            txtAciklama.Text = "";
            txtAltKategoriAdi.Focus();
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            DataModel.AltAltKategoriler alt = new DataModel.AltAltKategoriler();
            alt.AltAltKategoriAdi = txtAltKategoriAdi.Text;
            alt.Aciklama = txtAciklama.Text;
            alt.AltKategoriNo = Convert.ToInt32(ddlaltkategoriler.SelectedValue);
            ent.AltAltKategoriler.Add(alt);
            try
            {
                ent.SaveChanges();
                pnlEkle.Visible = false;
                altaltkategoriesbycatno(Convert.ToInt32(ddlKategoriler.SelectedValue), Convert.ToInt32(ddlaltkategoriler.SelectedValue));
            }
            catch (Exception ex)
            {

                string hata = ex.Message;
            }

        }

        protected void btnDegistir_Click(object sender, EventArgs e)
        {
            int degisenid = Convert.ToInt32(gvAltKategoriler.SelectedValue);
            var degisen = (from alt in ent.AltKategoriler
                           where alt.AltKategoriId == degisenid
                           select alt).FirstOrDefault();
            degisen.AltKategoriAd = txtAltKategoriAdi.Text;
            degisen.Aciklama = txtAciklama.Text;
            try
            {
                ent.SaveChanges();
                pnlEkle.Visible = false;
                AltKategorileriGetirByKategoriNo(Convert.ToInt32(ddlKategoriler.SelectedValue));
            }
            catch (Exception ex)
            {

                string hata = ex.Message;
            }


        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            int degisenid = Convert.ToInt32(gvAltKategoriler.SelectedValue);
            var silinen = (from s in ent.AltKategoriler
                           where s.AltKategoriId == degisenid
                           select s).FirstOrDefault();
            silinen.Silindi = true;
            try
            {
                ent.SaveChanges();
                pnlEkle.Visible = false;
                AltKategorileriGetirByKategoriNo(Convert.ToInt32(ddlKategoriler.SelectedValue));
            }
            catch (Exception ex)
            {

                string hata = ex.Message;
            }
        }

        protected void gvAltKategoriler_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlEkle.Visible = true;
            btnKaydet.Visible = false;
            btnDegistir.Visible = true;
            btnSil.Visible = true;
            txtAltKategoriAdi.Text = HttpUtility.HtmlDecode(gvAltKategoriler.SelectedRow.Cells[1].Text);
            txtAciklama.Text = HttpUtility.HtmlDecode(gvAltKategoriler.SelectedRow.Cells[2].Text);
            txtAltKategoriAdi.Focus();


        }

        protected void ddlaltkategoriler_SelectedIndexChanged(object sender, EventArgs e)
        {
            altaltkategoriesbycatno(Convert.ToInt32(ddlKategoriler.SelectedValue), Convert.ToInt32(ddlaltkategoriler.SelectedValue));
        }

        private void altaltkategoriesbycatno(int kno, int altkno)
        {
            var subcat = (from c in ent.AltAltKategoriler
                          join ak in ent.AltKategoriler on c.AltKategoriNo equals ak.AltKategoriId
                          where c.Silindi == false && c.AltKategoriNo == altkno && ak.KategoriNo == kno
                          select c).ToList();
            ddlaltaltkategoriler.DataTextField = "AltAltKategoriAdi";
            ddlaltaltkategoriler.DataValueField = "id";
            ddlaltaltkategoriler.DataSource = subcat;
            ddlaltaltkategoriler.DataBind();
            gvAltKategoriler.DataSource = subcat;
            gvAltKategoriler.DataBind();


        }

        protected void ddlaltaltkategoriler_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnKaydet.Enabled = true;
            btnDegistir.Enabled = true;
            btnSil.Enabled = true;
            altaltkategoriesbycatno(Convert.ToInt32(ddlKategoriler.SelectedValue), Convert.ToInt32(ddlaltkategoriler.SelectedValue));
        
        }


        private void UrunleriGetir(int kno, int altkno, int altaltkno)
        {

            kno = Convert.ToInt32(ddlKategoriler.SelectedValue);
            altkno = Convert.ToInt32(ddlaltkategoriler.SelectedValue);
            altaltkno = Convert.ToInt32(ddlaltaltkategoriler.SelectedValue);

            var urunler = (from u in ent.Urunler
                           where u.UrunKategoriNo == kno && u.UrunAltKategoriNo == altkno && u.UrunAltAltKategoriNo == altaltkno
                           select u).ToList();
            gvAltKategoriler.DataSource = urunler;
            gvAltKategoriler.DataBind();
        }
    }
}