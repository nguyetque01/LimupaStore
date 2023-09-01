﻿using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LimupaStore.Data.Migrations
{
    public partial class nhacungcapid : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "NhaCungCapId",
                table: "SanPham",
                type: "int",
                nullable: true,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_SanPham_NhaCungCapId",
                table: "SanPham",
                column: "NhaCungCapId");

            migrationBuilder.AddForeignKey(
                name: "FK_SanPham_NhaCungCap_NhaCungCapId",
                table: "SanPham",
                column: "NhaCungCapId",
                principalTable: "NhaCungCap",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_NhaCungCap_NhaCungCapId",
                table: "SanPham");

            migrationBuilder.DropIndex(
                name: "IX_SanPham_NhaCungCapId",
                table: "SanPham");

            migrationBuilder.DropColumn(
                name: "NhaCungCapId",
                table: "SanPham");
        }
    }
}
