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
    
    public partial class AltKategoriler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AltKategoriler()
        {
            this.AltAltKategoriler = new HashSet<AltAltKategoriler>();
        }
    
        public int AltKategoriId { get; set; }
        public string AltKategoriAd { get; set; }
        public int KategoriNo { get; set; }
        public string Aciklama { get; set; }
        public bool Silindi { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AltAltKategoriler> AltAltKategoriler { get; set; }
        public virtual Kategoriler Kategoriler { get; set; }
    }
}
