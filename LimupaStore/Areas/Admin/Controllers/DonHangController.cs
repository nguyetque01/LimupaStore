using LimupaStore.Data;
using LimupaStore.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Data;
using System.Security.Claims;

namespace LimupaStore.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class DonHangController : Controller
    {
        private readonly ApplicationDbContext _db;

        public DonHangController(ApplicationDbContext db)
        {
            _db = db;
        }
        
        public IActionResult Index()
        {
            IEnumerable<HoaDon> hoadon = _db.HoaDon.Include("ApplicationUser").ToList();
            return View(hoadon);
        }

        public IActionResult Details(int id)
        {
            if (id == 0)
            {
                return NotFound();
            }
            HoaDon hoadon = _db.HoaDon.FirstOrDefault(hd => hd.Id == id);
            hoadon.ChiTietHoaDon = _db.ChiTietHoaDon.Include("SanPham").Where(ct => ct.HoaDonId == id).ToList();
            return View(hoadon);
        }
    }
}
