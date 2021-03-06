/****** Object:  Database [ArtGallery]    Script Date: 09/29/2014 10:59:04 ******/
CREATE DATABASE [ArtGallery] ON  PRIMARY 
( NAME = N'ArtGallery', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ArtGallery.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ArtGallery_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ArtGallery_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ArtGallery] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ArtGallery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ArtGallery] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ArtGallery] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ArtGallery] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ArtGallery] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ArtGallery] SET ARITHABORT OFF
GO
ALTER DATABASE [ArtGallery] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ArtGallery] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ArtGallery] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ArtGallery] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ArtGallery] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ArtGallery] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ArtGallery] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ArtGallery] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ArtGallery] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ArtGallery] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ArtGallery] SET  DISABLE_BROKER
GO
ALTER DATABASE [ArtGallery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ArtGallery] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ArtGallery] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ArtGallery] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ArtGallery] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ArtGallery] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ArtGallery] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ArtGallery] SET  READ_WRITE
GO
ALTER DATABASE [ArtGallery] SET RECOVERY FULL
GO
ALTER DATABASE [ArtGallery] SET  MULTI_USER
GO
ALTER DATABASE [ArtGallery] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ArtGallery] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ArtGallery', N'ON'
GO
/****** Object:  Table [dbo].[ArticleGroup]    Script Date: 09/29/2014 10:59:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleGroup](
	[ArticleGroupID] [int] IDENTITY(1,1) NOT NULL,
	[ArticleGroupTitle] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_ArticleGroup] PRIMARY KEY CLUSTERED 
(
	[ArticleGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ArticleGroup] ON
INSERT [dbo].[ArticleGroup] ([ArticleGroupID], [ArticleGroupTitle]) VALUES (1, N'سبک های نقاشی')
INSERT [dbo].[ArticleGroup] ([ArticleGroupID], [ArticleGroupTitle]) VALUES (2, N'درس رنگ ها')
SET IDENTITY_INSERT [dbo].[ArticleGroup] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 09/29/2014 10:59:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleTitle] [nvarchar](50) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RoleID], [RoleTitle], [RoleName]) VALUES (1, N'مدیر سیستم', N'Admin')
INSERT [dbo].[Roles] ([RoleID], [RoleTitle], [RoleName]) VALUES (2, N'کاربر عادی', N'CasualUser')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[News]    Script Date: 09/29/2014 10:59:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsID] [int] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [nvarchar](200) NULL,
	[NewsText] [ntext] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[News] ON
INSERT [dbo].[News] ([NewsID], [NewsTitle], [NewsText]) VALUES (3, N'خبر', N'ورود شما بازدیدکننده محترم را به وب سایت رسمی مهناز شریف عسکری گرامی میداریم.')
SET IDENTITY_INSERT [dbo].[News] OFF
/****** Object:  Table [dbo].[Images]    Script Date: 09/29/2014 10:59:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Images](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[FaImageTitle] [nvarchar](150) NOT NULL,
	[EnImageTitle] [varchar](150) NOT NULL,
	[Dimension] [nvarchar](150) NULL,
	[Price] [nvarchar](150) NULL,
	[FaTeknik] [nvarchar](150) NULL,
	[EnTeknik] [varchar](150) NULL,
	[FaStatus] [nvarchar](250) NULL,
	[Enstatus] [varchar](250) NULL,
	[ImageUrl] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (15, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/3d9808ba-8179-4f7d-88d4-b06d9230f389.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (16, N'اثر نقاشی لبخند شیرین', N'Sweet Smile', N'100*120', N'10,300,000', N'رئال/رنگ روغن روی بوم', N'Oil on Canvas/Real', N'امکان خرید حضوری در تهران', N'Person can buy in tehran', N'~/Uploads/GalleryImages/7461fb4b-4fab-4c08-820a-b7d8659993f1.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (17, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/2720962c-5fd8-4a1c-b3e3-98e1a07061e2.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (18, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/b564a352-8cbc-417c-b7ce-ce9e5ec3710a.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (19, N'مداد روی کاغذ', N'Pencil On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/17e0510e-e4f9-4972-a4a8-7a356094cdcd.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (20, N'مداد روی کاغذ', N'Pencil On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/7966c443-51c2-4690-8c81-0ab2be407d97.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (21, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/ffd99ba7-fe1d-4ba0-8d9f-837fd740ed77.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (22, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/f08bf161-73bd-48bf-aae3-7bdc30187aea.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (23, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/14774752-bef3-4824-85bb-b24ee3feeb7c.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (24, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/8c9e8a2c-8638-408a-9e6f-87c7c9c75e92.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (25, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/2349d032-0fde-41a3-a52b-905d0dd873b6.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (26, N'مداد روی کاغذ', N'Pencil On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/b1a0aec1-e48e-4533-a716-a8e708a5a1bc.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (27, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/c361b734-bd48-45ed-b03b-8894c1922d30.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (28, N'رنگ روغن سیاه و سفید روی بوم', N'Black & White Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/a5646002-ac86-4f48-b7d2-d7fa05e6b1f2.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (29, N'آبرنگ روی بوم', N'Water Color On Canvas ', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/a1e8bd47-ba15-4ce8-975e-dbca646fb1e4.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (30, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/cf95bea6-3b59-4b1d-a6d1-a4870bda8b8e.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (31, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/d27c726c-57db-477a-8bd5-b11193408e9f.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (32, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/43195e13-b354-40a2-970c-e0a1f489e2cc.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (33, N'مداد روی کاغذ', N'Pencil On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/ef471a73-b759-4eb5-9d54-d217930757b9.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (34, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/cc1e89fc-ae57-4feb-907b-23c336afce65.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (35, N'مداد روی کاغذ', N'Pencil On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/23e070b6-b19e-4805-80fb-f260aa9a3016.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (36, N'مداد رنگی روی کاغذ', N'Colored Pencil On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/06f1a78f-f398-4c31-b30a-76062aa0a09f.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (37, N'مداد رنگی روی کاغذ', N'Colored Pencil On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/538cef01-3993-4d03-8585-9ab5859d9fb5.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (38, N'کنته و پاستل روی کاغذ', N'Conte & Pastel On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/367543c4-766c-4241-80ad-2f2bcbc1593b.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (39, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/63e371cd-1b8e-4c28-afab-3cb8498f34e4.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (40, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/0131062d-eee9-4406-886c-81c247325f82.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (41, N'پاستل روی کاغذ', N'Pastel On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/d326db30-8bbe-4972-9a66-0a6055adb455.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (42, N'پاستل روی کاغذ', N'Pastel On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/e91271f1-ebd3-492f-8af7-0eb59f6cd713.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (43, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/1e1fdbd6-0d96-41cd-89fb-0070af506164.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (44, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/08dc55a1-2de8-4486-aa5e-3cbd7ef0d250.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (46, N'آبرنگ روی کاغذ', N'Water Color On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/bd882edf-986d-4e93-a63d-cab3ba71ae73.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (47, N'آبرنگ روی کاغذ', N'Water Color On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/507753ff-c4aa-4f46-8eef-596bd85b46b9.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (48, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/a9b0c66e-691e-48fa-939d-ed8b9125a510.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (49, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/a2ba1308-6fdc-43b9-805e-de0b9636bf44.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (50, N'پاستل روی کاغذ مخملی', N'Pastel On Velvety Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/81bab843-881a-41de-8866-4cc691a2e8f8.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (51, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/b5bbedd7-9251-403a-9a4c-7673814df952.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (52, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/dbd489f3-3e64-4802-99de-a56f32169db7.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (53, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/bc64cd0a-4774-4dba-a737-8706d3d12bfb.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (54, N'آبرنگ روی کاغذ', N'Water Color On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/8e98f94c-12bf-407b-afe8-175f6529d984.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (55, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/15753423-c46f-481f-99b7-d83037412a5a.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (56, N'آبرنگ روی کاغذ', N'Water Color On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/95da70d3-1dbc-4f2b-a2db-69e5fd9e3e07.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (57, N'رنگ روغن روی بوم', N'Oil On Canvas', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/41a06a67-e442-4bf1-88ea-6cea1968ad06.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (58, N'مداد رنگی روی کاغذ', N'Colored Pencil On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/eb9170b1-b609-4a19-a789-9f0b66141478.jpg')
INSERT [dbo].[Images] ([ImageID], [FaImageTitle], [EnImageTitle], [Dimension], [Price], [FaTeknik], [EnTeknik], [FaStatus], [Enstatus], [ImageUrl]) VALUES (59, N'پودر مداد روی کاغذ', N'Powder Pencil On Paper', NULL, NULL, NULL, NULL, NULL, NULL, N'~/Uploads/GalleryImages/6da7bd35-c814-440a-a654-137e9a2a3885.jpg')
SET IDENTITY_INSERT [dbo].[Images] OFF
/****** Object:  Table [dbo].[Articles]    Script Date: 09/29/2014 10:59:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articles](
	[ArticleID] [int] NOT NULL,
	[ArticleGroupID] [int] NOT NULL,
	[ArticleTitle] [nvarchar](150) NOT NULL,
	[ArticleText] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_Roles_Update]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Roles_Update
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 3:20:39 PM
-- Description:	This stored procedure is intended for updating Roles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Roles_Update]
	@RoleID int,
	@RoleTitle nvarchar(50),
	@RoleName varchar(50)
As
Begin
	Update Roles
	Set
		[RoleTitle] = @RoleTitle,
		[RoleName] = @RoleName
	Where		
		[RoleID] = @RoleID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Roles_SelectRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Roles_SelectRow
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 3:20:39 PM
-- Description:	This stored procedure is intended for selecting a specific row from Roles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Roles_SelectRow]
	@RoleID int
As
Begin
	Select 
		[RoleID],
		[RoleTitle],
		[RoleName]
	From Roles
	Where
		[RoleID] = @RoleID
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Roles_SelectAll]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Roles_SelectAll
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 3:20:39 PM
-- Description:	This stored procedure is intended for selecting all rows from Roles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Roles_SelectAll]
As
Begin
	Select 
		[RoleID],
		[RoleTitle],
		[RoleName]
	From Roles
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Roles_Insert]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Roles_Insert
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 3:20:39 PM
-- Description:	This stored procedure is intended for inserting values to Roles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Roles_Insert]
	@RoleTitle nvarchar(50),
	@RoleName varchar(50)
As
Begin
	Insert Into Roles
		([RoleTitle],[RoleName])
	Values
		(@RoleTitle,@RoleName)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Roles_DeleteRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Roles_DeleteRow
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 3:20:39 PM
-- Description:	This stored procedure is intended for deleting a specific row from Roles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Roles_DeleteRow]
	@RoleID int
As
Begin
	Delete Roles
	Where
		[RoleID] = @RoleID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_News_Update]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_News_Update
-- Author:	Mehdi Keramati
-- Create date:	25/09/2014 10:47:21
-- Description:	This stored procedure is intended for updating News table
-- ==========================================================================================
Create Procedure [dbo].[sp_News_Update]
	@NewsID int,
	@NewsTitle nvarchar(200),
	@NewsText ntext
As
Begin
	Update News
	Set
		[NewsTitle] = @NewsTitle,
		[NewsText] = @NewsText
	Where		
		[NewsID] = @NewsID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_News_SelectRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_News_SelectRow
-- Author:	Mehdi Keramati
-- Create date:	25/09/2014 10:47:21
-- Description:	This stored procedure is intended for selecting a specific row from News table
-- ==========================================================================================
Create Procedure [dbo].[sp_News_SelectRow]
	@NewsID int
As
Begin
	Select 
		[NewsID],
		[NewsTitle],
		[NewsText]
	From News
	Where
		[NewsID] = @NewsID
End
GO
/****** Object:  StoredProcedure [dbo].[sp_News_SelectAll]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_News_SelectAll
-- Author:	Mehdi Keramati
-- Create date:	25/09/2014 10:47:21
-- Description:	This stored procedure is intended for selecting all rows from News table
-- ==========================================================================================
Create Procedure [dbo].[sp_News_SelectAll]
As
Begin
	Select 
		[NewsID],
		[NewsTitle],
		[NewsText]
	From News
End
GO
/****** Object:  StoredProcedure [dbo].[sp_News_Insert]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_News_Insert
-- Author:	Mehdi Keramati
-- Create date:	25/09/2014 10:47:21
-- Description:	This stored procedure is intended for inserting values to News table
-- ==========================================================================================
Create Procedure [dbo].[sp_News_Insert]
	@NewsTitle nvarchar(200) = NULL,
	@NewsText ntext = NULL
As
Begin
	Insert Into News
		([NewsTitle],[NewsText])
	Values
		(@NewsTitle,@NewsText)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_News_DeleteRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_News_DeleteRow
-- Author:	Mehdi Keramati
-- Create date:	25/09/2014 10:47:21
-- Description:	This stored procedure is intended for deleting a specific row from News table
-- ==========================================================================================
Create Procedure [dbo].[sp_News_DeleteRow]
	@NewsID int
As
Begin
	Delete News
	Where
		[NewsID] = @NewsID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Images_Update]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Images_Update
-- Author:	Mehdi Keramati
-- Create date:	24/09/2014 14:57:45
-- Description:	This stored procedure is intended for updating Images table
-- ==========================================================================================
Create Procedure [dbo].[sp_Images_Update]
	@ImageID int,
	@FaImageTitle nvarchar(150),
	@EnImageTitle varchar(150),
	@Dimension nvarchar(150),
	@Price nvarchar(150),
	@FaTeknik nvarchar(150),
	@EnTeknik varchar(150),
	@FaStatus nvarchar(250),
	@Enstatus varchar(250),
	@ImageUrl varchar(250)
As
Begin
	Update Images
	Set
		[FaImageTitle] = @FaImageTitle,
		[EnImageTitle] = @EnImageTitle,
		[Dimension] = @Dimension,
		[Price] = @Price,
		[FaTeknik] = @FaTeknik,
		[EnTeknik] = @EnTeknik,
		[FaStatus] = @FaStatus,
		[Enstatus] = @Enstatus,
		[ImageUrl] = @ImageUrl
	Where		
		[ImageID] = @ImageID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Images_SelectRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Images_SelectRow
-- Author:	Mehdi Keramati
-- Create date:	24/09/2014 14:57:45
-- Description:	This stored procedure is intended for selecting a specific row from Images table
-- ==========================================================================================
Create Procedure [dbo].[sp_Images_SelectRow]
	@ImageID int
As
Begin
	Select 
		[ImageID],
		[FaImageTitle],
		[EnImageTitle],
		[Dimension],
		[Price],
		[FaTeknik],
		[EnTeknik],
		[FaStatus],
		[Enstatus],
		[ImageUrl]
	From Images
	Where
		[ImageID] = @ImageID
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Images_SelectAll]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Images_SelectAll
-- Author:	Mehdi Keramati
-- Create date:	24/09/2014 14:57:45
-- Description:	This stored procedure is intended for selecting all rows from Images table
-- ==========================================================================================
Create Procedure [dbo].[sp_Images_SelectAll]
As
Begin
	Select 
		[ImageID],
		[FaImageTitle],
		[EnImageTitle],
		[Dimension],
		[Price],
		[FaTeknik],
		[EnTeknik],
		[FaStatus],
		[Enstatus],
		[ImageUrl]
	From Images
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Images_Insert]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Images_Insert
-- Author:	Mehdi Keramati
-- Create date:	24/09/2014 14:57:45
-- Description:	This stored procedure is intended for inserting values to Images table
-- ==========================================================================================
Create Procedure [dbo].[sp_Images_Insert]
	@FaImageTitle nvarchar(150),
	@EnImageTitle varchar(150),
	@Dimension nvarchar(150) = NULL,
	@Price nvarchar(150) = NULL,
	@FaTeknik nvarchar(150) = NULL,
	@EnTeknik varchar(150) = NULL,
	@FaStatus nvarchar(250) = NULL,
	@Enstatus varchar(250) = NULL,
	@ImageUrl varchar(250)
As
Begin
	Insert Into Images
		([FaImageTitle],[EnImageTitle],[Dimension],[Price],[FaTeknik],[EnTeknik],[FaStatus],[Enstatus],[ImageUrl])
	Values
		(@FaImageTitle,@EnImageTitle,@Dimension,@Price,@FaTeknik,@EnTeknik,@FaStatus,@Enstatus,@ImageUrl)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Images_DeleteRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Images_DeleteRow
-- Author:	Mehdi Keramati
-- Create date:	24/09/2014 14:57:45
-- Description:	This stored procedure is intended for deleting a specific row from Images table
-- ==========================================================================================
Create Procedure [dbo].[sp_Images_DeleteRow]
	@ImageID int
As
Begin
	Delete Images
	Where
		[ImageID] = @ImageID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_ArticleGroup_Update]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_ArticleGroup_Update
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:15 PM
-- Description:	This stored procedure is intended for updating ArticleGroup table
-- ==========================================================================================
Create Procedure [dbo].[sp_ArticleGroup_Update]
	@ArticleGroupID int,
	@ArticleGroupTitle nvarchar(150)
As
Begin
	Update ArticleGroup
	Set
		[ArticleGroupTitle] = @ArticleGroupTitle
	Where		
		[ArticleGroupID] = @ArticleGroupID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_ArticleGroup_SelectRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_ArticleGroup_SelectRow
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:15 PM
-- Description:	This stored procedure is intended for selecting a specific row from ArticleGroup table
-- ==========================================================================================
Create Procedure [dbo].[sp_ArticleGroup_SelectRow]
	@ArticleGroupID int
As
Begin
	Select 
		[ArticleGroupID],
		[ArticleGroupTitle]
	From ArticleGroup
	Where
		[ArticleGroupID] = @ArticleGroupID
End
GO
/****** Object:  StoredProcedure [dbo].[sp_ArticleGroup_SelectAll]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_ArticleGroup_SelectAll
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:14 PM
-- Description:	This stored procedure is intended for selecting all rows from ArticleGroup table
-- ==========================================================================================
Create Procedure [dbo].[sp_ArticleGroup_SelectAll]
As
Begin
	Select 
		[ArticleGroupID],
		[ArticleGroupTitle]
	From ArticleGroup
End
GO
/****** Object:  StoredProcedure [dbo].[sp_ArticleGroup_Insert]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_ArticleGroup_Insert
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:15 PM
-- Description:	This stored procedure is intended for inserting values to ArticleGroup table
-- ==========================================================================================
Create Procedure [dbo].[sp_ArticleGroup_Insert]
	@ArticleGroupTitle nvarchar(150)
As
Begin
	Insert Into ArticleGroup
		([ArticleGroupTitle])
	Values
		(@ArticleGroupTitle)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_ArticleGroup_DeleteRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_ArticleGroup_DeleteRow
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:15 PM
-- Description:	This stored procedure is intended for deleting a specific row from ArticleGroup table
-- ==========================================================================================
Create Procedure [dbo].[sp_ArticleGroup_DeleteRow]
	@ArticleGroupID int
As
Begin
	Delete ArticleGroup
	Where
		[ArticleGroupID] = @ArticleGroupID

End
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([UserID], [RoleID], [UserName], [Password]) VALUES (1, 1, N'Mahnaz', N'Mahnaz1963')
INSERT [dbo].[Users] ([UserID], [RoleID], [UserName], [Password]) VALUES (2, 2, N'test', N'123')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Users_Update
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 4:17:18 PM
-- Description:	This stored procedure is intended for updating Users table
-- ==========================================================================================
Create Procedure [dbo].[sp_Users_Update]
	@UserID int,
	@RoleID int,
	@UserName nvarchar(50),
	@Password varchar(50)
As
Begin
	Update Users
	Set
		[RoleID] = @RoleID,
		[UserName] = @UserName,
		[Password] = @Password
	Where		
		[UserID] = @UserID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_SelectRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Users_SelectRow
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 4:17:18 PM
-- Description:	This stored procedure is intended for selecting a specific row from Users table
-- ==========================================================================================
CREATE Procedure [dbo].[sp_Users_SelectRow]
	@UserID int
As
Begin
	SELECT 
		Users.UserID,
		Users.RoleID,
		Roles.RoleTitle ,
        Roles.RoleName ,
		Users.UserName,
		Users.Password
	From Users   INNER JOIN Roles ON Users.RoleID = Roles.RoleID
	Where
		(Users.UserID = @UserID)
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_SelectAll]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Users_SelectAll
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 4:17:18 PM
-- Description:	This stored procedure is intended for selecting all rows from Users table
-- ==========================================================================================
CREATE Procedure [dbo].[sp_Users_SelectAll]
As
Begin
	Select 
		Users.UserID,
		Users.RoleID,
		Roles.RoleTitle ,
        Roles.RoleName ,
		Users.UserName,
		Users.Password
            
FROM         Users INNER JOIN
                      Roles ON Users.RoleID = Roles.RoleID
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Users_Insert
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 4:17:18 PM
-- Description:	This stored procedure is intended for inserting values to Users table
-- ==========================================================================================
Create Procedure [dbo].[sp_Users_Insert]
	@RoleID int,
	@UserName nvarchar(50),
	@Password varchar(50)
As
Begin
	Insert Into Users
		([RoleID],[UserName],[Password])
	Values
		(@RoleID,@UserName,@Password)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_DeleteRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Users_DeleteRow
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 4:17:18 PM
-- Description:	This stored procedure is intended for deleting a specific row from Users table
-- ==========================================================================================
Create Procedure [dbo].[sp_Users_DeleteRow]
	@UserID int
As
Begin
	Delete Users
	Where
		[UserID] = @UserID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_CheckLogin]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Users_SelectAll
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 3:20:49 PM
-- Description:	This stored procedure is intended for selecting all rows from Users table
-- ==========================================================================================
Create Procedure [dbo].[sp_Users_CheckLogin]
      @UserName nvarchar(50),
      @Password varchar(50)
As
Begin
	Select 
		[UserID],
		[RoleID],
		[UserName],
		[Password]
	From Users
	where
	[UserName]=@UserName and
	[Password]=@Password
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Articles_Update]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Articles_Update
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:57 PM
-- Description:	This stored procedure is intended for updating Articles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Articles_Update]
	@ArticleID int,
	@ArticleGroupID int,
	@ArticleTitle nvarchar(150),
	@ArticleText varbinary
As
Begin
	Update Articles
	Set
		[ArticleGroupID] = @ArticleGroupID,
		[ArticleTitle] = @ArticleTitle,
		[ArticleText] = @ArticleText
	Where		
		[ArticleID] = @ArticleID

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Articles_SelectRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Articles_SelectRow
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:57 PM
-- Description:	This stored procedure is intended for selecting a specific row from Articles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Articles_SelectRow]
	@ArticleID int
As
Begin
	Select 
		[ArticleID],
		[ArticleGroupID],
		[ArticleTitle],
		[ArticleText]
	From Articles
	Where
		[ArticleID] = @ArticleID
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Articles_SelectAll]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Articles_SelectAll
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:57 PM
-- Description:	This stored procedure is intended for selecting all rows from Articles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Articles_SelectAll]
As
Begin
	Select 
		[ArticleID],
		[ArticleGroupID],
		[ArticleTitle],
		[ArticleText]
	From Articles
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Articles_Insert]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Articles_Insert
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:57 PM
-- Description:	This stored procedure is intended for inserting values to Articles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Articles_Insert]
	@ArticleID int,
	@ArticleGroupID int,
	@ArticleTitle nvarchar(150),
	@ArticleText varbinary
As
Begin
	Insert Into Articles
		([ArticleID],[ArticleGroupID],[ArticleTitle],[ArticleText])
	Values
		(@ArticleID,@ArticleGroupID,@ArticleTitle,@ArticleText)

End
GO
/****** Object:  StoredProcedure [dbo].[sp_Articles_DeleteRow]    Script Date: 09/29/2014 10:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_Articles_DeleteRow
-- Author:	Mehdi Keramati
-- Create date:	7/17/2014 1:55:57 PM
-- Description:	This stored procedure is intended for deleting a specific row from Articles table
-- ==========================================================================================
Create Procedure [dbo].[sp_Articles_DeleteRow]
	@ArticleID int
As
Begin
	Delete Articles
	Where
		[ArticleID] = @ArticleID

End
GO
/****** Object:  ForeignKey [FK_Articles_ArticleGroup]    Script Date: 09/29/2014 10:59:05 ******/
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_ArticleGroup] FOREIGN KEY([ArticleGroupID])
REFERENCES [dbo].[ArticleGroup] ([ArticleGroupID])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_ArticleGroup]
GO
/****** Object:  ForeignKey [FK_Users_Roles]    Script Date: 09/29/2014 10:59:06 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
