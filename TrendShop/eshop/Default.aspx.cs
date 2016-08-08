using eshop.DataModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    
    public partial class Default : System.Web.UI.Page
    {
        DataModel.SatisEntities5 ent = new DataModel.SatisEntities5();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
                UrunleriGetir();
            KategorileriGetir();
            SlaytlarıGetir();
           
        }

        private void SlaytlarıGetir()
        {
            var Slayt = (from s in ent.Slaytlar
                         where s.Silindi == false
                         select s).ToList();
            repeaterSlaytResim.DataSource = Slayt;
            repeaterSlaytResim.DataBind();
            repeaterSlaytIcerik.DataSource = Slayt;
            repeaterSlaytIcerik.DataBind();
        }

        private void UrunleriGetir()
        {
            var Uruns = (from urun in ent.Urunler
                         where urun.Silindi == false
                         select urun).ToList();

           Repeater1.DataSource = Uruns;
            Repeater1.DataBind();
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
    }
    }
