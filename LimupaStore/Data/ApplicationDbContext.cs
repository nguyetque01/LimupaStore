using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using LimupaStore.Models;
using Microsoft.AspNetCore.Mvc;

namespace LimupaStore.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<ApplicationUser> ApplicationUser { get; set; }
        public DbSet<TheLoai> TheLoai { get; set; }
        public DbSet<SanPham> SanPham { get; set; }
        public DbSet<SanPhamTheLoai> SanPhamTheLoai { get; set; }
        public DbSet<Image> Image { get; set; }
        public DbSet<SanPhamImage> SanPhamImage { get; set; }
        public DbSet<GioHang> GioHang { get; set; }
        public DbSet<HoaDon> HoaDon { get; set; }
        public DbSet<ChiTietHoaDon> ChiTietHoaDon { get; set; }
        public DbSet<NhaCungCap> NhaCungCap { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            builder.Entity<SanPhamTheLoai>().HasKey(i => new { i.SanPhamId, i.TheLoaiId });
            builder.Entity<SanPhamImage>().HasKey(i => new { i.SanPhamId, i.ImageId });
        }        
    }
}