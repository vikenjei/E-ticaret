using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    public partial class UyeOl : System.Web.UI.Page
    {
        DataModel.SatisEntities5 ent = new DataModel.SatisEntities5();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                txtEmail.Focus();

            }
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {

            if (txtEmail.Text.Trim() != "" && txtSifre.Text.Trim() != "")
            {
                DataModel.Uyeler u = new DataModel.Uyeler();
                u.Ad = txtAd.Text.Trim();
                u.Soyad = txtSoyad.Text.Trim();
                u.Email = txtEmail.Text.Trim();
                u.Sifre = txtSifre.Text.Trim();
                u.Adres = txtAdres.Text.Trim();
                u.Telefon = txtTelefon.Text.Trim();
                u.Il = txtIl.Text.Trim();
                u.Ilce = txtIlce.Text.Trim();
                u.KullaniciAdi = txtKullaniciAdi.Text.Trim();
                u.Sifre = txtSifre.Text.Trim();
                u.TCKimlikNo = txtkno.Text.Trim();



                try
                {
                    ent.Uyeler.Add(u);
                    ent.SaveChanges();
                    YeniKulTemizle();
                    Response.Redirect("default.aspx");
                }
                catch (Exception ex)
                {

                    string hata = ex.Message;
                }
            }
            else
            {
                lblhatauye.Text = ("Lütfen zorunlu alanları doldurun!");
            }
        }

        private void YeniKulTemizle()
        {
            txtAd.Text = "";
            txtEmail.Text = "";
            txtSifre.Text = "";
            txtSoyad.Text = "";
            txtAdres.Text = "";
            txtIl.Text = "";
            txtIlce.Text = "";
            txtkno.Text = "";
            txtKullaniciAdi.Text = "";
            txtPostaKodu.Text = "";
            txtTelefon.Text = "";
        }
        private DataModel.Uyeler EmailKontrol(string email)
        {
            var User = (from k in ent.Uyeler
                        where k.Email == email && k.Silindi == false
                        select k).FirstOrDefault();

            //if (User != null) return true;
            //return false;
            return User;
        }
    }
}