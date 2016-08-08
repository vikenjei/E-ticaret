using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    public partial class UrunDetay : System.Web.UI.Page
    {
        DataModel.SatisEntities5 ent = new DataModel.SatisEntities5();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //int kno = Convert.ToInt32(Request.QueryString["kno"]);
                //int altkno = Convert.ToInt32(Request.QueryString["akno"]);
                //int altaltkno = Convert.ToInt32(Request.QueryString["aakno"]);
                //int urunid = Convert.ToInt32(Request.QueryString["uid"]);

                //var urun = (from u in ent.Urunler
                //            join k in ent.Kategoriler on u.UrunKategoriNo equals k.KategoriId
                //            join ak in ent.AltKategoriler on u.UrunAltKategoriNo equals ak.AltKategoriId
                //            join aak in ent.AltAltKategoriler on u.UrunAltAltKategoriNo equals aak.AltAltKategoriId
                //            where u.Silindi == false && u.UrunId==urunid
                //            select new{ u.UrunResim1,u.UrunResim2, u.UrunKategoriNo, k.KategoriAd, ak.AltKategoriAd, aak.AltAltKategoriAdi,u.UrunAltKategoriNo,u.UrunAltAltKategoriNo }).ToList();
                //repeaterMenu.DataSource = urun;
                //repeaterMenu.DataBind();
                //repeaterResim.DataSource = urun;
                //repeaterResim.DataBind();
                //repeaterResimDetay.DataSource = urun;
                //repeaterResimDetay.DataBind();

            }
        }

        //protected void repeaterBedenler_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{

        //    if ((e.Item.ItemType == ListItemType.Item) ||
        //        (e.Item.ItemType == ListItemType.AlternatingItem))
        //    {
        //        string bedenNo = (e.Item.FindControl("lblBedenNo") as Label).Text;
        //        Repeater rp = e.Item.FindControl("repeaterBedenler") as Repeater;
        //        rp.DataSource = BedenleriGetir(Convert.ToInt32(bedenNo));
        //        rp.DataBind();

        //        string renkNo = (e.Item.FindControl("lblRenkNo") as Label).Text;
        //        Repeater rpr = e.Item.FindControl("repeaterRenkler") as Repeater;
        //        rpr.DataSource = RenkleriGetir(Convert.ToInt32(renkNo));
        //        rpr.DataBind();
        //    }
        //}
        //private object BedenleriGetir(int bedenNo)
        //{
        //    var bedenler = (from b in ent.Bedenler
        //                  where b.Silindi == false && b.id==bedenNo
        //                  select b).ToList();
        //    return bedenler;
        //}
        //private object RenkleriGetir(int renkNo)
        //{
        //    var renkler = (from r in ent.Renkler
        //                    where r.id == renkNo
        //                    select r).ToList();
        //    return renkler;
        //}
    }
}
