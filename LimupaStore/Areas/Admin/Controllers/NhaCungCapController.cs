using LimupaStore.Data;
using LimupaStore.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Data;

namespace LimupaStore.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class NhaCungCapController : Controller
    {
        private readonly ApplicationDbContext _db;

        public NhaCungCapController(ApplicationDbContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
            var ncc = _db.NhaCungCap.ToList();
            ViewBag.NCC = ncc;
            return View();
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(NhaCungCap nhacungcap)
        {
            if (ModelState.IsValid)
            {
                _db.NhaCungCap.Add(nhacungcap);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpGet]
        public IActionResult Edit(int id)
        {
            if (id == 0)
            {
                return NotFound();
            }
            var NhaCungCap = _db.NhaCungCap.Find(id);
            return View(NhaCungCap);
        }

        [HttpPost]
        public IActionResult Edit(NhaCungCap nhacungcap)
        {
            if (ModelState.IsValid)
            {
                _db.NhaCungCap.Update(nhacungcap);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpGet]
        public IActionResult Delete(int id)
        {
            if (id == 0)
            {
                return NotFound();
            }
            var nhacungcap = _db.NhaCungCap.Find(id);
            return View(nhacungcap);
        }

        [HttpPost]
        public IActionResult DeleteConfirm(int id)
        {
            var nhacungcap = _db.NhaCungCap.Find(id);
            if (nhacungcap == null)
            {
                return NotFound();
            }
            _db.NhaCungCap.Remove(nhacungcap);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult Details(int id)
        {
            if (id == 0)
            {
                return NotFound();
            }
            var nhacungcap = _db.NhaCungCap.Find(id);
            return View(nhacungcap);
        }
    }
}
