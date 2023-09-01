using LimupaStore.Models.ViewModel;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LimupaStore.Models
{
    public class HoaDon
    {
        [Key]
        public int Id { get; set; }
        public string ApplicationUserId { get; set; }
        [ForeignKey("ApplicationUserId")]
        [ValidateNever]
        public ApplicationUser ApplicationUser { get; set; }
        public double Total { get; set; }
        public DateTime OrderDate { get; set; }
        public string? OrderStatus { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập số điện thoại!")]
        public string PhoneNumber { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên!")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập địa chỉ!")]
        public string Address { get; set; }
        [NotMapped]
        public List<ChiTietHoaDon> ChiTietHoaDon { get; set; }
    }
}
