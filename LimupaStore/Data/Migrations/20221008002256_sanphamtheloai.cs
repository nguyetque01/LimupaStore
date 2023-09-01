using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LimupaStore.Data.Migrations
{
    public partial class sanphamtheloai : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "SanPhamTheLoai",
                columns: table => new
                {
                    SanPhamId = table.Column<int>(type: "int", nullable: false),
                    TheLoaiId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SanPhamTheLoai", x => new { x.SanPhamId, x.TheLoaiId });
                    table.ForeignKey(
                        name: "FK_SanPhamTheLoai_SanPham_SanPhamId",
                        column: x => x.SanPhamId,
                        principalTable: "SanPham",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_SanPhamTheLoai_TheLoai_TheLoaiId",
                        column: x => x.TheLoaiId,
                        principalTable: "TheLoai",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_SanPhamTheLoai_TheLoaiId",
                table: "SanPhamTheLoai",
                column: "TheLoaiId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "SanPhamTheLoai");
        }
    }
}
