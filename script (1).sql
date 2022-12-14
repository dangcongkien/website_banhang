USE [master]
GO
/****** Object:  Database [website_banhang]    Script Date: 10/12/2022 9:09:27 AM ******/
CREATE DATABASE [website_banhang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'website_banhang', FILENAME = N'D:\SQL Sever\MSSQL15.SQLEXPRESS\MSSQL\DATA\website_banhang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'website_banhang_log', FILENAME = N'D:\SQL Sever\MSSQL15.SQLEXPRESS\MSSQL\DATA\website_banhang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [website_banhang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [website_banhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [website_banhang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [website_banhang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [website_banhang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [website_banhang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [website_banhang] SET ARITHABORT OFF 
GO
ALTER DATABASE [website_banhang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [website_banhang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [website_banhang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [website_banhang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [website_banhang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [website_banhang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [website_banhang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [website_banhang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [website_banhang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [website_banhang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [website_banhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [website_banhang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [website_banhang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [website_banhang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [website_banhang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [website_banhang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [website_banhang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [website_banhang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [website_banhang] SET  MULTI_USER 
GO
ALTER DATABASE [website_banhang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [website_banhang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [website_banhang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [website_banhang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [website_banhang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [website_banhang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [website_banhang] SET QUERY_STORE = OFF
GO
USE [website_banhang]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/12/2022 9:09:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/12/2022 9:09:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/12/2022 9:09:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[uid] [int] NOT NULL,
	[totalmoney] [money] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 10/12/2022 9:09:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[oid] [int] NOT NULL,
	[pid] [int] NOT NULL,
	[quantity] [float] NOT NULL,
	[price] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 10/12/2022 9:09:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (1, N'Adam', N'123456', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (2, N'Anjolie', N'123', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (8, N'Micah', N'RVV5SR', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (9, N'Rowan', N'VAI6XR', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (12, N'Howard', N'TSR5MR', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (13, N'Tana', N'EHS8CM', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (16, N'Slade', N'OFO6QS', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (20, N'Madaline', N'QMW4EN', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (21, N'Vera', N'CZB2VM', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (23, N'Katell', N'SFS0IW', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (24, N'Summer', N'PSQ7LC', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (25, N'Robin', N'KIS9AF', 1, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (27, N'admin', N'123', 0, 1, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (28, N'mra', N'mra', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (29, N'mrb', N'123', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (30, N'Camden', N'123', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (31, N'kien', N'kien123', 0, 0, 1000000)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [amount]) VALUES (32, N'dangcongkien', N'1401', 1, 0, 1000000)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'ÁO THUN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'ÁO KHOÁC')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'ÁO SƠ MI')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'QUẦN JEAN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (5, N'QUẦN ĐÙI')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (1, CAST(N'2022-07-09' AS Date), 31, 560.0000)
INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (2, CAST(N'2022-07-09' AS Date), 31, 560.0000)
INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (3, CAST(N'2022-07-09' AS Date), 31, 560.0000)
INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (4, CAST(N'2022-07-09' AS Date), 31, 790.0000)
INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (5, CAST(N'2022-07-09' AS Date), 31, 790.0000)
INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (6, CAST(N'2022-07-09' AS Date), 31, 300.0000)
INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (7, CAST(N'2022-07-09' AS Date), 31, 300.0000)
INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (8, CAST(N'2022-07-09' AS Date), 31, 260.0000)
INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (9, CAST(N'2022-07-10' AS Date), 31, 200.0000)
INSERT [dbo].[Order] ([id], [date], [uid], [totalmoney]) VALUES (10, CAST(N'2022-07-12' AS Date), 31, 790.0000)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (8, 3, 1, 260.0000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (9, 24, 1, 200.0000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (10, 2, 1, 790.0000)
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (2, N'ÁO KHOÁC NAM', N'https://bizweb.dktcdn.net/100/287/440/products/ao-khoac-nam-dep-local-brand-4.jpg?v=1620874658890', 395.0000, N'Rẻ lắm mua đi, đừng ngại', N'Sử dụng chất liệu dù Micro thoáng mát và thấm hút mồ hôi với lớp lót bổ sung. Đặc biệt, điểm cộng cho chất liệu dù là bạn có thể mang với mọi điều kiện thời tiết và dễ dàng vệ sinh cũng như nhanh khô.', 1, 6, 99)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (3, N'Áo thun tay ngắn unisex', N'https://dosi-in.com/file/detailed/465/dosiin-chodole-ao-thun-tay-ngan-unisex-chodole-cho-ca-nam-va-nuchat-lieu-vai-cotton-in-chu-kind-465308.jpg?w=670&h=670&fit=fill&fm=webp', 130.0000, N'Rẻ lắm mua đi, đừng ngại', N'Thoáng mát, thấm hút mồ hôi', 1, 7, 98)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (5, N'Áo thun tay ngắn Chodole', N'https://dosi-in.com/file/detailed/465/dosiin-chodole-ao-thun-tay-ngan-unisex-chodole-cho-ca-nam-va-nuchat-lieu-vai-cotton-in-hinh-love465299.jpg?w=670&h=670&fit=fill&fm=webp', 150.0000, N'Rẻ lắm mua đi, đừng ngại', N'Thoáng mát, thấm hút mồ hôi', 1, 6, 98)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (6, N'DSW JACKET - WHITE', N'https://bizweb.dktcdn.net/100/287/440/products/ao-khoac-local-brand-co-mu-mau-trang-dep-gia-re-1.jpg?v=1637671916480', 299.0000, N'Rẻ lắm mua đi, đừng ngại', N'Nhẹ và mềm. Kháng nước nhẹ. Bền và dễ vệ sinh.', 2, 7, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (7, N'Áo Thun Tay Ngắn URBAN', N'https://dosi-in.com/file/detailed/335/dosiin-urban-outfits-ao-thun-tay-ngan-nam-nu-urban-outfits-in-minimal-atrcotton-335272335272.jpeg?w=670&h=670&fit=fill&fm=webp', 170.0000, N'Rẻ lắm mua đi, đừng ngại', N'Thoáng mát, thấm hút mồ hôi', 1, 14, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (8, N'Quần jean nam đen', N'https://quanjeandep.com/images/thumbs/quan-jean-nam-den-tuyen-dang-xuong-8508-10926.jpeg', 420.0000, N'Rẻ lắm mua đi, đừng ngại', N'Thoáng mát, thấm hút mồ hôi', 4, 15, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (9, N'ÁO SƠ MI NAM NGẮN TAY', N'https://www.elleman.vn/wp-content/uploads/2021/06/04/195527/nhung-mau-ao-somi-ngan-nghen-don-mua-He-2021-somi-A-Day%E2%80%99s-March-elle-man-2.jpg', 180.0000, N'Rẻ lắm mua đi, đừng ngại', N'Thoáng mát, thấm hút mồ hôi', 3, 14, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (10, N'Quần Jeans Nam', N'https://product.hstatic.net/1000285106/product/22c55eaeb7fa7ea427eb8_a863ba20bde84e7f9d666838690917e4_master.jpg', 180.0000, N'Rẻ lắm mua đi, đừng ngại', N'Thoáng mát, thấm hút mồ hôi', 4, 15, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (11, N'ÁO SƠ MI NAM NGẮN TAY', N'https://www.elleman.vn/wp-content/uploads/2021/06/04/195527/nhung-mau-ao-somi-ngan-nghen-don-mua-He-2021-somi-A-Day%E2%80%99s-March-elle-man-1.jpg', 150.0000, N'Rẻ lắm mua đi, đừng ngại', N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48
', 3, 17, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (12, N'ÁO SƠ MI TAYLOR STITCH', N'https://www.elleman.vn/wp-content/uploads/2021/06/04/195527/nhung-mau-ao-somi-ngan-nghen-don-mua-He-2021-somi-Taylor-Stitch-elle-man.jpg', 165.0000, N'Rẻ lắm mua đi, đừng ngại', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', 3, 19, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (13, N'ÁO SƠ MI BROWN', N'https://www.elleman.vn/wp-content/uploads/2021/06/04/195527/nhung-mau-ao-somi-ngan-nghen-don-mua-He-2021-somi-Orlebar-Brown-elle-man.jpg', 185.0000, N'Rẻ lắm mua đi, đừng ngại', N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear
', 3, 18, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (15, N'QUẦN JEAN NAM XÁM', N'https://mcdn.nhanh.vn/store2/85186/ps/20220120/IMG_3814_copy.jpg', 100.0000, N'Rẻ lắm mua đi, đừng ngại', N'Men''s Fashion Casual Shoes Sports Running Shoes Men''s Shoes
', 4, 6, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (16, N'QUẦN ỐNG SUÔNG', N'https://salt.tikicdn.com/cache/280x280/ts/product/d8/14/5e/b2455b1414df64c9868345394de504e9.jpg', 120.0000, N'Rẻ lắm mua đi, đừng ngại', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', 4, 7, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (17, N'ÁO GITMAN VINTAGE', N'https://www.elleman.vn/wp-content/uploads/2021/06/04/195527/ao-somi-ngan-tay-2021-Gitman-Vintage-elle-man-1.jpeg', 100.0000, N'Rẻ lắm mua đi, đừng ngại', N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords
', 1, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (18, N'ÁO SƠ MI BEAMS PLUS', N'https://www.elleman.vn/wp-content/uploads/2021/06/04/195527/nhung-mau-ao-somi-ngan-nghen-don-mua-He-2021-Beams-Plus-elle-man.jpg', 120.0000, N'Rẻ lắm mua đi, đừng ngại', N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', 3, 7, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (19, N'Quần Jean nữ ', N'https://saigonsneaker.com/wp-content/uploads/2020/11/Quan-Baggy-Nu-Jean-Ong-Rong-Den-14-768x768.jpg', 299.0000, N'Rẻ lắm mua đi đừng ngại', N'Rất tuyệt với', 4, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (20, N'Quần jean chun nữ', N'https://th.bing.com/th/id/R.f3735d79f9e5acd8b8ad33f24341f786?rik=vtJHGomkWBA%2bWQ&riu=http%3a%2f%2fgdimg.gmarket.co.kr%2f1954189991%2fstill%2f600%3fver%3d1611123074&ehk=04G9ZLtlVwy6Jbm6hIV5VAfw5VdneRXO1yngTShMDMk%3d&risl=&pid=ImgRaw&r=0', 399.0000, N'Rẻ lắm mua đi đừng ngại', N'Mặc cực kì đẹp luôn nha', 4, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (21, N'Áo đi biển', N'https://i.pinimg.com/originals/c4/cd/c4/c4cdc4b0f2b6412ffc89f5f94793e278.jpg', 200.0000, N'Rẻ lắm, mua đi đừng ngại', N'Mặc vào là có người yêu', 3, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (23, N'Burberry - Branded Tee White', N'https://www.babyshop.com/images/741560/card_xlarge.jpg', 399.0000, N'Mua đi, rẻ lắm đừng ngại ngại ngại ngại ngại ngại ngại ngại ', N'Mặc vào là crush auto đổ ', 1, 32, 123)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (24, N'Áo thun nữ basic', N'https://i.pinimg.com/originals/a6/3e/ba/a63ebaf505d0a6f534e25e316bc2269d.jpg', 100.0000, N'Rẻ lắm, mua đi đừng ngại', N'Mặc vào người yêu mê đến già', 1, 32, 99)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (25, N'Quần jean nam', N'https://www.shellter-oknw.jp/data/shellter-oknw/product/20210122_eb0475.jpg', 100.0000, N'Mua đi', N'Rê lắm', 1, 32, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (26, N'Quần jean nam xanh', N'https://res.cloudinary.com/yerdle/image/upload/w_500,h_500,c_fit/v1611079068/production/partners/8/inventoryItem/883781/sdbek7vwe7hipjzfc9al.jpg', 399.0000, N'Rẻ lắm  mua đi đừng ngại', N'Mặc vào là có người yêu', 4, 32, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (27, N'Quần jean nam ống xuông', N'https://th.bing.com/th/id/OIP.HSP1qlUxI7PYOtzFfBsGaAHaHa?pid=ImgDet&rs=1', 200.0000, N'Rẻ lắm mua đi đừng ngại', N'Thoáng mát, thấm hút mồ hôi', 4, 32, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (28, N'Quần đùi kaki nữ', N'https://di2ponv0v5otw.cloudfront.net/posts/2018/07/27/5b5b39a7aaa5b89a60b32efe/m_5b5b39b77386bc13eafe3026.jpg', 100.0000, N'Rẻ lắm mua đi đừng ngại', N'Thoáng mát, thấm hút mồ hôi', 5, 32, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (30, N'Quần đùi nữ', N'https://di2ponv0v5otw.cloudfront.net/posts/2018/07/27/5b5b39a7aaa5b89a60b32efe/m_5b5b39b77386bc13eafe3026.jpg', 90000.0000, N'Rẻ lắm mua đi đừng ngại', N'Mặc đi chơi với gấu là hết bài', 5, 6, 90)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([uid])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_Order] FOREIGN KEY([oid])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_Order]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_product] FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
USE [master]
GO
ALTER DATABASE [website_banhang] SET  READ_WRITE 
GO
