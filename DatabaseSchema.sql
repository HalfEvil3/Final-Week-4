USE [master]
GO
/****** Object:  Database [LOLStatistics]    Script Date: 12/18/2016 3:59:16 PM ******/
CREATE DATABASE [LOLStatistics]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LOLStatistics', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LOLStatistics.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LOLStatistics_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LOLStatistics_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LOLStatistics] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LOLStatistics].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LOLStatistics] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LOLStatistics] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LOLStatistics] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LOLStatistics] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LOLStatistics] SET ARITHABORT OFF 
GO
ALTER DATABASE [LOLStatistics] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LOLStatistics] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LOLStatistics] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LOLStatistics] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LOLStatistics] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LOLStatistics] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LOLStatistics] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LOLStatistics] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LOLStatistics] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LOLStatistics] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LOLStatistics] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LOLStatistics] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LOLStatistics] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LOLStatistics] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LOLStatistics] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LOLStatistics] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LOLStatistics] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LOLStatistics] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LOLStatistics] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LOLStatistics] SET  MULTI_USER 
GO
ALTER DATABASE [LOLStatistics] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LOLStatistics] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LOLStatistics] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LOLStatistics] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LOLStatistics]
GO
/****** Object:  User [Nam]    Script Date: 12/18/2016 3:59:16 PM ******/
CREATE USER [Nam] FOR LOGIN [Nam] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Champions]    Script Date: 12/18/2016 3:59:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Champions](
	[ChampID] [int] IDENTITY(1,1) NOT NULL,
	[ChampName] [nvarchar](50) NOT NULL,
	[ChampType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Champions] PRIMARY KEY CLUSTERED 
(
	[ChampID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChampStats]    Script Date: 12/18/2016 3:59:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChampStats](
	[StatID] [int] IDENTITY(1,1) NOT NULL,
	[ChampID] [int] NOT NULL,
	[Wins] [int] NOT NULL CONSTRAINT [DF_ChampStats_Wins]  DEFAULT ((0)),
	[Loses] [int] NOT NULL CONSTRAINT [DF_ChampStats_Loses]  DEFAULT ((0)),
	[GamesPlayed] [int] NOT NULL CONSTRAINT [DF_Table_1_WinLostRatio]  DEFAULT ((0)),
	[WinRate] [decimal](18, 0) NULL,
	[PlayRate] [decimal](18, 0) NULL,
	[BanRate] [decimal](18, 0) NULL,
	[AvgGold] [decimal](18, 0) NULL,
	[Kills] [decimal](18, 0) NOT NULL CONSTRAINT [DF_ChampStats_Kills]  DEFAULT ((0)),
	[Deaths] [decimal](18, 0) NOT NULL CONSTRAINT [DF_ChampStats_Deaths]  DEFAULT ((0)),
	[Assist] [decimal](18, 0) NOT NULL CONSTRAINT [DF_ChampStats_Assist]  DEFAULT ((0)),
 CONSTRAINT [PK_ChampStats] PRIMARY KEY CLUSTERED 
(
	[StatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Champions] ON 

GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (1, N'Arsenio', N'Enim Inc.')
GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (2, N'Kasimir', N'Pede Inc.')
GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (3, N'Channing', N'Pulvinar Arcu Et PC')
GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (4, N'Rudyard', N'Elit Pharetra Ut LLC')
GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (5, N'Duncan', N'Sed Eu Ltd')
GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (6, N'Oleg', N'Arcu Eu Odio PC')
GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (7, N'Dorian', N'Velit Aliquam Limited')
GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (8, N'Hector', N'Ut Dolor Inc.')
GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (9, N'Beck', N'Ipsum Dolor Sit LLP')
GO
INSERT [dbo].[Champions] ([ChampID], [ChampName], [ChampType]) VALUES (10, N'Elvis', N'Dolor Sit Foundation')
GO
SET IDENTITY_INSERT [dbo].[Champions] OFF
GO
SET IDENTITY_INSERT [dbo].[ChampStats] ON 

GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (1, 3, 383, 339, 722, CAST(1 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(14792 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (2, 1, 136, 350, 486, CAST(0 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(14356 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (3, 3, 84, 174, 258, CAST(0 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(18491 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (4, 9, 260, 273, 533, CAST(0 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(6117 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (5, 6, 166, 293, 459, CAST(0 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(18667 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (6, 2, 38, 393, 431, CAST(0 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(14986 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (7, 2, 283, 274, 557, CAST(1 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(13852 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (8, 6, 480, 262, 742, CAST(1 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), CAST(13967 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (9, 5, 296, 283, 579, CAST(1 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(16045 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChampStats] ([StatID], [ChampID], [Wins], [Loses], [GamesPlayed], [WinRate], [PlayRate], [BanRate], [AvgGold], [Kills], [Deaths], [Assist]) VALUES (10, 1, 355, 359, 714, CAST(0 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(13951 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[ChampStats] OFF
GO
ALTER TABLE [dbo].[ChampStats]  WITH CHECK ADD FOREIGN KEY([ChampID])
REFERENCES [dbo].[Champions] ([ChampID])
GO
USE [master]
GO
ALTER DATABASE [LOLStatistics] SET  READ_WRITE 
GO
