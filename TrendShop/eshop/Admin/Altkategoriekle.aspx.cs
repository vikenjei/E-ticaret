using eshop.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop.Admin
{
    public partial class Alt_kategoriekle : System.Web.UI.Page
    {
        SatisEntities1 ent = new SatisEntities1();
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

        private void AltKategorileriGetirByKategoriNo(int kno)
        {
            var subcat = (from c in ent.AltKategoriler
                          where c.Silindi == false && c.KategoriNo == kno
                          select c).ToList();
            gvAltKategoriler.DataSource = subcat;
            gvAltKategoriler.DataBind();
        }

            

        private void temizle()
        {
            txtAltKategoriAdi.Text = "";
            txtAciklama.Text = "";
            txtAltKategoriAdi.Focus();
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            DataModel.AltKategoriler alt = new DataModel.AltKategoriler();
            alt.AltKategoriAd = txtAltKategoriAdi.Text;
            alt.Aciklama = txtAciklama.Text;
            alt.KategoriNo = Convert.ToInt32(ddlKategoriler.SelectedValue);
            ent.AltKategoriler.Add(alt);
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

        //protected void btnDegistir_Click(object sender, EventArgs e)
        //{
        //    int degisenid = Convert.ToInt32(gvAltKategoriler.SelectedValue);
        //    var degisen = (from alt in ent.AltKategoriler
        //                   where alt.id == degisenid
        //                   select alt).FirstOrDefault();
        //    degisen.AltKategoriAd = txtAltKategoriAdi.Text;
        //    degisen.Aciklama = txtAciklama.Text;
        //    try
        //    {
        //        ent.SaveChanges();
        //        pnlEkle.Visible = false;
        //        AltKategorileriGetirByKategoriNo(Convert.ToInt32(ddlKategoriler.SelectedValue));
        //    }
        //    catch (Exception ex)
        //    {
                
        //        string hata = ex.Message;
        //    }


        //}
        
        protected void btnSil_Click(object sender, EventArgs e)
        {
            int degisenid = Convert.ToInt32(gvAltKategoriler.SelectedValue);
            var silinen = (from s in ent.AltKategoriler
                           where s.id == degisenid
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

            

        protected void btndegistir_Click(object sender, EventArgs e)
        {

            int degisenid = Convert.ToInt32(gvAltKategoriler.SelectedValue);
            var degisen = (from alt in ent.AltKategoriler
                           where alt.id == degisenid
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

        protected void btnsil_Click(object sender, EventArgs e)
        {
            int degisenid = Convert.ToInt32(gvAltKategoriler.SelectedValue);
            var silinen = (from s in ent.AltKategoriler
                           where s.id == degisenid
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

        protected void lbYeniAltKategori_Click1(object sender, EventArgs e)
        {
            pnlEkle.Visible = true;
            btnKaydet.Visible = true;
            btndegistir.Visible = false;
            btnsil.Visible = false;
            temizle();
        }

        protected void gvAltKategoriler_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            gvAltKategoriler.EditIndex = e.NewEditIndex;
        }

        protected void gvAltKategoriler_SelectedIndexChanged1(object sender, EventArgs e)
        {
            pnlEkle.Visible = true;
            btnKaydet.Visible = false;
            btndegistir.Visible = true;
            btnsil.Visible = true;
            txtAltKategoriAdi.Text = HttpUtility.HtmlDecode(gvAltKategoriler.SelectedRow.Cells[1].Text);
            txtAciklama.Text = HttpUtility.HtmlDecode(gvAltKategoriler.SelectedRow.Cells[2].Text);
            txtAltKategoriAdi.Focus();
        
        }

        protected void ddlKategoriler_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlEkle.Visible = true;
            btnKaydet.Enabled = false;
            btndegistir.Enabled = true;
            btnsil.Enabled = true;

            AltKategorileriGetirByKategoriNo(Convert.ToInt32(ddlKategoriler.SelectedValue));
            
        }
    }
}