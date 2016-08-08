using eshop.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop.Admin
{
    public partial class KategoriEkle1 : System.Web.UI.Page
    {
        SatisEntities1 ent = new SatisEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Admin"] == null)
                {
                    Response.Redirect("../default.aspx");
                }
                else
                {
                    KategoriGetir();

                }
            }
        }

        private void KategoriGetir()
        {
            var cat = (from k in ent.Kategoriler
                       where k.Silindi == false
                       select k).ToList();
            gvKategoriler.DataSource = cat;
            gvKategoriler.DataBind();
        }

        protected void gvKategoriler_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvKategoriler.EditIndex = e.NewEditIndex;
        }

        protected void gvKategoriler_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlEkle.Visible = true;
            btnKaydet.Enabled = false;
            btndegistir.Enabled = true;
            btnsil.Enabled = true;
            txtKategori.Text = HttpUtility.HtmlDecode(gvKategoriler.SelectedRow.Cells[1].Text);
            txtAciklama.Text = HttpUtility.HtmlDecode(gvKategoriler.SelectedRow.Cells[2].Text);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            pnlEkle.Visible = true;
            txtKategori.Focus();
        }

        private void Temizle()
        {
            txtKategori.Text = "";
            txtAciklama.Text = "";

        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (txtKategori.Text.Trim() != "")
            {
                DataModel.Kategoriler ck = new DataModel.Kategoriler();
                ck.KategoriAd = txtKategori.Text;
                ck.Aciklama = txtAciklama.Text;
                ent.Kategoriler.Add(ck);
                ent.SaveChanges();
                pnlEkle.Visible = false;
                KategoriGetir();

            }
        }

        protected void btndegistir_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(gvKategoriler.SelectedValue);
            DataModel.Kategoriler k = new DataModel.Kategoriler();
            k.KategoriAd = txtKategori.Text;
            k.Aciklama = txtAciklama.Text;
            ent.SaveChanges();

        }

        protected void btnsil_Click(object sender, EventArgs e)
        {
            int degisenid = Convert.ToInt32(gvKategoriler.SelectedValue);
            var sil = (from s in ent.Kategoriler
                       where s.id == degisenid
                       select s).FirstOrDefault();
            sil.KategoriAd = txtKategori.Text;
            sil.Aciklama = txtAciklama.Text;
        }
    }
}