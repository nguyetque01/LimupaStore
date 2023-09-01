using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LimupaStore.Models
{
    public class TheLoai
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int Id { get; set; }        
        [Required(ErrorMessage ="Không được để trống tên thể loại!")]
        [Display(Name ="Thể loại")]
        public string Name { get; set; }        
        [Required(ErrorMessage = "Không đúng định dạng ngày!")]
        [Display(Name = "Ngày tạo")]
        public DateTime? DateCreated { get; set; } = DateTime.Now;
        [ValidateNever]
        public ICollection<SanPhamTheLoai> SanPham { get; set; }
    }
}
