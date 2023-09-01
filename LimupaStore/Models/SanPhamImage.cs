namespace LimupaStore.Models
{
    public class SanPhamImage
    {
        public int SanPhamId { get; set; }
        public SanPham SanPham { get; set; }
        public int ImageId { get; set; }
        public Image Image { get; set; }
    }
}
