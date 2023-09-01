namespace LimupaStore.Models
{
    public class SanPhamTheLoai
    {
        public int SanPhamId { get; set; }
        public SanPham SanPham { get; set; }
        public int TheLoaiId { get; set; }
        public TheLoai TheLoai { get; set; }
    }
}
