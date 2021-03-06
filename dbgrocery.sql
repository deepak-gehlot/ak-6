USE [master]
GO
/****** Object:  Database [GroceryManagement]    Script Date: 08-09-2016 17:46:19 ******/
CREATE DATABASE [GroceryManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GroceryManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\GroceryManagement.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GroceryManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\GroceryManagement_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GroceryManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GroceryManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GroceryManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GroceryManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GroceryManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GroceryManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GroceryManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [GroceryManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GroceryManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GroceryManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GroceryManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GroceryManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GroceryManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GroceryManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GroceryManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GroceryManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GroceryManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GroceryManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GroceryManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GroceryManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GroceryManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GroceryManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GroceryManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GroceryManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GroceryManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GroceryManagement] SET  MULTI_USER 
GO
ALTER DATABASE [GroceryManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GroceryManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GroceryManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GroceryManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GroceryManagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [GroceryManagement]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08-09-2016 17:46:19 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08-09-2016 17:46:19 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08-09-2016 17:46:19 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08-09-2016 17:46:19 ******/
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
	[RoleId] [bigint] NULL,
	[FullName] [nvarchar](200) NULL,
	[Address] [nvarchar](300) NULL,
	[ProfilePic] [nvarchar](300) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedbackTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeedbackTbl](
	[FeedbackId] [bigint] NOT NULL,
	[Feedback] [varchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[UserName] [varchar](100) NULL,
 CONSTRAINT [PK_FeedbackTbl] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FriendsTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendsTbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FriendWith] [nvarchar](256) NOT NULL,
	[FriendId] [nvarchar](256) NOT NULL,
	[IsAccepted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_FriendsTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemAlternateNameTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemAlternateNameTbl](
	[AlternateId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NOT NULL,
	[AlternateName] [varchar](300) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[IsApplied] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[LatLng] [varchar](100) NULL,
 CONSTRAINT [PK_ItemAlternateNameTbl] PRIMARY KEY CLUSTERED 
(
	[AlternateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemCategoryTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemCategoryTbl](
	[ItemCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedBy] [nvarchar](128) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_ItemCategoryTbl] PRIMARY KEY CLUSTERED 
(
	[ItemCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemListTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemListTbl](
	[ItemListId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NOT NULL,
	[ItemCategoryId] [int] NOT NULL,
	[ItemNameHindi] [nvarchar](300) NOT NULL,
	[ItemNameEng] [nvarchar](300) NOT NULL,
	[Locality] [nvarchar](500) NULL,
	[Qty] [float] NULL,
	[UnitTypeId] [int] NULL,
	[Owner] [nvarchar](256) NOT NULL,
	[ListTypeId] [bigint] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsPublished] [bit] NULL,
 CONSTRAINT [PK_ItemListTbl] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[Owner] ASC,
	[ListTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemTbl](
	[ItemId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemCategoryId] [int] NOT NULL,
	[ItemNameHindi] [nvarchar](300) NOT NULL,
	[ItemNameEng] [nvarchar](300) NOT NULL,
	[Locality] [nvarchar](500) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ItemTbl] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ListTypeTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ListTypeTbl](
	[ListTypeId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedBy] [nvarchar](128) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_ListTypeTbl] PRIMARY KEY CLUSTERED 
(
	[ListTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PublishedListTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishedListTbl](
	[PublishListId] [bigint] IDENTITY(1,1) NOT NULL,
	[PublishedBy] [nvarchar](256) NOT NULL,
	[ListTypeId] [bigint] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[ModifiedBy] [nvarchar](256) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_PublishedListTbl] PRIMARY KEY CLUSTERED 
(
	[PublishListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PublishItemTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishItemTbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NOT NULL,
	[PublishListId] [bigint] NOT NULL,
	[ItemListId] [bigint] NOT NULL,
	[ListTypeId] [bigint] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[ModifiedBy] [nvarchar](256) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_PublishItemTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SharedItemPermissionTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SharedItemPermissionTbl](
	[SharedPermissionId] [bit] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedBy] [nvarchar](128) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_SharedItemPermissionTbl] PRIMARY KEY CLUSTERED 
(
	[SharedPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SharedItemTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SharedItemTbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CanEdit] [bit] NOT NULL,
	[SharedWith] [nvarchar](256) NOT NULL,
	[SharedBy] [nvarchar](256) NOT NULL,
	[ListTypeId] [bigint] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SharedItemTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitTbl]    Script Date: 08-09-2016 17:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitTbl](
	[UnitTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedBy] [nvarchar](128) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_UnitTbl] PRIMARY KEY CLUSTERED 
(
	[UnitTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'Admin', N'Admin', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'User', N'User', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'0069564b-11ec-4760-877a-dced43259d98', N'admin@widevision.co.in', 0, N'AB6BOsj+1NaUBawEyK33ojMx/oDVKdfFw2zxwXA/a5oCCkNF2CQQFw3zaKPRWLtl8A==', N'3b79d8af-1a35-41d4-acdc-ba11c1f21dfe', N'8109607502', 0, 0, NULL, 0, 0, N'admin@widevision.co.in', NULL, N'Sachin Kumar', N'indore fghgfhgf', N'/uploads/26-07-2016180151.JPG')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'0a691fec-8f73-4908-a56a-e7a77ef67ff3', N'deepak@gmail.com', 0, N'AF2UX95G/jdkDuap9FfGaiNheRSambyPdRdf2l7MaZjZ+BTVFD2ikG/8tEt1XXZgMg==', N'03885516-62eb-4857-85e9-72d7c30160ed', N'', 0, 0, NULL, 0, 0, N'deepak@gmail.com', 0, N'heylo', N'bhopal', N'/uploads/04-08-2016143715.JPG')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'30b7090c-e69c-4922-9b60-c8a79ffb6cb3', N'sachinkumarindore@gmail.com', 0, N'AF2UX95G/jdkDuap9FfGaiNheRSambyPdRdf2l7MaZjZ+BTVFD2ikG/8tEt1XXZgMg==', N'67c39e76-4c99-4382-bf19-f548a7c854d4', NULL, 0, 0, NULL, 0, 0, N'sachinkumarindore@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'3b3dab62-52b3-4451-998c-120dc602397d', N'mukesh@gmail.com', 0, N'AF2UX95G/jdkDuap9FfGaiNheRSambyPdRdf2l7MaZjZ+BTVFD2ikG/8tEt1XXZgMg==', N'562ccd9d-84c4-452b-97b3-4514bb96d6c6', NULL, 0, 0, NULL, 0, 0, N'mukesh@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'4e481dd9-ed33-4282-b771-eae5e3c87c9c', N'akash@gmail.com', 0, N'AF2UX95G/jdkDuap9FfGaiNheRSambyPdRdf2l7MaZjZ+BTVFD2ikG/8tEt1XXZgMg==', N'f5674246-c2e6-430a-bd16-7dfae0c5aeff', NULL, 0, 0, NULL, 0, 0, N'akash@gmail.com', NULL, N'akash yadav', N'indore', N'/uploads/04-08-2016143235.JPG')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'5c705cab-585b-428c-9ddc-7dede3e53f27', N'testing@gmail.com', 0, N'AIqn+cHG58aWlFqCAYbQgtX9bHL7x5S1MFdoX9qgHQI7m6D/akzgU3S3p8359EqGbQ==', N'453ff30e-4927-4e65-8cce-26c278ed37b6', NULL, 0, 0, NULL, 0, 0, N'testing@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'5fc770e4-1ff0-4399-b60e-dad0101968e2', N'admin@gmail.com', 0, N'AM+Ij7A1kEIkm1qr4dkZsJBC3ShSjKY3XZJ6fBpDxtxSxR2ml5t/rVPXnRtfElPN6w==', N'c8d57e0d-0fae-42ed-a627-2f0456e667d2', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'6ecfbf3e-2954-4845-bb4d-c95cb796efc9', N'sachin@gmail.com', 0, N'AKKVj9s6/P6oHcZJCsuJ4sTVaGQBS4ZYaEtn3XuErkBPBaCfp8lqlo6ngX/5ATV/Ag==', N'fd96760a-b738-436a-830f-a622a10ae80f', NULL, 0, 0, NULL, 0, 0, N'sachin@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'89d964b1-ffb1-47f5-a762-47a25819ea1a', N'wv@gmail.com', 0, N'ACA1MUJ3fZ4FSxrd0x9CoHTcXhb4FMW9TmKcg4+GYQBg37wu5TLoRAE4RydapqVUPw==', N'5cafb908-0bb1-4a42-810e-299689acfce7', N'', 0, 0, NULL, 0, 0, N'wv@gmail.com', 0, N'Wv', N'Test', N'/uploads/07-09-2016173715.PNG')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'f230ef9d-d91e-44d0-bbb4-4f70d0f971f4', N'deepak%40gmail.com', 0, N'AF2UX95G/jdkDuap9FfGaiNheRSambyPdRdf2l7MaZjZ+BTVFD2ikG/8tEt1XXZgMg==', N'538f2dd9-0649-44d7-a1ae-9a42cb7632ca', NULL, 0, 0, NULL, 0, 0, N'deepakgehlot@gmail.com', NULL, N'Deepak', NULL, N'/uploads/08-07-2016124745.JPG')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'f8df9dce-18da-4261-b70b-4a9e8466d0b8', N'deepak1@gmail.com', 0, N'AAARhCVwGH0+taRyIdvcYjiY1DVfjFW6kq2NoI8oLSKEm6mzmjJ7QUzKStxX4Gtltg==', N'9255572d-8faa-4083-8095-493be8351db8', N'', 0, 0, NULL, 0, 0, N'deepak1@gmail.com', 0, N'Deepak kumar', N'Petlawad', N'/uploads/04-08-2016144610.JPG')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [RoleId], [FullName], [Address], [ProfilePic]) VALUES (N'fcee8f72-3440-4801-8ae4-35767478e0d5', N'sabinay@gmail.com', 0, N'AF2UX95G/jdkDuap9FfGaiNheRSambyPdRdf2l7MaZjZ+BTVFD2ikG/8tEt1XXZgMg==', N'55c33cab-439c-4003-b1a0-4897a2b79bea', NULL, 0, 0, NULL, 0, 0, N'sabinay@gmail.com', NULL, N'sabinay', N'indore', N'/uploads/04-08-2016144529.JPG')
INSERT [dbo].[FeedbackTbl] ([FeedbackId], [Feedback], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn], [UserName]) VALUES (0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FriendsTbl] ON 

INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (1, N'deepak1@gmail.com', N'deepak1%40gmail.com', 1, 0, 0, CAST(N'2016-07-07 13:50:22.913' AS DateTime), CAST(N'2016-07-07 13:50:35.893' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (2, N'admin@widevision.co.in', N'deepak@gmail.com', 0, 1, 0, CAST(N'2016-07-07 14:00:14.167' AS DateTime), CAST(N'2016-07-07 14:00:14.167' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (3, N'admin@widevision.co.in', N'deepak@gmail.com', 0, 1, 0, CAST(N'2016-07-07 14:00:59.263' AS DateTime), CAST(N'2016-07-07 14:00:59.263' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (4, N'deepak1@gmail.com', N'deepak%40gmail.com', 1, 1, 1, CAST(N'2016-07-07 15:09:33.490' AS DateTime), CAST(N'2016-07-07 15:09:33.490' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (5, N'admin@widevision.co.in', N'deepak1%40gmail.com', 1, 1, 0, CAST(N'2016-07-07 15:19:23.830' AS DateTime), CAST(N'2016-07-07 15:19:23.830' AS DateTime), N'deepak@gmail.com', N'deepak@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (10002, N'deepak1@gmail.com', N'deepak@gmail.com', 1, 1, 1, CAST(N'2016-07-08 13:50:09.303' AS DateTime), CAST(N'2016-07-08 13:50:09.303' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20003, N'sabinay@gmail.com', N'deepak@gmail.com', 0, 1, 0, CAST(N'2016-08-01 13:11:07.647' AS DateTime), CAST(N'2016-08-01 13:11:07.647' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20004, N'sabinay@gmail.com', N'deepak1@gmail.com', 1, 1, 1, CAST(N'2016-08-01 13:13:08.617' AS DateTime), CAST(N'2016-08-01 13:13:08.617' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20005, N'mukesh@gmail.com', N'sachin@gmail.com', 0, 1, 0, CAST(N'2016-08-01 13:19:48.260' AS DateTime), CAST(N'2016-08-01 13:19:48.260' AS DateTime), N'mukesh@gmail.com', N'mukesh@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20006, N'deepak1@gmail.com', N'akash@gmail.com', 1, 1, 1, CAST(N'2016-08-01 20:09:43.737' AS DateTime), CAST(N'2016-08-01 20:09:43.737' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20007, N'deepak1@gmail.com', N'akash@gmail.com', 1, 1, 1, CAST(N'2016-08-01 20:37:40.773' AS DateTime), CAST(N'2016-08-01 20:37:40.773' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20008, N'akash@gmail.com', N'mukesh@gmail.com', 0, 1, 0, CAST(N'2016-08-01 20:51:06.663' AS DateTime), CAST(N'2016-08-01 20:51:06.663' AS DateTime), N'akash@gmail.com', N'akash@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20009, N'deepak1@gmail.com', N'mukesh@gmail.com', 0, 1, 0, CAST(N'2016-08-01 20:52:08.033' AS DateTime), CAST(N'2016-08-01 20:52:08.033' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20010, N'deepak1@gmail.com', N'akash@gmail.com', 0, 0, 0, CAST(N'2016-08-05 16:07:17.563' AS DateTime), CAST(N'2016-08-05 16:07:17.753' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20011, N'akash@gmail.com', N'sabinay@gmail.com', 1, 1, 1, CAST(N'2016-08-05 18:52:13.583' AS DateTime), CAST(N'2016-08-05 18:52:13.583' AS DateTime), N'akash@gmail.com', N'akash@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20012, N'akash@gmail.com', N'sabinay@gmail.com', 1, 1, 1, CAST(N'2016-08-05 18:55:26.960' AS DateTime), CAST(N'2016-08-05 18:55:26.960' AS DateTime), N'akash@gmail.com', N'akash@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20013, N'deepak1@gmail.com', N'akash@gmail.com', 1, 1, 1, CAST(N'2016-08-05 19:04:22.777' AS DateTime), CAST(N'2016-08-05 19:04:22.777' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20014, N'deepak1@gmail.com', N'sabinay@gmail.com', 1, 1, 1, CAST(N'2016-08-05 19:04:34.930' AS DateTime), CAST(N'2016-08-05 19:04:34.930' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20015, N'sabinay@gmail.com', N'deepak1@gmail.com', 1, 1, 1, CAST(N'2016-08-05 19:05:21.433' AS DateTime), CAST(N'2016-08-05 19:05:21.433' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20016, N'sabinay@gmail.com', N'akash@gmail.com', 1, 1, 0, CAST(N'2016-08-05 19:05:39.537' AS DateTime), CAST(N'2016-08-05 19:05:39.537' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20017, N'akash@gmail.com', N'akash@gmail.com', 0, 0, 0, CAST(N'2016-08-05 19:08:16.403' AS DateTime), CAST(N'2016-08-05 19:08:16.403' AS DateTime), N'akash@gmail.com', N'akash@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20018, N'deepak1@gmail.com', N'akash@gmail.com', 1, 1, 0, CAST(N'2016-08-05 19:09:07.383' AS DateTime), CAST(N'2016-08-05 19:09:07.383' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20019, N'akash@gmail.com', N'deepak@gmail.com', 0, 1, 0, CAST(N'2016-08-06 13:55:18.480' AS DateTime), CAST(N'2016-08-06 13:55:18.480' AS DateTime), N'akash@gmail.com', N'akash@gmail.com')
INSERT [dbo].[FriendsTbl] ([Id], [FriendWith], [FriendId], [IsAccepted], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (20020, N'akash@gmail.com', N'akash@gmail.com', 0, 1, 0, CAST(N'2016-09-07 17:03:47.140' AS DateTime), CAST(N'2016-09-07 17:03:47.140' AS DateTime), N'akash@gmail.com', N'akash@gmail.com')
SET IDENTITY_INSERT [dbo].[FriendsTbl] OFF
SET IDENTITY_INSERT [dbo].[ItemCategoryTbl] ON 

INSERT [dbo].[ItemCategoryTbl] ([ItemCategoryId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (1, N'Legume beans', 0, N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime))
INSERT [dbo].[ItemCategoryTbl] ([ItemCategoryId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (7, N'Spice', 0, N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime))
INSERT [dbo].[ItemCategoryTbl] ([ItemCategoryId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (12, N'Soup', 0, N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime))
INSERT [dbo].[ItemCategoryTbl] ([ItemCategoryId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (28, N'Cereals grains', 0, N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime))
INSERT [dbo].[ItemCategoryTbl] ([ItemCategoryId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (37, N'Dry fruits', 0, N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime))
INSERT [dbo].[ItemCategoryTbl] ([ItemCategoryId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (44, N'test', 0, N'sachikumar', N'sachikumar', CAST(N'2016-07-08 15:30:00.000' AS DateTime), CAST(N'2016-07-08 15:30:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ItemCategoryTbl] OFF
SET IDENTITY_INSERT [dbo].[ItemListTbl] ON 

INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (14, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'admin@widevision.co.in', 2, CAST(N'2016-07-11 17:14:59.703' AS DateTime), CAST(N'2016-07-11 17:14:59.813' AS DateTime), N'admin@widevision.co.in', N'admin@widevision.co.in', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10397, 1, 1, N'Chay', N'Tea', N'Indore', 220, 11, N'akash@gmail.com', 10116, CAST(N'2016-08-11 18:35:20.590' AS DateTime), CAST(N'2016-08-22 14:24:09.367' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0, 0)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10409, 1, 1, N'Chay', N'Tea', N'Indore', 1, 6, N'akash@gmail.com', 10117, CAST(N'2016-08-12 16:13:53.207' AS DateTime), CAST(N'2016-08-22 16:00:40.010' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0, 0)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (36, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 1, CAST(N'2016-07-11 17:43:16.480' AS DateTime), CAST(N'2016-07-11 17:43:16.480' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (19, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 2, CAST(N'2016-07-11 17:17:56.033' AS DateTime), CAST(N'2016-07-11 17:17:56.033' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (48, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 11, CAST(N'2016-07-16 00:04:04.003' AS DateTime), CAST(N'2016-07-16 00:04:04.003' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (52, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 12, CAST(N'2016-07-16 01:40:48.700' AS DateTime), CAST(N'2016-07-16 01:40:48.700' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (61, 1, 1, N'Chay', N'Tea', N'Indore', 10, 6, N'deepak1@gmail.com', 19, CAST(N'2016-07-25 13:16:28.613' AS DateTime), CAST(N'2016-08-13 17:20:39.627' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (78, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 20, CAST(N'2016-07-25 13:16:43.117' AS DateTime), CAST(N'2016-07-25 13:16:43.117' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (84, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 21, CAST(N'2016-07-25 13:26:02.400' AS DateTime), CAST(N'2016-07-25 13:26:02.400' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (91, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 22, CAST(N'2016-07-25 13:27:52.723' AS DateTime), CAST(N'2016-07-25 13:27:52.723' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (106, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 23, CAST(N'2016-07-25 16:07:35.060' AS DateTime), CAST(N'2016-07-26 14:37:06.923' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (138, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 33, CAST(N'2016-07-28 17:58:15.637' AS DateTime), CAST(N'2016-07-28 18:35:26.700' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10133, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 10031, CAST(N'2016-07-29 18:30:13.507' AS DateTime), CAST(N'2016-07-29 18:30:13.507' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10137, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 10032, CAST(N'2016-07-29 18:58:03.013' AS DateTime), CAST(N'2016-07-30 14:43:16.107' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10155, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10046, CAST(N'2016-07-30 21:08:44.327' AS DateTime), CAST(N'2016-07-30 21:21:11.407' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10182, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10055, CAST(N'2016-07-30 21:29:31.170' AS DateTime), CAST(N'2016-07-30 21:29:31.170' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10206, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10062, CAST(N'2016-07-30 21:39:23.093' AS DateTime), CAST(N'2016-07-30 21:39:23.093' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10213, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10064, CAST(N'2016-07-30 21:40:12.537' AS DateTime), CAST(N'2016-07-30 21:40:12.537' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10224, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10072, CAST(N'2016-07-30 21:42:44.663' AS DateTime), CAST(N'2016-07-30 21:42:44.663' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10231, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10074, CAST(N'2016-07-30 21:53:41.097' AS DateTime), CAST(N'2016-07-30 21:53:41.097' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10372, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 10105, CAST(N'2016-08-10 16:18:24.837' AS DateTime), CAST(N'2016-08-10 16:37:42.620' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10370, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 10108, CAST(N'2016-08-08 19:36:35.740' AS DateTime), CAST(N'2016-08-08 19:36:38.210' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10371, 1, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'deepak1@gmail.com', 10109, CAST(N'2016-08-08 21:22:42.637' AS DateTime), CAST(N'2016-08-08 21:22:42.637' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10402, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10123, CAST(N'2016-08-11 18:38:47.587' AS DateTime), CAST(N'2016-08-11 18:38:47.587' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10403, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10124, CAST(N'2016-08-11 19:22:30.287' AS DateTime), CAST(N'2016-08-11 19:22:30.287' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10483, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10125, CAST(N'2016-08-22 20:59:29.333' AS DateTime), CAST(N'2016-08-22 20:59:29.333' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10273, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'sabinay@gmail.com', 10081, CAST(N'2016-08-01 13:11:34.747' AS DateTime), CAST(N'2016-08-01 13:11:48.300' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10279, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'sabinay@gmail.com', 10082, CAST(N'2016-08-01 13:12:04.107' AS DateTime), CAST(N'2016-08-01 13:12:20.067' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10286, 1, 1, N'Chay', N'Tea', N'sachinkumarindore@gmail.com', 0, NULL, N'sabinay@gmail.com', 10083, CAST(N'2016-08-01 13:12:28.017' AS DateTime), CAST(N'2016-08-01 14:11:51.263' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (31, 2, 1, N'Chay', N'Tea', N'Indore', 0, NULL, N'admin@widevision.co.in', 2, CAST(N'2016-07-11 17:41:31.073' AS DateTime), CAST(N'2016-07-11 17:41:31.073' AS DateTime), N'admin@widevision.co.in', N'admin@widevision.co.in', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10410, 2, 1, N'Matar', N'Peas', N'Indore', 25, 11, N'akash@gmail.com', 10117, CAST(N'2016-08-12 16:21:49.760' AS DateTime), CAST(N'2016-08-22 15:59:37.577' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0, 0)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10498, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'akash@gmail.com', 10130, CAST(N'2016-08-31 11:26:32.740' AS DateTime), CAST(N'2016-08-31 11:26:32.740' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0, 0)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (37, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 1, CAST(N'2016-07-11 17:43:16.483' AS DateTime), CAST(N'2016-07-11 17:43:16.483' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (34, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 2, CAST(N'2016-07-11 17:42:37.500' AS DateTime), CAST(N'2016-07-11 17:42:37.500' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (15, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 7, CAST(N'2016-07-11 17:16:46.663' AS DateTime), CAST(N'2016-07-11 17:16:46.663' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (50, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 11, CAST(N'2016-07-16 00:04:04.000' AS DateTime), CAST(N'2016-07-16 00:04:04.000' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (53, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 14, CAST(N'2016-07-16 01:40:48.710' AS DateTime), CAST(N'2016-07-16 01:40:48.710' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (139, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 33, CAST(N'2016-07-28 17:58:15.637' AS DateTime), CAST(N'2016-07-28 18:35:26.710' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10134, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 10031, CAST(N'2016-07-29 18:30:13.507' AS DateTime), CAST(N'2016-07-29 18:30:13.507' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10139, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 10032, CAST(N'2016-07-29 18:58:03.033' AS DateTime), CAST(N'2016-07-30 14:43:16.117' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10158, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10046, CAST(N'2016-07-30 21:08:44.320' AS DateTime), CAST(N'2016-07-30 21:21:11.420' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10179, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10055, CAST(N'2016-07-30 21:29:31.153' AS DateTime), CAST(N'2016-07-30 21:29:31.153' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10205, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10062, CAST(N'2016-07-30 21:39:23.090' AS DateTime), CAST(N'2016-07-30 21:39:23.090' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10214, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10064, CAST(N'2016-07-30 21:40:12.547' AS DateTime), CAST(N'2016-07-30 21:40:12.547' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10226, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10072, CAST(N'2016-07-30 21:42:44.667' AS DateTime), CAST(N'2016-07-30 21:42:44.667' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10232, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10074, CAST(N'2016-07-30 21:53:42.130' AS DateTime), CAST(N'2016-07-30 21:53:42.130' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10373, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 10105, CAST(N'2016-08-10 16:18:45.340' AS DateTime), CAST(N'2016-08-10 16:18:45.340' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10380, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 10106, CAST(N'2016-08-10 21:10:41.900' AS DateTime), CAST(N'2016-08-10 21:10:42.183' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10368, 2, 1, N'Matar', N'Peas', N'Indore', 0, NULL, N'deepak1@gmail.com', 10108, CAST(N'2016-08-08 19:36:19.957' AS DateTime), CAST(N'2016-08-08 19:36:20.630' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10405, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10124, CAST(N'2016-08-11 19:22:30.320' AS DateTime), CAST(N'2016-08-11 19:22:30.320' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10484, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10125, CAST(N'2016-08-22 20:59:29.750' AS DateTime), CAST(N'2016-08-22 20:59:29.750' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10274, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'sabinay@gmail.com', 10081, CAST(N'2016-08-01 13:11:34.757' AS DateTime), CAST(N'2016-08-01 13:11:48.330' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10277, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'sabinay@gmail.com', 10082, CAST(N'2016-08-01 13:12:04.097' AS DateTime), CAST(N'2016-08-01 13:12:20.077' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10283, 2, 1, N'Matar', N'Peas', N'sachinkumarindore@gmail.com', 0, NULL, N'sabinay@gmail.com', 10083, CAST(N'2016-08-01 13:12:27.997' AS DateTime), CAST(N'2016-08-01 14:11:53.080' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10497, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'akash@gmail.com', 10130, CAST(N'2016-08-31 11:26:32.167' AS DateTime), CAST(N'2016-08-31 11:26:32.167' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0, 0)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (39, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 1, CAST(N'2016-07-11 17:43:16.493' AS DateTime), CAST(N'2016-07-11 17:43:16.493' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (35, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 2, CAST(N'2016-07-11 17:42:38.257' AS DateTime), CAST(N'2016-07-11 17:42:38.257' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (49, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 11, CAST(N'2016-07-16 00:04:03.987' AS DateTime), CAST(N'2016-07-16 00:04:03.987' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (54, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 14, CAST(N'2016-07-16 01:40:48.710' AS DateTime), CAST(N'2016-07-16 01:40:48.710' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (60, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 19, CAST(N'2016-07-25 13:16:28.613' AS DateTime), CAST(N'2016-08-13 19:29:25.543' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (73, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 20, CAST(N'2016-07-25 13:16:43.097' AS DateTime), CAST(N'2016-07-25 13:16:43.097' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (80, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 21, CAST(N'2016-07-25 13:26:02.400' AS DateTime), CAST(N'2016-07-25 13:26:02.400' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (95, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 22, CAST(N'2016-07-25 13:27:52.733' AS DateTime), CAST(N'2016-07-25 13:27:52.733' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (105, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 23, CAST(N'2016-07-25 16:07:35.057' AS DateTime), CAST(N'2016-07-26 14:37:07.603' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (140, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 33, CAST(N'2016-07-28 17:58:15.643' AS DateTime), CAST(N'2016-07-28 18:35:26.710' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10135, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 10031, CAST(N'2016-07-29 18:30:13.517' AS DateTime), CAST(N'2016-07-29 18:30:13.517' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10140, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 10032, CAST(N'2016-07-29 18:58:03.033' AS DateTime), CAST(N'2016-07-30 14:43:16.117' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10160, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10046, CAST(N'2016-07-30 21:08:44.387' AS DateTime), CAST(N'2016-07-30 21:21:11.430' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10183, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10055, CAST(N'2016-07-30 21:29:31.183' AS DateTime), CAST(N'2016-07-30 21:29:31.183' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10207, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10062, CAST(N'2016-07-30 21:39:23.100' AS DateTime), CAST(N'2016-07-30 21:39:23.100' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10215, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10064, CAST(N'2016-07-30 21:40:12.557' AS DateTime), CAST(N'2016-07-30 21:40:12.557' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10225, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10072, CAST(N'2016-07-30 21:42:44.663' AS DateTime), CAST(N'2016-07-30 21:42:44.663' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10233, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10074, CAST(N'2016-07-30 21:53:43.173' AS DateTime), CAST(N'2016-07-30 21:53:43.173' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10369, 3, 1, N'Tamator', N'Tomatoes', N'Indore', 0, NULL, N'deepak1@gmail.com', 10108, CAST(N'2016-08-08 19:36:26.793' AS DateTime), CAST(N'2016-08-08 19:36:28.450' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10406, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10124, CAST(N'2016-08-11 19:22:30.337' AS DateTime), CAST(N'2016-08-11 19:22:30.337' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10485, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, 3, N'deepak1@gmail.com', 10125, CAST(N'2016-08-22 20:59:30.273' AS DateTime), CAST(N'2016-08-23 18:03:06.723' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10272, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'sabinay@gmail.com', 10081, CAST(N'2016-08-01 13:11:34.747' AS DateTime), CAST(N'2016-08-01 13:11:48.340' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10278, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'sabinay@gmail.com', 10082, CAST(N'2016-08-01 13:12:04.097' AS DateTime), CAST(N'2016-08-01 13:12:20.077' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10285, 3, 1, N'Tamator', N'Tomatoes', N'sachinkumarindore@gmail.com', 0, NULL, N'sabinay@gmail.com', 10083, CAST(N'2016-08-01 13:12:27.997' AS DateTime), CAST(N'2016-08-01 14:11:53.527' AS DateTime), N'sabinay@gmail.com', N'sabinay@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (38, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 1, CAST(N'2016-07-11 17:43:16.490' AS DateTime), CAST(N'2016-07-11 17:43:16.490' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (32, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 2, CAST(N'2016-07-11 17:42:37.500' AS DateTime), CAST(N'2016-07-11 17:42:37.500' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (51, 4, 1, N'Pyaj', N'
Onions', N'Indore', 26, 11, N'deepak1@gmail.com', 11, CAST(N'2016-07-16 00:04:03.987' AS DateTime), CAST(N'2016-08-13 18:32:24.393' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (55, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 15, CAST(N'2016-07-16 01:40:48.720' AS DateTime), CAST(N'2016-07-16 01:40:48.720' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (66, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 19, CAST(N'2016-07-25 13:16:28.753' AS DateTime), CAST(N'2016-08-13 19:29:29.657' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (77, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 20, CAST(N'2016-07-25 13:16:43.107' AS DateTime), CAST(N'2016-07-25 13:16:43.107' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (88, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 21, CAST(N'2016-07-25 13:26:02.410' AS DateTime), CAST(N'2016-07-25 13:26:02.410' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (94, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 22, CAST(N'2016-07-25 13:27:52.733' AS DateTime), CAST(N'2016-07-25 13:27:52.733' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (107, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 23, CAST(N'2016-07-25 16:07:35.057' AS DateTime), CAST(N'2016-07-26 14:37:07.613' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10136, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 10031, CAST(N'2016-07-29 18:30:13.517' AS DateTime), CAST(N'2016-07-29 18:30:13.517' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10138, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 10032, CAST(N'2016-07-29 18:58:03.033' AS DateTime), CAST(N'2016-07-30 14:43:16.127' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10161, 4, 1, N'Pyaj', N'
Onions', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10046, CAST(N'2016-07-30 21:08:44.387' AS DateTime), CAST(N'2016-07-30 21:21:11.453' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 1, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10181, 4, 1, N'Pyaj', N'
Onions', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10055, CAST(N'2016-07-30 21:29:31.167' AS DateTime), CAST(N'2016-07-30 21:29:31.167' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10203, 4, 1, N'Pyaj', N'
Onions', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10062, CAST(N'2016-07-30 21:39:23.080' AS DateTime), CAST(N'2016-07-30 21:39:23.080' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10216, 4, 1, N'Pyaj', N'
Onions', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10064, CAST(N'2016-07-30 21:40:12.557' AS DateTime), CAST(N'2016-07-30 21:40:12.557' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10227, 4, 1, N'Pyaj', N'
Onions', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10073, CAST(N'2016-07-30 21:42:44.683' AS DateTime), CAST(N'2016-07-30 21:42:44.683' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10234, 4, 1, N'Pyaj', N'
Onions', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10074, CAST(N'2016-07-30 21:53:46.147' AS DateTime), CAST(N'2016-07-30 21:53:46.147' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10376, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 10105, CAST(N'2016-08-10 17:26:31.350' AS DateTime), CAST(N'2016-08-10 17:26:31.590' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10408, 4, 1, N'Pyaj', N'
Onions', N'Indore', 0, NULL, N'deepak1@gmail.com', 10106, CAST(N'2016-08-11 20:01:26.320' AS DateTime), CAST(N'2016-08-11 20:01:26.320' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
GO
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10404, 4, 1, N'Pyaj', N'
Onions', N'sachinkumarindore@gmail.com', 0, NULL, N'deepak1@gmail.com', 10124, CAST(N'2016-08-11 19:22:30.320' AS DateTime), CAST(N'2016-08-11 19:22:30.320' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10486, 4, 1, N'Pyaj', N'Onions', N'sachinkumarindore@gmail.com', 0, 3, N'deepak1@gmail.com', 10125, CAST(N'2016-08-22 20:59:30.790' AS DateTime), CAST(N'2016-08-23 18:02:59.480' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0, NULL)
INSERT [dbo].[ItemListTbl] ([ItemListId], [ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [Qty], [UnitTypeId], [Owner], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted], [IsPublished]) VALUES (10504, 10166, 12, N'khada dhania/ sabut dhaniya
', N'coriander seeds', N'sachinkumarindore@gmail.com', 32, 3, N'wv@gmail.com', 10132, CAST(N'2016-09-07 18:18:40.193' AS DateTime), CAST(N'2016-09-07 18:18:40.193' AS DateTime), N'wv@gmail.com', N'wv@gmail.com', 1, 0, 0)
SET IDENTITY_INSERT [dbo].[ItemListTbl] OFF
SET IDENTITY_INSERT [dbo].[ItemTbl] ON 

INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10026, 1, N' Arhar/Toor/Tuver daal', N'Pigeon Pea', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10032, 1, N'chana', N'Bengal Gram/ Chickpeas (Brown)', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10035, 1, N'chhola', N'chhola', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10037, 1, N'daliya', N'Broken Wheat', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10038, 1, N'chawli', N'black eyed beans', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10039, 1, N'kabuli chana', N' Garbanzo Beans', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10040, 1, N'Masoor Daal', N'Split Red Lentil', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10042, 1, N'Sabut masoor', N'Indian Brown Lentils', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10043, 1, N'poha', N'Beaten Rice', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10044, 1, N'Moong daal Mogar', N'Moong daal Mogar', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10046, 1, N'Moong Daal Chilka', N'Split Green Gram', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10048, 1, N' Hare Moong', N'Green Gram', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10049, 1, N'Safed matar', N'dried white peas', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10050, 1, N'Hara matar', N'Dried green peas', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10051, 1, N'matar', N'peas', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10053, 1, N'mothh', N'Moth bean', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10054, 1, N'rajma', N'red kidney beans', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10056, 1, N'Kali til', N'Black Sesame seeds', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10057, 1, N'Mandua', N'finger millet', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10061, 1, N'til', N'Sesame seeds (white)', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10063, 1, N'Kulthi daal', N'Horse gram', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10064, 1, N'Sabut Urad Daal', N'Black gram/ black lentil ', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10067, 1, N'kali urad daal', N'Split black gram', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10068, 1, N'urad daal Mogar', N' ', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10069, 1, N'matar daal', N'Split peas', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10070, 1, N'bajra', N'Pearl millet', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10072, 1, N'Idli rice', N'parboiled rice', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10074, 1, N'chawal', N'Rice', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10076, 1, N'Gehun', N'Wheat', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10078, 1, N'Soyabean', N'Soybean', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10079, 1, N'jau', N'barley', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10080, 1, N'Jowar', N'sorghum', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10081, 1, N'makai', N'Corn', NULL, CAST(N'2016-07-08 15:30:27.000' AS DateTime), CAST(N'2016-07-08 15:30:27.000' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10082, 7, N'Ajwain', N'carom seeds', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10083, 7, N'subja', N'Basil seeds', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10086, 7, N'Pathar phool', N'Rock flower', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10087, 7, N'chakra phool', N'star anise', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10088, 7, N'kewra', N'vetiver', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10089, 7, N'Jangali Dalchini', N'Cassia', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10091, 7, N'daal chini', N'cinnamon', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10092, 7, N'elaichi (chotti)', N'green cardamom', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10093, 7, N'elaichi(badi)', N'black cardamom', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10094, 7, N'hing', N'asafoetida', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10095, 7, N'jaiphal', N'nutmeg', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10099, 7, N'jeera', N'cumin seeds', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10100, 7, N'Kala Jeera', N'black cumin seeds', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10101, 7, N'shahi jeera', N'caraway seeds', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10102, 7, N'kaali mirch', N'black pepper', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10104, 7, N'laung', N'cloves', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10105, 7, N'lahsun', N'garlic', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10106, 7, N'sarson', N'big mustard seeds', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10107, 7, N'tej patta', N'Bay Leaf', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10108, 7, N'javitri', N'Mace', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10110, 7, N'chhoti saunf', N' ', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10111, 7, N'saunf', N'aniseeds', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10112, 7, N'haldi', N'turmeric', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10113, 7, N'tulsi', N'holy basil', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10114, 7, N'lal mirch khadi', N' ', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10115, 7, N'Coconut milk powder', N' ', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10118, 7, N'lal mirch powder', N'chilli powder', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10166, 12, N'khada dhania/ sabut dhaniya
', N'coriander seeds
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10167, 12, N'nimbu ka chilka
', N'lime peel
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10168, 12, N'Saunth
', N'dry ginger
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10169, 12, N'Anardana
', N'dry pomegranate seeds
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10170, 12, N'dhania powder
', N'coriander powder
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10171, 12, N'kadi patta
', N'Curry leaves
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10172, 12, N'methi
', N'Fenugreek
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10173, 12, N'bhirinda, bhirnda
', N'Cocum, Kokum
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10174, 12, N'Gud/Gur
', N'jaggery
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10175, 12, N'Tara/Tad gud
', N'Palm Jaggery
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10176, 28, N'jaw aata
', N'Barley Flour
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10177, 28, N'Sabut Kuttu
', N'buckwheat groats
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10178, 28, N'Kuttu  
', N'buckwheat
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10179, 28, N'kuttu aata
', N'buckwheat flour
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10180, 28, N'Makki/Makai ka Dalia
', N'corn meal, polenta
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10181, 28, N'dalia
', N'Broken Wheat
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10182, 28, N'sooji, Rava, Rawa
', N'semolina
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10183, 28, N'besan
', N'Gram flour
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10184, 28, N'maida
', N'all purpose flour, refined flour
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10185, 28, N'makki aata
', N'corn/Maize flour
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10186, 28, N'mordhan
', N'Barnyard millet
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10187, 37, N'khuskhus
', N'poppy seeds
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10188, 37, N'kesar
', N'Saffron
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10189, 37, N'tarbooj ke beej/ Magaz
', N'Water Melon seeds
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10190, 37, N'kaaju
', N'Cashewnuts
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10191, 37, N'akhrot
', N'Walnuts
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10192, 37, N'khopra
', N'coconut dry
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10193, 37, N'kishmish
', N'Raisins
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10194, 37, N'anjeer
', N'Dried Figs
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10195, 37, N'chilgoza, Chid ka phal
', N'Pine Nuts
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
INSERT [dbo].[ItemTbl] ([ItemId], [ItemCategoryId], [ItemNameHindi], [ItemNameEng], [Locality], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10196, 37, N'pista
', N'Pistachios
', NULL, CAST(N'2016-07-08 15:30:26.777' AS DateTime), CAST(N'2016-07-08 15:30:26.777' AS DateTime), N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', 1, 0)
SET IDENTITY_INSERT [dbo].[ItemTbl] OFF
SET IDENTITY_INSERT [dbo].[ListTypeTbl] ON 

INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (1, N'Monthly List', 0, N'sachinkumarindore@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-11 14:00:15.723' AS DateTime), CAST(N'2016-07-13 13:01:38.463' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (2, N'Yearly List', 0, N'sachinkumarindore@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-11 14:00:23.523' AS DateTime), CAST(N'2016-07-15 23:55:24.543' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (3, N'Monthly List1', 0, N'sachinkumarindore@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-11 14:00:23.523' AS DateTime), CAST(N'2016-07-15 23:58:52.597' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (4, N'Mont', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-11 17:16:44.210' AS DateTime), CAST(N'2016-08-13 15:01:48.767' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (5, N'Montsadsss', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-11 17:16:44.747' AS DateTime), CAST(N'2016-08-13 15:34:29.807' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (6, N'Mont', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-11 17:16:43.707' AS DateTime), CAST(N'2016-08-13 15:06:13.500' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (7, N'Mont', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-11 17:16:43.693' AS DateTime), CAST(N'2016-08-13 15:02:53.307' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (8, N'New Test', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 00:04:03.797' AS DateTime), CAST(N'2016-07-16 00:05:28.140' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (9, N'New Test', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 00:04:03.793' AS DateTime), CAST(N'2016-07-16 00:05:31.540' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10, N'New Test', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 00:04:03.800' AS DateTime), CAST(N'2016-08-13 15:06:16.810' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (11, N'New Test', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 00:04:03.793' AS DateTime), CAST(N'2016-07-16 00:05:34.730' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (12, N'Depak', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 01:40:48.690' AS DateTime), CAST(N'2016-08-13 15:06:33.317' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (13, N'Depak', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 01:40:48.700' AS DateTime), CAST(N'2016-08-13 15:06:35.437' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (14, N'Depak', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 01:40:48.690' AS DateTime), CAST(N'2016-08-13 15:35:23.070' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (15, N'Depak', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 01:40:48.700' AS DateTime), CAST(N'2016-08-13 15:06:25.563' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (16, N'Depak', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 01:40:48.720' AS DateTime), CAST(N'2016-08-13 15:05:12.040' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (17, N'Depak', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 01:40:48.740' AS DateTime), CAST(N'2016-07-22 18:33:17.950' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (18, N'Depak', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-16 01:40:48.740' AS DateTime), CAST(N'2016-08-13 15:05:15.567' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (19, N'testing', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-25 13:08:15.133' AS DateTime), CAST(N'2016-07-25 13:25:30.727' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (20, N'one shot', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-25 13:16:43.053' AS DateTime), CAST(N'2016-08-13 15:35:25.017' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (21, N'test', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-25 13:26:02.380' AS DateTime), CAST(N'2016-08-13 15:35:30.343' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (22, N'test', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-25 13:27:52.693' AS DateTime), CAST(N'2016-08-13 15:35:27.790' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (23, N'hello', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-25 16:07:34.310' AS DateTime), CAST(N'2016-08-13 15:35:33.127' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (24, N'testing', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-26 14:32:54.067' AS DateTime), CAST(N'2016-08-13 15:05:19.827' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (25, N'hello list', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-26 16:43:18.947' AS DateTime), CAST(N'2016-08-13 15:35:35.957' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (26, N'sam', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-26 18:02:51.947' AS DateTime), CAST(N'2016-08-13 15:03:07.513' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (27, N'user', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-26 18:03:08.063' AS DateTime), CAST(N'2016-08-13 15:35:18.730' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (28, N'testing', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-26 18:29:47.867' AS DateTime), CAST(N'2016-08-13 15:35:05.210' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (29, N'group', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-28 13:18:10.307' AS DateTime), CAST(N'2016-08-13 15:06:07.577' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (30, N'testsetestes', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-28 14:00:32.567' AS DateTime), CAST(N'2016-08-13 15:06:05.837' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (31, N'tsetingone', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-28 17:13:52.517' AS DateTime), CAST(N'2016-08-13 15:05:23.970' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (32, N'tsaaaaa', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-28 17:15:05.817' AS DateTime), CAST(N'2016-08-13 15:06:03.913' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (33, N'akash', 0, N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', CAST(N'2016-07-28 17:53:59.860' AS DateTime), CAST(N'2016-07-28 17:54:00.273' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (34, N'hahaha', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-28 18:38:07.787' AS DateTime), CAST(N'2016-08-13 15:06:00.207' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (35, N'hahaha', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-28 18:40:24.077' AS DateTime), CAST(N'2016-08-13 15:04:03.463' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (36, N'hahaha', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-28 18:43:59.993' AS DateTime), CAST(N'2016-08-13 15:35:07.213' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (37, N'testing', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-28 20:16:44.620' AS DateTime), CAST(N'2016-08-13 15:35:16.723' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10029, N'nwe one', 0, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-29 17:29:30.130' AS DateTime), CAST(N'2016-07-29 17:29:30.130' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10030, N'test 1', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-29 17:43:02.473' AS DateTime), CAST(N'2016-08-13 15:35:02.803' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10031, N'test 2', 0, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-29 18:29:43.627' AS DateTime), CAST(N'2016-07-29 18:29:43.627' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10032, N'hello 007', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-29 18:58:02.923' AS DateTime), CAST(N'2016-08-13 15:04:07.510' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10033, N'hello 006', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-29 19:44:10.607' AS DateTime), CAST(N'2016-08-13 15:35:14.977' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10034, N'hello 001', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 14:36:32.460' AS DateTime), CAST(N'2016-08-13 15:04:13.987' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10035, N'test 001', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 14:45:43.610' AS DateTime), CAST(N'2016-08-13 15:34:52.800' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10036, N'test 002', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 14:46:05.113' AS DateTime), CAST(N'2016-08-13 15:04:16.833' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10037, N'test 007', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 14:46:18.413' AS DateTime), CAST(N'2016-08-13 15:05:47.657' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10038, N'ijkl', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 14:46:28.563' AS DateTime), CAST(N'2016-08-13 15:05:56.170' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10039, N'iiyhuykjujkhj', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 14:46:35.863' AS DateTime), CAST(N'2016-08-13 15:05:28.030' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10040, N'dfgdhdfgdfgdfgdf', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 14:54:36.993' AS DateTime), CAST(N'2016-08-13 15:05:42.953' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10041, N'testsetesteshfghdfghf', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 15:41:19.177' AS DateTime), CAST(N'2016-07-30 15:41:19.177' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10043, N'new name hai yy', 1, N'deepak@gmail.com', N'deepak@gmail.com', NULL, CAST(N'2016-07-30 21:25:14.010' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10044, N'asdsdsdsfsdfds44444', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', NULL, CAST(N'2016-07-30 16:30:57.440' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10045, N'trut list', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 20:31:42.630' AS DateTime), CAST(N'2016-07-30 20:31:42.630' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10046, N'123 List', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:08:44.170' AS DateTime), CAST(N'2016-07-30 21:08:44.170' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10047, N'123 List', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:09:17.690' AS DateTime), CAST(N'2016-07-30 21:09:17.690' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10048, N'123 List', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:09:17.690' AS DateTime), CAST(N'2016-07-30 21:09:17.690' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10049, N'123 List', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:09:52.183' AS DateTime), CAST(N'2016-07-30 21:09:52.183' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10050, N'123 List', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:09:52.187' AS DateTime), CAST(N'2016-07-30 21:09:52.187' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10051, N'123 List', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:10:26.027' AS DateTime), CAST(N'2016-07-30 21:10:26.027' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10052, N'123 List', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:10:26.027' AS DateTime), CAST(N'2016-07-30 21:10:26.027' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10053, N'123 List', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:10:35.347' AS DateTime), CAST(N'2016-07-30 21:10:35.347' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10054, N'123 List', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:10:35.347' AS DateTime), CAST(N'2016-07-30 21:10:35.347' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10055, N'hey 0011', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:29:30.997' AS DateTime), CAST(N'2016-07-30 21:29:30.997' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10056, N'hey 0011', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:35:57.897' AS DateTime), CAST(N'2016-07-30 21:35:57.897' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10057, N'hey 0011', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:35:57.907' AS DateTime), CAST(N'2016-07-30 21:35:57.907' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10058, N'hey 0011', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:36:25.417' AS DateTime), CAST(N'2016-07-30 21:36:25.417' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10059, N'hey 0011', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:36:25.420' AS DateTime), CAST(N'2016-07-30 21:36:25.420' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10060, N'iiiiijjjjji', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:37:14.757' AS DateTime), CAST(N'2016-07-30 21:37:14.757' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10061, N'iiiiiiiiiijjiibjbh', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:38:09.397' AS DateTime), CAST(N'2016-07-30 21:38:09.397' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10062, N'vvvvvvvvvv', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:39:22.977' AS DateTime), CAST(N'2016-07-30 21:39:22.977' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10063, N'hhhhhhbgyjfgg', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:39:47.550' AS DateTime), CAST(N'2016-07-30 21:39:47.550' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10064, N'hnvhjvhjvjhvj', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:40:12.457' AS DateTime), CAST(N'2016-07-30 21:40:12.457' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10065, N'gggdffig', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:40:20.393' AS DateTime), CAST(N'2016-07-30 21:40:20.393' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10066, N'iiiiiiiiiiiiiii', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-07-30 21:42:19.423' AS DateTime), CAST(N'2016-07-30 21:42:19.423' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10067, N'iiiiiiiiiiiiiii', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:42:44.637' AS DateTime), CAST(N'2016-07-30 21:42:44.637' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10068, N'iiiiiiiiiiiiiii', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:42:44.637' AS DateTime), CAST(N'2016-07-30 21:42:44.637' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10069, N'iiiiiiiiiiiiiii', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:42:44.640' AS DateTime), CAST(N'2016-07-30 21:42:44.640' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10070, N'iiiiiiiiiiiiiii', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:42:44.657' AS DateTime), CAST(N'2016-07-30 21:42:44.657' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10071, N'iiiiiiiiiiiiiii', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:42:44.657' AS DateTime), CAST(N'2016-07-30 21:42:44.657' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10072, N'iiiiiiiiiiiiiii', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:42:44.657' AS DateTime), CAST(N'2016-07-30 21:42:44.657' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10073, N'iiiiiiiiiiiiiii', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:42:44.677' AS DateTime), CAST(N'2016-07-30 21:42:44.677' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10074, N'hey ji', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-07-30 21:52:43.117' AS DateTime), CAST(N'2016-07-30 21:52:43.117' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10075, N'hey ji', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-08-01 12:51:00.127' AS DateTime), CAST(N'2016-08-01 12:51:00.127' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10076, N'hey ji', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-08-01 12:51:00.127' AS DateTime), CAST(N'2016-08-01 12:51:00.127' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10077, N'hey ji', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-08-01 12:51:00.127' AS DateTime), CAST(N'2016-08-01 12:51:00.127' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10078, N'hey ji', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-08-01 12:51:32.747' AS DateTime), CAST(N'2016-08-01 12:51:32.747' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10079, N'hey ji', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-08-01 12:51:32.757' AS DateTime), CAST(N'2016-08-01 12:51:32.757' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10080, N'hey ji', 1, N'deepak@gmail.com', N'deepak@gmail.com', CAST(N'2016-08-01 12:51:32.767' AS DateTime), CAST(N'2016-08-01 12:51:32.767' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10081, N'saa', 1, N'sabinay@gmail.com', N'sabinay@gmail.com', CAST(N'2016-08-01 13:11:34.667' AS DateTime), CAST(N'2016-08-01 13:11:34.667' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10082, N'saa', 1, N'sabinay@gmail.com', N'sabinay@gmail.com', CAST(N'2016-08-01 13:12:04.037' AS DateTime), CAST(N'2016-08-01 13:12:04.037' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10083, N'saa', 1, N'sabinay@gmail.com', N'sabinay@gmail.com', CAST(N'2016-08-01 13:12:27.947' AS DateTime), CAST(N'2016-08-01 13:12:27.947' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10084, N'hi list', 1, N'sachin@gmail.com', N'sachin@gmail.com', CAST(N'2016-08-01 13:30:32.487' AS DateTime), CAST(N'2016-08-01 13:30:32.487' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10085, N'saa', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 15:50:30.060' AS DateTime), CAST(N'2016-08-01 15:50:30.060' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10086, N'saa', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 15:50:30.060' AS DateTime), CAST(N'2016-08-01 15:50:30.060' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10087, N'saa', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 15:50:30.180' AS DateTime), CAST(N'2016-08-01 15:50:30.180' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10088, N'testtttttihk', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 15:50:58.593' AS DateTime), CAST(N'2016-08-01 15:50:58.593' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10089, N'teaa', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 16:32:29.870' AS DateTime), CAST(N'2016-08-01 16:32:29.870' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10090, N'teaae', 0, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 16:33:57.537' AS DateTime), CAST(N'2016-08-01 16:33:57.537' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10091, N'teaae', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-01 16:34:46.167' AS DateTime), CAST(N'2016-08-13 14:31:21.437' AS DateTime))
GO
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10092, N'teaae', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-01 16:34:46.167' AS DateTime), CAST(N'2016-08-13 14:31:49.293' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10093, N'teaae', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-01 16:34:46.177' AS DateTime), CAST(N'2016-08-13 14:32:43.863' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10094, N'teaae', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-01 16:34:46.177' AS DateTime), CAST(N'2016-08-13 14:33:05.583' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10095, N'yyyyy', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-01 16:36:53.017' AS DateTime), CAST(N'2016-08-13 14:37:00.757' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10096, N'yyyyy', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 16:37:26.083' AS DateTime), CAST(N'2016-08-01 16:37:26.083' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10097, N'yyyyy', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 16:37:26.093' AS DateTime), CAST(N'2016-08-01 16:37:26.093' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10098, N'yyyyy', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 16:37:26.093' AS DateTime), CAST(N'2016-08-01 16:37:26.093' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10099, N'yyyyy', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 16:37:26.093' AS DateTime), CAST(N'2016-08-01 16:37:26.093' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10100, N'aaaa', 1, N'mukesh@gmail.com', N'mukesh@gmail.com', CAST(N'2016-08-01 16:39:14.117' AS DateTime), CAST(N'2016-08-01 16:39:14.117' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10101, N'aaaa', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-01 16:40:57.313' AS DateTime), CAST(N'2016-08-13 14:35:03.983' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10102, N'kkk', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-01 16:42:57.103' AS DateTime), CAST(N'2016-08-13 14:33:36.383' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10103, N'kkk', 1, N'sabinay@gmail.com', N'sabinay@gmail.com', CAST(N'2016-08-01 16:43:31.340' AS DateTime), CAST(N'2016-08-01 16:43:31.340' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10104, N'aaaa', 0, N'sabinay@gmail.com', N'sabinay@gmail.com', CAST(N'2016-08-01 16:43:57.477' AS DateTime), CAST(N'2016-08-01 16:43:57.477' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10105, N'My List - Testttyyy', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-10 16:30:41.863' AS DateTime), CAST(N'2016-08-13 15:34:50.990' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10106, N'testlist', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-08 19:34:54.290' AS DateTime), CAST(N'2016-08-13 14:39:04.333' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10107, N'testlist', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-08 19:35:02.453' AS DateTime), CAST(N'2016-08-13 14:43:52.320' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10108, N'testlist', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-08 19:34:58.933' AS DateTime), CAST(N'2016-08-13 14:56:40.993' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10109, N'fdfd', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-08 21:22:42.280' AS DateTime), CAST(N'2016-08-13 14:33:14.633' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10116, N'weekly', 0, N'akash@gmail.com', N'akash@gmail.com', CAST(N'2016-08-10 18:22:22.217' AS DateTime), CAST(N'2016-08-16 14:53:15.147' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10117, N'Monthly', 0, N'akash@gmail.com', N'akash@gmail.com', CAST(N'2016-08-10 18:23:59.643' AS DateTime), CAST(N'2016-08-13 18:00:52.060' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10118, N'Hello List', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-11 16:34:45.617' AS DateTime), CAST(N'2016-08-13 15:34:48.667' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10119, N'Hello One', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-11 16:37:15.450' AS DateTime), CAST(N'2016-08-13 14:39:16.843' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10120, N'Hi', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-11 16:49:24.200' AS DateTime), CAST(N'2016-08-13 15:04:32.767' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10121, N'Testing add more', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-11 17:05:24.020' AS DateTime), CAST(N'2016-08-13 15:34:46.437' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10122, N'iiiiiii', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-11 17:08:09.237' AS DateTime), CAST(N'2016-08-13 15:05:36.363' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10123, N'nikhil monthly list', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-11 18:38:47.363' AS DateTime), CAST(N'2016-08-13 15:34:42.430' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10124, N'first', 1, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-11 19:22:30.237' AS DateTime), CAST(N'2016-08-13 15:35:12.963' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10125, N'Jazz it up', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-22 19:03:07.763' AS DateTime), CAST(N'2016-08-22 19:03:07.763' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10126, N'The List', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-22 20:53:17.840' AS DateTime), CAST(N'2016-08-22 20:53:17.840' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10127, N'(08/22/2016)', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-22 20:55:16.550' AS DateTime), CAST(N'2016-08-22 20:55:16.550' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10128, N'Hll', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-22 20:58:00.157' AS DateTime), CAST(N'2016-08-22 20:58:00.157' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10129, N'IIIIIIII', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-08-22 20:58:18.333' AS DateTime), CAST(N'2016-08-22 20:58:18.333' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10130, N'Half Yearly', 0, N'akash@gmail.com', N'akash@gmail.com', CAST(N'2016-08-31 11:26:16.807' AS DateTime), CAST(N'2016-08-31 11:26:16.807' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10131, N'B', 0, N'deepak1@gmail.com', N'deepak1@gmail.com', CAST(N'2016-09-05 15:42:49.857' AS DateTime), CAST(N'2016-09-05 15:42:49.857' AS DateTime))
INSERT [dbo].[ListTypeTbl] ([ListTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (10132, N'First List', 0, N'wv@gmail.com', N'wv@gmail.com', CAST(N'2016-09-07 16:57:27.520' AS DateTime), CAST(N'2016-09-07 16:57:27.520' AS DateTime))
SET IDENTITY_INSERT [dbo].[ListTypeTbl] OFF
SET IDENTITY_INSERT [dbo].[PublishedListTbl] ON 

INSERT [dbo].[PublishedListTbl] ([PublishListId], [PublishedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (16, N'akash@gmail.com', 10117, CAST(N'2016-09-07 16:59:56.353' AS DateTime), CAST(N'2016-09-07 16:59:56.353' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0)
INSERT [dbo].[PublishedListTbl] ([PublishListId], [PublishedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (17, N'deepak1@gmail.com', 10125, CAST(N'2016-09-08 13:23:33.553' AS DateTime), CAST(N'2016-09-08 13:23:33.553' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
SET IDENTITY_INSERT [dbo].[PublishedListTbl] OFF
SET IDENTITY_INSERT [dbo].[PublishItemTbl] ON 

INSERT [dbo].[PublishItemTbl] ([Id], [ItemId], [PublishListId], [ItemListId], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30, 1, 16, 10409, 10117, CAST(N'2016-09-07 16:59:56.387' AS DateTime), CAST(N'2016-09-07 16:59:56.387' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0)
INSERT [dbo].[PublishItemTbl] ([Id], [ItemId], [PublishListId], [ItemListId], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (31, 2, 16, 10410, 10117, CAST(N'2016-09-07 16:59:56.407' AS DateTime), CAST(N'2016-09-07 16:59:56.407' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0)
INSERT [dbo].[PublishItemTbl] ([Id], [ItemId], [PublishListId], [ItemListId], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (32, 1, 17, 10483, 10125, CAST(N'2016-09-08 13:23:34.460' AS DateTime), CAST(N'2016-09-08 13:23:34.460' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
INSERT [dbo].[PublishItemTbl] ([Id], [ItemId], [PublishListId], [ItemListId], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (33, 2, 17, 10484, 10125, CAST(N'2016-09-08 13:23:34.537' AS DateTime), CAST(N'2016-09-08 13:23:34.537' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
INSERT [dbo].[PublishItemTbl] ([Id], [ItemId], [PublishListId], [ItemListId], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (34, 3, 17, 10485, 10125, CAST(N'2016-09-08 13:23:34.537' AS DateTime), CAST(N'2016-09-08 13:23:34.537' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
INSERT [dbo].[PublishItemTbl] ([Id], [ItemId], [PublishListId], [ItemListId], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (35, 4, 17, 10486, 10125, CAST(N'2016-09-08 13:23:34.553' AS DateTime), CAST(N'2016-09-08 13:23:34.553' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
SET IDENTITY_INSERT [dbo].[PublishItemTbl] OFF
SET IDENTITY_INSERT [dbo].[SharedItemTbl] ON 

INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (6, 1, N'deepak%40gmail.com', N'deepak1@gmail.com', 36, CAST(N'2016-07-28 18:46:00.683' AS DateTime), CAST(N'2016-09-01 18:15:28.693' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (7, 1, N'deepak%40gmail.com', N'deepak1@gmail.com', 37, CAST(N'2016-07-29 13:01:06.960' AS DateTime), CAST(N'2016-09-01 18:12:32.247' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10006, 1, N'deepak%40gmail.com', N'deepak1@gmail.com', 10032, CAST(N'2016-07-29 19:26:55.187' AS DateTime), CAST(N'2016-07-29 19:26:55.187' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10007, 0, N'deepak%40gmail.com', N'deepak1@gmail.com', 10033, CAST(N'2016-07-29 19:44:37.263' AS DateTime), CAST(N'2016-07-29 19:44:37.263' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10008, 1, N'deepak%40gmail.com', N'deepak@gmail.com', 10043, CAST(N'2016-07-30 20:30:19.533' AS DateTime), CAST(N'2016-07-30 20:30:19.543' AS DateTime), N'deepak@gmail.com', N'deepak@gmail.com', 1, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10009, 1, N'deepak@gmail.com', N'sachin@gmail.com', 10084, CAST(N'2016-08-01 13:30:43.207' AS DateTime), CAST(N'2016-08-01 13:30:43.207' AS DateTime), N'sachin@gmail.com', N'sachin@gmail.com', 1, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10010, 0, N'deepak%40gmail.com', N'sachin@gmail.com', 10084, CAST(N'2016-08-01 13:30:43.207' AS DateTime), CAST(N'2016-08-01 13:30:43.207' AS DateTime), N'sachin@gmail.com', N'sachin@gmail.com', 1, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10011, 1, N'deepak%40gmail.com', N'deepak1@gmail.com', 10105, CAST(N'2016-08-01 22:02:48.520' AS DateTime), CAST(N'2016-09-01 18:40:56.767' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 1, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10013, 1, N'sabinay@gmail.com', N'akash@gmail.com', 10116, CAST(N'2016-08-13 20:32:31.277' AS DateTime), CAST(N'2016-08-31 14:26:47.017' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10014, 0, N'deepak1@gmail.com', N'akash@gmail.com', 10116, CAST(N'2016-08-13 20:32:56.387' AS DateTime), CAST(N'2016-09-01 18:56:37.543' AS DateTime), N'akash@gmail.com', N'deepak1@gmail.com', 0, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10015, 1, N'akash@gmail.com', N'deepak1@gmail.com', 19, CAST(N'2016-08-16 20:16:33.863' AS DateTime), CAST(N'2016-09-01 18:55:16.607' AS DateTime), N'deepak1@gmail.com', N'deepak1@gmail.com', 0, 0)
INSERT [dbo].[SharedItemTbl] ([Id], [CanEdit], [SharedWith], [SharedBy], [ListTypeId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10016, 1, N'akash@gmail.com', N'akash@gmail.com', 10117, CAST(N'2016-08-29 20:02:38.800' AS DateTime), CAST(N'2016-08-31 14:24:25.943' AS DateTime), N'akash@gmail.com', N'akash@gmail.com', 1, 0)
SET IDENTITY_INSERT [dbo].[SharedItemTbl] OFF
SET IDENTITY_INSERT [dbo].[UnitTbl] ON 

INSERT [dbo].[UnitTbl] ([UnitTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (3, N'Kg', 0, N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', CAST(N'2016-07-25 13:16:28.750' AS DateTime), CAST(N'2016-07-25 13:16:28.750' AS DateTime))
INSERT [dbo].[UnitTbl] ([UnitTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (6, N'Liter', 0, N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', CAST(N'2016-07-25 13:16:28.750' AS DateTime), CAST(N'2016-07-25 13:16:28.750' AS DateTime))
INSERT [dbo].[UnitTbl] ([UnitTypeId], [Name], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (11, N'Gram', 0, N'sachinkumarindore@gmail.com', N'sachinkumarindore@gmail.com', CAST(N'2016-07-25 13:16:28.750' AS DateTime), CAST(N'2016-07-25 13:16:28.750' AS DateTime))
SET IDENTITY_INSERT [dbo].[UnitTbl] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 08-09-2016 17:46:19 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 08-09-2016 17:46:19 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 08-09-2016 17:46:19 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 08-09-2016 17:46:19 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 08-09-2016 17:46:19 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 08-09-2016 17:46:19 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[ItemAlternateNameTbl]  WITH CHECK ADD  CONSTRAINT [FK_ItemAlternateNameTbl_ItemTbl_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[ItemTbl] ([ItemId])
GO
ALTER TABLE [dbo].[ItemAlternateNameTbl] CHECK CONSTRAINT [FK_ItemAlternateNameTbl_ItemTbl_ItemId]
GO
ALTER TABLE [dbo].[ItemListTbl]  WITH CHECK ADD  CONSTRAINT [FK_ItemListTbl_ItemCategoryTbl_ItemCategoryId_ItemCategoryId] FOREIGN KEY([ItemCategoryId])
REFERENCES [dbo].[ItemCategoryTbl] ([ItemCategoryId])
GO
ALTER TABLE [dbo].[ItemListTbl] CHECK CONSTRAINT [FK_ItemListTbl_ItemCategoryTbl_ItemCategoryId_ItemCategoryId]
GO
ALTER TABLE [dbo].[ItemListTbl]  WITH CHECK ADD  CONSTRAINT [FK_ItemListTbl_ListTypeTbl_ListTypeId] FOREIGN KEY([ListTypeId])
REFERENCES [dbo].[ListTypeTbl] ([ListTypeId])
GO
ALTER TABLE [dbo].[ItemListTbl] CHECK CONSTRAINT [FK_ItemListTbl_ListTypeTbl_ListTypeId]
GO
ALTER TABLE [dbo].[ItemListTbl]  WITH CHECK ADD  CONSTRAINT [FK_ItemListTbl_UnitTbl_UnitTypeId] FOREIGN KEY([UnitTypeId])
REFERENCES [dbo].[UnitTbl] ([UnitTypeId])
GO
ALTER TABLE [dbo].[ItemListTbl] CHECK CONSTRAINT [FK_ItemListTbl_UnitTbl_UnitTypeId]
GO
ALTER TABLE [dbo].[ItemTbl]  WITH CHECK ADD  CONSTRAINT [FK_ItemTbl_ItemCategoryTbl_ItemCategoryId] FOREIGN KEY([ItemCategoryId])
REFERENCES [dbo].[ItemCategoryTbl] ([ItemCategoryId])
GO
ALTER TABLE [dbo].[ItemTbl] CHECK CONSTRAINT [FK_ItemTbl_ItemCategoryTbl_ItemCategoryId]
GO
ALTER TABLE [dbo].[PublishedListTbl]  WITH CHECK ADD  CONSTRAINT [FK_PublishedListTbl_PublishedListTbl] FOREIGN KEY([ListTypeId])
REFERENCES [dbo].[ListTypeTbl] ([ListTypeId])
GO
ALTER TABLE [dbo].[PublishedListTbl] CHECK CONSTRAINT [FK_PublishedListTbl_PublishedListTbl]
GO
ALTER TABLE [dbo].[PublishItemTbl]  WITH CHECK ADD  CONSTRAINT [FK_PublishItemTbl_ListTypeTbl] FOREIGN KEY([PublishListId])
REFERENCES [dbo].[PublishedListTbl] ([PublishListId])
GO
ALTER TABLE [dbo].[PublishItemTbl] CHECK CONSTRAINT [FK_PublishItemTbl_ListTypeTbl]
GO
ALTER TABLE [dbo].[SharedItemTbl]  WITH CHECK ADD  CONSTRAINT [FK_SharedItemTbl_ListTypeTbl_ListTypeId] FOREIGN KEY([ListTypeId])
REFERENCES [dbo].[ListTypeTbl] ([ListTypeId])
GO
ALTER TABLE [dbo].[SharedItemTbl] CHECK CONSTRAINT [FK_SharedItemTbl_ListTypeTbl_ListTypeId]
GO
USE [master]
GO
ALTER DATABASE [GroceryManagement] SET  READ_WRITE 
GO
