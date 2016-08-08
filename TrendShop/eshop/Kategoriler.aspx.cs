using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        DataModel.SatisEntities5 ent = new DataModel.SatisEntities5();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                KategorileriGetir();
                UrunleriGetir();

                int kno = Convert.ToInt32(Request.QueryString["kno"]);
                int altkno = Convert.ToInt32(Request.QueryString["akno"]);
                int altaltkno = Convert.ToInt32(Request.QueryString["aakno"]);
                int urunid = Convert.ToInt32(Request.QueryString["uid"]);

                var urun = (from u in ent.Urunler
                            join k in ent.Kategoriler on u.UrunKategoriNo equals k.KategoriId
                            join ak in ent.AltKategoriler on u.UrunAltKategoriNo equals ak.AltKategoriId
                            join aak in ent.AltAltKategoriler on u.UrunAltAltKategoriNo equals aak.AltAltKategoriId
                            where u.Silindi == false && u.UrunId == urunid
                            select new { u.UrunKategoriNo, k.KategoriAd, ak.AltKategoriAd, aak.AltAltKategoriAdi, u.UrunAltKategoriNo, u.UrunAltAltKategoriNo }).ToList();
                if (urun.Count != 0)
                {
                    repeaterMenu.DataSource = urun;
                    repeaterMenu.DataBind();
                }

                
            }


        }


        private void UrunleriGetir()
        {
            int kno = Convert.ToInt32(Request.QueryString["kno"]);
            int altkno = Convert.ToInt32(Request.QueryString["akno"]);
            int altaltkno = Convert.ToInt32(Request.QueryString["aakno"]);
            if (kno == 0 && altkno == 0 && altaltkno == 0)
            {
                var urun = (from u in ent.Urunler
                            where u.Silindi == false
                            select u).ToList();
                Repeater1.DataSource = urun;
                Repeater1.DataBind();

                var aakategori = (from aak in ent.AltAltKategoriler
                                  where aak.Silindi == false
                                  select aak).Distinct().ToList();
                Repeater2.DataSource = aakategori;
                Repeater2.DataBind();
            }
            else {
                if (kno == 0)
                {
                    var urun = (from u in ent.Urunler
                                where u.Silindi == false && u.UrunAltKategoriNo == altkno && u.UrunAltAltKategoriNo == altaltkno
                                select u).ToList();
                    Repeater1.DataSource = urun;
                    Repeater1.DataBind();

                    var aakategori = (from aak in ent.AltAltKategoriler
                                      where aak.Silindi == false && aak.AltKategoriNo == altkno
                                      select aak).ToList();
                    Repeater2.DataSource = aakategori;
                    Repeater2.DataBind();
                }
                else
                {
                    if (altkno == 0)
                    {
                        var Uruns = (from urun in ent.Urunler
                                     where urun.Silindi == false && urun.UrunKategoriNo == kno
                                     select urun).ToList();
                        Repeater1.DataSource = Uruns;
                        Repeater1.DataBind();

                        var aakAd = (from aak in ent.AltAltKategoriler
                                     join ak in ent.AltKategoriler on aak.AltKategoriNo equals ak.AltKategoriId
                                     where aak.Silindi == false && ak.KategoriNo == kno
                                     select aak).ToList();
                        Repeater2.DataSource = aakAd;
                        Repeater2.DataBind();
                    }
                    else
                    {
                        var Uruns = (from urun in ent.Urunler
                                     where urun.Silindi == false && urun.UrunKategoriNo == kno && urun.UrunAltKategoriNo == altkno
                                     select urun).ToList();
                        Repeater1.DataSource = Uruns;
                        Repeater1.DataBind();

                        var aakAd = (from aak in ent.AltAltKategoriler
                                     where aak.Silindi == false && aak.AltKategoriNo == altkno
                                     select aak).ToList();
                        Repeater2.DataSource = aakAd;
                        Repeater2.DataBind();
                    }
                }
            }
        }
        public void UrunleriGetirByArtanFiyataGore()

        {
            int kno = Convert.ToInt32(Request.QueryString["kno"]);
            int altkno = Convert.ToInt32(Request.QueryString["akno"]);
            int altaltkno = Convert.ToInt32(Request.QueryString["aakno"]);

            if (kno == 0)
            {
                var urun = (from u in ent.Urunler
                            where u.Silindi == false && u.UrunAltKategoriNo == altkno && u.UrunAltAltKategoriNo == altaltkno
                            orderby u.UrunFiyat ascending
                            select u).ToList();
                Repeater1.DataSource = urun;
                Repeater1.DataBind();

                var aakategori = (from aak in ent.AltAltKategoriler
                                  where aak.Silindi == false && aak.AltKategoriNo == altkno
                                  select aak).ToList();
                Repeater2.DataSource = aakategori;
                Repeater2.DataBind();
            }
            else
            {
                if (altkno == 0)
                {
                    var Uruns = (from urun in ent.Urunler
                                 where urun.Silindi == false && urun.UrunKategoriNo == kno

                                 select urun).ToList();
                    Repeater1.DataSource = Uruns;
                    Repeater1.DataBind();

                    var aakAd = (from aak in ent.AltAltKategoriler
                                 join ak in ent.AltKategoriler on aak.AltKategoriNo equals ak.AltKategoriId
                                 where aak.Silindi == false && ak.KategoriNo == kno
                                 select aak).ToList();
                    Repeater2.DataSource = aakAd;
                    Repeater2.DataBind();
                }
                else
                {
                    var Uruns = (from urun in ent.Urunler
                                 where urun.Silindi == false && urun.UrunKategoriNo == kno && urun.UrunAltKategoriNo == altkno
                                 orderby urun.UrunFiyat ascending
                                 select urun).ToList();
                    Repeater1.DataSource = Uruns;
                    Repeater1.DataBind();

                    var aakAd = (from aak in ent.AltAltKategoriler
                                 where aak.Silindi == false && aak.AltKategoriNo == altkno
                                 select aak).ToList();
                    Repeater2.DataSource = aakAd;
                    Repeater2.DataBind();
                }
            }
        }

        public void UrunleriGetirByAzalanFiyataGore()
        {
            int kno = Convert.ToInt32(Request.QueryString["kno"]);
            int altkno = Convert.ToInt32(Request.QueryString["akno"]);
            int altaltkno = Convert.ToInt32(Request.QueryString["aakno"]);

            if (kno == 0)
            {
                var urun = (from u in ent.Urunler
                            where u.Silindi == false && u.UrunAltKategoriNo == altkno && u.UrunAltAltKategoriNo == altaltkno
                            orderby u.UrunFiyat descending
                            select u).ToList();
                Repeater1.DataSource = urun;
                Repeater1.DataBind();

                var aakategori = (from aak in ent.AltAltKategoriler
                                  where aak.Silindi == false && aak.AltKategoriNo == altkno
                                  select aak).ToList();
                Repeater2.DataSource = aakategori;
                Repeater2.DataBind();
            }
            else
            {
                if (altkno == 0)
                {
                    var Uruns = (from urun in ent.Urunler
                                 where urun.Silindi == false && urun.UrunKategoriNo == kno
                                 orderby urun.UrunFiyat descending
                                 select urun).ToList();
                    Repeater1.DataSource = Uruns;
                    Repeater1.DataBind();

                    var aakAd = (from aak in ent.AltAltKategoriler
                                 join ak in ent.AltKategoriler on aak.AltKategoriNo equals ak.AltKategoriId
                                 where aak.Silindi == false && ak.KategoriNo == kno
                                 select aak).ToList();
                    Repeater2.DataSource = aakAd;
                    Repeater2.DataBind();
                }
                else
                {
                    var Uruns = (from urun in ent.Urunler
                                 where urun.Silindi == false && urun.UrunKategoriNo == kno && urun.UrunAltKategoriNo == altkno
                                 orderby urun.UrunFiyat descending
                                 select urun).ToList();
                    Repeater1.DataSource = Uruns;
                    Repeater1.DataBind();

                    var aakAd = (from aak in ent.AltAltKategoriler
                                 where aak.Silindi == false && aak.AltKategoriNo == altkno
                                 select aak).ToList();
                    Repeater2.DataSource = aakAd;
                    Repeater2.DataBind();
                }
            }
        }

        private void KategorileriGetir()
        {
            var kat = (from k in ent.Kategoriler
                       where k.Silindi == false
                       select k).ToList();
            repKat.DataSource = kat;
            repKat.DataBind();

        }



        protected void repKat_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            if ((e.Item.ItemType == ListItemType.Item) ||
                (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                string Id = (e.Item.FindControl("lblId") as Label).Text;
                Repeater rp = e.Item.FindControl("repAltKat") as Repeater;
                rp.DataSource = AltKatGetir(Convert.ToInt32(Id));
                rp.DataBind();
            }
        }


        private object AltKatGetir(int id)
        {
            var altkat = (from ak in ent.AltKategoriler
                          where ak.Silindi == false && ak.KategoriNo == id
                          select ak).ToList();
            return altkat;
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void ddlSiralama_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlSiralama.SelectedValue == "1")
            {
                UrunleriGetirByArtanFiyataGore();
            }
            else if (ddlSiralama.SelectedValue == "2")
            {
                UrunleriGetirByAzalanFiyataGore();
            }
        }
    }
}

