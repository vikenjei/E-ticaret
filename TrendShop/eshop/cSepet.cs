using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace eshop
{
    public class cSepet
    {
        public DataTable YeniSepet()
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("sepetID");
            dt.Columns["sepetID"].DataType = typeof(int);
            dt.Columns["sepetID"].AutoIncrement = true;
            dt.Columns["sepetID"].AutoIncrementSeed = 1;
            dt.Columns["sepetID"].AutoIncrementStep = 1;

            dt.Columns.Add("urunID");
            dt.Columns["urunID"].DataType = typeof(int);

            dt.Columns.Add("urunResim");
            dt.Columns["urunResim"].DataType = typeof(string);

            dt.Columns.Add("urunAd");
            dt.Columns["urunAd"].DataType = typeof(string);

            dt.Columns.Add("urunRenk");
            dt.Columns["urunRenk"].DataType = typeof(string);

            dt.Columns.Add("urunBeden");
            dt.Columns["urunBeden"].DataType = typeof(string);

            dt.Columns.Add("urunAdet");
            dt.Columns["urunAdet"].DataType = typeof(int);
            dt.Columns["urunAdet"].DefaultValue = 1;

            dt.Columns.Add("urunFiyat");
            dt.Columns["urunFiyat"].DataType = typeof(decimal);
            dt.Columns["urunFiyat"].DefaultValue = 0;

            dt.Columns.Add("urunTutar");
            dt.Columns["urunTutar"].DataType = typeof(decimal);
            dt.Columns["urunTutar"].DefaultValue = 0;

            dt.Columns.Add("urunKategoriNo");
            dt.Columns["urunKategoriNo"].DataType = typeof(int);

            dt.Columns.Add("urunAltKategoriNo");
            dt.Columns["urunAltKategoriNo"].DataType = typeof(int);

            dt.Columns.Add("urunAltAltKategoriNo");
            dt.Columns["urunAltAltKategoriNo"].DataType = typeof(int);

            dt.Columns.Add("urunKodu");
            dt.Columns["urunKodu"].DataType = typeof(string);


            return dt;
        }
    }
}