USE [master]
GO
/****** Object:  Database [Dershane]    Script Date: 29.12.2015 04:41:25 ******/
CREATE DATABASE [Dershane]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dershane', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLSERVER2014\MSSQL\DATA\Dershane.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dershane_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLSERVER2014\MSSQL\DATA\Dershane_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dershane] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dershane].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dershane] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dershane] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dershane] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dershane] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dershane] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dershane] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dershane] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dershane] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dershane] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dershane] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dershane] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dershane] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dershane] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dershane] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dershane] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dershane] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dershane] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dershane] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dershane] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dershane] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dershane] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dershane] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dershane] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dershane] SET  MULTI_USER 
GO
ALTER DATABASE [Dershane] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dershane] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dershane] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dershane] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Dershane] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Dershane]
GO
/****** Object:  Schema [dershane_ulas]    Script Date: 29.12.2015 04:41:27 ******/
CREATE SCHEMA [dershane_ulas]
GO
/****** Object:  Table [dbo].[bDersOgretmen]    Script Date: 29.12.2015 04:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bDersOgretmen](
	[bDersOgretmenID] [int] NOT NULL,
	[dersID] [int] NULL,
	[ogretmenID] [int] NULL,
 CONSTRAINT [PK_bDersOgretmen] PRIMARY KEY CLUSTERED 
(
	[bDersOgretmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bolum]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolum](
	[bolumID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bolum] PRIMARY KEY CLUSTERED 
(
	[bolumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ders]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ders](
	[dersID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
	[grupID] [int] NOT NULL,
	[bolumID] [int] NOT NULL,
 CONSTRAINT [PK_Ders] PRIMARY KEY CLUSTERED 
(
	[dersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DersProgrami]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DersProgrami](
	[dersProgramiID] [int] IDENTITY(1,1) NOT NULL,
	[dersID] [int] NOT NULL,
	[gun] [nvarchar](50) NULL,
	[saat] [nvarchar](50) NULL,
	[kacinciDers] [nvarchar](50) NULL,
	[sinifID] [int] NULL,
	[grupID] [int] NULL,
 CONSTRAINT [PK_DersProgrami] PRIMARY KEY CLUSTERED 
(
	[dersProgramiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Donem]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donem](
	[donemID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Donem] PRIMARY KEY CLUSTERED 
(
	[donemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grup]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grup](
	[grupID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](20) NULL,
 CONSTRAINT [PK_Grup] PRIMARY KEY CLUSTERED 
(
	[grupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mesaj]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesaj](
	[mesajID] [int] IDENTITY(1,1) NOT NULL,
	[aliciID] [int] NULL,
	[icerik] [nvarchar](500) NULL,
	[eklenmeTarihi] [datetime] NULL CONSTRAINT [DF_Mesaj_eklenmeTarihi]  DEFAULT (getdate()),
 CONSTRAINT [PK_Mesaj] PRIMARY KEY CLUSTERED 
(
	[mesajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[ogrenciID] [int] IDENTITY(1,1) NOT NULL,
	[tcNo] [nvarchar](11) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[cinsiyet] [nvarchar](5) NULL,
	[adres] [nvarchar](100) NULL,
	[numara] [nvarchar](6) NULL,
	[resim] [nvarchar](50) NULL,
	[telefon] [nvarchar](14) NULL,
	[eposta] [nvarchar](50) NULL,
	[grupID] [int] NULL,
	[bolumID] [int] NULL,
	[donemID] [int] NULL,
	[sinifID] [int] NULL,
	[danismanID] [int] NULL,
	[durum] [nvarchar](10) NULL,
	[kayitTarih] [datetime] NULL,
	[duzenlemeTarih] [datetime] NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[ogrenciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ogretmen]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogretmen](
	[ogretmenID] [int] IDENTITY(1,1) NOT NULL,
	[tcNo] [nvarchar](11) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[cinsiyet] [nvarchar](5) NULL,
	[dogumTarih] [date] NULL,
	[adres] [nvarchar](100) NULL,
	[brans] [nvarchar](50) NULL,
	[resim] [nvarchar](50) NULL,
	[telefon] [nvarchar](14) NULL,
	[eposta] [nvarchar](50) NULL,
	[durum] [nvarchar](50) NULL,
	[kayitTarih] [datetime] NULL,
	[duzenlemeTarih] [datetime] NULL,
 CONSTRAINT [PK_Ogretmen] PRIMARY KEY CLUSTERED 
(
	[ogretmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Portal]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portal](
	[portalID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciID] [int] NOT NULL,
	[kullaniciAdi] [nvarchar](50) NOT NULL,
	[sifre] [nvarchar](50) NOT NULL,
	[yetki] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Portal] PRIMARY KEY CLUSTERED 
(
	[portalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SilinmisOgrenciKayitlari]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilinmisOgrenciKayitlari](
	[silOgrenciID] [int] IDENTITY(1,1) NOT NULL,
	[tcNo] [nvarchar](11) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[cinsiyet] [nvarchar](5) NULL,
	[adres] [nvarchar](100) NULL,
	[numara] [nvarchar](6) NULL,
	[resim] [nvarchar](50) NULL,
	[telefon] [nvarchar](14) NULL,
	[eposta] [nvarchar](50) NULL,
	[grupID] [int] NULL,
	[bolumID] [int] NULL,
	[donemID] [int] NULL,
	[sinifID] [int] NULL,
	[danismanID] [int] NULL,
	[durum] [nvarchar](10) NULL,
	[kayitTarih] [datetime] NULL,
	[duzenlemeTarih] [datetime] NULL,
 CONSTRAINT [PK_SilinmisOgrenciKayitlari] PRIMARY KEY CLUSTERED 
(
	[silOgrenciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sinav]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinav](
	[sinavID] [int] IDENTITY(1,1) NOT NULL,
	[grupID] [int] NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
	[tur] [nvarchar](50) NOT NULL,
	[tarih] [date] NULL,
 CONSTRAINT [PK_Sinav] PRIMARY KEY CLUSTERED 
(
	[sinavID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinavSonuc]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinavSonuc](
	[sinavSonucID] [int] IDENTITY(1,1) NOT NULL,
	[ogrenciID] [int] NULL,
	[sinavID] [int] NULL,
	[dogru] [int] NULL,
	[yanlis] [int] NULL,
	[bos] [int] NULL,
 CONSTRAINT [PK_DenemeSinav] PRIMARY KEY CLUSTERED 
(
	[sinavSonucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sinif]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinif](
	[sinifID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](15) NULL,
 CONSTRAINT [PK_Sinif] PRIMARY KEY CLUSTERED 
(
	[sinifID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Veli]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veli](
	[veliID] [int] IDENTITY(1,1) NOT NULL,
	[tcNo] [nvarchar](11) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[cinsiyet] [nvarchar](5) NULL,
	[telefon] [nvarchar](14) NULL,
	[eposta] [nvarchar](50) NULL,
	[yakinlik] [nvarchar](50) NULL,
	[meslek] [nvarchar](50) NULL,
	[ogrenciID] [int] NULL,
	[durum] [nvarchar](50) NULL,
	[kayitTarih] [datetime] NULL,
	[duzenlemeTarih] [datetime] NULL,
 CONSTRAINT [PK_Veli] PRIMARY KEY CLUSTERED 
(
	[veliID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Yoklama]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoklama](
	[yoklamaID] [int] IDENTITY(1,1) NOT NULL,
	[ogrenciID] [int] NOT NULL,
	[dersProgramiID] [int] NOT NULL,
	[tarih] [date] NULL,
	[durum] [nvarchar](10) NULL,
 CONSTRAINT [PK_Yoklama] PRIMARY KEY CLUSTERED 
(
	[yoklamaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Yonetici]    Script Date: 29.12.2015 04:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetici](
	[yoneticiID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[resim] [nvarchar](50) NULL,
	[superYetki] [bit] NOT NULL CONSTRAINT [DF_Yonetici_superYetki]  DEFAULT ((0)),
 CONSTRAINT [PK_Yonetici] PRIMARY KEY CLUSTERED 
(
	[yoneticiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Bolum] ON 

INSERT [dbo].[Bolum] ([bolumID], [ad]) VALUES (2, N'Eşit Ağırlık')
INSERT [dbo].[Bolum] ([bolumID], [ad]) VALUES (3, N'Sayısal')
INSERT [dbo].[Bolum] ([bolumID], [ad]) VALUES (4, N'Sözel')
INSERT [dbo].[Bolum] ([bolumID], [ad]) VALUES (5, N'İlk Öğretim')
INSERT [dbo].[Bolum] ([bolumID], [ad]) VALUES (6, N'Orta Öğretim')
SET IDENTITY_INSERT [dbo].[Bolum] OFF
SET IDENTITY_INSERT [dbo].[Ders] ON 

INSERT [dbo].[Ders] ([dersID], [ad], [grupID], [bolumID]) VALUES (2, N'Matematik', 22, 2)
INSERT [dbo].[Ders] ([dersID], [ad], [grupID], [bolumID]) VALUES (3, N'Kimya', 22, 2)
INSERT [dbo].[Ders] ([dersID], [ad], [grupID], [bolumID]) VALUES (4, N'Biyoloji', 22, 3)
INSERT [dbo].[Ders] ([dersID], [ad], [grupID], [bolumID]) VALUES (5, N'Tarih', 19, 4)
INSERT [dbo].[Ders] ([dersID], [ad], [grupID], [bolumID]) VALUES (6, N'Fizik', 18, 3)
INSERT [dbo].[Ders] ([dersID], [ad], [grupID], [bolumID]) VALUES (7, N'Kimya', 18, 3)
INSERT [dbo].[Ders] ([dersID], [ad], [grupID], [bolumID]) VALUES (8, N'Biyoloji', 18, 3)
INSERT [dbo].[Ders] ([dersID], [ad], [grupID], [bolumID]) VALUES (9, N'Matematik', 18, 3)
INSERT [dbo].[Ders] ([dersID], [ad], [grupID], [bolumID]) VALUES (10, N'Geometri', 18, 3)
SET IDENTITY_INSERT [dbo].[Ders] OFF
SET IDENTITY_INSERT [dbo].[DersProgrami] ON 

INSERT [dbo].[DersProgrami] ([dersProgramiID], [dersID], [gun], [saat], [kacinciDers], [sinifID], [grupID]) VALUES (2, 4, N'Pazartesi', N'2', N'6', 5, 20)
INSERT [dbo].[DersProgrami] ([dersProgramiID], [dersID], [gun], [saat], [kacinciDers], [sinifID], [grupID]) VALUES (4, 2, N'Pazartesi', N'3', N'6', 10, 18)
INSERT [dbo].[DersProgrami] ([dersProgramiID], [dersID], [gun], [saat], [kacinciDers], [sinifID], [grupID]) VALUES (5, 10, N'Salı', N'2', N'3', 10, 18)
INSERT [dbo].[DersProgrami] ([dersProgramiID], [dersID], [gun], [saat], [kacinciDers], [sinifID], [grupID]) VALUES (6, 9, N'Çarşamba', N'2', N'3', 10, 18)
INSERT [dbo].[DersProgrami] ([dersProgramiID], [dersID], [gun], [saat], [kacinciDers], [sinifID], [grupID]) VALUES (7, 8, N'Perşembe', N'1', N'2', 10, 18)
INSERT [dbo].[DersProgrami] ([dersProgramiID], [dersID], [gun], [saat], [kacinciDers], [sinifID], [grupID]) VALUES (8, 7, N'Cuma', N'2', N'5', 10, 18)
INSERT [dbo].[DersProgrami] ([dersProgramiID], [dersID], [gun], [saat], [kacinciDers], [sinifID], [grupID]) VALUES (9, 6, N'Pazartesi', N'3', N'3', 10, 18)
SET IDENTITY_INSERT [dbo].[DersProgrami] OFF
SET IDENTITY_INSERT [dbo].[Donem] ON 

INSERT [dbo].[Donem] ([donemID], [ad]) VALUES (1, N'2015-2016')
INSERT [dbo].[Donem] ([donemID], [ad]) VALUES (3, N'2014-2015')
INSERT [dbo].[Donem] ([donemID], [ad]) VALUES (4, N'2013-2014')
SET IDENTITY_INSERT [dbo].[Donem] OFF
SET IDENTITY_INSERT [dbo].[Grup] ON 

INSERT [dbo].[Grup] ([grupID], [ad]) VALUES (18, N'Mezun')
INSERT [dbo].[Grup] ([grupID], [ad]) VALUES (19, N'12. Sınıf')
INSERT [dbo].[Grup] ([grupID], [ad]) VALUES (20, N'11. Sınıf')
INSERT [dbo].[Grup] ([grupID], [ad]) VALUES (22, N'10. Sınıf')
SET IDENTITY_INSERT [dbo].[Grup] OFF
SET IDENTITY_INSERT [dbo].[Mesaj] ON 

INSERT [dbo].[Mesaj] ([mesajID], [aliciID], [icerik], [eklenmeTarihi]) VALUES (14, 9, N'YGS #2 sınavından 25 doğru, 12 yanlış, 3 boşunuz var.', CAST(N'2015-12-27 01:00:06.133' AS DateTime))
INSERT [dbo].[Mesaj] ([mesajID], [aliciID], [icerik], [eklenmeTarihi]) VALUES (15, 1, N'Öğrencimiz, YGS #2 sınavından 25 doğru, 12 yanlış, 3 boşu vardır.', CAST(N'2015-12-27 01:00:06.153' AS DateTime))
INSERT [dbo].[Mesaj] ([mesajID], [aliciID], [icerik], [eklenmeTarihi]) VALUES (16, 9, N'LYS #2 sınavından 15 doğru, 25 yanlış, 1 boşunuz var.', CAST(N'2015-12-27 01:04:38.443' AS DateTime))
INSERT [dbo].[Mesaj] ([mesajID], [aliciID], [icerik], [eklenmeTarihi]) VALUES (17, 1, N'Öğrencimiz, LYS #2 sınavından 15 doğru, 25 yanlış, 1 boşu vardır.', CAST(N'2015-12-27 01:04:38.443' AS DateTime))
INSERT [dbo].[Mesaj] ([mesajID], [aliciID], [icerik], [eklenmeTarihi]) VALUES (22, 7, N'Sınav İtiraz - Hocam, sınav sonucum yanlış.', CAST(N'2015-12-29 03:38:55.857' AS DateTime))
INSERT [dbo].[Mesaj] ([mesajID], [aliciID], [icerik], [eklenmeTarihi]) VALUES (25, 1, N'LYS #3 sınavından 33 doğru, 12 yanlış, 1 boşunuz var.', CAST(N'2015-12-29 03:44:34.583' AS DateTime))
INSERT [dbo].[Mesaj] ([mesajID], [aliciID], [icerik], [eklenmeTarihi]) VALUES (26, 1, N'Öğrencimiz, LYS #3 sınavından 33 doğru, 12 yanlış, 1 boşu vardır.', CAST(N'2015-12-29 03:44:34.587' AS DateTime))
SET IDENTITY_INSERT [dbo].[Mesaj] OFF
SET IDENTITY_INSERT [dbo].[Ogrenci] ON 

INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (1, N'33733291674', N'Ulaş', N'Şenol', N'Erkek', N'Merkez/Düzce', N'120100', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 18, 3, 1, 10, 7, N'Aktif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (2, N'33733291674', N'Kübra', N'Demircioğlu', N'Kadın', N'Merkez/Düzce', N'120101', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 20, 3, 1, 10, 7, N'Aktif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (3, N'33733291674', N'Oğuz', N'Erdoğan', N'Erkek', N'Merkez/Düzce', N'120102', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 20, 3, 1, 10, 7, N'Aktif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (4, N'33733291674', N'Handan', N'Toprak', N'Kadın', N'Merkez/Düzce', N'120103', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 18, 3, 1, 10, 7, N'Pasif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (5, N'33733291674', N'Bayram', N'Eser', N'Erkek', N'Merkez/Düzce', N'120104', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 18, 3, 1, 10, 7, N'Aktif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (6, N'33733291674', N'Muhammet', N'Ayaşlı', N'Erkek', N'Merkez/Düzce', N'120105', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 18, 3, 1, 10, 7, N'Aktif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (7, N'33733291674', N'Gamze', N'Karaduman', N'Kadın', N'Merkez/Düzce', N'120106', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 18, 3, 1, 10, 7, N'Pasif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (8, N'33733291674', N'Aylin', N'Şevik', N'Kadın', N'Merkez/Düzce', N'120107', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 18, 3, 1, 10, 7, N'Aktif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (9, N'33733291674', N'Fatih', N'Güncü', N'Erkek', N'Merkez/Düzce', N'120108', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 19, 3, 1, 10, 7, N'Aktif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
INSERT [dbo].[Ogrenci] ([ogrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (10, N'33733291674', N'Efsun', N'Kapı', N'Kadın', N'Merkez/Düzce', N'120109', N'ulaş_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', 19, 3, 1, 10, 7, N'Pasif', CAST(N'2015-12-26 19:30:29.823' AS DateTime), CAST(N'2015-12-26 19:30:29.823' AS DateTime))
SET IDENTITY_INSERT [dbo].[Ogrenci] OFF
SET IDENTITY_INSERT [dbo].[Ogretmen] ON 

INSERT [dbo].[Ogretmen] ([ogretmenID], [tcNo], [ad], [soyad], [cinsiyet], [dogumTarih], [adres], [brans], [resim], [telefon], [eposta], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (7, N'333333', N'Öğretmen', N'Şenol', N'Erkek', CAST(N'1991-06-23' AS Date), N'Aders', N'Matematik', N'öğretmen_şenol.jpg', N'05072220208', N'ulassenol@yandex.com', N'Aktif', CAST(N'2015-12-23 21:25:02.560' AS DateTime), CAST(N'2015-12-23 21:25:02.560' AS DateTime))
SET IDENTITY_INSERT [dbo].[Ogretmen] OFF
SET IDENTITY_INSERT [dbo].[Portal] ON 

INSERT [dbo].[Portal] ([portalID], [kullaniciID], [kullaniciAdi], [sifre], [yetki]) VALUES (15, 1, N'ulas', N'202cb962ac59075b964b07152d234b70', N'yonetici')
INSERT [dbo].[Portal] ([portalID], [kullaniciID], [kullaniciAdi], [sifre], [yetki]) VALUES (16, 2, N'kubra', N'202cb962ac59075b964b07152d234b70', N'yonetici')
INSERT [dbo].[Portal] ([portalID], [kullaniciID], [kullaniciAdi], [sifre], [yetki]) VALUES (17, 3, N'oguz', N'202cb962ac59075b964b07152d234b70', N'yonetici')
INSERT [dbo].[Portal] ([portalID], [kullaniciID], [kullaniciAdi], [sifre], [yetki]) VALUES (18, 1, N'ulas', N'C4CA4238A0B923820DCC509A6F75849B', N'ogrenci')
INSERT [dbo].[Portal] ([portalID], [kullaniciID], [kullaniciAdi], [sifre], [yetki]) VALUES (20, 1, N'veli', N'c20ad4d76fe97759aa27a0c99bff6710', N'veli')
INSERT [dbo].[Portal] ([portalID], [kullaniciID], [kullaniciAdi], [sifre], [yetki]) VALUES (24, 7, N'ogretmen', N'c20ad4d76fe97759aa27a0c99bff6710', N'ogretmen')
SET IDENTITY_INSERT [dbo].[Portal] OFF
SET IDENTITY_INSERT [dbo].[SilinmisOgrenciKayitlari] ON 

INSERT [dbo].[SilinmisOgrenciKayitlari] ([silOgrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (2, N'77777777', N'Baran', N'Şenol', N'Erkek', N'asdas', N'150001', N'baran_şenol.png', N'05072220208', N'ulassenol@yandex.com', 22, 2, 1, 11, 7, N'Aktif', CAST(N'2015-12-24 14:11:24.430' AS DateTime), CAST(N'2015-12-24 14:11:24.430' AS DateTime))
INSERT [dbo].[SilinmisOgrenciKayitlari] ([silOgrenciID], [tcNo], [ad], [soyad], [cinsiyet], [adres], [numara], [resim], [telefon], [eposta], [grupID], [bolumID], [donemID], [sinifID], [danismanID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (3, N'77777777', N'Baran', N'Şenol', N'Erkek', N'asdas', N'150001', N'baran_şenol.png', N'05072220208', N'ulassenol@yandex.com', 22, 2, 1, 11, 7, N'Aktif', CAST(N'2015-12-24 14:11:24.430' AS DateTime), CAST(N'2015-12-24 14:11:24.430' AS DateTime))
SET IDENTITY_INSERT [dbo].[SilinmisOgrenciKayitlari] OFF
SET IDENTITY_INSERT [dbo].[Sinav] ON 

INSERT [dbo].[Sinav] ([sinavID], [grupID], [ad], [tur], [tarih]) VALUES (2, 18, N'LYS #2', N'LYS', CAST(N'2015-12-23' AS Date))
INSERT [dbo].[Sinav] ([sinavID], [grupID], [ad], [tur], [tarih]) VALUES (3, 18, N'LYS #3', N'LYS', CAST(N'2015-12-23' AS Date))
INSERT [dbo].[Sinav] ([sinavID], [grupID], [ad], [tur], [tarih]) VALUES (5, 18, N'YGS #2', N'YGS', CAST(N'2015-12-23' AS Date))
SET IDENTITY_INSERT [dbo].[Sinav] OFF
SET IDENTITY_INSERT [dbo].[SinavSonuc] ON 

INSERT [dbo].[SinavSonuc] ([sinavSonucID], [ogrenciID], [sinavID], [dogru], [yanlis], [bos]) VALUES (22, 9, 5, 25, 12, 3)
INSERT [dbo].[SinavSonuc] ([sinavSonucID], [ogrenciID], [sinavID], [dogru], [yanlis], [bos]) VALUES (23, 9, 2, 15, 25, 1)
INSERT [dbo].[SinavSonuc] ([sinavSonucID], [ogrenciID], [sinavID], [dogru], [yanlis], [bos]) VALUES (24, 1, 3, 25, 3, 1)
INSERT [dbo].[SinavSonuc] ([sinavSonucID], [ogrenciID], [sinavID], [dogru], [yanlis], [bos]) VALUES (25, 1, 5, 15, 23, 7)
INSERT [dbo].[SinavSonuc] ([sinavSonucID], [ogrenciID], [sinavID], [dogru], [yanlis], [bos]) VALUES (26, 1, 3, 33, 2, 2)
INSERT [dbo].[SinavSonuc] ([sinavSonucID], [ogrenciID], [sinavID], [dogru], [yanlis], [bos]) VALUES (27, 1, 3, 33, 12, 1)
SET IDENTITY_INSERT [dbo].[SinavSonuc] OFF
SET IDENTITY_INSERT [dbo].[Sinif] ON 

INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (2, N'10SA1')
INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (3, N'10SO1')
INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (4, N'11EA1')
INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (5, N'11SA1')
INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (6, N'11SO1')
INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (7, N'12EA1')
INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (8, N'12EA2')
INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (9, N'12SA1')
INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (10, N'MEEA1')
INSERT [dbo].[Sinif] ([sinifID], [ad]) VALUES (11, N'10EA1')
SET IDENTITY_INSERT [dbo].[Sinif] OFF
SET IDENTITY_INSERT [dbo].[Veli] ON 

INSERT [dbo].[Veli] ([veliID], [tcNo], [ad], [soyad], [cinsiyet], [telefon], [eposta], [yakinlik], [meslek], [ogrenciID], [durum], [kayitTarih], [duzenlemeTarih]) VALUES (1, N'50033291674', N'Veli', N'Şenol', N'Erkek', N'05072220208', N'ulassenol@yandex.com', N'Baba', N'Muhasebeci', 1, N'Aktif', CAST(N'2015-12-27 00:49:48.707' AS DateTime), CAST(N'2015-12-27 00:49:48.707' AS DateTime))
SET IDENTITY_INSERT [dbo].[Veli] OFF
SET IDENTITY_INSERT [dbo].[Yoklama] ON 

INSERT [dbo].[Yoklama] ([yoklamaID], [ogrenciID], [dersProgramiID], [tarih], [durum]) VALUES (1, 1, 2, CAST(N'1991-05-23' AS Date), N'Geldi')
INSERT [dbo].[Yoklama] ([yoklamaID], [ogrenciID], [dersProgramiID], [tarih], [durum]) VALUES (2, 9, 4, CAST(N'1991-05-23' AS Date), N'Geç Geldi')
INSERT [dbo].[Yoklama] ([yoklamaID], [ogrenciID], [dersProgramiID], [tarih], [durum]) VALUES (3, 1, 4, CAST(N'1991-05-23' AS Date), N'Gelmedi')
SET IDENTITY_INSERT [dbo].[Yoklama] OFF
SET IDENTITY_INSERT [dbo].[Yonetici] ON 

INSERT [dbo].[Yonetici] ([yoneticiID], [ad], [soyad], [resim], [superYetki]) VALUES (1, N'B. Ulaş', N'Şenol', N'ulassenol.jpg', 1)
INSERT [dbo].[Yonetici] ([yoneticiID], [ad], [soyad], [resim], [superYetki]) VALUES (2, N'Kübra', N'Demircioğlu', N'kubra.jpg', 0)
INSERT [dbo].[Yonetici] ([yoneticiID], [ad], [soyad], [resim], [superYetki]) VALUES (3, N'Oğuz', N'Erdoğan', N'oguz.jpg', 0)
SET IDENTITY_INSERT [dbo].[Yonetici] OFF
ALTER TABLE [dbo].[bDersOgretmen]  WITH CHECK ADD  CONSTRAINT [FK_bDersOgretmen_Ders] FOREIGN KEY([dersID])
REFERENCES [dbo].[Ders] ([dersID])
GO
ALTER TABLE [dbo].[bDersOgretmen] CHECK CONSTRAINT [FK_bDersOgretmen_Ders]
GO
ALTER TABLE [dbo].[bDersOgretmen]  WITH CHECK ADD  CONSTRAINT [FK_bDersOgretmen_Ogretmen] FOREIGN KEY([ogretmenID])
REFERENCES [dbo].[Ogretmen] ([ogretmenID])
GO
ALTER TABLE [dbo].[bDersOgretmen] CHECK CONSTRAINT [FK_bDersOgretmen_Ogretmen]
GO
ALTER TABLE [dbo].[Ders]  WITH CHECK ADD  CONSTRAINT [FK_Ders_Bolum] FOREIGN KEY([bolumID])
REFERENCES [dbo].[Bolum] ([bolumID])
GO
ALTER TABLE [dbo].[Ders] CHECK CONSTRAINT [FK_Ders_Bolum]
GO
ALTER TABLE [dbo].[Ders]  WITH CHECK ADD  CONSTRAINT [FK_Ders_Grup] FOREIGN KEY([grupID])
REFERENCES [dbo].[Grup] ([grupID])
GO
ALTER TABLE [dbo].[Ders] CHECK CONSTRAINT [FK_Ders_Grup]
GO
ALTER TABLE [dbo].[DersProgrami]  WITH CHECK ADD  CONSTRAINT [FK_DersProgrami_Ders] FOREIGN KEY([dersID])
REFERENCES [dbo].[Ders] ([dersID])
GO
ALTER TABLE [dbo].[DersProgrami] CHECK CONSTRAINT [FK_DersProgrami_Ders]
GO
ALTER TABLE [dbo].[DersProgrami]  WITH CHECK ADD  CONSTRAINT [FK_DersProgrami_Grup] FOREIGN KEY([grupID])
REFERENCES [dbo].[Grup] ([grupID])
GO
ALTER TABLE [dbo].[DersProgrami] CHECK CONSTRAINT [FK_DersProgrami_Grup]
GO
ALTER TABLE [dbo].[DersProgrami]  WITH CHECK ADD  CONSTRAINT [FK_DersProgrami_Sinif] FOREIGN KEY([sinifID])
REFERENCES [dbo].[Sinif] ([sinifID])
GO
ALTER TABLE [dbo].[DersProgrami] CHECK CONSTRAINT [FK_DersProgrami_Sinif]
GO
ALTER TABLE [dbo].[Mesaj]  WITH NOCHECK ADD  CONSTRAINT [FK_Mesaj_Ogrenci] FOREIGN KEY([aliciID])
REFERENCES [dbo].[Ogrenci] ([ogrenciID])
GO
ALTER TABLE [dbo].[Mesaj] CHECK CONSTRAINT [FK_Mesaj_Ogrenci]
GO
ALTER TABLE [dbo].[Mesaj]  WITH NOCHECK ADD  CONSTRAINT [FK_Mesaj_Veli] FOREIGN KEY([aliciID])
REFERENCES [dbo].[Veli] ([veliID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Mesaj] NOCHECK CONSTRAINT [FK_Mesaj_Veli]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Donem] FOREIGN KEY([donemID])
REFERENCES [dbo].[Donem] ([donemID])
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Donem]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Ogretmen] FOREIGN KEY([danismanID])
REFERENCES [dbo].[Ogretmen] ([ogretmenID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Ogretmen]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Sinif] FOREIGN KEY([sinifID])
REFERENCES [dbo].[Sinif] ([sinifID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Sinif]
GO
ALTER TABLE [dbo].[Portal]  WITH NOCHECK ADD  CONSTRAINT [FK_Portal_Ogrenci] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Ogrenci] ([ogrenciID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Portal] CHECK CONSTRAINT [FK_Portal_Ogrenci]
GO
ALTER TABLE [dbo].[Portal]  WITH NOCHECK ADD  CONSTRAINT [FK_Portal_Ogretmen] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Ogretmen] ([ogretmenID])
GO
ALTER TABLE [dbo].[Portal] NOCHECK CONSTRAINT [FK_Portal_Ogretmen]
GO
ALTER TABLE [dbo].[Portal]  WITH NOCHECK ADD  CONSTRAINT [FK_Portal_Veli] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Veli] ([veliID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Portal] NOCHECK CONSTRAINT [FK_Portal_Veli]
GO
ALTER TABLE [dbo].[Portal]  WITH NOCHECK ADD  CONSTRAINT [FK_Portal_Yonetici] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Yonetici] ([yoneticiID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Portal] NOCHECK CONSTRAINT [FK_Portal_Yonetici]
GO
ALTER TABLE [dbo].[Sinav]  WITH CHECK ADD  CONSTRAINT [FK_Sinav_Grup] FOREIGN KEY([grupID])
REFERENCES [dbo].[Grup] ([grupID])
GO
ALTER TABLE [dbo].[Sinav] CHECK CONSTRAINT [FK_Sinav_Grup]
GO
ALTER TABLE [dbo].[SinavSonuc]  WITH CHECK ADD  CONSTRAINT [FK_DenemeSinav_Sinav] FOREIGN KEY([sinavID])
REFERENCES [dbo].[Sinav] ([sinavID])
GO
ALTER TABLE [dbo].[SinavSonuc] CHECK CONSTRAINT [FK_DenemeSinav_Sinav]
GO
ALTER TABLE [dbo].[SinavSonuc]  WITH CHECK ADD  CONSTRAINT [FK_SinavSonuc_Ogrenci] FOREIGN KEY([ogrenciID])
REFERENCES [dbo].[Ogrenci] ([ogrenciID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SinavSonuc] CHECK CONSTRAINT [FK_SinavSonuc_Ogrenci]
GO
ALTER TABLE [dbo].[Veli]  WITH CHECK ADD  CONSTRAINT [FK_Veli_Ogrenci] FOREIGN KEY([ogrenciID])
REFERENCES [dbo].[Ogrenci] ([ogrenciID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Veli] CHECK CONSTRAINT [FK_Veli_Ogrenci]
GO
ALTER TABLE [dbo].[Yoklama]  WITH CHECK ADD  CONSTRAINT [FK_Yoklama_Ogrenci] FOREIGN KEY([ogrenciID])
REFERENCES [dbo].[Ogrenci] ([ogrenciID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yoklama] CHECK CONSTRAINT [FK_Yoklama_Ogrenci]
GO
/****** Object:  StoredProcedure [dbo].[spBolumEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spBolumEkle]
@bolumAdi nvarchar(20)
as
INSERT INTO Bolum (ad) values (@bolumAdi)


GO
/****** Object:  StoredProcedure [dbo].[spBolumleriGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spBolumleriGetir]
as
Select ROW_NUMBER() OVER (order by ad) as #, * from Bolum


GO
/****** Object:  StoredProcedure [dbo].[spBolumSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spBolumSil]
@bolumID int
as
DELETE Bolum Where bolumID = @bolumID


GO
/****** Object:  StoredProcedure [dbo].[spDanismanaMesajGonder]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDanismanaMesajGonder]
@ogrenciID int,
@icerik nvarchar(500)
as
DECLARE @danismanID int
Select @danismanID = danismanID from Ogrenci Where ogrenciID = @ogrenciID
INSERT INTO Mesaj
(aliciID, icerik)
values
(@danismanID, @icerik)
GO
/****** Object:  StoredProcedure [dbo].[spDanismanOgrencileriGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDanismanOgrencileriGetir]
@ogretmenID int
as
Select ROW_NUMBER() OVER(order by ogrenciID desc) as #, Ogrenci.ad + ' ' + Ogrenci.soyad as ogrenci, Grup.ad as grupAdi, Bolum.ad as bolumAdi, Donem.ad as donemAdi, Sinif.ad as sinifAdi, * 
from Ogrenci 
left outer join Grup on Ogrenci.grupID = Grup.grupID
left outer join Bolum on Ogrenci.bolumID = Bolum.bolumID
left outer join Donem on Ogrenci.donemID = Donem.donemID
left outer join Sinif on Ogrenci.sinifID = Sinif.sinifID
left outer join Ogretmen on Ogrenci.danismanID = Ogretmen.ogretmenID
Where Ogrenci.durum = 'aktif' and Ogretmen.ogretmenID = @ogretmenID
GO
/****** Object:  StoredProcedure [dbo].[spDersEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDersEkle]
@dersAdi nvarchar(50),
@grupID int,
@bolumID int
as
INSERT INTO Ders 
(ad, grupID, bolumID) 
values 
(@dersAdi, @grupID, @bolumID)


GO
/****** Object:  StoredProcedure [dbo].[spDersleriGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDersleriGetir]
as
Select ROW_NUMBER() OVER(order by dersID) as #, dersID, Ders.ad as dersAdi, Grup.ad as grupAdi, Bolum.ad as bolumAdi, Grup.ad + ' - ' + Ders.ad as grupDers
from 
Ders inner join Grup on Ders.grupID = Grup.grupID 
inner join Bolum on Ders.bolumID = Bolum.bolumID


GO
/****** Object:  StoredProcedure [dbo].[spDersProgramiEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDersProgramiEkle]
@dersID int,
@gun nvarchar(50),
@saat nvarchar(50),
@kacinciDers nvarchar(50),
@sinifID int,
@grupID int
as
INSERT INTO DersProgrami 
(dersID, gun, saat, kacinciDers, sinifID, grupID)
values
(@dersID, @gun, @saat, @kacinciDers, @sinifID, @grupID)


GO
/****** Object:  StoredProcedure [dbo].[spDersProgramiGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDersProgramiGetir]
as
Select ROW_NUMBER() OVER(order by DersProgrami.sinifID) as #, Sinif.ad as sinifAdi, Grup.ad as grupAdi, gun + ' - ' + kacinciDers + '. ders - ' + Ders.ad as yoklama, Ders.ad as dersAdi, *
from DersProgrami
inner join Sinif on DersProgrami.sinifID = Sinif.sinifID
inner join Grup on DersProgrami.grupID = Grup.grupID
inner join Ders on DersProgrami.dersID = Ders.dersID
GO
/****** Object:  StoredProcedure [dbo].[spDersProgramiGetirOgrenci]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDersProgramiGetirOgrenci]
@ogrenciID int
as
Select Ders.ad as dersAdi, *
from DersProgrami
inner join Sinif on DersProgrami.sinifID = Sinif.sinifID
inner join Grup on DersProgrami.grupID = Grup.grupID
inner join Ders on DersProgrami.dersID = Ders.dersID
Where Sinif.sinifID = (Select sinifID from Ogrenci Where ogrenciID = @ogrenciID)
GO
/****** Object:  StoredProcedure [dbo].[spDersProgramiSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDersProgramiSil]
@dersProgramiID int
as
DELETE DersProgrami Where dersProgramiID = @dersProgramiID


GO
/****** Object:  StoredProcedure [dbo].[spDersSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDersSil]
@dersID int
as
DELETE Ders Where dersID = @dersID


GO
/****** Object:  StoredProcedure [dbo].[spDonemEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDonemEkle]
@donemAdi nvarchar(20)
as
INSERT INTO Donem (ad) values (@donemAdi)


GO
/****** Object:  StoredProcedure [dbo].[spDonemleriGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDonemleriGetir]
as
Select ROW_NUMBER() OVER (order by ad desc) as #, * from Donem


GO
/****** Object:  StoredProcedure [dbo].[spDonemSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDonemSil]
@donemID int
as
DELETE Donem Where donemID = @donemID


GO
/****** Object:  StoredProcedure [dbo].[spGrupEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGrupEkle]
@grupAdi nvarchar(20)
as
INSERT INTO Grup (ad) values (@grupAdi)


GO
/****** Object:  StoredProcedure [dbo].[spGruplariGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGruplariGetir]
as
Select ROW_NUMBER() OVER (order by ad) as #, * from Grup


GO
/****** Object:  StoredProcedure [dbo].[spGrupSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGrupSil]
@grupID int
as
DELETE Grup Where grupID = @grupID


GO
/****** Object:  StoredProcedure [dbo].[spKullaniciIDGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spKullaniciIDGetir]
@kullaniciAdi nvarchar(50),
@yetki nvarchar(50)
as
Select kullaniciID from Portal Where kullaniciAdi = @kullaniciAdi and yetki = @yetki


GO
/****** Object:  StoredProcedure [dbo].[spOgrenciEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgrenciEkle]
@tcNo nvarchar(11),
@ad nvarchar(50),
@soyad nvarchar(50),
@cinsiyet nvarchar(5),
@adres nvarchar(100),
@numara nvarchar(6),
@resim nvarchar(50),
@telefon nvarchar(14),
@eposta nvarchar(50),
@grupID int,
@bolumID int,
@donemID int,
@sinifID int,
@danismanID int,
@durum nvarchar(50)
as
INSERT INTO Ogrenci 
(tcNo, ad, soyad, cinsiyet, adres, numara, resim, telefon, eposta, grupID, bolumID, donemID, sinifID, danismanID, durum, kayitTarih, duzenlemeTarih)
values
(@tcNo, @ad, @soyad, @cinsiyet, @adres, @numara, @resim, @telefon, @eposta, @grupID, @bolumID, @donemID, @sinifID, @danismanID, @durum, GETDATE(), GETDATE())


GO
/****** Object:  StoredProcedure [dbo].[spOgrencileriGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgrencileriGetir]
as
Select ROW_NUMBER() OVER(order by ogrenciID desc) as #, Ogrenci.ad + ' ' + Ogrenci.soyad as ogrenci, Grup.ad as grupAdi, Bolum.ad as bolumAdi, Donem.ad as donemAdi, Sinif.ad as sinifAdi, Ogretmen.ad + ' ' + Ogretmen.soyad as danisman, * 
from Ogrenci 
left outer join Grup on Ogrenci.grupID = Grup.grupID
left outer join Bolum on Ogrenci.bolumID = Bolum.bolumID
left outer join Donem on Ogrenci.donemID = Donem.donemID
left outer join Sinif on Ogrenci.sinifID = Sinif.sinifID
left outer join Ogretmen on Ogrenci.danismanID = Ogretmen.ogretmenID
Where Ogrenci.durum = 'aktif'


GO
/****** Object:  StoredProcedure [dbo].[spOgrencileriGetirRapor]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgrencileriGetirRapor]
@durum nvarchar(50),
@cinsiyet nvarchar(50),
@grupAdi nvarchar(50)
as
IF(@durum != 'bos')
BEGIN
	SELECT 
		ROW_NUMBER() OVER(order by ogrenciID desc) as #, 
		Ogrenci.numara as [Öğrenci Numarası],  
		Ogrenci.ad + ' ' + Ogrenci.soyad as Ad, 
		Sinif.ad as Sınıf, 
		Grup.ad as Grup, 
		Bolum.ad as Bölüm, 
		Donem.ad as Dönem, 
		Ogretmen.ad + ' ' + Ogretmen.soyad as Danışman, 
		Ogrenci.tcNo as [T.C. Numara],
		Ogrenci.cinsiyet as Cinsiyet,
		Ogrenci.telefon as [Cep Telefonu],
		Ogrenci.eposta as [E-Posta],
		Ogrenci.adres as Adres,
		Ogrenci.durum as Durum,
		Ogrenci.kayitTarih as [Kayıt Tarihi]
	FROM Ogrenci 
		left outer join Grup on Ogrenci.grupID = Grup.grupID
		left outer join Bolum on Ogrenci.bolumID = Bolum.bolumID
		left outer join Donem on Ogrenci.donemID = Donem.donemID
		left outer join Sinif on Ogrenci.sinifID = Sinif.sinifID
		left outer join Ogretmen on Ogrenci.danismanID = Ogretmen.ogretmenID
	WHERE
		Ogrenci.durum = @durum
END
ELSE IF(@cinsiyet != 'bos')
BEGIN
	SELECT 
		ROW_NUMBER() OVER(order by ogrenciID desc) as #, 
		Ogrenci.numara as [Öğrenci Numarası],  
		Ogrenci.ad + ' ' + Ogrenci.soyad as Ad, 
		Sinif.ad as Sınıf, 
		Grup.ad as Grup, 
		Bolum.ad as Bölüm, 
		Donem.ad as Dönem, 
		Ogretmen.ad + ' ' + Ogretmen.soyad as Danışman, 
		Ogrenci.tcNo as [T.C. Numara],
		Ogrenci.cinsiyet as Cinsiyet,
		Ogrenci.telefon as [Cep Telefonu],
		Ogrenci.eposta as [E-Posta],
		Ogrenci.adres as Adres,
		Ogrenci.durum as Durum,
		Ogrenci.kayitTarih as [Kayıt Tarihi]
	FROM Ogrenci 
		left outer join Grup on Ogrenci.grupID = Grup.grupID
		left outer join Bolum on Ogrenci.bolumID = Bolum.bolumID
		left outer join Donem on Ogrenci.donemID = Donem.donemID
		left outer join Sinif on Ogrenci.sinifID = Sinif.sinifID
		left outer join Ogretmen on Ogrenci.danismanID = Ogretmen.ogretmenID
	WHERE
		Ogrenci.cinsiyet = @cinsiyet
END
ELSE IF(@grupAdi != 'bos')
BEGIN
	SELECT 
		ROW_NUMBER() OVER(order by ogrenciID desc) as #, 
		Ogrenci.numara as [Öğrenci Numarası],  
		Ogrenci.ad + ' ' + Ogrenci.soyad as Ad, 
		Sinif.ad as Sınıf, 
		Grup.ad as Grup, 
		Bolum.ad as Bölüm, 
		Donem.ad as Dönem, 
		Ogretmen.ad + ' ' + Ogretmen.soyad as Danışman, 
		Ogrenci.tcNo as [T.C. Numara],
		Ogrenci.cinsiyet as Cinsiyet,
		Ogrenci.telefon as [Cep Telefonu],
		Ogrenci.eposta as [E-Posta],
		Ogrenci.adres as Adres,
		Ogrenci.durum as Durum,
		Ogrenci.kayitTarih as [Kayıt Tarihi]
	FROM Ogrenci 
		left outer join Grup on Ogrenci.grupID = Grup.grupID
		left outer join Bolum on Ogrenci.bolumID = Bolum.bolumID
		left outer join Donem on Ogrenci.donemID = Donem.donemID
		left outer join Sinif on Ogrenci.sinifID = Sinif.sinifID
		left outer join Ogretmen on Ogrenci.danismanID = Ogretmen.ogretmenID
	WHERE
		Grup.ad = @grupAdi
END
ELSE
BEGIN
	SELECT 
		ROW_NUMBER() OVER(order by ogrenciID desc) as #, 
		Ogrenci.numara as [Öğrenci Numarası],  
		Ogrenci.ad + ' ' + Ogrenci.soyad as Ad, 
		Sinif.ad as Sınıf, 
		Grup.ad as Grup, 
		Bolum.ad as Bölüm, 
		Donem.ad as Dönem, 
		Ogretmen.ad + ' ' + Ogretmen.soyad as Danışman, 
		Ogrenci.tcNo as [T.C. Numara],
		Ogrenci.cinsiyet as Cinsiyet,
		Ogrenci.telefon as [Cep Telefonu],
		Ogrenci.eposta as [E-Posta],
		Ogrenci.adres as Adres,
		Ogrenci.durum as Durum,
		Ogrenci.kayitTarih as [Kayıt Tarihi]
	FROM Ogrenci 
		left outer join Grup on Ogrenci.grupID = Grup.grupID
		left outer join Bolum on Ogrenci.bolumID = Bolum.bolumID
		left outer join Donem on Ogrenci.donemID = Donem.donemID
		left outer join Sinif on Ogrenci.sinifID = Sinif.sinifID
		left outer join Ogretmen on Ogrenci.danismanID = Ogretmen.ogretmenID
END

GO
/****** Object:  StoredProcedure [dbo].[spOgrencilerSilinenGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgrencilerSilinenGetir]
as
Select ROW_NUMBER() OVER(order by silOgrenciID desc) as #, sok.ad + ' ' + sok.soyad as ogrenci, Grup.ad as grupAdi, Bolum.ad as bolumAdi, Donem.ad as donemAdi, Sinif.ad as sinifAdi, Ogretmen.ad + ' ' + Ogretmen.soyad as danisman, * 
from SilinmisOgrenciKayitlari as sok
left outer join Grup on sok.grupID = Grup.grupID
left outer join Bolum on sok.bolumID = Bolum.bolumID
left outer join Donem on sok.donemID = Donem.donemID
left outer join Sinif on sok.sinifID = Sinif.sinifID
left outer join Ogretmen on sok.danismanID = Ogretmen.ogretmenID


GO
/****** Object:  StoredProcedure [dbo].[spOgrencilerSilinenGetirRapor]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgrencilerSilinenGetirRapor]
as
Select 
ROW_NUMBER() OVER(order by silOgrenciID desc) as #, 
sok.numara as [Öğrenci Numarası],  
sok.ad + ' ' + sok.soyad as Ad, 
Sinif.ad as Sınıf, 
Grup.ad as Grup, 
Bolum.ad as Bölüm, 
Donem.ad as Dönem, 
Ogretmen.ad + ' ' + Ogretmen.soyad as Danışman, 
sok.tcNo as [T.C. Numara],
sok.cinsiyet as Cinsiyet,
sok.telefon as [Cep Telefonu],
sok.eposta as [E-Posta],
sok.adres as Adres,
sok.durum as Durum,
sok.kayitTarih as [Kayıt Tarihi]
from SilinmisOgrenciKayitlari as sok 
left outer join Grup on sok.grupID = Grup.grupID
left outer join Bolum on sok.bolumID = Bolum.bolumID
left outer join Donem on sok.donemID = Donem.donemID
left outer join Sinif on sok.sinifID = Sinif.sinifID
left outer join Ogretmen on sok.danismanID = Ogretmen.ogretmenID


GO
/****** Object:  StoredProcedure [dbo].[spOgrenciSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgrenciSil]
@ogrenciID int
as
DELETE Ogrenci Where ogrenciID = @ogrenciID


GO
/****** Object:  StoredProcedure [dbo].[spOgretmenEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgretmenEkle]
@tcNo nvarchar(11),
@ad nvarchar(50),
@soyad nvarchar(50),
@cinsiyet nvarchar(5),
@dogumTarih date,
@adres nvarchar(100),
@brans nvarchar(50),
@resim nvarchar(50),
@telefon nvarchar(14),
@eposta nvarchar(50),
@durum nvarchar(50)
as
INSERT INTO Ogretmen 
(tcNo, ad, soyad, cinsiyet, dogumTarih, adres, brans, resim, telefon, eposta, durum, kayitTarih, duzenlemeTarih)
values
(@tcNo, @ad, @soyad, @cinsiyet, @dogumTarih, @adres, @brans, @resim, @telefon, @eposta, @durum, GETDATE(), GETDATE())


GO
/****** Object:  StoredProcedure [dbo].[spOgretmenEkleTablo]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgretmenEkleTablo]
@ad nvarchar(50),
@soyad nvarchar(50),
@tcNo nvarchar(11),
@cinsiyet nvarchar(5),
@adres nvarchar(100),
@brans nvarchar(50),
@telefon nvarchar(14),
@eposta nvarchar(50),
@durum nvarchar(50)
as
INSERT INTO Ogretmen 
(tcNo, ad, soyad, cinsiyet, adres, brans, telefon, eposta, durum, kayitTarih, duzenlemeTarih)
values
(@tcNo, @ad, @soyad, @cinsiyet, @adres, @brans, @telefon, @eposta, @durum, GETDATE(), GETDATE())


GO
/****** Object:  StoredProcedure [dbo].[spOgretmenleriGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgretmenleriGetir]
as
Select ROW_NUMBER() OVER(order by ogretmenID desc) as #, ad + ' ' + soyad + ' - ' + brans as danisman, ad + ' ' + soyad as ogretmen, * 
from Ogretmen 
Where durum = 'aktif'


GO
/****** Object:  StoredProcedure [dbo].[spOgretmenleriGetirRapor]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgretmenleriGetirRapor]
as
Select 
ROW_NUMBER() OVER(order by ogretmenID desc) as #, 
ad as Ad,
soyad as Soyad, 
tcNo as [T.C. Numarası],
cinsiyet as Cinsiyet,
adres as Adres,
brans as Branş,
telefon as [Cep Telefonu],
eposta as [E-Posta],
durum as Durum
from Ogretmen 
Where durum = 'aktif'


GO
/****** Object:  StoredProcedure [dbo].[spOgretmenSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spOgretmenSil]
@ogretmenID int
as
DELETE Ogretmen Where ogretmenID = @ogretmenID


GO
/****** Object:  StoredProcedure [dbo].[spPortalaEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spPortalaEkle]
@kullaniciID int,
@kullaniciAdi nvarchar(50),
@sifre nvarchar(50),
@yetki nvarchar(50)
as
INSERT INTO Portal
(kullaniciID, kullaniciAdi, sifre, yetki)
values
(@kullaniciID, @kullaniciAdi, @sifre, @yetki)


GO
/****** Object:  StoredProcedure [dbo].[spPortalGetirYetkisizOgrenci]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spPortalGetirYetkisizOgrenci]
as
Select numara + ' - ' + ad + ' ' + soyad as kisi, ogrenciID from Ogrenci Where ogrenciID not in (Select kullaniciID from Portal Where yetki = 'ogrenci')
GO
/****** Object:  StoredProcedure [dbo].[spPortalGetirYetkisizOgretmen]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spPortalGetirYetkisizOgretmen]
as
Select brans + ' - ' + ad + ' ' + soyad as kisi, ogretmenID from Ogretmen Where ogretmenID not in (Select kullaniciID from Portal Where yetki = 'ogretmen')
GO
/****** Object:  StoredProcedure [dbo].[spPortalGetirYetkisizVeli]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spPortalGetirYetkisizVeli]
as
Select ad + ' ' + soyad as kisi, veliID from Veli Where veliID not in (Select kullaniciID from Portal Where yetki = 'veli')
GO
/****** Object:  StoredProcedure [dbo].[spPortalGetirYetkisizYonetici]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spPortalGetirYetkisizYonetici]
as
Select ad + ' ' + soyad as kisi, yoneticiID from Yonetici Where yoneticiID not in (Select kullaniciID from Portal Where yetki = 'yonetici')
GO
/****** Object:  StoredProcedure [dbo].[spPortallariGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spPortallariGetir]
as
Select ROW_NUMBER() OVER(order by Portal.yetki desc, portalID) as #, kullaniciAdi, yetki, ISNULL(Ogrenci.ad + ' ' + Ogrenci.soyad, ISNULL(Veli.ad + ' ' + Veli.soyad, ISNULL(Ogretmen.ad + ' ' + Ogretmen.soyad, ISNULL(Yonetici.ad + ' ' + Yonetici.soyad, 'bos')))) as yetkiliAdi, portalID, ISNULL('Öğrenci - ' + Ogrenci.ad + ' ' + Ogrenci.soyad, ISNULL('Veli - ' + Veli.ad + ' ' + Veli.soyad, ISNULL('Öğretmen - ' + Ogretmen.ad + ' ' + Ogretmen.soyad, ISNULL('Yönetici - ' + Yonetici.ad + ' ' + Yonetici.soyad, 'bos')))) as kisi, kullaniciID
from Portal
left outer join Ogrenci on Portal.kullaniciID = Ogrenci.ogrenciID and Portal.yetki = 'ogrenci'
left outer join Ogretmen on Portal.kullaniciID = Ogretmen.ogretmenID and Portal.yetki = 'ogretmen'
left outer join Veli on Portal.kullaniciID = Veli.veliID and Portal.yetki = 'veli'
left outer join Yonetici on Portal.kullaniciID = Yonetici.yoneticiID and Portal.yetki = 'yonetici'


GO
/****** Object:  StoredProcedure [dbo].[spPortalSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spPortalSil]
@portalID int
as
DELETE Portal Where portalID = @portalID


GO
/****** Object:  StoredProcedure [dbo].[spSinavEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinavEkle]
@grupID int,
@ad nvarchar(50),
@tur nvarchar(50),
@tarih date
as
INSERT INTO Sinav (grupID, ad, tur, tarih) values (@grupID, @ad, @tur, @tarih)


GO
/****** Object:  StoredProcedure [dbo].[spSinavlariGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinavlariGetir]
as
Select ROW_NUMBER() OVER(order by tur, sinavID desc) as #, Sinav.ad as sinavAdi, Grup.ad as grupAdi, tur, sinavID 
from Sinav
inner join Grup on Sinav.grupID = Grup.grupID


GO
/****** Object:  StoredProcedure [dbo].[spSinavSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinavSil]
@sinavID int
as
DELETE Sinav Where sinavID = @sinavID


GO
/****** Object:  StoredProcedure [dbo].[spSinavSonuclariGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinavSonuclariGetir]
as
Select ROW_NUMBER() OVER(order by Sinav.sinavID) as #, Sinav.ad as sinavAdi, dogru, yanlis, bos, Ogrenci.ad + ' ' + Ogrenci.soyad as ogrenciAdi, tarih, tur, sinavSonucID
from SinavSonuc 
inner join Ogrenci on SinavSonuc.ogrenciID = Ogrenci.ogrenciID
inner join Sinav on SinavSonuc.sinavID = Sinav.sinavID


GO
/****** Object:  StoredProcedure [dbo].[spSinavSonuclariGetirOgrenci]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinavSonuclariGetirOgrenci]
@ogrenciID int
as
Select ROW_NUMBER() OVER(order by Sinav.sinavID) as #, Sinav.ad as sinavAdi, dogru, yanlis, bos, tarih, tur
from SinavSonuc 
inner join Ogrenci on SinavSonuc.ogrenciID = Ogrenci.ogrenciID
inner join Sinav on SinavSonuc.sinavID = Sinav.sinavID
Where Ogrenci.ogrenciID = @ogrenciID
GO
/****** Object:  StoredProcedure [dbo].[spSinavSonuclariGetirVeli]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinavSonuclariGetirVeli]
@veliID int
as
Select ROW_NUMBER() OVER(order by Sinav.sinavID) as #, Sinav.ad as sinavAdi, dogru, yanlis, bos, tarih, tur, Ogrenci.ad + ' ' + Ogrenci.soyad as ogrenciAdi
from SinavSonuc 
inner join Ogrenci on SinavSonuc.ogrenciID = Ogrenci.ogrenciID
inner join Sinav on SinavSonuc.sinavID = Sinav.sinavID
inner join Veli on Veli.ogrenciID = SinavSonuc.ogrenciID
Where Veli.veliID = @veliID
GO
/****** Object:  StoredProcedure [dbo].[spSinavSonucuEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinavSonucuEkle]
@ogrenciID int,
@sinavID int,
@dogru int,
@yanlis int,
@bos int
as
INSERT INTO SinavSonuc 
	(ogrenciID, sinavID, dogru, yanlis, bos) 
values 
	(@ogrenciID, @sinavID, @dogru, @yanlis, @bos)


GO
/****** Object:  StoredProcedure [dbo].[spSinavSonucuSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinavSonucuSil]
@sinavSonucID int
as
DELETE SinavSonuc Where sinavSonucID = @sinavSonucID


GO
/****** Object:  StoredProcedure [dbo].[spSinifEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinifEkle]
@sinifAdi nvarchar(20)
as
INSERT INTO Sinif (ad) values (@sinifAdi)


GO
/****** Object:  StoredProcedure [dbo].[spSiniflariGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSiniflariGetir]
as
Select ROW_NUMBER() OVER (order by ad) as #, * from Sinif


GO
/****** Object:  StoredProcedure [dbo].[spSinifSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSinifSil]
@sinifID int
as
DELETE Sinif Where sinifID = @sinifID


GO
/****** Object:  StoredProcedure [dbo].[spVeliEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spVeliEkle]
@tcNo nvarchar(11),
@ad nvarchar(50),
@soyad nvarchar(50),
@cinsiyet nvarchar(5),
@telefon nvarchar(14),
@eposta nvarchar(50),
@yakinlik nvarchar(50),
@meslek nvarchar(50),
@ogrenciID int,
@durum nvarchar(50)
as
INSERT INTO Veli 
(tcNo, ad, soyad, cinsiyet, telefon, eposta, yakinlik, meslek, ogrenciID, durum, kayitTarih, duzenlemeTarih)
values
(@tcNo, @ad, @soyad, @cinsiyet, @telefon, @eposta, @yakinlik, @meslek, @ogrenciID, @durum, GETDATE(), GETDATE())


GO
/****** Object:  StoredProcedure [dbo].[spVelileriGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spVelileriGetir]
as
Select ROW_NUMBER() OVER(order by veliID desc) as #, Veli.ad + ' ' + Veli.soyad as veliAdi, Ogrenci.ad + ' ' + Ogrenci.soyad as ogrenciAdi, * 
from Veli 
inner join Ogrenci on Veli.ogrenciID = Ogrenci.ogrenciID
Where Veli.durum = 'aktif'


GO
/****** Object:  StoredProcedure [dbo].[spVeliSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spVeliSil]
@veliID int
as
DELETE Veli Where veliID = @veliID


GO
/****** Object:  StoredProcedure [dbo].[spYetkiliBilgisiGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spYetkiliBilgisiGetir]
@kullaniciID int,
@yetki nvarchar(50)
as
IF (@yetki = 'ogrenci')
BEGIN
	Select * from Ogrenci Where ogrenciID = @kullaniciID
END
ELSE IF (@yetki = 'veli')
BEGIN
	Select * from Veli Where veliID = @kullaniciID
END
ELSE IF (@yetki = 'ogretmen')
BEGIN
	Select * from Ogretmen Where ogretmenID = @kullaniciID
END
ELSE IF (@yetki = 'yonetici')
BEGIN
	Select * from Yonetici Where yoneticiID = @kullaniciID
END


GO
/****** Object:  StoredProcedure [dbo].[spYetkiliGiris]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spYetkiliGiris]
@kullaniciID int,
@yetki nvarchar(50)
as
IF (Select COUNT(*) from Portal Where kullaniciID = @kullaniciID and yetki = @yetki) > 0
BEGIN
	Select 'var'
END
ELSE
BEGIN
	Select 'yok'
END


GO
/****** Object:  StoredProcedure [dbo].[spYetkiVarMi]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spYetkiVarMi]
@kullaniciID int,
@sifre nvarchar(50),
@yetki nvarchar(50)
as
IF (Select COUNT(*) from Portal Where kullaniciID = @kullaniciID and sifre = @sifre and yetki = @yetki) > 0
BEGIN
	Select 'var'
END
ELSE
BEGIN
	Select 'yok'
END


GO
/****** Object:  StoredProcedure [dbo].[spYoklamaEkle]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spYoklamaEkle]
@ogrenciID int,
@tarih date,
@durum nvarchar(10),
@dersProgramiID int
as
INSERT INTO Yoklama
(ogrenciID, dersProgramiID, tarih, durum)
values
(@ogrenciID, @dersProgramiID, @tarih, @durum)


GO
/****** Object:  StoredProcedure [dbo].[spYoklamalariGetir]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spYoklamalariGetir]
as
Select ROW_NUMBER() OVER(order by Ogrenci.sinifID) as #, tarih, Yoklama.durum as yoklamaDurumu, Ogrenci.ad + ' ' + Ogrenci.soyad as ogrenciAdi, Sinif.ad as sinifAdi, Ders.ad as dersAdi, DersProgrami.kacinciDers as yoklamaKacinciDers, yoklamaID 
from Yoklama
inner join Ogrenci on Yoklama.ogrenciID = Ogrenci.ogrenciID
inner join Sinif on Ogrenci.sinifID = Sinif.sinifID
inner join DersProgrami on Yoklama.dersProgramiID = DersProgrami.dersProgramiID
inner join Ders on DersProgrami.dersID = Ders.dersID


GO
/****** Object:  StoredProcedure [dbo].[spYoklamalariGetirOgrenci]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spYoklamalariGetirOgrenci]
@ogrenciID int
as
Select ROW_NUMBER() OVER(order by Yoklama.yoklamaID desc) as #, tarih, Yoklama.durum as yoklamaDurumu, Ders.ad as dersAdi, DersProgrami.kacinciDers as yoklamaKacinciDers
from Yoklama
inner join Ogrenci on Yoklama.ogrenciID = Ogrenci.ogrenciID
inner join Sinif on Ogrenci.sinifID = Sinif.sinifID
inner join DersProgrami on Yoklama.dersProgramiID = DersProgrami.dersProgramiID
inner join Ders on DersProgrami.dersID = Ders.dersID
Where Ogrenci.ogrenciID = @ogrenciID


GO
/****** Object:  StoredProcedure [dbo].[spYoklamalariGetirVeli]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spYoklamalariGetirVeli]
@veliID int
as
Select ROW_NUMBER() OVER(order by Yoklama.yoklamaID desc) as #, tarih, Yoklama.durum as yoklamaDurumu, Ders.ad as dersAdi, DersProgrami.kacinciDers as yoklamaKacinciDers, Ogrenci.ad + ' ' + Ogrenci.soyad as ogrenciAdi
from Yoklama
inner join Ogrenci on Yoklama.ogrenciID = Ogrenci.ogrenciID
inner join Sinif on Ogrenci.sinifID = Sinif.sinifID
inner join DersProgrami on Yoklama.dersProgramiID = DersProgrami.dersProgramiID
inner join Ders on DersProgrami.dersID = Ders.dersID
inner join Veli on Ogrenci.ogrenciID = Veli.ogrenciID
Where Veli.veliID = @veliID


GO
/****** Object:  StoredProcedure [dbo].[spYoklamaSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spYoklamaSil]
@yoklamaID int
as
DELETE Yoklama Where yoklamaID = @yoklamaID


GO
/****** Object:  Trigger [dbo].[tgDonemSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgDonemSil] on [dbo].[Donem]
INSTEAD OF DELETE
as
DECLARE @donemID int

SELECT @donemID = donemID FROM deleted

UPDATE Ogrenci set donemID = NULL Where donemID = @donemID

DELETE Donem Where donemID = @donemID


GO
/****** Object:  Trigger [dbo].[tgOgrenciSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgOgrenciSil] on [dbo].[Ogrenci]
INSTEAD OF DELETE
as
DECLARE
	@ogrenciID int,
    @tcNo nvarchar(11),
    @ad nvarchar(50),
    @soyad nvarchar(50),
    @cinsiyet  nvarchar(5),
    @adres nvarchar(100),
    @numara nvarchar(6),
    @resim nvarchar(50),
    @telefon nvarchar(14),
    @eposta nvarchar(50),
    @grupID int,
    @bolumID int,
    @donemID int,
    @sinifID int,
    @danismanID int,
    @durum nvarchar(10),
    @kayitTarih datetime,
    @duzenlemeTarih datetime

SELECT
	@ogrenciID = ogrenciID,
    @tcNo = tcNo,
    @ad = ad,
    @soyad = soyad ,
    @cinsiyet = cinsiyet ,
    @adres = adres ,
    @numara = numara ,
    @resim = resim,
    @telefon = telefon,
    @eposta = eposta,
    @grupID = grupID,
    @bolumID = bolumID,
    @donemID = donemID,
    @sinifID = sinifID,
    @danismanID = danismanID,
    @durum = durum ,
    @kayitTarih = kayitTarih,
    @duzenlemeTarih = duzenlemeTarih 
FROM
	deleted

INSERT INTO [dbo].[SilinmisOgrenciKayitlari]
    ([tcNo]
    ,[ad]
    ,[soyad]
    ,[cinsiyet]
    ,[adres]
    ,[numara]
    ,[resim]
    ,[telefon]
    ,[eposta]
    ,[grupID]
    ,[bolumID]
    ,[donemID]
    ,[sinifID]
    ,[danismanID]
    ,[durum]
    ,[kayitTarih]
    ,[duzenlemeTarih])
VALUES
   (@tcNo,
    @ad ,
    @soyad ,
    @cinsiyet ,
    @adres ,
    @numara ,
    @resim ,
    @telefon,
    @eposta,
    @grupID,
    @bolumID,
    @donemID,
    @sinifID,
    @danismanID,
    @durum,
    @kayitTarih,
    @duzenlemeTarih )

DELETE Yoklama Where ogrenciID = @ogrenciID

DELETE DenemeSinav Where ogrenciID = @ogrenciID

DELETE Veli Where ogrenciID = @ogrenciID

DELETE Ogrenci Where ogrenciID = @ogrenciID

GO
/****** Object:  Trigger [dbo].[tgSinavSil]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgSinavSil] on [dbo].[Sinav]
INSTEAD OF DELETE
as
DECLARE @sinavID int

SELECT @sinavID = sinavID FROM deleted

DELETE DenemeSinav Where sinavID = @sinavID

DELETE Sinav Where sinavID = @sinavID


GO
/****** Object:  Trigger [dbo].[tgSinavSonuc]    Script Date: 29.12.2015 04:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgSinavSonuc] on [dbo].[SinavSonuc]
AFTER INSERT
as
BEGIN
DECLARE
	@ogrenciID int,
	@veliID int,
	@oTelefon nvarchar(11),
	@vTelefon nvarchar(11),
	@dogru int,
	@yanlis int,
	@bos int,
	@sinavID int,
	@sinavAdi nvarchar(50)

SELECT
	@ogrenciID = Veli.ogrenciID,
	@veliID = Veli.veliID,
	@dogru = inserted.dogru,
	@yanlis = inserted.yanlis,
	@bos = inserted.bos,
	@sinavID = inserted.sinavID,
	@sinavAdi = Sinav.ad
FROM inserted 
	inner join Veli on inserted.ogrenciID = Veli.ogrenciID
	inner join Sinav on inserted.sinavID = Sinav.sinavID

INSERT INTO Mesaj
   (aliciID,
	icerik)
VALUES
   (@ogrenciID,
	@sinavAdi + ' sınavından ' + CAST(@dogru as nvarchar(50)) + ' doğru, ' + CAST(@yanlis as nvarchar(50)) + ' yanlış, ' + CAST(@bos as nvarchar(50)) + ' boşunuz var.')

INSERT INTO Mesaj
   (aliciID,
	icerik)
VALUES
   (@veliID,
	'Öğrencimiz, ' + @sinavAdi + ' sınavından ' + CAST(@dogru as nvarchar(50)) + ' doğru, ' + CAST(@yanlis as nvarchar(50)) + ' yanlış, ' + CAST(@bos as nvarchar(50)) + ' boşu vardır.')
	END
GO
USE [master]
GO
ALTER DATABASE [Dershane] SET  READ_WRITE 
GO
