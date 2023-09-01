using LimupaStore.Data;
using LimupaStore.Data.Migrations;
using LimupaStore.Models;
using LimupaStore.Models.ViewModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;

namespace LimupaStore.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class GioHangController : Controller
    {
        private readonly ApplicationDbContext _db;

        public GioHangController(ApplicationDbContext db)
        {
            _db = db;
        }

        [Authorize]
        public IActionResult Index()
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

        public IActionResult Giam(int giohangId)
        {
            var giohang = _db.GioHang.FirstOrDefault(gh => gh.Id == giohangId);
            giohang.Quantity -= 1;
            if (giohang.Quantity == 0)
            {
                _db.GioHang.Remove(giohang);
            }
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult Tang(int giohangId)
        {
            var giohang = _db.GioHang.FirstOrDefault(gh => gh.Id == giohangId);
            giohang.Quantity += 1;
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult Xoa(int giohangId)
        {
            var giohang = _db.GioHang.FirstOrDefault(gh => gh.Id == giohangId);
            _db.GioHang.Remove(giohang);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        [Authorize]
        public IActionResult ThanhToan()
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

            giohang.HoaDon.ApplicationUser = _db.ApplicationUser.FirstOrDefault(user => user.Id == claim.Value);
            giohang.HoaDon.Name = giohang.HoaDon.ApplicationUser.Name;
            giohang.HoaDon.Address = giohang.HoaDon.ApplicationUser.Address;
            giohang.HoaDon.PhoneNumber = giohang.HoaDon.ApplicationUser.PhoneNumber;

            foreach (var item in giohang.DsGioHang)
            {
                item.SanPhamViewModel = ToSanPhamVM(item.SanPham);
                item.ProductPrice = item.Quantity * item.SanPham.Price;
                giohang.HoaDon.Total += item.ProductPrice;
            }

            return View(giohang);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult ThanhToan(GioHangViewModel giohang)
        {
            var identity = (ClaimsIdentity)User.Identity;
            var claim = identity.FindFirst(ClaimTypes.NameIdentifier);

            giohang.DsGioHang = _db.GioHang
            .Include("SanPham")
            .Where(gh => gh.ApplicationUserId == claim.Value)
            .ToList();
            giohang.HoaDon.ApplicationUserId = claim.Value;
            giohang.HoaDon.OrderDate = DateTime.Now;
            giohang.HoaDon.OrderStatus = "Đang xác nhận";

            foreach (var item in giohang.DsGioHang)
            {
                item.SanPhamViewModel = ToSanPhamVM(item.SanPham);
                item.ProductPrice = item.Quantity * item.SanPham.Price;
                giohang.HoaDon.Total += item.ProductPrice;
            }
            _db.HoaDon.Add(giohang.HoaDon);
            _db.SaveChanges();

            foreach (var item in giohang.DsGioHang)
            {
                ChiTietHoaDon chitiethoadon = new ChiTietHoaDon()
                {
                    SanPhamId = item.SanPhamId,
                    HoaDonId = giohang.HoaDon.Id,
                    ProductPrice = item.ProductPrice,
                    Quantity = item.Quantity
                };
                _db.ChiTietHoaDon.Add(chitiethoadon);
                _db.GioHang.Remove(item);
                _db.SaveChanges();
            }
            return RedirectToAction("Confirmation", "GioHang");
        }

        public IActionResult Confirmation()
        {
            return View();
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
                spvm.NhaCungCap = sanpham.NhaCungCap;
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
