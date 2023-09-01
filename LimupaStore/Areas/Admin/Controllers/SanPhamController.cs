using AspNetCoreHero.ToastNotification.Abstractions;
using LimupaStore.Data;
using LimupaStore.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using AspNetCoreHero.ToastNotification;
using System.Drawing;
using Microsoft.CodeAnalysis.VisualBasic.Syntax;
using System.Drawing.Drawing2D;
using Microsoft.AspNetCore.Hosting;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;
using Microsoft.AspNetCore.Authorization.Infrastructure;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Hosting;
using LimupaStore.Models.ViewModel;
using LimupaStore.Data.Migrations;
using System.Linq;
using Image = LimupaStore.Models.Image;
using System.IO;
using System.Collections;
using Microsoft.AspNetCore.StaticFiles;
using static System.Net.WebRequestMethods;
using static System.Net.Mime.MediaTypeNames;
using System.Drawing.Imaging;
using Microsoft.AspNetCore.Authorization;
using System.Data;

namespace LimupaStore.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class SanPhamController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly INotyfService _toastNotification;
        private readonly IWebHostEnvironment _environment;

        public SanPhamController(ApplicationDbContext db, 
            INotyfService toastNotification,
            IWebHostEnvironment environment)
        {
            _db = db;
            _toastNotification = toastNotification;
            _environment = environment;
        }

        // ACTION

        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public IActionResult Upsert(int id)
        {
            SanPhamViewModel sanphamvm = new SanPhamViewModel();

            IEnumerable<SelectListItem> dsTheLoai = _db.TheLoai
                .Select(theloai => new SelectListItem
                {
                    Value = theloai.Id.ToString(),
                    Text = theloai.Name
                });
            ViewBag.DSTheLoai = dsTheLoai;

            IEnumerable<SelectListItem> dsncc = _db.NhaCungCap
               .Select(ncc => new SelectListItem
               {
                   Value = ncc.Id.ToString(),
                   Text = ncc.Name
               });
            ViewBag.DSNCC = dsncc;

            if (id == 0)
            {
                return View(sanphamvm);
            }
            else
            {
                SanPham sanpham = _db.SanPham.Include("NhaCungCap").FirstOrDefault(sp => sp.Id == id);
                if (sanpham != null)
                {
                    sanphamvm = new SanPhamViewModel()
                    {
                        Id = sanpham.Id,
                        Name = sanpham.Name,
                        Price = sanpham.Price,
                        Description = sanpham.Description,
                        NhaCungCap = sanpham.NhaCungCap,
                        NhaCungCapId = sanpham.NhaCungCap.Id,
                        TheLoai = GetTheLoai(id),
                        TheLoaiId = GetTheLoaiIDs(id),
                        Image = GetImage(id),
                        ImageURL = GetImageURL(id)
                    };
                }
                return View(sanphamvm);
            }
        }

        [HttpPost]
        public IActionResult Upsert(SanPhamViewModel sanphamvm)
        {
            if (ModelState.IsValid)
            {
                SanPham sanpham = new SanPham()
                {
                    Id = sanphamvm.Id,
                    Name = sanphamvm.Name,
                    Price = sanphamvm.Price,
                    Description = sanphamvm.Description,
                    NhaCungCapId = sanphamvm.NhaCungCapId
                };

                if (sanpham.Id == 0)
                {
                    _db.SanPham.Add(sanpham);
                    _db.SaveChanges();
                    sanphamvm.Id = sanpham.Id;
                    AddSanPhamTheLoai(sanphamvm, sanpham);
                    _toastNotification.Success("Thêm sản phẩm thành công!");
                }
                else
                {
                    _db.SanPham.Update(sanpham);
                    UpdateSanPhamTheLoai(sanphamvm);
                    _toastNotification.Success("Cập nhật sản phẩm thành công!");
                }
                
                AddSanPhamImage(sanphamvm, sanpham);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            _toastNotification.Error("Có lỗi xảy ra!");
            return View();
        }

        // GET JSON

        [HttpGet]
        public JsonResult GetListSanPham()
        {           
            var sanphamvm = from sanpham in _db.SanPham
                            select new SanPhamViewModel
                            {
                                Id = sanpham.Id,
                                Name = sanpham.Name,
                                Price = sanpham.Price,
                                Description = sanpham.Description,
                                NhaCungCap = sanpham.NhaCungCap,
                                Image = (from image in _db.Image
                                           join sptl in _db.SanPhamImage on image.Id equals sptl.ImageId
                                           join sanphamtb in _db.SanPham on sptl.SanPhamId equals sanphamtb.Id
                                           where sptl.SanPhamId == sanpham.Id
                                           select new Image
                                           {
                                               Id = image.Id,
                                               Name = image.Name,
                                               ImageURL = image.ImageURL
                                           }).ToList(),
                                TheLoai = (from theloai in _db.TheLoai
                                           join sptl in _db.SanPhamTheLoai on theloai.Id equals sptl.TheLoaiId
                                           join sanphamtb in _db.SanPham on sptl.SanPhamId equals sanphamtb.Id
                                           where sptl.SanPhamId == sanpham.Id
                                           select new TheLoai
                                           {
                                               Id = theloai.Id,
                                               Name = theloai.Name
                                           }).ToList()
                            };
            return Json(new {Data = sanphamvm });
        }

        // GET FORM DATABASE

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

        public List<int> GetTheLoaiIDs(int id)
        {
            var list = (from theloai in _db.TheLoai
                       join sptl in _db.SanPhamTheLoai on theloai.Id equals sptl.TheLoaiId
                       join sanphamtb in _db.SanPham on sptl.SanPhamId equals sanphamtb.Id
                       where sptl.SanPhamId == id
                       select theloai.Id).ToList();
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

        public List<string> GetImageURL(int id)
        {
            var list = (from image in _db.Image
                        join sptl in _db.SanPhamImage on image.Id equals sptl.ImageId
                        join sanphamtb in _db.SanPham on sptl.SanPhamId equals sanphamtb.Id
                        where sptl.SanPhamId == id
                        select image.ImageURL).ToList();
            return list;
        }

        // UPLOAD

        public List<int> UploadImage(SanPhamViewModel sanphamvm)
        {
            List<int> list = new List<int>();
            var urls = GetImageURL(sanphamvm.Id);
            var folderPath = "images/product/Sp" + sanphamvm.Id;
            var fullFolderPath = Path.Combine(_environment.WebRootPath, folderPath);
            if (!Directory.Exists(fullFolderPath))
            {
                Directory.CreateDirectory(fullFolderPath);
            }
            foreach (IFormFile i in sanphamvm.IFormFile)
            {
                var filePath = folderPath + "/" + i.FileName;
                var fullPath = Path.Combine(_environment.WebRootPath, filePath);
                if (!urls.Contains(filePath))
                {
                    FileStream stream = new FileStream(fullPath, FileMode.Create);
                    i.CopyTo(stream);
                    stream.Close();
                    Image image = new Image();
                    image.Name = i.FileName;
                    image.ImageURL = filePath;
                    _db.Image.Add(image);
                    _db.SaveChanges();
                    list.Add(image.Id);
                }
            }
            return list;
        }

        // RELATIONSHIP       

        public void AddSanPhamTheLoai(SanPhamViewModel sanphamvm, SanPham sanpham)
        {
            foreach (int theloaiid in sanphamvm.TheLoaiId)
            {
                SanPhamTheLoai sptl = new SanPhamTheLoai();
                sptl.SanPhamId = sanpham.Id;
                sptl.TheLoaiId = theloaiid;
                _db.SanPhamTheLoai.Add(sptl);
            }
        }        

        public void UpdateSanPhamTheLoai(SanPhamViewModel sanphamvm)
        {
            List<int> dsTheLoai = GetTheLoaiIDs(sanphamvm.Id);
            foreach (int theloaiid in sanphamvm.TheLoaiId)
            {
                SanPhamTheLoai sptl = new SanPhamTheLoai();
                sptl.SanPhamId = sanphamvm.Id;
                sptl.TheLoaiId = theloaiid;
                if (!(dsTheLoai.Contains(theloaiid)))
                {
                    dsTheLoai.Add(theloaiid);
                    _db.SanPhamTheLoai.Add(sptl);
                }
            }
            int count = dsTheLoai.Count;
            for (int i = 0; i < count; i++)
            {
                SanPhamTheLoai sptl = new SanPhamTheLoai();
                sptl.SanPhamId = sanphamvm.Id;
                sptl.TheLoaiId = dsTheLoai[i];
                if (!sanphamvm.TheLoaiId.Contains(dsTheLoai[i]))
                {
                    dsTheLoai.Remove(dsTheLoai[i]);
                    _db.SanPhamTheLoai.Remove(sptl);
                    count--;
                }
            }
        }

        public void AddSanPhamImage(SanPhamViewModel sanphamvm, SanPham sanpham)
        {
            List<int> dsIdUpload = new List<int>();
            if (sanphamvm.IFormFile != null)
            {
                dsIdUpload = UploadImage(sanphamvm);
            }
            foreach (int imageid in dsIdUpload)
            {
                SanPhamImage spimg = new SanPhamImage();
                spimg.SanPhamId = sanpham.Id;
                spimg.ImageId = imageid;
                _db.SanPhamImage.Add(spimg);
            }
        }       

        // DELETE        

        [HttpPost]
        public IActionResult Delete(int id)
        {
            var sanpham = _db.SanPham.FirstOrDefault(sp => sp.Id == id);
            if (sanpham == null)
            {
                _toastNotification.Error("Không tìm thấy sản phẩm!");
                return NotFound();
            }
            _db.SanPham.Remove(sanpham);
            _db.SaveChanges();
            DeleteFolder(sanpham.Id);
            _toastNotification.Success("Xóa sản phẩm thành công!");
            return Json(new {success = true});
        }

        [HttpPost]
        public IActionResult DeleteImage(int id)
        {
            var image = _db.Image.FirstOrDefault(s => s.Id == id);
            if (image == null)
            {
                return NotFound();
            }
            _db.Image.Remove(image);
            _db.SaveChanges();
            DeleteFile(image.ImageURL);
            return Json(new { success = true });
        }

        //DELETE FILE

        public void DeleteFile(string url)
        {
            var filePath = Path.Combine(_environment.WebRootPath, url);
            string dirPath = Path.GetDirectoryName(filePath);

            if (System.IO.File.Exists(filePath))
            {
                System.IO.File.Delete(filePath);
            }

            if (Directory.GetFiles(dirPath).Length == 0 && Directory.GetDirectories(dirPath).Length == 0)
            {
                Directory.Delete(dirPath);
            }
        }

        public void DeleteFolder(int id)
        {
            var urls = GetImageURL(id);
            var folderPath = "images/product/Sp" + id;
            var fullFolderPath = Path.Combine(_environment.WebRootPath, folderPath);

            if (Directory.Exists(fullFolderPath))
            {
                Directory.Delete(fullFolderPath, true);
            }            
        }
    }
}
