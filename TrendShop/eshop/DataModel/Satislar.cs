//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace eshop.DataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class Satislar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Satislar()
        {
            this.SatisDetaylari = new HashSet<SatisDetaylari>();
        }
    
        public int id { get; set; }
        public int UyeNo { get; set; }
        public System.DateTime Tarih { get; set; }
        public System.DateTime TeslimTarihi { get; set; }
        public int ToplamMiktar { get; set; }
        public decimal ToplamTutar { get; set; }
        public string OdemeSekli { get; set; }
        public int TaksitSayisi { get; set; }
        public bool Silindi { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SatisDetaylari> SatisDetaylari { get; set; }
        public virtual Uyeler Uyeler { get; set; }
    }
}
