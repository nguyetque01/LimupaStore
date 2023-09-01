using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
namespace LimupaStore.Models
{
    public class GioHangViewModel
    {
        public IEnumerable<GioHang> DsGioHang { get; set; }
        public HoaDon HoaDon { get; set; }
    }
}
