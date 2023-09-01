using LimupaStore.Data;
using LimupaStore.Models;
using Microsoft.AspNetCore.Mvc;

namespace LimupaStore.ViewComponents
{
    public class TheloaiSearchViewComponent:ViewComponent
    {
        private readonly ApplicationDbContext _db;
        public TheloaiSearchViewComponent(ApplicationDbContext db)
        {
            _db = db;
        }

        public IViewComponentResult Invoke()
        {
            IEnumerable<TheLoai> theloai = _db.TheLoai.ToList();
            return View(theloai);
        }        
    }
}
