using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eshop.DataModel;
using System.Data;

namespace eshop
{
    public partial class UrunDetayWebForm : System.Web.UI.Page
    {
        DataModel.SatisEntities5 ent = new DataModel.SatisEntities5();
        cSepet spt = new cSepet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //renkgetir();
                var kat = (from k in ent.Kategoriler
                           where k.Silindi == false
                           select k).ToList();
                repKategoriler.DataSource = kat;
                repKategoriler.DataBind();

                int kno = Convert.ToInt32(Request.QueryString["kno"]);
                int altkno = Convert.ToInt32(Request.QueryString["akno"]);
                int altaltkno = Convert.ToInt32(Request.QueryString["aakno"]);
                int urunid = Convert.ToInt32(Request.QueryString["uid"]);
                string urunkodu = Request.QueryString["ukodu"];

                var urun = (from u in ent.Urunler
                            join k in ent.Kategoriler on u.UrunKategoriNo equals k.KategoriId
                            join ak in ent.AltKategoriler on u.UrunAltKategoriNo equals ak.AltKategoriId
                            join aak in ent.AltAltKategoriler on u.UrunAltAltKategoriNo equals aak.AltAltKategoriId
                            where u.Silindi == false && u.UrunId == urunid
                            select new { u.UrunKodu, u.UrunId, u.UrunFiyat, u.UrunAciklama, u.UrunAd, u.UrunResim1, u.UrunResim2, u.UrunKategoriNo, k.KategoriAd, ak.AltKategoriAd, aak.AltAltKategoriAdi, u.UrunAltKategoriNo, u.UrunAltAltKategoriNo }).ToList();

                repeaterMenu.DataSource = urun;
                repeaterMenu.DataBind();
                repeaterResim.DataSource = urun;
                repeaterResim.DataBind();
                repeaterResimDetay.DataSource = urun;
                repeaterResimDetay.DataBind();

                //urun fiyat açıklaması ekleme
                repeaterFiyatDetay.DataSource = urun;
                repeaterFiyatDetay.DataBind();

                //urun açıklama ekleme
                repeaterUrunAciklama.DataSource = urun;
                repeaterUrunAciklama.DataBind();

                //beden ekleme
                var bedenler = (from b in ent.Urunler
                                where b.Silindi == false && b.UrunKategoriNo == kno && b.UrunAltKategoriNo == altkno && b.UrunAltAltKategoriNo == altaltkno && b.UrunKodu == urunkodu
                                select b).ToList();
                ddlBedenler.DataTextField = "UrunBedenAdi";
                ddlBedenler.DataValueField = "UrunId";
                ddlBedenler.DataSource = bedenler;
                ddlBedenler.DataBind();

                //renk ekleme
                ddlRenk.DataTextField = "UrunRenkAdi";
                ddlRenk.DataValueField = "UrunId";
                ddlRenk.DataSource = bedenler;
               ddlRenk.DataBind();

                //benzer ürünleri doldurma
                var benzerUrunler = (from bu in ent.Urunler
                                     where bu.Silindi == false && bu.UrunKategoriNo == kno && bu.UrunAltKategoriNo == altkno && bu.UrunAltAltKategoriNo == altaltkno && bu.UrunKodu != urunkodu && bu.UrunId != urunid

                                     select bu).ToList();
                repeaterIlgiliUrunler.DataSource = benzerUrunler;
                repeaterIlgiliUrunler.DataBind();

                //görünümü tamamlama ürünlerini doldurma
                var gorunumTamamlayan = (from g in ent.Urunler
                                         where g.Silindi == false && g.UrunKategoriNo == kno && (g.UrunAltKategoriNo != altkno || g.UrunAltAltKategoriNo != altaltkno) && g.UrunKodu != urunkodu
                                         select g).ToList();
                repeaterGorunumTamamla.DataSource = gorunumTamamlayan;
                repeaterGorunumTamamla.DataBind();
                var onay = (from o in ent.Urunler
                            where o.Silindi == false && o.UrunId == urunid
                            select o).ToList();
                repeaterSepetButon.DataSource = onay;
                repeaterSepetButon.DataBind();
            }

        }

        protected void repeaterSepetButon_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int kno = Convert.ToInt32(Request.QueryString["kno"]);
            int altkno = Convert.ToInt32(Request.QueryString["akno"]);
            int altaltkno = Convert.ToInt32(Request.QueryString["aakno"]);
            int urunid = Convert.ToInt32(Request.QueryString["uid"]);
            string urunkodu = Request.QueryString["ukodu"];

            var urun = (from u in ent.Urunler
                        where u.Silindi == false && u.UrunId == urunid
                        select u).FirstOrDefault();
            
            if (e.CommandName == "sepeteEkle")
            {
                if (Session["sepet"] == null)
                {
                    Session["sepet"] = spt.YeniSepet();
                }
                DataTable dt = (DataTable)Session["sepet"];
                //id,resim1,urunadi,beden,renk,adet,birim fiyat,toplam tutar,toplam adet
           
                

                bool Varmi = false;

                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToInt32(dr["urunID"]) == urunid)
                    {
                        Varmi = true;
                        dr["urunAdet"] = Convert.ToInt32(dr["urunAdet"]) + Convert.ToInt32(adetDegeri.Value);
                        dr["urunFiyat"] = (from u in ent.Urunler
                                           where u.Silindi == false && u.UrunId == urunid
                                           select u.UrunFiyat).ToList().First().GetTypeCode();

                        dr["urunTutar"] = Convert.ToDecimal(dr["urunTutar"]) + (Convert.ToInt32(adetDegeri.Value) * Convert.ToDecimal(dr["urunFiyat"]));
                        break;
                    }
                }
                if (Varmi == false)
                {
                    DataRow dr;
                    dr = dt.NewRow();
                    dr["urunID"] = urunid;
                    dr["urunResim"] = urun.UrunResim1;
                    dr["urunAd"] = urun.UrunAd; ;
                    dr["urunBeden"] = ddlBedenler.SelectedItem.ToString();

                    dr["urunRenk"] = ddlRenk.SelectedItem.ToString();
                    dr["urunAdet"] = adetDegeri.Value;
                    dr["urunFiyat"] = urun.UrunFiyat;
                    dr["urunTutar"] = Convert.ToInt32(adetDegeri.Value) * urun.UrunFiyat;

                    dr["urunKategoriNo"] = kno;
                    dr["urunAltKategoriNo"] = altkno;
                    dr["urunAltAltKategoriNo"] = altaltkno;
                    dr["urunKodu"] = urunkodu;
                    dt.Rows.Add(dr);
                }
                Session["sepet"] = dt;
                Response.Redirect("Sepet.aspx");
                //Response.Redirect("Default.aspx");
            }







            //var renkler= (from r in ent.Urunler
            //                where r.Silindi == false && r.UrunKategoriNo == kno && r.UrunAltKategoriNo == altkno && r.UrunAltAltKategoriNo == altaltkno && r.UrunKodu == urunkodu && r.UrunBedenNo.ToString()==size.InnerText
            //        select r).ToList();


        }

      

        
    }
}