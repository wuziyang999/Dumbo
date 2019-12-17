namespace Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class regions
    {
        public int ID { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(6)]
        public string Unique { get; set; }

        public int? CityId { get; set; }
    }
}
