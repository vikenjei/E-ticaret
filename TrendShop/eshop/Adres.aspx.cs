using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    public partial class Odeme : System.Web.UI.Page
    {
        DataModel.SatisEntities5 ent = new DataModel.SatisEntities5();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                //    //AdresBilgi();

            }

        }
        protected void lbUyegiris_Click(object sender, EventArgs e)
        {
            if (txtemail.Text.Trim() != null)
            {
                string mail = txtemail.Text.Trim();
                string sifre = txtsifre.Text.Trim();
                var KKontrol = (from k in ent.Uyeler
                                where k.Email == mail && k.Sifre == sifre
                                select k).FirstOrDefault();

                if (KKontrol != null)
                {
                    Session["kullanici"] = KKontrol.id;
                    pnluyelik.Visible = false;
                    pnldevam.Visible = true;

                }
                else {
                    lblMesaj.Text = ("Kullanıcı Bulunamadı.Hatalı giriş!");

                }
            }
            else
            {
                lblMesaj.Text = ("Lütfen kullanıcı adı ve şifre giriniz!");
            }
        }

        protected void rbKrediKart_CheckedChanged(object sender, EventArgs e)
        {
            if (rbKrediKart.Checked)
            {
                pnlkredi.Visible = true;

            }

        }

        protected void rbNakit_CheckedChanged(object sender, EventArgs e)
        {
            if (rbNakit.Checked)
            {
                pnlkredi.Visible = false;
            }
            //pnl.Visible = false;
        }
        private decimal ToplamTutarBul()
        {
            decimal ToplamTutar = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                ToplamTutar += Convert.ToDecimal(dr["urunTutar"]);
            }
            return ToplamTutar;
        }
        private int ToplamAdetBul()
        {
            int ToplamAdet = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                ToplamAdet += Convert.ToInt32(dr["urunAdet"]);
            }
            return ToplamAdet;
        }

        protected void lbuye_Click(object sender, EventArgs e)
        {
            Response.Redirect("UyeOl.aspx");
        }

        protected void btnSiparisOnay_Click(object sender, EventArgs e)
        {
            DataModel.Satislar satis = new DataModel.Satislar();
            satis.Tarih = DateTime.Now;
            satis.TeslimTarihi = DateTime.Now.AddDays(5);
            satis.UyeNo = Convert.ToInt32(Session["kullanici"]);
            satis.ToplamTutar = ToplamTutarBul();
            satis.ToplamMiktar = ToplamAdetBul();
            if (rbKrediKart.Checked)
            {

                satis.OdemeSekli ="Kredi Kartı";
            }
           if(rbNakit.Checked)
            {
                satis.OdemeSekli ="Nakit";

            }
            ent.Satislar.Add(satis);
            ent.SaveChanges();
            
            //Yapılan satışa (satisno) ait satiş detayları sepetten kayıt edilecek.
            DataModel.SatisDetaylari detay = new DataModel.SatisDetaylari();
            //detay.satisno = satis.satisno;
            int SonSatisNo = ent.Satislar.Where(s => s.UyeNo == satis.UyeNo).ToList().Last().id;
            //var SonSatis = (from s in ent.Satislar
            //                where s.kullanicino == satis.kullanicino
            //                select s).Last();
            //int SonSatisNo = SonSatis.satisno;

            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow urun in dt.Rows)
            {
                //DataModel.SatisDetaylari detay = new DataModel.SatisDetaylari();
                detay.SatisNo = SonSatisNo;
                detay.id = Convert.ToInt32(urun["urunID"]);
                detay.Adet = Convert.ToInt32(urun["urunAdet"]);
                detay.BirimFiyat = Convert.ToDecimal(urun["urunFiyat"]);
                detay.Tutar = Convert.ToDecimal(urun["urunTutar"]);
                detay.UrunNo= Convert.ToInt32(urun["urunID"]); 
                ent.SatisDetaylari.Add(detay);
                ent.SaveChanges();
            }

            Response.Redirect("Default.aspx");
        } 
    
}
        
    
}