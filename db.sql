USE [OnlineShop]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungBinhLuan] [nvarchar](255) NULL,
	[MaSanPham] [int] NULL,
	[MaTaiKhoan] [nvarchar](128) NULL,
	[TenTaiKhoan] [nvarchar](256) NULL,
	[TinhTrang] [int] NULL CONSTRAINT [DF_BinhLuan_TinhTrang]  DEFAULT ((1)),
	[Ngay] [datetime] NULL CONSTRAINT [DF_BinhLuan_Ngay]  DEFAULT (getdate()),
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL CONSTRAINT [DF_ChiTietGioHang_SoLuong]  DEFAULT ((1)),
	[DonGia] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_ChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPhieuNhap] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[DonGiaNhap] [int] NULL,
	[SoLuongNhap] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [date] NULL,
	[TinhTrangGiao] [nvarchar](50) NULL,
	[NgayGiao] [date] NULL,
	[DaThanhToan] [bigint] NULL,
	[MaKhachHang] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhAnh] [varchar](100) NULL,
	[MaSanPham] [int] NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[SoDienThoai] [nchar](11) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](150) NULL,
	[Icon] [nvarchar](50) NULL,
	[DaXoa] [bigint] NULL CONSTRAINT [DF_LoaiSanPham_DaXoa]  DEFAULT ((0)),
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[Email] [nvarchar](50) NULL,
	[DienThoai] [nchar](11) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaSanXuat] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](250) NULL,
	[Logo] [nvarchar](50) NULL,
	[DaXoa] [int] NULL CONSTRAINT [DF_NhaSanXuat_DaXoa]  DEFAULT ((0)),
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaNhaCungCap] [int] NULL,
	[NgayNhap] [date] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[GiaBan] [int] NULL,
	[SoLuong] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[LuotXem] [int] NULL,
	[NgayNhap] [date] NULL,
	[HinhUrl] [nvarchar](100) NULL,
	[MoTa] [nvarchar](255) NULL,
	[MaLoaiSanPham] [int] NULL,
	[MaNhaCungCap] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[DaXoa] [bigint] NULL CONSTRAINT [DF_SanPham_DaXoa]  DEFAULT ((0)),
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[V_GioHang]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_GioHang]
AS
SELECT        dbo.GioHang.Id, dbo.GioHang.MaTaiKhoan, dbo.GioHang.MaSanPham, dbo.GioHang.SoLuong, dbo.SanPham.TenSanPham, dbo.SanPham.HinhUrl, dbo.SanPham.MoTa, dbo.SanPham.GiaBan
FROM            dbo.GioHang INNER JOIN
                         dbo.SanPham ON dbo.GioHang.MaSanPham = dbo.SanPham.MaSanPham

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705021739238_InitialCreate', N'OnlineShop.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CD919CC1AED044EDBCE1A3BBE60DA13E46DC096D86D62244A9128C7C6225F96877C527E618B1275E345976EB9BB1D0C30B0C8E2A962B148168BC5FEF3F73FA6DF3F07BEF584E38484F4CC3E9A1CDA16A66EE811BA3AB353B6FCF683FDFD777FFFDBF4D20B9EAD9F0ABA134E072D6972663F32169D3A4EE23EE200259380B87198844B3671C3C0415EE81C1F1EFEDB393A723040D8806559D34F296524C0D9077CCE42EAE288A5C8BF093DEC27A21C6AE619AA758B029C44C8C567F61DF509C5F3C7309AE4C4B675EE130482CCB1BFB42D4469C81003314F3F2778CEE290AEE6111420FFE125C240B7447E8285F8A71579DF9E1C1EF39E3855C302CA4D13160603018F4E846A1CB9F95A0AB64BD581F22E41C9EC85F73A53E0997DEDE1ACE853E883026486A7333FE6C467F64DC9E23C896E319B140D2739E4550C70BF86F1D7491DF1C0EADDEEA034A5E3C921FF7760CD529FA5313EA3386531F20FACFB74E113F7BFF8E521FC8AE9D9C9D16279F2E1DD7BE49DBCFF173E7957EF29F415E81A0550741F87118E4136BC2CFB6F5B4EB39D23372C9BD5DAE45A015B8259615B37E8F923A62BF608F3E5F8836D5D9167EC1525C2B83E530293081AB13885CFDBD4F7D1C2C765BDD3CA93FFDFC2F5F8DDFB51B8DEA227B2CA865EE20F13278679F509FB596DF248A27C7A35C6FB8B20BB8AC3807F37ED2BAFFD320FD3D8E59D098D240F285E61D6946EEA54C6DBCBA439D4F8665DA0EEBF69734955F3D692F20EAD33130A16DB9E0D85BCAFCBB7B7C59D47110C5E665A5C236D06A7EC5513A9F1815591548673D4D7702874E8AFBC0E5E0688F8232C843DB8800BB2247180CB5EFE1082D9213A58E67B9424B00E78FF41C9638BE8F0E708A2CFB19BC6609E738682E8D5B9DD3F8614DFA6C1825BFDF6788D36340FBF8657C865617C4979AB8DF13E86EED7306597D4BB400C7F666E01C83F1F48D01F601471CE5D1727C9151833F6662178D805E0356527C783E1F8FAB46B4764E62312E83D116925FD529056DE889E42F1480C643AAFA44DD48FE18AD07EA216A46651738A4E5105D9505139583F4905A559D08CA053CE9C6A343F2F1BA1F11DBD0C76FF3DBDCD366FD35A5053E31C5648FC23A6388665CCBB478CE1985623D067DDD885B3900D1F67FAEA7B53C6E927E4A763B35A6B36648BC0F8B32183DDFFD9908909C54FC4E35E498FE34F410CF0BDE8F527ABEE392749B6EDE9D0E8E6B6996F670D304D97F324095D92CD024DE04B842D9AF2830F6775C730F2DEC87110E818183AE15B1E9440DF6CD9A8EEE805F631C3D6B99B070667287191A7AA113AE40D10ACD851358255F190A670FF547882A5E3983742FC1094C04C2594A9D382509744C8EFD492D4B2E716C6FB5EF2906B2E70842967D8A9893ECCF5E10F2E40C9471A942E0D4D9D9AC5B51BA2C16B358D79970B5B8DBB1295D88A4D76F8CE06BB14FEDBAB1866BBC6B6609CED2AE923803194B70B03156795BE06201F5CF6CD40A51393C140854BB515036D6A6C0706DA54C99B33D0FC88DA77FCA5F3EABE9967F3A0BCFD6DBD555D3BB0CD863EF6CC3473DF13DA30688163D53C2F16BC123F33CDE10CE414E7B344B8BAB28970F03966CD904DE5EF6AFD50A71D4436A236C0CAD03A40C525A002A44CA801C215B1BC56E984173100B688BBB5C28AB55F82ADD9808A5DBF0CAD119AAF4C65E3EC75FA287B565A8362E4BD0E0B351C8D41C88B57B3E33D94628ACBAA8AE9E30B0FF1866B1D1383D1A2A00ECFD5A0A4A233A36BA930CD6E2DE91CB2212ED9465A92DC2783968ACE8CAE2561A3DD4AD2380503DC828D54D4DCC2479A6C45A4A3DC6DCABAA993A7488982A963C8A59ADEA028227455CBAD1225D63C4FAC9A7D3B1F9E7214E4188E9B68328F4A694B4E2C8CD10A4BB5C01A24BD2271C22E10430BC4E33C332F50C8B47BAB61F92F58D6B74F75108B7DA0A0E67FE72DD4ABFBC656ABFA2202E20A3A187087268BA26B865FDFDCE2A96EC847B126703F0BFD34A066FFCADC3ABFBEABB7CF4B5484A923C9AFF84F8AB2142FB7A9F95EE3A2CE8971C6A8F45ED61F27338449DB85EF59D7B7C91F35A314E1A93A8A2964B5B37133B93143C64A7610870F5527C2EBCC2A91955207104503316A890D0A58ADAE3F6A33F7A48ED9ACE98F282598D421A5AA0152D6D3481A42D62BD6C23368544FD19F839A385247576BFB236B5248EAD09AEA35B03532CB75FD5135592675604D757FEC2AE5445E43F778DF321E5BD6DDB8F283ED663B9701E37516C47136BEDAFD7D1DA8563C104BDCD02B60A27C2F8DC978BA5BD798F270C666C664C030AF3B8D8BEFE6B2D37A5B6FC66CDC663796F6B6DB7C33DE30937D55C350CE763249C9BD3CE34967B9A93857753F9E510E5A39896D156A846DFD256138987082C9FC177FE613CC17F182E00651B2C409CB3338ECE3C3A363E901CEFE3C867192C4F335E752D38B98E6986D21198B3EA1D87D44B19A1AB1C183910A54893A5F530F3F9FD9FFCB5A9D66010CFE57567C605D279F29F925858A8738C5D66F6AAAE73809F4ED27AC3D7DEED05FABD73F7FC99B1E587731CC9853EB50D2E53A23DC7C0431489ABCE906D2ACFD34E2ED4EA8C6CB032DAA3421D67F68B0206C9447068594DF04E8F91F4345D33E24D80851F358602CBC5154687A0CB00E96F12180079F2C7B0830ACB3FA8701EB88667C1440E87030F94940FF65A868B9C3AD467324DAC69294E9B933A57AA3FCCA5DEF4D4AE6F546135DCDAE1E00B74106F51A96F1C6928F47DB1D35B9C5A361EFD2B45F3DA1785F7288ABEC8EDDA60E6F335BB8E54EE82F9524BC07696D9A349DDDA7026FDBD64C61DC3DCFA71C96F0BB67C62692B7769FD6BB6D63338579F7DCD80625EFEE99ADED6AFFDCB1A5F5DE42779E8AAB661519AE6374B1E0AE54DB3C700E27FC450846907B94F90B497D6E575B5E6A07C38AC4CCD49C54263356268EC257A168673BACAF62C36FEDACA069676B48C56CE32DD6FF56DE82A69DB721C1711749C2DA14435DE276C73AD69601F59692821B3DE9C841EFF2595BEFD6DF520EF0284A69CC1EC31DF1DB49F91D4525634E9D0129BEEA752FEC9DB55F5484FD3B21AB0A82FFBE22C56E63D72C69AEE9322C366F49A282448AD0DC60863CD852CF634696C86550CD63CCD913EF2C6EC76F3A16D8BBA677298B52065DC6C1C26F04BCB813D0C63FCB636ECA3CBD8BB25F2B19A30B2026E1B1F93BFA434A7CAF94FB4A1313324070EF424474F958321ED95DBD9448B721ED0924D4573A450F38887C004BEEE81C3DE1756403F3FB8857C87DA922802690EE8168AA7D7A41D02A46412230AAF6F00936EC05CFDFFD1FC029A6A958540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'76cb7dfb-ce73-40b6-90fe-074a2bf676d6', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'32f45676-5166-4401-b81e-86ad09d171ff', N'76cb7dfb-ce73-40b6-90fe-074a2bf676d6')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 0, N'AJzn/gP4tQOxH7tfSwbFG9hE9WjugbhPen2C4Pi2PjMNGlmwAoIgCOw7VgNgbdw/ug==', N'8b938eea-e2c1-448a-8c76-00db77ea342e', NULL, 0, 0, NULL, 0, 0, N'caophivo@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 0, N'AIwdGVQTWvbpY33FkS55s3awE/stv+CqXNsbI8y7+0LwXi6drkbSuo4elj2AXT8T/w==', N'ce1ae19e-1bc0-43c1-9fd4-5fa3e74ab3c9', NULL, 0, 0, NULL, 1, 0, N'1461749@gmail.com')
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (14, N'noidung', 1, N'32f45676-5166-4401-b81e-86ad09d171ff', N'dsadsad', 1, CAST(N'2017-05-06 23:48:23.203' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (15, NULL, 1, N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 1, CAST(N'2017-05-06 23:54:52.220' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (16, NULL, 1, N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 1, CAST(N'2017-05-07 00:01:10.197' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (17, N'hay', 1, N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 1, CAST(N'2017-05-07 00:15:35.773' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (18, N'ngon', 1, N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 1, CAST(N'2017-05-07 00:16:02.360' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (19, N'len', 1, N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 1, CAST(N'2017-05-07 00:27:42.493' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (20, N'lên nè', 1, N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 1, CAST(N'2017-05-07 00:29:16.537' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (21, N'lên nữa nè', 1, N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 1, CAST(N'2017-05-07 00:29:26.917' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (22, N'lên đi', 1, N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 1, CAST(N'2017-05-07 00:30:27.113' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (23, N'binh luan', 2, N'32f45676-5166-4401-b81e-86ad09d171ff', N'caophivo@gmail.com', 1, CAST(N'2017-05-07 00:30:54.450' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (24, N'bình luận nè', 1, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:31:22.213' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (25, NULL, 1, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:32:26.610' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (26, NULL, 1, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:32:55.083' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (27, NULL, 1, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:35:27.580' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (28, NULL, 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:43:10.457' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (29, NULL, 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:45:05.117' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (30, N'ngon', 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:52:10.737' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (31, N'ngon rồi', 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:54:03.913' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (32, N'ngon không', 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:54:12.210' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (33, N'ngon đấy', 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:54:54.380' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (34, N'tets dấdsad', 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:55:52.040' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (35, N'dsadsad', 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:55:58.217' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (36, N'dsadsad dsadsa', 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:56:47.253' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (37, N'test', 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:58:53.140' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [TinhTrang], [Ngay]) VALUES (38, N'ok ok', 3, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b', N'1461749@gmail.com', 1, CAST(N'2017-05-07 00:58:58.507' AS DateTime))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong], [DonGia]) VALUES (2, 1, 1, 18990000)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong], [DonGia]) VALUES (3, 2, 1, 27990000)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong], [DonGia]) VALUES (4, 3, 1, 14990000)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong], [DonGia]) VALUES (5, 4, 1, 9900000)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong], [DonGia]) VALUES (6, 10, 10, 4900000)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong], [DonGia]) VALUES (7, 8, 1, 3990000)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong], [DonGia]) VALUES (8, 2, 1, 27990000)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong], [DonGia]) VALUES (9, 5, 1, 16990000)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong], [DonGia]) VALUES (10, 7, 1, 5990000)
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
SET IDENTITY_INSERT [dbo].[ChiTietGioHang] ON 

INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (1, 1, 27990000, 2, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b')
INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (2, 1, 9990000, 4, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b')
INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (3, 2, 28490000, 9, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b')
INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (4, 1, 27990000, 2, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b')
INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (5, 1, 9990000, 4, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b')
INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (6, 1, 28490000, 9, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b')
INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (7, 5, 18490000, 1, N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b')
INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (8, 3, 28490000, 9, N'32f45676-5166-4401-b81e-86ad09d171ff')
INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (9, 3, 490000, 10, N'32f45676-5166-4401-b81e-86ad09d171ff')
INSERT [dbo].[ChiTietGioHang] ([Id], [SoLuong], [DonGia], [MaSanPham], [MaTaiKhoan]) VALUES (10, 1, 9990000, 4, N'32f45676-5166-4401-b81e-86ad09d171ff')
SET IDENTITY_INSERT [dbo].[ChiTietGioHang] OFF
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (1, 1, 1899000000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 2, 279900000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 3, 1499000000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 4, 999000000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (5, 5, 1699000000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (6, 6, 299000000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (7, 7, 599000000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (8, 8, 399000000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (9, 9, 284900000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaSanPham], [DonGiaNhap], [SoLuongNhap]) VALUES (10, 10, 49000000, 100)
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (1, N'636184522417044688_samsung-galaxy-s7-edge-black-pearl-1.jpg', 1)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (2, N'636184522417200689_samsung-galaxy-s7-edge-black-pearl-2.jpg', 1)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (3, N'636185456421810655_Samsung-S7-Edge-Black-Pearl-4.jpg', 1)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (4, N'636159398645952790_ip7-black-1.jpg', 2)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (5, N'636159398740350005_ip7-black-2.jpg', 2)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (6, N'636159398740506008_ip7-black-3.jpg', 2)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (7, N'636162663529461412_xz-black-1.jpg', 3)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (8, N'636162663627171412_xz-black-2.jpg', 3)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (9, N'636177556273957518_Sony-xperia-xz-black-2.jpg', 3)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (10, N'636259620677166936_f3plus-a.jpg', 4)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (11, N'636259638278802936_f3-plus-vang-1.jpg', 4)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (12, N'636259640723478936_f3-plus-vang-2.jpg', 4)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (13, N'636264839959193243_800truoc.jpg', 6)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (14, N'636264840081655598_800sau.jpg', 6)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (15, N'636264840275099318_800phai.jpg', 6)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (16, N'636168983990905316_ipad-pro-97-4G-gold-1.jpg', 7)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (17, N'636168984084505316_ipad-pro-97-4G-gold-2.jpg', 7)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (18, N'636168984084817316_ipad-pro-97-4G-gold-3.jpg', 7)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (19, N'hp-14-am065tu-x3b72pa-400x400-400x400.png', 8)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (20, N'hp-14-am065tu-x3b72pa-400x400-400x400-1.png', 8)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (21, N'hp-14-am065tu-x3b72pa-400x400-400x400-2.png', 8)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (22, N'apple-macbook-12-mmgl2-core-m-11g-8gb-256gb-macos-400-400x400.png', 9)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (23, N'apple-macbook-12-mmgl2-core-m-11g-8gb-256gb-macos-400-400x400-1.png', 9)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (24, N'apple-macbook-12-mmgl2-core-m-11g-8gb-256gb-macos-400-400x400-2.png', 9)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (25, N'adapter-sac-12w-iphone-ipad-ipod-apple-md836zm-a1-300x300.jpg', 10)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (26, N'adapter-sac-12w-iphone-ipad-ipod-apple-md836zm-a1-300x300-1.jpg', 10)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (27, N'adapter-sac-12w-iphone-ipad-ipod-apple-md836zm-a1-300x300-2.jpg', 10)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (28, N'htc-102-400x460.png', 5)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (29, N'htc-one-m10-render-2-471x383-1.jpg', 5)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSanPham]) VALUES (30, N'201603051025309229_CctlCzJXIAAInqV.jpg', 5)
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [Icon], [DaXoa]) VALUES (1, N'	ĐIỆN THOẠI', N'iphone.png', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [Icon], [DaXoa]) VALUES (2, N'	TABLET', N'tablet.png', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [Icon], [DaXoa]) VALUES (3, N'LAPTOP', N'laptop.png', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [Icon], [DaXoa]) VALUES (4, N'PHỤ KIỆN', N'phukien.png', 0)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [Email], [DienThoai]) VALUES (1, N'Viễn sơn', N'Hồ Chí Minh', N'vienson@gmail.com', N'099873646  ')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [Email], [DienThoai]) VALUES (2, N'FPT', N'Hồ Chí Minh', N'fpt@gmail.com', N'098654321  ')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (1, N'Apple', N'Thương hiệu Mỹ', N'apple.png', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (2, N'Samsung', N'Thương hiệu Hàn Quốc', N'samsung.png', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (3, N'Sony', N'Thương hiệu Nhật', N'sony.png', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (4, N'OPPO', N'Thương hiệu Đài Loan', N'oppo.png', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (5, N'Dell', N'Thương hiệu Mỹ', N'dell.png', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (6, N'HTC', N'Thương hiệu Đài Loan', N'htc.png', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (7, N'Asus', N'Thương hiệu Trung Quốc', N'asus.png', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (8, N'HP-Compaq', N'Thương hiệu Mỹ', N'hp.png', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (9, N'Lenovo', N'Thương hiệu Trung Quốc', N'lenovo.png', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [ThongTin], [Logo], [DaXoa]) VALUES (10, N'Acer', N'Thương Hiệu Trung Quốc', N'acer.png', 0)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (1, 2, CAST(N'2017-03-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (2, 1, CAST(N'2017-03-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (3, 2, CAST(N'2017-03-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (4, 1, CAST(N'2017-03-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (5, 2, CAST(N'2017-03-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (6, 1, CAST(N'2017-03-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (7, 2, CAST(N'2017-03-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (8, 1, CAST(N'2017-03-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (9, 2, CAST(N'2017-03-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [NgayNhap]) VALUES (10, 1, CAST(N'2017-03-07' AS Date))
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (1, N'Điện thoại Samsung Galaxy S7 Edge (Xanh Coral)', 18490000, 100, 1, 0, 5, CAST(N'2017-03-07' AS Date), N'636184522417044688_samsung-galaxy-s7-edge-black-pearl-1.jpg', N'Màn hình: Super AMOLED, 5.5", Quad HD', 1, 1, 2, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (2, N'Điện thoại iPhone 7 Plus 256GB', 27990000, 100, 1, 0, 2, CAST(N'2017-03-07' AS Date), N'636159398645952790_ip7-black-1.jpg', N'Màn hình: LED-backlit IPS LCD, 5.5", Retina HD', 1, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (3, N'Điện thoại Sony Xperia XZ', 14990000, 100, 1, 0, 3, CAST(N'2017-03-07' AS Date), N'636162663529461412_xz-black-1.jpg', N'Màn hình: TRILUMINOS™, 5.2", Full HD', 1, 1, 3, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (4, N'Điện thoại OPPO F1 Plus', 9990000, 100, 1, 0, 6, CAST(N'2017-03-07' AS Date), N'636259620677166936_f3plus-a.jpg', N'Màn hình: AMOLED, 5.5", Full HD', 1, 2, 4, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (5, N'Điện thoại HTC 10', 16990000, 100, 1, 0, 8, CAST(N'2017-03-07' AS Date), N'htc-102-400x460.png', N' Màn hình: SSuper LCD 5, 5.2", Quad HD', 1, 1, 6, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (6, N'Máy tính bảng Samsung Galaxy Tab 3V T116', 2990000, 100, 1, 0, 9, CAST(N'2017-03-07' AS Date), N'636264839959193243_800truoc.jpg', N'Màn hình: TFT, 7"', 1, 2, 2, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (7, N'Máy tính bảng iPad Mini 2 Retina 16GB/WiFi', 5990000, 100, 1, 0, 5, CAST(N'2017-03-07' AS Date), N'636168983990905316_ipad-pro-97-4G-gold-1.jpg', N' Màn hình: Retina công nghệ IPS, 7.9"', 2, 1, 1, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (8, N'Laptop Lenovo IdeaPad 100S/2GB/32GB/Win10', 3990000, 100, 1, 0, 34, CAST(N'2017-03-07' AS Date), N'hp-14-am065tu-x3b72pa-400x400-400x400.png', N'CPU: Intel, Atom, Z3735F Quad-Core, 1.33 GHz', 3, 2, 9, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (9, N'Laptop Apple Macbook MLH71 Core M 1.1G/8GB/256GB', 28490000, 100, 1, 0, 4, CAST(N'2017-03-07' AS Date), N'apple-macbook-12-mmgl2-core-m-11g-8gb-256gb-macos-400-400x400.png', N'CPU: Intel, Core M, -, 1.10 GHz', 3, 1, 1, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaBan], [SoLuong], [LuotBinhChon], [LuotBinhLuan], [LuotXem], [NgayNhap], [HinhUrl], [MoTa], [MaLoaiSanPham], [MaNhaCungCap], [MaNhaSanXuat], [DaXoa]) VALUES (10, N'Adapter Sạc Iphone-Ipad-Ipod 12W MD836ZM Apple', 490000, 100, 1, 0, 2, CAST(N'2017-03-07' AS Date), N'adapter-sac-12w-iphone-ipad-ipod-apple-md836zm-a1-300x300.jpg', N' Phù hợp với hầu hết các dòng iPhone, iPad, iPod.', 4, 2, 1, 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[DonDatHang] ADD  CONSTRAINT [DF_DonDatHang_DaThanhToan]  DEFAULT ((0)) FOR [DaThanhToan]
GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_SanPham]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertChiTietDonHang]    Script Date: 5/16/2017 9:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_InsertChiTietDonHang] @mataikhoan nvarchar(128)
AS
BEGIN
	INSERT INTO chitietgiohang(SoLuong, DonGia, MaSanPham, MaTaiKhoan)
	SELECT DISTINCT SoLuong, GiaBan, MaSanPham, MaTaiKhoan 
    FROM dbo.V_GioHang WHERE MaTaiKhoan=@mataikhoan

	DELETE dbo.GioHang WHERE MaTaiKhoan=@mataikhoan
END 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GioHang"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SanPham"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 424
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_GioHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_GioHang'
GO
