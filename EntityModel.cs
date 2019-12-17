namespace Entity
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EntityModel : DbContext
    {
        public EntityModel()
            : base("name=EntityModel")
        {
        }

        public virtual DbSet<citys> citys { get; set; }
        public virtual DbSet<provinces> provinces { get; set; }
        public virtual DbSet<regions> regions { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<citys>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<citys>()
                .Property(e => e.Unique)
                .IsUnicode(false);

            modelBuilder.Entity<provinces>()
                .Property(e => e.Unique)
                .IsUnicode(false);

            modelBuilder.Entity<provinces>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<regions>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<regions>()
                .Property(e => e.Unique)
                .IsUnicode(false);
        }
    }
}
