using LimupaStore.Data;
using LimupaStore.Data.Migrations;
using LimupaStore.Models;
using LimupaStore.Models.ViewModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using System.Security.Claims;

namespace LimupaStore.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _db;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext db)
        {
            _logger = logger;
            _db = db;
        }        

        public IActionResult Index()
        {
            IEnumerable<SanPham> sanpham = _db.SanPham.Include("NhaCungCap").ToList();           
            return View(ToListSanPhamVM(sanpham));
        }


        public IActionResult Shop()
        {
            IEnumerable<SanPham> sanpham = _db.SanPham.Include("NhaCungCap").ToList();
            return View(ToListSanPhamVM(sanpham));
        }

        [Authorize]
        public IActionResult AddToCart(int id)
        {          
            var identity = (ClaimsIdentity)User.Identity;
            var claim = identity.FindFirst(ClaimTypes.NameIdentifier);

            GioHang giohang = new GioHang();
            giohang.ApplicationUserId = claim.Value;
            giohang.SanPhamId = id;

            var giohangdb = _db.GioHang.FirstOrDefault(gh => gh.SanPhamId == id && gh.ApplicationUserId == giohang.ApplicationUserId);
            if (giohangdb == null)
            {
                giohang.Quantity = 1;
                _db.GioHang.Add(giohang);
            }
            else
            {
                giohangdb.Quantity += 1;
            }

            _db.SaveChanges();
            return RedirectToAction("Index", "GioHang");
        }

        public IActionResult Details(int sanphamId)
        {
            SanPham sanpham = _db.SanPham.Include("NhaCungCap").FirstOrDefault(sp => sp.Id == sanphamId);
            GioHang giohang = new GioHang()
            {
                SanPhamId = sanphamId,
                Quantity = 1,
                SanPham = sanpham,
                SanPhamViewModel = ToSanPhamVM(sanpham)
            };
            return View(giohang);
        }

        [HttpPost]
        [Authorize]
        public IActionResult Details(GioHang giohang)
        {
            var identity = (ClaimsIdentity)User.Identity;
            var claim = identity.FindFirst(ClaimTypes.NameIdentifier);

            giohang.ApplicationUserId = claim.Value;

            var giohangdb = _db.GioHang.FirstOrDefault(gh => gh.SanPhamId == giohang.SanPhamId && gh.ApplicationUserId == giohang.ApplicationUserId);
            if (giohangdb == null)
            {
                _db.GioHang.Add(giohang);
            }
            else
            {
                giohangdb.Quantity += giohang.Quantity;
            }

            _db.SaveChanges();
            return RedirectToAction("Index", "GioHang");
        }

        public IActionResult Blog()
        {
            return View();
        }

        public IActionResult BlogDetails()
        {
            return View();
        }

        public IActionResult LoginRegister()
        {
            return View();
        }

        public IActionResult Checkout()
        {
            return View();
        }

        public IActionResult Compare()
        {
            return View();
        }

        public IActionResult Wishlist()
        {
            return View();
        }

        public IActionResult ShoppingCart()
        {
            return View();
        }

        public IActionResult Contact()
        {
            return View();
        }

        public IActionResult AboutUs()
        {
            return View();
        }

        public IActionResult FAQ()
        {
            return View();
        }

        public IActionResult Error404()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
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

        public List<LimupaStore.Models.ViewModel.SanPhamViewModel> ToListSanPhamVM(IEnumerable<SanPham> sanphamtb)
        {
            List<LimupaStore.Models.ViewModel.SanPhamViewModel> spvm = new List<LimupaStore.Models.ViewModel.SanPhamViewModel>();
            foreach (SanPham sanpham in sanphamtb)
            {
                if (sanpham != null)
                {
                    SanPhamViewModel sanphamvm = new SanPhamViewModel()
                    {
                        Id = sanpham.Id,
                        Name = sanpham.Name,
                        Price = sanpham.Price,
                        Description = sanpham.Description,
                        NhaCungCap = sanpham.NhaCungCap,
                        TheLoai = GetTheLoai(sanpham.Id),
                        Image = GetImage(sanpham.Id)
                    };
                    spvm.Add(sanphamvm);
                }
            }
            return spvm;
        }
    }
}