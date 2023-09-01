/****** Object:  Database [LimupaStoreDB]    Script Date: 18/10/2022 10:03:33 AM ******/
CREATE DATABASE [LimupaStoreDB] 
GO
USE DATABASE [LimupaStoreDB] 
GO
ALTER DATABASE [LimupaStoreDB] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [LimupaStoreDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LimupaStoreDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LimupaStoreDB] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [LimupaStoreDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LimupaStoreDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [LimupaStoreDB] SET  MULTI_USER 
GO
ALTER DATABASE [LimupaStoreDB] SET ENCRYPTION ON
GO
ALTER DATABASE [LimupaStoreDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [LimupaStoreDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoaDonId] [int] NOT NULL,
	[SanPhamId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductPrice] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SanPhamId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
	[Total] [float] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ImageURL] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[NhaCungCapId] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamImage]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamImage](
	[SanPhamId] [int] NOT NULL,
	[ImageId] [int] NOT NULL,
 CONSTRAINT [PK_SanPhamImage] PRIMARY KEY CLUSTERED 
(
	[SanPhamId] ASC,
	[ImageId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamTheLoai]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamTheLoai](
	[SanPhamId] [int] NOT NULL,
	[TheLoaiId] [int] NOT NULL,
 CONSTRAINT [PK_SanPhamTheLoai] PRIMARY KEY CLUSTERED 
(
	[SanPhamId] ASC,
	[TheLoaiId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 18/10/2022 10:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220920014534_init', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220920034656_themSanPham', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221003150513_user', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221008001220_xoa-theloaiid', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221008002256_sanphamtheloai', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221008122248_sanphamimage', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221014133914_giohang', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221014191431_hoadon', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221015155220_nhacungcap', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221015160704_nhacungcapid', N'6.0.9')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'376fb8e0-1c27-45bf-9e57-b392a541dae1', N'User', N'USER', N'7d9c7c82-389a-4b19-b4de-ada2e7871113')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6420c458-066c-4ab3-86ea-ce0e2f13db5c', N'Admin', N'ADMIN', N'133027ce-447e-4447-a31d-4d5bf2b1333b')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name]) VALUES (N'286bee2c-a1b6-4698-9e2a-370364772e9e', N'ntnq@gmail.com', N'NTNQ@GMAIL.COM', N'ntnq@gmail.com', N'NTNQ@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIVHBwBAXJPSzR7BYR2YRKr8hmAXRb2yhIeBOWsDXf1ewOjpVLshwVhthsdJtEJaWQ==', N'KZBEESSYYIXISXQAUMX7PVGCRC7ZUMQW', N'f35cd71f-9ff4-4c59-9a0e-6fb272f32543', NULL, 0, 0, NULL, 1, 0, N'Biên Hòa', N'ApplicationUser', N'Nguyệt Quế')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name]) VALUES (N'564e27de-ee00-49ba-b980-97d3ad86c4fa', N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELvOkWv8iByVAMgdd/Fi0duThwy56+Xt+x13x+Vc7+S75PSaql313VfEua08pGFX4w==', N'VIDZZHLL2SRXMEL3XVUJVNXILU6INVFJ', N'b9acf6ed-0336-4eac-9349-065bbfe84b1b', NULL, 0, 0, NULL, 1, 0, N'Biên Hòa', N'ApplicationUser', N'User')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name]) VALUES (N'bea7ff91-c24d-4cc8-aafd-26de6f7a9906', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIwxyypOucKVT/t9VBIaJgIcL8g3vjpQTNPAUyIGhkdWdP6MMbPzrNZNikRXOLXfeQ==', N'SPDFRGAZ3C2WHBBIU7KA2U7B3S2TDG4N', N'4daab1f7-f4cb-4d53-9ba9-0f62c3ebf132', NULL, 0, 0, NULL, 1, 0, N'Biên Hòa', N'ApplicationUser', N'Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name]) VALUES (N'd3444594-879b-4396-bc11-89627fbe9f30', N'loanadmin@gmail.com', N'LOANADMIN@GMAIL.COM', N'loanadmin@gmail.com', N'LOANADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKa/TraQo3lbEh10wdD2m6O56jM+j/w6GPuTFWA/m0mHHqChspr3L7vUa57QXS8oKw==', N'R2KCZ5PI3M2ISCHT7VOBXDQQW44HXK4V', N'07ac832f-5687-492d-8c69-9eda27018d2c', NULL, 0, 0, NULL, 1, 0, N'Biên Hòa, Đồng Nai', N'ApplicationUser', N'Phương Loan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name]) VALUES (N'e5c78fdf-413a-41e6-8fe9-386354983be7', N'nq@gmail.com', N'NQ@GMAIL.COM', N'nq@gmail.com', N'NQ@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEI4IR7FYOrfoQJ+lCAd24rc77/ZL0mQCJvOeSMrMYdfdoEe9lgTESfD3sdwpzlCNbA==', N'E4GQSMT4ROV6YPL2VM4UK34AKZGNGVZB', N'34c8bbef-69a9-4f1c-87fa-447e72e95e51', NULL, 0, 0, NULL, 1, 0, N'Biên Hòa', N'ApplicationUser', N'Nguyệt Quế')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name]) VALUES (N'e9dc53a6-9504-4513-ba1c-aeb4cadab7d1', N'user123@gmail.com', N'USER123@GMAIL.COM', N'user123@gmail.com', N'USER123@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJxhvwpLlFpwiN4cIcC4MxicuieDunp6XR72oqix3zjEYG6oIK7ezbB1h7EcZfMNeQ==', N'TB3FETN3D54BNBUFGC2AX2LKOA7QBQ6U', N'3e505a74-7f53-416f-9aa2-5f99b13f98de', NULL, 0, 0, NULL, 1, 0, N'TP.HCM', N'ApplicationUser', N'user123')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name]) VALUES (N'fe89b551-cd17-42d8-b579-93cb45e67d6b', N'admin@email.com', N'ADMIN@EMAIL.COM', N'admin@email.com', N'ADMIN@EMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMg+EmutNg/rVsjj17EmyzsBeHxawszC0XGz6EsHWneaapHJny71mmX/03Xb/1uDjA==', N'3OCJMOSJ65O2IBMRWWH4WSMZVGWJOLDC', N'7c221f87-f48a-4516-b0eb-28dfc2121bc6', NULL, 0, 0, NULL, 1, 0, N'Dong Nai', N'ApplicationUser', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'286bee2c-a1b6-4698-9e2a-370364772e9e', N'376fb8e0-1c27-45bf-9e57-b392a541dae1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'564e27de-ee00-49ba-b980-97d3ad86c4fa', N'376fb8e0-1c27-45bf-9e57-b392a541dae1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e9dc53a6-9504-4513-ba1c-aeb4cadab7d1', N'376fb8e0-1c27-45bf-9e57-b392a541dae1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bea7ff91-c24d-4cc8-aafd-26de6f7a9906', N'6420c458-066c-4ab3-86ea-ce0e2f13db5c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd3444594-879b-4396-bc11-89627fbe9f30', N'6420c458-066c-4ab3-86ea-ce0e2f13db5c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e5c78fdf-413a-41e6-8fe9-386354983be7', N'6420c458-066c-4ab3-86ea-ce0e2f13db5c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fe89b551-cd17-42d8-b579-93cb45e67d6b', N'6420c458-066c-4ab3-86ea-ce0e2f13db5c')
