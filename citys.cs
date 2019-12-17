namespace Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class citys
    {
        public int ID { get; set; }

        public int ProvinceId { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(6)]
        public string Unique { get; set; }
    }
}
