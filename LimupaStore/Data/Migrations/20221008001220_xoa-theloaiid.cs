using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LimupaStore.Data.Migrations
{
    public partial class xoatheloaiid : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_TheLoai_TheLoaiId",
                table: "SanPham");

            migrationBuilder.DropIndex(
                name: "IX_SanPham_TheLoaiId",
                table: "SanPham");

            migrationBuilder.DropColumn(
                name: "TheLoaiId",
                table: "SanPham");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "TheLoaiId",
                table: "SanPham",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_SanPham_TheLoaiId",
                table: "SanPham",
                column: "TheLoaiId");

            migrationBuilder.AddForeignKey(
                name: "FK_SanPham_TheLoai_TheLoaiId",
                table: "SanPham",
                column: "TheLoaiId",
                principalTable: "TheLoai",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
