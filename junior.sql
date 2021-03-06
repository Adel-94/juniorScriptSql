USE [master]
GO
/****** Object:  Database [asc]    Script Date: 8/17/2017 2:31:17 PM ******/
CREATE DATABASE [asc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'asc', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\asc.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'asc_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\asc_log.ldf' , SIZE = 2368KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [asc] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [asc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [asc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [asc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [asc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [asc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [asc] SET ARITHABORT OFF 
GO
ALTER DATABASE [asc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [asc] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [asc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [asc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [asc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [asc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [asc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [asc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [asc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [asc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [asc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [asc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [asc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [asc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [asc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [asc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [asc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [asc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [asc] SET RECOVERY FULL 
GO
ALTER DATABASE [asc] SET  MULTI_USER 
GO
ALTER DATABASE [asc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [asc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [asc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [asc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [asc]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adminname] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[blog]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[photo] [nvarchar](max) NULL,
	[date] [datetime] NULL,
	[category_id] [int] NULL,
	[text] [nvarchar](max) NULL,
	[mylikes] [int] NULL,
 CONSTRAINT [PK_blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[blog_category]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_blog_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cartoon]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cartoon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[photo] [nvarchar](max) NULL,
	[text] [nvarchar](max) NULL,
	[video_url] [nvarchar](255) NULL,
 CONSTRAINT [PK_cartoon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[food_categories]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[food_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sira] [int] NOT NULL,
	[category_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_food_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[foods]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[category_id] [int] NULL,
	[text] [text] NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_foods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gym_blog]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gym_blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[photo] [nvarchar](max) NULL,
	[description] [nvarchar](255) NULL,
	[text] [nvarchar](max) NULL,
	[video_url] [nvarchar](max) NULL,
 CONSTRAINT [PK_gym_blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[health_staff]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[health_staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[profession] [nvarchar](255) NULL,
	[photo] [nvarchar](max) NULL,
	[text_about] [nvarchar](max) NULL,
	[instagram] [nvarchar](255) NULL,
	[facebook] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[email] [nvarchar](max) NULL,
 CONSTRAINT [PK_health_staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lettrs]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lettrs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_lettrs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[likes]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[likes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[blog_id] [int] NULL,
	[liked] [bit] NULL,
 CONSTRAINT [PK_likes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[names]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[names](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[lettrs_id] [int] NULL,
	[decription] [nvarchar](max) NULL,
	[type] [bit] NULL,
 CONSTRAINT [PK_names] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[our_complex]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[our_complex](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[region_id] [int] NULL,
	[complex_name] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[facebook] [nvarchar](max) NULL,
	[instagram] [nvarchar](max) NULL,
	[edu_or_gym] [bit] NULL,
	[photo] [nvarchar](max) NULL,
	[text] [nvarchar](max) NULL,
	[map_url] [nvarchar](max) NULL,
 CONSTRAINT [PK_our_complex] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[regions]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[region] [nvarchar](max) NULL,
 CONSTRAINT [PK_region_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 8/17/2017 2:31:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](255) NULL,
	[password1] [nvarchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[blog]  WITH CHECK ADD  CONSTRAINT [FK_blog_blog_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[blog_category] ([id])
GO
ALTER TABLE [dbo].[blog] CHECK CONSTRAINT [FK_blog_blog_category]
GO
ALTER TABLE [dbo].[foods]  WITH CHECK ADD  CONSTRAINT [FK_foods_food_categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[food_categories] ([id])
GO
ALTER TABLE [dbo].[foods] CHECK CONSTRAINT [FK_foods_food_categories]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD  CONSTRAINT [FK_likes_blog] FOREIGN KEY([blog_id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [FK_likes_blog]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD  CONSTRAINT [FK_likes_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [FK_likes_user]
GO
ALTER TABLE [dbo].[names]  WITH CHECK ADD  CONSTRAINT [FK_names_lettrs] FOREIGN KEY([lettrs_id])
REFERENCES [dbo].[lettrs] ([id])
GO
ALTER TABLE [dbo].[names] CHECK CONSTRAINT [FK_names_lettrs]
GO
ALTER TABLE [dbo].[our_complex]  WITH CHECK ADD  CONSTRAINT [FK_our_complex_regions] FOREIGN KEY([region_id])
REFERENCES [dbo].[regions] ([id])
GO
ALTER TABLE [dbo].[our_complex] CHECK CONSTRAINT [FK_our_complex_regions]
GO
USE [master]
GO
ALTER DATABASE [asc] SET  READ_WRITE 
GO
