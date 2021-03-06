USE [master]
GO
/****** Object:  Database [WardrobeMVC]    Script Date: 11/6/2017 4:45:19 AM ******/
CREATE DATABASE [WardrobeMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeMVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeMVC.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeMVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeMVC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeMVC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeMVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeMVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeMVC] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeMVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeMVC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeMVC]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 11/6/2017 4:45:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 11/6/2017 4:45:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Footwear]    Script Date: 11/6/2017 4:45:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footwear](
	[FootwearID] [int] IDENTITY(1,1) NOT NULL,
	[FootwearName] [nvarchar](50) NOT NULL,
	[FootwearPhoto] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Footwear] PRIMARY KEY CLUSTERED 
(
	[FootwearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasions]    Script Date: 11/6/2017 4:45:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasions](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Occasions] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 11/6/2017 4:45:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[FootwearID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 11/6/2017 4:45:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 11/6/2017 4:45:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [Type], [SeasonID], [OccasionID]) VALUES (1, N'Leopard scarf', N'~/Content/scarf1.jpg', N'lightweight leopard print scarf', 7, 5)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [Type], [SeasonID], [OccasionID]) VALUES (2, N'Plaid scarf', N'~/Content/scarf2.jpg', N'beige/pink plaid infinity scarf', 6, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [Type], [SeasonID], [OccasionID]) VALUES (3, N'Necklace', N'~/Content/necklace.jpg', N'long gold double-necklace', 7, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [Type], [SeasonID], [OccasionID]) VALUES (4, N'Sunglasses', N'~/Content/sunglasses.jpg', N'black frame/rose lens sunglasses', 7, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [Type], [SeasonID], [OccasionID]) VALUES (5, N'Satchel', N'~/Content/bag.jpg', N'tan leather satchel', 7, 2)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [Type], [SeasonID], [OccasionID]) VALUES (1, N'Black pants', N'~/Content/black pants.jpg', N'skinny fit black pants', 7, 2)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [Type], [SeasonID], [OccasionID]) VALUES (2, N'Jeans', N'~/Content/jeans.jpg', N'Skinny fit dark rinse jeans', 7, 3)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [Type], [SeasonID], [OccasionID]) VALUES (3, N'Sweatpants', N'~/Content/sweatpants.jpg', N'gray jogger-style sweatpants', 7, 4)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [Type], [SeasonID], [OccasionID]) VALUES (8, N'Light jeans', N'~/Content/light jeans.jpg', N'Light rinse skinny fit jeans', 7, 3)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [Type], [SeasonID], [OccasionID]) VALUES (9, N'Gray pants', N'~/Content/gray pants.jpg', N'gray slim fit pants', 5, 3)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Footwear] ON 

INSERT [dbo].[Footwear] ([FootwearID], [FootwearName], [FootwearPhoto], [Type], [SeasonID], [OccasionID]) VALUES (1, N'Booties', N'~/Content/booties.jpg', N'tan ankle booties', 7, 3)
INSERT [dbo].[Footwear] ([FootwearID], [FootwearName], [FootwearPhoto], [Type], [SeasonID], [OccasionID]) VALUES (2, N'Black flats', N'~/Content/flats.jpg', N'black flat loafer', 5, 2)
INSERT [dbo].[Footwear] ([FootwearID], [FootwearName], [FootwearPhoto], [Type], [SeasonID], [OccasionID]) VALUES (3, N'Sneakers', N'~/Content/sneakers.jpg', N'white Converse sneakers', 6, 4)
INSERT [dbo].[Footwear] ([FootwearID], [FootwearName], [FootwearPhoto], [Type], [SeasonID], [OccasionID]) VALUES (4, N'Leopard flats', N'~/Content/leopard flats.jpg', N'leopard print flats', 7, 2)
INSERT [dbo].[Footwear] ([FootwearID], [FootwearName], [FootwearPhoto], [Type], [SeasonID], [OccasionID]) VALUES (5, N'Gray slip-ons', N'~/Content/casual.jpg', N'gray canvas slip-ons', 6, 3)
INSERT [dbo].[Footwear] ([FootwearID], [FootwearName], [FootwearPhoto], [Type], [SeasonID], [OccasionID]) VALUES (6, N'Boots', N'~/Content/boots.jpg', N'tall cognac leather riding style boots', 5, 3)
INSERT [dbo].[Footwear] ([FootwearID], [FootwearName], [FootwearPhoto], [Type], [SeasonID], [OccasionID]) VALUES (7, N'Black heels', N'~/Content/heels.jpg', N'high heeled black pump', 7, 2)
SET IDENTITY_INSERT [dbo].[Footwear] OFF
SET IDENTITY_INSERT [dbo].[Occasions] ON 

INSERT [dbo].[Occasions] ([OccasionID], [Occasion]) VALUES (1, N'Formal')
INSERT [dbo].[Occasions] ([OccasionID], [Occasion]) VALUES (2, N'Work')
INSERT [dbo].[Occasions] ([OccasionID], [Occasion]) VALUES (3, N'Casual')
INSERT [dbo].[Occasions] ([OccasionID], [Occasion]) VALUES (4, N'Athletic')
INSERT [dbo].[Occasions] ([OccasionID], [Occasion]) VALUES (5, N'Going-out')
SET IDENTITY_INSERT [dbo].[Occasions] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [FootwearID], [AccessoryID]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [FootwearID], [AccessoryID]) VALUES (2, 3, 3, 3, 4)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [FootwearID], [AccessoryID]) VALUES (3, 5, 2, 4, 5)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [FootwearID], [AccessoryID]) VALUES (4, 3, 2, 5, 4)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [FootwearID], [AccessoryID]) VALUES (5, 2, 9, 7, 2)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [FootwearID], [AccessoryID]) VALUES (6, 4, 8, 3, 5)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [FootwearID], [AccessoryID]) VALUES (7, 1, 8, 2, 3)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [FootwearID], [AccessoryID]) VALUES (8, 2, 2, 1, 1)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [FootwearID], [AccessoryID]) VALUES (9, 5, 9, 7, 3)
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (1, N'Winter')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (2, N'Spring')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (3, N'Summer')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (4, N'Fall')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (5, N'Fall/Winter')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (6, N'Spring/Summer')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (7, N'Year-round')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [Type], [SeasonID], [OccasionID]) VALUES (1, N'Black sweater', N'~/Content/black sweater.jpg', N'long sleeve black sweater', 5, 3)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [Type], [SeasonID], [OccasionID]) VALUES (2, N'Pink tee', N'~/Content/pink tee.jpg', N'Short sleeve pink cotton tee', 6, 3)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [Type], [SeasonID], [OccasionID]) VALUES (3, N'Camo hoodie', N'~/Content/hoodie.jpg', N'gray and camo lightweight hoodie', 7, 4)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [Type], [SeasonID], [OccasionID]) VALUES (4, N'Baseball tee', N'~/Content/tee.jpg', N'white long sleeve baseball tee with gray sleeves', 7, 3)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [Type], [SeasonID], [OccasionID]) VALUES (5, N'Sweater', N'~/Content/sweater.jpg', N'maroon turtleneck knit sweater', 5, 3)
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occasions]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Seasons]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occasions]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Seasons]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Occasions]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Seasons]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Footwear] FOREIGN KEY([FootwearID])
REFERENCES [dbo].[Footwear] ([FootwearID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Footwear]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasions]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Seasons]
GO
USE [master]
GO
ALTER DATABASE [WardrobeMVC] SET  READ_WRITE 
GO
