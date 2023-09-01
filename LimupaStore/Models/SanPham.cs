 using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Diagnostics.CodeAnalysis;
using System.Text.Json.Serialization;

namespace LimupaStore.Models
{
    public class SanPham
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên sản phẩm!")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập giá sản phẩm!")]
        public double Price { get; set; }
        public string? Description { get; set; }
        [ValidateNever]
        public ICollection<SanPhamTheLoai> TheLoai { get; set; }
        [ValidateNever]
        public ICollection<SanPhamImage> Image { get; set; }
        [ValidateNever]
        public int? NhaCungCapId { get; set; }
        [ForeignKey("NhaCungCapId")]
        [ValidateNever]
        public NhaCungCap NhaCungCap { get; set; }
    }
}
