using System.ComponentModel.DataAnnotations;

namespace LimupaStore.Models
{
    public class NhaCungCap
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên nhà cung cấp!")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập địa chỉ!")]
        public string Address { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập số điện thoại!")]
        public string PhoneNumber { get; set; }
    }
}