GO

SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (1, N'Asus', N'TPHCM', N'1800 6588')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (2, N'Sony', N'Tầng 6&7, Tòa nhà President Place, 93 Nguyễn Du, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', N'028 3822 2227')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (3, N'DELL', N'Hà Nội', N'1800 545455')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (4, N'Vietmap ', N'3 Trần Nhân Tôn, Phường 9, Quận 5, Thành phố Hồ Chí Minh', N'1800 555546')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (5, N'Ezviz', N'870-872A Tạ Quang Bửu – Phường 5 – Quận 8 – HCM', N'0343130808')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (6, N'Xmobile', N'Số 2, Ngách 95/20 Vũ Xuân Thiều, Phường Phúc Lợi, Quận Long Biên, Thành Phố Hà Nội, Việt Nam, Hà Nội', N'0963126588')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (7, N'Apple', N'TPHCM', N'18001783')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (8, N'Osmia', N'98 Đ. số 5A, Bình Hưng Hoà A, Bình Tân, Thành phố Hồ Chí Minh', N'028 3973 7777')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (9, N'JBL', N'157 Nguyễn Văn Trỗi, P.11, Q.Phú Nhuận, TP. Hồ Chí Minh, Việt Nam', N'0818 808 808')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (10, N'Anker', N'2/15A Phan Đăng Lưu, Phường 5, Phú Nhuận, Thành phố Hồ Chí Minh', N'028 7303 0773')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (11, N'AVA+', N'128 Trần Quang Khải, P. Tân Định, Quận 1, TP.Hồ Chí Minh', N'02838125960')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (12, N'Rain Design', N'128 Trần Quang Khải, P. Tân Định, Quận 1, TP.Hồ Chí Minh', N'02838125960')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (13, N'Rezo', N'128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh', N'028 38125960')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (14, N'WIWU', N'134 Thái Hà, Đống Đa, Hà Nội.', N'024 3968 9966')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (15, N'MSI', N'29 Tân Thành, phường 12, Quận 5, Hồ Chí Minh', N'093 586 89 13')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (16, N'Samsung', N'128 Trần Quang Khải, P. Tân Định, Quận 1, TP.Hồ Chí Minh	', N'02838125960')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (17, N'Oppo', N'29 Tân Thành, phường 12, Quận 5, Hồ Chí Minh	', N'093 586 89 13')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (18, N'Lenovo', N'128 Trần Quang Khải, P. Tân Định, Quận 1, TP.Hồ Chí Minh', N'02838125960')
INSERT [dbo].[NhaCungCap] ([Id], [Name], [Address], [PhoneNumber]) VALUES (19, N'Acer', N'134 Thái Hà, Đống Đa, Hà Nội.	', N'024 3968 9966')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO

SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (203, N'Loa Bluetooth JBL Flip 6', 2990000, N'Chống nước, chống bụi IP67- Kết nối cùng lúc 2 loa- Điều khiển bằng App', 9)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (204, N'Loa Bluetooth Sony SRS-XE200', 2950000, N'Chống nước, chống bụi IP67
- Kết nối không dây nhiều loa cùng lúc
- Sạc nhanh', 2)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (205, N'Pin sạc dự phòng Anker MagGo A1611', 1400000, N'Sạc không dây Magnetic', 10)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (206, N'Pin sạc dự phòng AVA+ JP208', 250000, N'Đèn LED báo hiệu', 11)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (207, N'Pin sạc dự phòng Xmobile PowerBox+ JP218', 990000, N'Power DeliveryQuick Charge 3.0', 6)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (208, N'Cáp Type C - Lightning 1m Apple MM0A3', 530000, N'Hỗ trợ sạc nhanh', 7)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (209, N'Cáp Micro 2m Xmobile DR-M03', 80000, N'SạcTruyền dữ liệu', 6)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (210, N'Cáp Type C - Type C 1m Xmobile DR-T06', 195000, N'Sạc- Truyền dữ liệu- Power Delivery', 6)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (211, N'Camera IP Ngoài Trời 360 Độ 4MP Ezviz C8W ', 2090000, N'Chống nước, bụi IP65- Phát hiện con người', 5)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (212, N'Camera IP Ngoài Trời 3MP Ezviz C3TN', 1590000, N'Chống nước, bụi IP65Đèn LED trợ sáng- Tích hợp còi thông báo- Quay ban đêm', 5)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (213, N'Camera Hành Trình 1080P Vietmap C63', 2940000, N'G-Sensor- GPS- Kết nối wifi', 4)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (214, N'Đế Laptop Rain Design RD10037', 900000, N'12 – 16 inch và các dòng laptop tương tự khác', 12)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (215, N'Đế Laptop Rain Design RD12031', 1250000, N'Điều chỉnh độ cao dễ dàng', 12)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (216, N'Đế Laptop WIWU S400', 675000, N'Có thể gập lại, tiện mang theo', 14)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (217, N'Gậy chụp ảnh Bluetooth Tripod Xmobile K06', 150000, N'Có thiết kế đơn giản, thu gọn chỉ dài 19.5 cm, cho bạn dễ dàng cầm nắm và mang theo trong các chuyến đi', 6)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (218, N'Gậy Chụp Ảnh Osmia OW4', 35000, N'Điện thoại dưới 6 inch', 8)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (233, N'Tai nghe Bluetooth True Wireless Rezo F15 ', 755000, N'Kiểu dáng gọn nhẹ, đeo vừa vặn, dễ mang theo.  Chất âm sinh động, mạnh mẽ. ', 13)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (241, N'Laptop MSI Gaming Bravo 15 B5DD R5 5600H/8GB/512GB/4GB', 18490000, N'Laptop MSI mang trong mình CPU AMD Ryzen 5 5600H mạnh mẽ kết hợp cùng card màn hình rời AMD Radeon RX 5500M 4 GB', 15)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (242, N'Điện thoại iPhone 14 Pro Max 128GB ', 33990000, N'OLED6.7"Super Retina XDR', 7)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (243, N'Điện thoại iPhone 14 Plus 512GB', 33990000, N'OLED6.7"Super Retina XDR', 7)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (244, N'Điện thoại Samsung Galaxy M53 ', 11190000, N'Super AMOLED Plus6.7"Full HD+', 16)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (246, N'Điện thoại OPPO A55', 4490000, N'IPS LCD6.5"HD+', 17)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (247, N'Điện thoại OPPO A57 64GB', 4190000, N'IPS LCD6.56"HD+', 17)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (248, N'Laptop MSI Gaming Pulse GL66 11UDK i7 11800H', 33990000, N'i711800H2.30 GHz', 15)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (249, N'Laptop Apple MacBook Air M2 2022', 32990000, N'8GB/256GB/8-core GPU (MLXW3SA/A) ', 7)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (250, N'Laptop Lenovo IdeaPad Gaming 3 15IHU6 i5 11300H', 20990000, N'Hỗ trợ thêm 1 khe cắm HDD SATA (nâng cấp tối đa 1TB)512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1TB (2280) / 512GB (2242))', 18)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (251, N'Đồng hồ thông minh Samsung Galaxy Watch 4 Classic 42mm Trắng', 5690000, N'Đo nồng độ oxy (SpO2). Đếm số bước chân. Chế độ luyện tập. Theo dõi giấc ngủ. Đo nhịp tim. Đo huyết áp (chỉ hỗ trợ khi kết nối với điện thoại Samsung). Điện tâm đồ (chỉ hỗ trợ khi kết nối với điện thoại Samsung)', 16)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (252, N'Apple Watch SE 40mm viền nhôm dây silicone', 6990000, N'Tính quãng đường chạy. Tính lượng calories tiêu thụ. Đếm số bước chân. Chế độ luyện tập. Theo dõi giấc ngủ. Đo nhịp tim', 7)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (253, N'Đồng hồ thông minh Samsung Galaxy Watch5 LTE 40mm Tím ', 7490000, N'Tính lượng calories tiêu thụ. Theo dõi mức độ stress. Đo nồng độ oxy (SpO2)', 16)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (254, N'Apple Watch Series 7 GPS 45mm ', 10990000, N' Apple trang bị cho dòng S7 khung viền bằng nhôm tái chế 100% giúp bảo vệ môi trường. Dây đeo silicone dẻo dai, không thấm nước mang lại cảm giác thoải mái, dễ chịu cho người dùng đặc biệt là những lúc tay đổ nhiều mồ hôi khi luyện tập thể thao', 7)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (255, N'Tai nghe chụp tai Bluetooth AirPods Max Apple MGYH3', 13990000, N'Tai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3 dễ dàng cuốn hút bạn ngay từ cái nhìn đầu tiên, với nét sang trọng và cực kỳ tinh tế đến từ sự tối giản trong thiết kế và màu sắc, tạo sự khác biệt ấn tượng với các sản phẩm tai nghe hiện có trên thị trường.', 7)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (256, N'Tai nghe Bluetooth True Wireless OPPO ENCO Air', 1250000, N'Tai nghe True Wireless thiết kế thanh nhã, đeo gọn đẹp, dễ mang đi.', 17)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (258, N'Máy tính bảng iPad Pro M1 11 inch WiFi Cellular 1TB (2021)', 41990000, N'Máy tính bảng iPad Pro M1 11 inch WiFi Cellular 1TB (2021) thiết kế hình hộp vát cạnh vuông vức, hiện đại với thân máy bằng kim loại chắc chắn, hoàn thiện tỉ mỉ và sang trọng, trọng lượng nhẹ, kích cỡ hợp lý thuận tiện sử dụng và mang theo.', 7)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (259, N'Máy tính bảng iPad Air 5 M1 Wifi Cellular 64GB ', 20490000, N'Máy tính bảng được trang bị một màn hình lớn lên đến 10.9 inch vừa đủ không quá to những cũng không nhỏ cho bạn dễ dàng trải nghiệm, sử dụng. Đi kèm với đó chiếc màn hình Retina IPS LCD này sẽ mang lại cho bạn những trải nghiệm về màu sắc tốt hơn.', 7)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (261, N'Máy tính bảng OPPO Pad Air ', 6990000, N'Cảm nhận đầu tiên khi mình mở hộp OPPO Pad Air là máy có diện mạo vuông vức, các viền được vát phẳng làm cho tạo hình của chiếc máy trở nên hợp xu hướng giúp mình tự tin hơn khi sử dụng.', 17)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (262, N'Laptop Acer Aspire 3 A315 58 52KT i5 1135G7', 16990000, N'Laptop Acer Aspire được hoàn thiện bởi lớp vỏ nhựa cứng cáp, chắc chắn cùng khối lượng 1.7 kg giúp bạn có thể di chuyển và đem máy đi bất cứ nơi đâu mà không sợ quá cồng kềnh.', 19)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (263, N'Vòng đeo tay thông minh Oppo Band', 790000, N'Dây đeo silicone nhẹ nhàng, không thấm nước, cho bạn thỏa sức hoạt động suốt cả ngày mà không lo tù bí, nặng tay. Màn hình AMOLED 1.1 inch vừa phải, tạo cảm giác thanh lịch khi đeo trên tay nhưng cũng vừa đủ để bạn quan sát thông tin hiển thị một cách dễ dàng.', 17)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (264, N'Laptop Dell Gaming G15 5515 R7 5800H', 28390000, N' Laptop đồ họa - kỹ thuật sở hữu bộ vi xử lý AMD Ryzen 7 5800H​ cùng card đồ họa rời NVIDIA GeForce RTX 3050 4 GB, đáp ứng mạnh mẽ quá trình xử lý các tác vụ văn phòng hay chiến những trận game đầy kịch tính.', 3)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (265, N'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB', 25990000, N'Galaxy S22 Ultra 5G được kế thừa form thiết kế từ những dòng Note trước đây của hãng đem đến cho bạn có cảm giác vừa mới lạ vừa hoài niệm. Trọng lượng của máy 228 g cho cảm giác cầm nắm đầm tay, khi cầm máy trần thì hơi có cảm giác dễ trượt.', 16)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (266, N'Điện thoại Samsung Galaxy Z Fold4 256GB', 37990000, N'Galaxy Z Fold4 (2022) ra mắt với ngoại hình gần như là không đổi khi so với Galaxy Z Fold3, nếu bạn chỉ nhìn bề ngoài thì bạn sẽ khó lòng phân biệt được 2 sản phẩm này. Máy vẫn sử dụng khung viền Armor Aluminum bền bỉ, mặt kính màn hình phụ là Corning Gorilla Glass Victus+, mặt kính màn hình chính là Ultra Thin Glass.', 16)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (267, N'Điện thoại OPPO Reno8 Z 5G', 10490000, N'Màn hình:  AMOLED6.43"Full HD+', 17)
INSERT [dbo].[SanPham] ([Id], [Name], [Price], [Description], [NhaCungCapId]) VALUES (268, N'Laptop Lenovo Yoga Duet 7 13ITL6 i7 1165G7/16GB/1TB SSD/Touch/Pen/Win10 (82MA003UVN)', 32390000, N'Chuột không dây Gaming Asus TUF M4 WL với thiết kế gọn nhẹ, nắp vỏ làm bằng polyme PBT cao cấp cho độ bền cao, cầm chắc, không mỏi tay khi thao tác liên tục.', 18)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Id], [ApplicationUserId], [Total], [OrderDate], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (3, N'fe89b551-cd17-42d8-b579-93cb45e67d6b', 14770000, CAST(N'2022-10-15T02:31:43.4308814' AS DateTime2), N'Đang xác nhận', N'123455', N'Admin', N'Dong Nai')
INSERT [dbo].[HoaDon] ([Id], [ApplicationUserId], [Total], [OrderDate], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (11, N'e5c78fdf-413a-41e6-8fe9-386354983be7', 2800000, CAST(N'2022-10-16T00:14:53.4077963' AS DateTime2), N'Đang xác nhận', N'0939469412', N'Nguyệt Quế', N'Biên Hòa')
INSERT [dbo].[HoaDon] ([Id], [ApplicationUserId], [Total], [OrderDate], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (12, N'e5c78fdf-413a-41e6-8fe9-386354983be7', 8780000, CAST(N'2022-10-16T01:25:04.8158603' AS DateTime2), N'Đang xác nhận', N'0939469412', N'Nguyệt Quế', N'Biên Hòa')
INSERT [dbo].[HoaDon] ([Id], [ApplicationUserId], [Total], [OrderDate], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (13, N'564e27de-ee00-49ba-b980-97d3ad86c4fa', 10370000, CAST(N'2022-10-17T21:55:11.1912554' AS DateTime2), N'Đang xác nhận', N'123456', N'User', N'Biên Hòa')
INSERT [dbo].[HoaDon] ([Id], [ApplicationUserId], [Total], [OrderDate], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (14, N'564e27de-ee00-49ba-b980-97d3ad86c4fa', 3740000, CAST(N'2022-10-17T22:01:31.4329652' AS DateTime2), N'Đang xác nhận', N'123', N'User', N'Biên Hòa')
INSERT [dbo].[HoaDon] ([Id], [ApplicationUserId], [Total], [OrderDate], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (15, N'fe89b551-cd17-42d8-b579-93cb45e67d6b', 29480000, CAST(N'2022-10-17T22:09:52.7263520' AS DateTime2), N'Đang xác nhận', N'123456', N'Admin', N'Dong Nai')
INSERT [dbo].[HoaDon] ([Id], [ApplicationUserId], [Total], [OrderDate], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (16, N'fe89b551-cd17-42d8-b579-93cb45e67d6b', 1400000, CAST(N'2022-10-17T22:15:39.5467550' AS DateTime2), N'Đang xác nhận', N'123', N'Admin', N'Dong Nai')
INSERT [dbo].[HoaDon] ([Id], [ApplicationUserId], [Total], [OrderDate], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (17, N'e5c78fdf-413a-41e6-8fe9-386354983be7', 99960000, CAST(N'2022-10-18T01:52:25.9191854' AS DateTime2), N'Đang xác nhận', N'090', N'Nguyệt Quế', N'Biên Hòa')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (1, 3, 204, 4, 11800000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (2, 3, 207, 3, 2970000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (28, 11, 205, 2, 2800000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (29, 12, 205, 2, 2800000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (30, 12, 203, 2, 5980000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (31, 13, 203, 3, 8970000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (32, 13, 205, 1, 1400000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (33, 14, 206, 3, 750000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (34, 14, 203, 1, 2990000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (35, 15, 207, 4, 3960000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (36, 15, 208, 1, 530000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (37, 15, 215, 5, 6250000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (38, 15, 241, 1, 18490000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (39, 15, 206, 1, 250000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (40, 16, 205, 1, 1400000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (41, 17, 207, 1, 990000)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [SanPhamId], [Quantity], [ProductPrice]) VALUES (42, 17, 249, 3, 98970000)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([Id], [SanPhamId], [Quantity], [ApplicationUserId]) VALUES (28, 203, 2, N'd3444594-879b-4396-bc11-89627fbe9f30')
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO

SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (211, N'Sp 203-1', N'images/product/Sp203/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (212, N'Sp 203-2', N'images/product/Sp203/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (213, N'Sp 203-3', N'images/product/Sp203/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (214, N'Sp 203-4', N'images/product/Sp203/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (215, N'Sp 203-5', N'images/product/Sp203/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (216, N'Sp 204-1', N'images/product/Sp204/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (217, N'Sp 204-2', N'images/product/Sp204/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (218, N'Sp 204-3', N'images/product/Sp204/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (219, N'Sp 204-4', N'images/product/Sp204/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (220, N'Sp 204-5', N'images/product/Sp204/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (221, N'Sp 205-1', N'images/product/Sp205/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (222, N'Sp 205-2', N'images/product/Sp205/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (223, N'Sp 205-3', N'images/product/Sp205/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (224, N'Sp 205-4', N'images/product/Sp205/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (225, N'Sp 205-5', N'images/product/Sp205/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (226, N'Sp 206-1', N'images/product/Sp206/1.jpeg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (227, N'Sp 206-2', N'images/product/Sp206/2.jpeg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (228, N'Sp 206-3', N'images/product/Sp206/3.jpeg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (229, N'Sp 206-4', N'images/product/Sp206/4.jpeg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (230, N'Sp 206-5', N'images/product/Sp206/5.jpeg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (231, N'Sp 207-1', N'images/product/Sp207/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (232, N'Sp 207-2', N'images/product/Sp207/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (233, N'Sp 207-3', N'images/product/Sp207/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (234, N'Sp 207-4', N'images/product/Sp207/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (235, N'Sp 207-5', N'images/product/Sp207/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (236, N'Sp 208-1', N'images/product/Sp208/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (238, N'Sp 208-3', N'images/product/Sp208/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (239, N'Sp 208-4', N'images/product/Sp208/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (240, N'Sp 208-5', N'images/product/Sp208/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (241, N'Sp 209-1', N'images/product/Sp209/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (242, N'Sp 209-2', N'images/product/Sp209/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (243, N'Sp 209-3', N'images/product/Sp209/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (244, N'Sp 209-4', N'images/product/Sp209/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (245, N'Sp 209-5', N'images/product/Sp209/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (246, N'Sp 210-1', N'images/product/Sp210/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (247, N'Sp 210-2', N'images/product/Sp210/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (248, N'Sp 210-3', N'images/product/Sp210/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (249, N'Sp 210-4', N'images/product/Sp210/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (250, N'Sp 210-5', N'images/product/Sp210/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (251, N'Sp 211-1', N'images/product/Sp211/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (252, N'Sp 211-2', N'images/product/Sp211/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (253, N'Sp 211-3', N'images/product/Sp211/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (254, N'Sp 211-4', N'images/product/Sp211/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (255, N'Sp 212-1', N'images/product/Sp212/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (256, N'Sp 212-2', N'images/product/Sp212/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (257, N'Sp 212-3', N'images/product/Sp212/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (258, N'Sp 213-1', N'images/product/Sp213/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (259, N'Sp 213-2', N'images/product/Sp213/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (260, N'Sp 213-3', N'images/product/Sp213/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (261, N'Sp 213-4', N'images/product/Sp213/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (262, N'Sp 213-5', N'images/product/Sp213/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (263, N'Sp 214-1', N'images/product/Sp214/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (264, N'Sp 214-2', N'images/product/Sp214/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (265, N'Sp 214-3', N'images/product/Sp214/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (266, N'Sp 214-4', N'images/product/Sp214/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (267, N'Sp 214-5', N'images/product/Sp214/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (268, N'Sp 215-1', N'images/product/Sp215/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (269, N'Sp 215-2', N'images/product/Sp215/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (270, N'Sp 215-3', N'images/product/Sp215/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (271, N'Sp 215-4', N'images/product/Sp215/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (272, N'Sp 215-5', N'images/product/Sp215/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (273, N'Sp 216-1', N'images/product/Sp216/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (274, N'Sp 216-2', N'images/product/Sp216/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (275, N'Sp 216-3', N'images/product/Sp216/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (276, N'Sp 216-4', N'images/product/Sp216/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (277, N'Sp 216-5', N'images/product/Sp216/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (278, N'Sp 217-1', N'images/product/Sp217/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (279, N'Sp 217-2', N'images/product/Sp217/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (280, N'Sp 217-3', N'images/product/Sp217/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (281, N'Sp 217-4', N'images/product/Sp217/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (282, N'Sp 217-5', N'images/product/Sp217/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (283, N'Sp 218-1', N'images/product/Sp218/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (284, N'Sp 218-2', N'images/product/Sp218/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (285, N'Sp 218-3', N'images/product/Sp218/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (286, N'Sp 218-4', N'images/product/Sp218/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (287, N'Sp 218-5', N'images/product/Sp218/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (288, N'Sp 219-1', N'images/product/Sp219/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (289, N'Sp 219-2', N'images/product/Sp219/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (290, N'Sp 219-3', N'images/product/Sp219/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (291, N'Sp 219-4', N'images/product/Sp219/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (292, N'Sp 219-5', N'images/product/Sp219/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (293, N'Sp 220-1', N'images/product/Sp220/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (294, N'Sp 220-2', N'images/product/Sp220/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (295, N'Sp 220-3', N'images/product/Sp220/3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (296, N'Sp 220-4', N'images/product/Sp220/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (297, N'Sp 220-5', N'images/product/Sp220/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (313, N'sp-2.jpg', N'images/product/Sp0/sp-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (314, N'sp-2.jpg', N'images/product/Sp222/sp-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (315, N'sp-4.jpg', N'images/product/Sp222/sp-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (316, N'sp-5.jpg', N'images/product/Sp222/sp-5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (326, N'sp-14.jpg', N'images/product/Sp224/sp-14.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (340, N'sp-13.jpg', N'images/product/Sp0/sp-13.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (341, N'sp-13.jpg', N'images/product/Sp0/sp-13.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (342, N'sp-75.jpg', N'images/product/Sp0/sp-75.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (343, N'sp-cpu-2.jpg', N'images/product/Sp227/sp-cpu-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (347, N'sp-13.jpg', N'images/product/Sp228/sp-13.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (349, N'2.jpeg', N'images/product/Sp233/2.jpeg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (350, N'3.jpeg', N'images/product/Sp233/3.jpeg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (351, N'4.jpeg', N'images/product/Sp233/4.jpeg')
GO
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (352, N'5.jpeg', N'images/product/Sp233/5.jpeg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (353, N'bv.jpg', N'images/product/Sp240/bv.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (355, N'1.jpg', N'images/product/Sp241/1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (356, N'2.jpg', N'images/product/Sp241/2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (357, N'4.jpg', N'images/product/Sp241/4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (358, N'5.jpg', N'images/product/Sp241/5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (359, N'6.jpg', N'images/product/Sp241/6.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (360, N'iphone-14-pro-den-1-1.jpg', N'images/product/Sp242/iphone-14-pro-den-1-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (361, N'iphone-14-pro-den-2.jpg', N'images/product/Sp242/iphone-14-pro-den-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (362, N'iphone-14-pro-den-3.jpg', N'images/product/Sp242/iphone-14-pro-den-3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (363, N'iphone-14-pro-den-4.jpg', N'images/product/Sp242/iphone-14-pro-den-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (367, N'iphone-14-trang-1-1.jpg', N'images/product/Sp243/iphone-14-trang-1-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (368, N'samsung-galaxy-m53-nau-1-2.jpg', N'images/product/Sp244/samsung-galaxy-m53-nau-1-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (369, N'samsung-galaxy-m53-nau-2-2.jpg', N'images/product/Sp244/samsung-galaxy-m53-nau-2-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (370, N'samsung-galaxy-m53-nau-3-2.jpg', N'images/product/Sp244/samsung-galaxy-m53-nau-3-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (371, N'iphone-14-trang-2.jpg', N'images/product/Sp243/iphone-14-trang-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (372, N'iphone-14-trang-3.jpg', N'images/product/Sp243/iphone-14-trang-3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (379, N'oppo-a55-4g-1-2.jpg', N'images/product/Sp246/oppo-a55-4g-1-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (380, N'oppo-a55-4g-2-2.jpg', N'images/product/Sp246/oppo-a55-4g-2-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (381, N'oppo-a55-4g-3-2.jpg', N'images/product/Sp246/oppo-a55-4g-3-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (382, N'oppo-a55-4g-4-2.jpg', N'images/product/Sp246/oppo-a55-4g-4-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (391, N'msi-gaming-pulse-gl66-11udk-i7-816vn-1-1.jpg', N'images/product/Sp248/msi-gaming-pulse-gl66-11udk-i7-816vn-1-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (392, N'msi-gaming-pulse-gl66-11udk-i7-816vn-2-2.jpg', N'images/product/Sp248/msi-gaming-pulse-gl66-11udk-i7-816vn-2-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (393, N'msi-gaming-pulse-gl66-11udk-i7-816vn-3-1.jpg', N'images/product/Sp248/msi-gaming-pulse-gl66-11udk-i7-816vn-3-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (394, N'msi-gaming-pulse-gl66-11udk-i7-816vn-4-2.jpg', N'images/product/Sp248/msi-gaming-pulse-gl66-11udk-i7-816vn-4-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (395, N'msi-gaming-pulse-gl66-11udk-i7-816vn-6-2.jpg', N'images/product/Sp248/msi-gaming-pulse-gl66-11udk-i7-816vn-6-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (398, N'apple-macbook-air-m2-2022-05.jpg', N'images/product/Sp249/apple-macbook-air-m2-2022-05.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (399, N'apple-macbook-air-m2-2022-06.jpg', N'images/product/Sp249/apple-macbook-air-m2-2022-06.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (400, N'apple-macbook-air-m2-2022-07.jpg', N'images/product/Sp249/apple-macbook-air-m2-2022-07.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (402, N'lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn-2-1.jpg', N'images/product/Sp250/lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn-2-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (403, N'lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn-3-1.jpg', N'images/product/Sp250/lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn-3-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (404, N'lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn-4-1.jpg', N'images/product/Sp250/lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn-4-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (405, N'lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn-5-1.jpg', N'images/product/Sp250/lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn-5-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (422, N'bluetooth-airpods-max-apple-2-org.jpg', N'images/product/Sp255/bluetooth-airpods-max-apple-2-org.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (423, N'bluetooth-airpods-max-apple-3-org.jpg', N'images/product/Sp255/bluetooth-airpods-max-apple-3-org.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (424, N'bluetooth-airpods-max-apple-4-org.jpg', N'images/product/Sp255/bluetooth-airpods-max-apple-4-org.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (426, N'bluetooth-true-wireless-oppo-enco-air-eti61-trang-den-5.jpg', N'images/product/Sp256/bluetooth-true-wireless-oppo-enco-air-eti61-trang-den-5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (427, N'bluetooth-true-wireless-oppo-enco-air-eti61-trang-den-3.jpg', N'images/product/Sp256/bluetooth-true-wireless-oppo-enco-air-eti61-trang-den-3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (428, N'bluetooth-true-wireless-oppo-enco-air-eti61-trang-den-4.jpg', N'images/product/Sp256/bluetooth-true-wireless-oppo-enco-air-eti61-trang-den-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (429, N'bluetooth-true-wireless-oppo-enco-air-eti61-trang-den-6.jpg', N'images/product/Sp256/bluetooth-true-wireless-oppo-enco-air-eti61-trang-den-6.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (441, N'ipad-air-5-m1-wifi-cellular-tim-2.jpg', N'images/product/Sp259/ipad-air-5-m1-wifi-cellular-tim-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (442, N'ipad-air-5-m1-wifi-cellular-tim-3.jpg', N'images/product/Sp259/ipad-air-5-m1-wifi-cellular-tim-3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (443, N'se-40mm-vien-nhom-day-cao-su-vang-01.jpg', N'images/product/Sp252/se-40mm-vien-nhom-day-cao-su-vang-01.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (444, N'se-40mm-vien-nhom-day-cao-su-vang-02.jpg', N'images/product/Sp252/se-40mm-vien-nhom-day-cao-su-vang-02.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (445, N'se-40mm-vien-nhom-day-cao-su-vang-03.jpg', N'images/product/Sp252/se-40mm-vien-nhom-day-cao-su-vang-03.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (446, N'se-40mm-vien-nhom-day-cao-su-xanh-den-02.jpg', N'images/product/Sp252/se-40mm-vien-nhom-day-cao-su-xanh-den-02.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (447, N'se-40mm-vien-nhom-day-cao-su-xanh-den-03.jpg', N'images/product/Sp252/se-40mm-vien-nhom-day-cao-su-xanh-den-03.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (448, N'apple-watch-s7-45mm-gps-xanh-la-2-1.jpg', N'images/product/Sp254/apple-watch-s7-45mm-gps-xanh-la-2-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (449, N'apple-watch-s7-45mm-gps-xanh-la-1-1.jpg', N'images/product/Sp254/apple-watch-s7-45mm-gps-xanh-la-1-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (450, N'apple-watch-s7-45mm-gps-xanh-la-3.jpg', N'images/product/Sp254/apple-watch-s7-45mm-gps-xanh-la-3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (451, N'apple-watch-s7-45mm-gps-xanh-la-4.jpg', N'images/product/Sp254/apple-watch-s7-45mm-gps-xanh-la-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (452, N'ipad-pro-m1-11-inch-wifi-cellular-1.jpg', N'images/product/Sp258/ipad-pro-m1-11-inch-wifi-cellular-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (453, N'ipad-pro-m1-11-inch-wifi-cellular-4.jpg', N'images/product/Sp258/ipad-pro-m1-11-inch-wifi-cellular-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (454, N'ipad-pro-m1-11-inch-wifi-cellular-5.jpg', N'images/product/Sp258/ipad-pro-m1-11-inch-wifi-cellular-5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (455, N'samsung-galaxy-tab-a7-lite-5-3-org.jpg', N'images/product/Sp257/samsung-galaxy-tab-a7-lite-5-3-org.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (456, N'samsung-galaxy-tab-a7-lite-6-3-org.jpg', N'images/product/Sp257/samsung-galaxy-tab-a7-lite-6-3-org.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (457, N'samsung-galaxy-tab-a7-lite-13-3-org.jpg', N'images/product/Sp257/samsung-galaxy-tab-a7-lite-13-3-org.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (458, N'samsung-galaxy-z-flip4-tim-128gb-1.jpg', N'images/product/Sp245/samsung-galaxy-z-flip4-tim-128gb-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (459, N'samsung-galaxy-z-flip4-tim-128gb-2.jpg', N'images/product/Sp245/samsung-galaxy-z-flip4-tim-128gb-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (460, N'samsung-galaxy-z-flip4-tim-128gb-3.jpg', N'images/product/Sp245/samsung-galaxy-z-flip4-tim-128gb-3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (461, N'samsung-galaxy-z-flip4-tim-128gb-4.jpg', N'images/product/Sp245/samsung-galaxy-z-flip4-tim-128gb-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (464, N'samsung-galaxy-watch-4-classic-42mm-6-1.jpg', N'images/product/Sp251/samsung-galaxy-watch-4-classic-42mm-6-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (465, N'samsung-galaxy-watch-4-classic-42mm-11-1.jpg', N'images/product/Sp251/samsung-galaxy-watch-4-classic-42mm-11-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (466, N'samsung-galaxy-watch-4-classic-42mm-4-2.jpg', N'images/product/Sp251/samsung-galaxy-watch-4-classic-42mm-4-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (467, N'samsung-galaxy-watch-4-classic-42mm-5-2.jpg', N'images/product/Sp251/samsung-galaxy-watch-4-classic-42mm-5-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (468, N'samsung-galaxy-watch-5-40-mm-lte-1.jpg', N'images/product/Sp253/samsung-galaxy-watch-5-40-mm-lte-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (469, N'samsung-galaxy-watch-5-40-mm-lte-4.jpg', N'images/product/Sp253/samsung-galaxy-watch-5-40-mm-lte-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (470, N'samsung-galaxy-watch-5-40-mm-lte-5.jpg', N'images/product/Sp253/samsung-galaxy-watch-5-40-mm-lte-5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (471, N'samsung-galaxy-watch-5-40-mm-lte-6.jpg', N'images/product/Sp253/samsung-galaxy-watch-5-40-mm-lte-6.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (472, N'oppo-pad-air-1.jpg', N'images/product/Sp261/oppo-pad-air-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (473, N'oppo-pad-air-2.jpg', N'images/product/Sp261/oppo-pad-air-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (474, N'oppo-pad-air-5.jpg', N'images/product/Sp261/oppo-pad-air-5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (475, N'oppo-pad-air-6.jpg', N'images/product/Sp261/oppo-pad-air-6.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (476, N'acer-aspire-3-a315-58-52kt-i5-nxam0sv006-13.jpg', N'images/product/Sp262/acer-aspire-3-a315-58-52kt-i5-nxam0sv006-13.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (477, N'acer-aspire-3-a315-58-52kt-i5-nxam0sv006-14.jpg', N'images/product/Sp262/acer-aspire-3-a315-58-52kt-i5-nxam0sv006-14.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (478, N'acer-aspire-3-a315-58-52kt-i5-nxam0sv006-4-1.jpg', N'images/product/Sp262/acer-aspire-3-a315-58-52kt-i5-nxam0sv006-4-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (479, N'acer-aspire-3-a315-58-52kt-i5-nxam0sv006-5-1.jpg', N'images/product/Sp262/acer-aspire-3-a315-58-52kt-i5-nxam0sv006-5-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (480, N'oppo-band-tim-1-org-1.jpg', N'images/product/Sp263/oppo-band-tim-1-org-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (481, N'oppo-band-tim-2-org-1.jpg', N'images/product/Sp263/oppo-band-tim-2-org-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (482, N'oppo-band-tim-3-org-1.jpg', N'images/product/Sp263/oppo-band-tim-3-org-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (483, N'oppo-band-tim-4-org-1.jpg', N'images/product/Sp263/oppo-band-tim-4-org-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (484, N'oppo-a57-4g-glr-xanh-1.jpg', N'images/product/Sp247/oppo-a57-4g-glr-xanh-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (485, N'oppo-a57-4g-glr-xanh-2.jpg', N'images/product/Sp247/oppo-a57-4g-glr-xanh-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (486, N'oppo-a57-4g-glr-xanh-3.jpg', N'images/product/Sp247/oppo-a57-4g-glr-xanh-3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (487, N'oppo-a57-4g-glr-xanh-4.jpg', N'images/product/Sp247/oppo-a57-4g-glr-xanh-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (488, N'dell-gaming-g15-5515-r7-70266674-2.jpg', N'images/product/Sp264/dell-gaming-g15-5515-r7-70266674-2.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (489, N'dell-gaming-g15-5515-r7-70266674-3.jpg', N'images/product/Sp264/dell-gaming-g15-5515-r7-70266674-3.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (490, N'dell-gaming-g15-5515-r7-70266674-5.jpg', N'images/product/Sp264/dell-gaming-g15-5515-r7-70266674-5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (491, N'samsung-galaxy-s22-ultra-xanh-reu-4-1.jpg', N'images/product/Sp265/samsung-galaxy-s22-ultra-xanh-reu-4-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (492, N'samsung-galaxy-s22-ultra-xanh-reu-5-1.jpg', N'images/product/Sp265/samsung-galaxy-s22-ultra-xanh-reu-5-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (493, N'samsung-galaxy-s22-ultra-xanh-reu-10-1.jpg', N'images/product/Sp265/samsung-galaxy-s22-ultra-xanh-reu-10-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (494, N'samsung-galaxy-z-fold4-256gb-5.jpg', N'images/product/Sp266/samsung-galaxy-z-fold4-256gb-5.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (495, N'samsung-galaxy-z-fold4-256gb-6.jpg', N'images/product/Sp266/samsung-galaxy-z-fold4-256gb-6.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (496, N'samsung-galaxy-z-fold4-256gb-7.jpg', N'images/product/Sp266/samsung-galaxy-z-fold4-256gb-7.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (497, N'oppo-reno8-z-5g-vang-1-1.jpg', N'images/product/Sp267/oppo-reno8-z-5g-vang-1-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (498, N'oppo-reno8-z-5g-vang-6.jpg', N'images/product/Sp267/oppo-reno8-z-5g-vang-6.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (499, N'oppo-reno8-z-5g-vang-8.jpg', N'images/product/Sp267/oppo-reno8-z-5g-vang-8.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (500, N'oppo-reno8-z-5g-vang-dong-4.jpg', N'images/product/Sp267/oppo-reno8-z-5g-vang-dong-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (501, N'oppo-reno8-z-5g-vang-dong-9.jpg', N'images/product/Sp267/oppo-reno8-z-5g-vang-dong-9.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (502, N'lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-1-1.jpg', N'images/product/Sp268/lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-1-1.jpg')
GO
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (503, N'lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-2-1.jpg', N'images/product/Sp268/lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-2-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (504, N'lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-3-1.jpg', N'images/product/Sp268/lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-3-1.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (505, N'lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-4.jpg', N'images/product/Sp268/lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-4.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (506, N'lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-6.jpg', N'images/product/Sp268/lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-6.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (507, N'lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-7.jpg', N'images/product/Sp268/lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-7.jpg')
INSERT [dbo].[Image] ([Id], [Name], [ImageURL]) VALUES (508, N'lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-2-1.jpg', N'images/product/Sp243/lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-2-1.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO


INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (203, 211)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (203, 212)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (203, 213)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (203, 214)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (203, 215)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (204, 216)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (204, 217)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (204, 218)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (204, 219)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (204, 220)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (205, 221)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (205, 222)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (205, 223)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (205, 224)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (205, 225)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (206, 226)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (206, 227)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (206, 228)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (206, 229)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (206, 230)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (207, 231)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (207, 232)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (207, 233)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (207, 234)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (207, 235)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (208, 236)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (208, 238)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (208, 239)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (208, 240)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (209, 241)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (209, 242)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (209, 243)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (209, 244)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (209, 245)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (210, 246)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (210, 247)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (210, 248)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (210, 249)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (210, 250)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (211, 251)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (211, 252)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (211, 253)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (211, 254)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (212, 255)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (212, 256)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (212, 257)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (213, 258)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (213, 259)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (213, 260)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (213, 261)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (213, 262)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (214, 263)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (214, 264)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (214, 265)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (214, 266)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (214, 267)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (215, 268)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (215, 269)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (215, 270)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (215, 271)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (215, 272)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (216, 273)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (216, 274)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (216, 275)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (216, 276)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (216, 277)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (217, 278)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (217, 279)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (217, 280)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (217, 281)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (217, 282)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (218, 283)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (218, 284)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (218, 285)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (218, 286)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (218, 287)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (233, 349)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (233, 350)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (233, 351)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (233, 352)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (241, 355)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (241, 356)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (241, 357)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (241, 358)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (241, 359)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (242, 360)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (242, 361)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (242, 362)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (242, 363)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (243, 367)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (244, 368)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (244, 369)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (244, 370)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (243, 371)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (243, 372)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (246, 379)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (246, 380)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (246, 381)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (246, 382)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (248, 391)
GO
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (248, 392)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (248, 393)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (248, 394)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (248, 395)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (249, 398)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (249, 399)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (249, 400)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (250, 402)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (250, 403)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (250, 404)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (250, 405)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (255, 422)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (255, 423)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (255, 424)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (256, 426)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (256, 427)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (256, 428)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (256, 429)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (259, 441)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (259, 442)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (252, 443)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (252, 444)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (252, 445)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (252, 446)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (252, 447)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (254, 448)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (254, 449)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (254, 450)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (254, 451)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (258, 452)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (258, 453)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (258, 454)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (251, 464)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (251, 465)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (251, 466)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (251, 467)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (253, 468)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (253, 469)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (253, 470)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (253, 471)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (261, 472)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (261, 473)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (261, 474)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (261, 475)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (262, 476)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (262, 477)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (262, 478)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (262, 479)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (263, 480)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (263, 481)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (263, 482)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (263, 483)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (247, 484)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (247, 485)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (247, 486)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (247, 487)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (264, 488)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (264, 489)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (264, 490)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (265, 491)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (265, 492)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (265, 493)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (266, 494)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (266, 495)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (266, 496)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (267, 497)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (267, 498)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (267, 499)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (267, 500)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (267, 501)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (268, 502)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (268, 503)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (268, 504)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (268, 505)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (268, 506)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (268, 507)
INSERT [dbo].[SanPhamImage] ([SanPhamId], [ImageId]) VALUES (243, 508)
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (1, N'Laptop', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (2, N'Máy tính bộ', CAST(N'2023-03-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (3, N'Điện thoại', CAST(N'2024-04-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (5, N'Tai nghe', CAST(N'2024-05-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (6, N'Màn hình', CAST(N'2022-09-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (7, N'Chuột', CAST(N'2022-09-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (8, N'Bàn phím', CAST(N'2022-09-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (9, N'Đồng hồ thông minh', CAST(N'2022-10-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (11, N'Loa', CAST(N'2022-10-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (12, N'Sạc dự phòng', CAST(N'2022-10-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (13, N'Cáp sạc', CAST(N'2022-10-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (14, N'Camera', CAST(N'2022-10-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (15, N'Giá đỡ laptop', CAST(N'2022-10-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (16, N'Gậy chụp ảnh', CAST(N'2022-10-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (17, N'Micro', CAST(N'2022-10-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (18, N'Phụ kiện laptop', CAST(N'2022-10-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (22, N'Thiết bị âm thanh', CAST(N'2022-10-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TheLoai] ([Id], [Name], [DateCreated]) VALUES (23, N'Máy tính bảng', CAST(N'2022-10-17T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO

INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (241, 1)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (248, 1)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (249, 1)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (250, 1)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (262, 1)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (264, 1)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (268, 1)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (243, 2)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (242, 3)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (243, 3)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (244, 3)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (246, 3)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (247, 3)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (265, 3)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (266, 3)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (267, 3)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (233, 5)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (255, 5)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (256, 5)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (251, 9)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (252, 9)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (253, 9)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (254, 9)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (263, 9)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (203, 11)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (204, 11)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (205, 12)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (206, 12)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (207, 12)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (208, 13)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (209, 13)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (210, 13)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (211, 14)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (212, 14)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (213, 14)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (214, 15)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (215, 15)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (216, 15)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (217, 16)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (218, 16)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (233, 17)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (214, 18)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (215, 18)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (216, 18)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (233, 22)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (255, 22)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (256, 22)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (258, 23)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (259, 23)
INSERT [dbo].[SanPhamTheLoai] ([SanPhamId], [TheLoaiId]) VALUES (261, 23)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietHoaDon_HoaDonId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon_HoaDonId] ON [dbo].[ChiTietHoaDon]
(
	[HoaDonId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietHoaDon_SanPhamId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon_SanPhamId] ON [dbo].[ChiTietHoaDon]
(
	[SanPhamId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_GioHang_ApplicationUserId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_GioHang_ApplicationUserId] ON [dbo].[GioHang]
(
	[ApplicationUserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GioHang_SanPhamId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_GioHang_SanPhamId] ON [dbo].[GioHang]
(
	[SanPhamId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HoaDon_ApplicationUserId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_ApplicationUserId] ON [dbo].[HoaDon]
(
	[ApplicationUserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPham_NhaCungCapId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_SanPham_NhaCungCapId] ON [dbo].[SanPham]
(
	[NhaCungCapId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPhamImage_ImageId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_SanPhamImage_ImageId] ON [dbo].[SanPhamImage]
(
	[ImageId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPhamTheLoai_TheLoaiId]    Script Date: 18/10/2022 10:04:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_SanPhamTheLoai_TheLoaiId] ON [dbo].[SanPhamTheLoai]
(
	[TheLoaiId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [NhaCungCapId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId] FOREIGN KEY([HoaDonId])
REFERENCES [dbo].[HoaDon] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham_SanPhamId] FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[SanPham] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham_SanPhamId]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham_SanPhamId] FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[SanPham] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham_SanPhamId]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap_NhaCungCapId] FOREIGN KEY([NhaCungCapId])
REFERENCES [dbo].[NhaCungCap] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap_NhaCungCapId]
GO
ALTER TABLE [dbo].[SanPhamImage]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamImage_Image_ImageId] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Image] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhamImage] CHECK CONSTRAINT [FK_SanPhamImage_Image_ImageId]
GO
ALTER TABLE [dbo].[SanPhamImage]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamImage_SanPham_SanPhamId] FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[SanPham] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhamImage] CHECK CONSTRAINT [FK_SanPhamImage_SanPham_SanPhamId]
GO
ALTER TABLE [dbo].[SanPhamTheLoai]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamTheLoai_SanPham_SanPhamId] FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[SanPham] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhamTheLoai] CHECK CONSTRAINT [FK_SanPhamTheLoai_SanPham_SanPhamId]
GO
ALTER TABLE [dbo].[SanPhamTheLoai]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamTheLoai_TheLoai_TheLoaiId] FOREIGN KEY([TheLoaiId])
REFERENCES [dbo].[TheLoai] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhamTheLoai] CHECK CONSTRAINT [FK_SanPhamTheLoai_TheLoai_TheLoaiId]
GO
ALTER DATABASE [LimupaStoreDB] SET  READ_WRITE 
GO
