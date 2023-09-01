using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;

namespace LimupaStore.Models.ViewModel
{
    public class SanPhamViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public string? Description { get; set; }    
        [ValidateNever]
        public NhaCungCap NhaCungCap { get; set; }
        public int NhaCungCapId { get; set; }
        [ValidateNever]
        public List<TheLoai> TheLoai { get; set; }
        [ValidateNever]
        public List<int> TheLoaiId { get; set; }
        [ValidateNever]
        public List<Image> Image { get; set; }
        [ValidateNever]
        public List<string> ImageURL { get; set; }
        [ValidateNever]
        public List<IFormFile>? IFormFile { get; set; }
    }
}
