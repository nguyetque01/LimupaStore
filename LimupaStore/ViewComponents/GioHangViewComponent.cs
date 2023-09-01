using LimupaStore.Data;
using LimupaStore.Models;
using LimupaStore.Models.ViewModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;

namespace LimupaStore.ViewComponents
{
    public class GioHangViewComponent:ViewComponent
    {        
        private readonly ApplicationDbContext _db;
        public GioHangViewComponent(ApplicationDbContext db)
        {
            _db = db;
        }
       
        public IViewComponentResult Invoke()
        {
            var identity = (ClaimsIdentity)User.Identity;
            var claim = identity.FindFirst(ClaimTypes.NameIdentifier);

            GioHangViewModel giohang = new GioHangViewModel()
            {
                DsGioHang = _db.GioHang
                .Include("SanPham")
                .Where(gh => gh.ApplicationUserId == claim.Value)
                .ToList(),
                HoaDon = new HoaDon()
            };            

            foreach (var item in giohang.DsGioHang)
            {
                item.SanPhamViewModel = ToSanPhamVM(item.SanPham);
                item.ProductPrice = item.Quantity * item.SanPham.Price;
                giohang.HoaDon.Total += item.ProductPrice;
            }

            return View(giohang);
        }

        public SanPhamViewModel ToSanPhamVM(SanPham sanpham)
        {
            SanPhamViewModel spvm = new SanPhamViewModel();
            if (sanpham != null)
            {
                spvm.Id = sanpham.Id;
                spvm.Name = sanpham.Name;
                spvm.Price = sanpham.Price;
                spvm.Description = sanpham.Description;
                spvm.TheLoai = GetTheLoai(sanpham.Id);
                spvm.Image = GetImage(sanpham.Id);
            }
            return spvm;
        }

        public List<TheLoai> GetTheLoai(int id)
        {
            var list = (from theloai in _db.TheLoai
                        join sptl in _db.SanPhamTheLoai on theloai.Id equals sptl.TheLoaiId
                        join sanphamtb in _db.SanPham on sptl.SanPhamId equals sanphamtb.Id
                        where sptl.SanPhamId == id
                        select new TheLoai
                        {
                            Id = theloai.Id,
                            Name = theloai.Name
                        }).ToList();
            return list;
        }

        public List<Image> GetImage(int id)
        {
            var list = (from image in _db.Image
                        join sptl in _db.SanPhamImage on image.Id equals sptl.ImageId
                        join sanphamtb in _db.SanPham on sptl.SanPhamId equals sanphamtb.Id
                        where sptl.SanPhamId == id
                        select new Image
                        {
                            Id = image.Id,
                            Name = image.Name,
                            ImageURL = image.ImageURL
                        }).ToList();
            return list;
        }
    }
}
