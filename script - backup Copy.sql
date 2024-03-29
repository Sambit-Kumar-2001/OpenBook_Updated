USE [master]
GO
/****** Object:  Database [OpenbookDb]    Script Date: 7/6/2023 1:02:58 AM ******/
CREATE DATABASE [OpenbookDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OpenbookDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OpenbookDb.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OpenbookDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OpenbookDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OpenbookDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OpenbookDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OpenbookDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OpenbookDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OpenbookDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OpenbookDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OpenbookDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [OpenbookDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OpenbookDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OpenbookDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OpenbookDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OpenbookDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OpenbookDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OpenbookDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OpenbookDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OpenbookDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OpenbookDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OpenbookDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OpenbookDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OpenbookDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OpenbookDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OpenbookDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OpenbookDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [OpenbookDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OpenbookDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OpenbookDb] SET  MULTI_USER 
GO
ALTER DATABASE [OpenbookDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OpenbookDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OpenbookDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OpenbookDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OpenbookDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OpenbookDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OpenbookDb] SET QUERY_STORE = OFF
GO
USE [OpenbookDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/6/2023 1:02:59 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A](
	[LedgerId] [int] NOT NULL,
	[GroupUnder] [int] NOT NULL,
	[LedgerName] [nvarchar](max) NOT NULL,
	[LedgerCode] [nvarchar](max) NOT NULL,
	[OpeningBalance] [decimal](18, 2) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[CrOrDr] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[AccountName] [nvarchar](max) NOT NULL,
	[AccountNo] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountLedger]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountLedger](
	[LedgerId] [int] IDENTITY(1,1) NOT NULL,
	[GroupUnder] [int] NULL,
	[LedgerName] [nvarchar](max) NULL,
	[LedgerCode] [nvarchar](max) NULL,
	[OpeningBalance] [decimal](18, 2) NULL,
	[IsDefault] [bit] NULL,
	[CrOrDr] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[AccountName] [nvarchar](max) NULL,
	[AccountNo] [nvarchar](max) NULL,
	[TenantId] [nvarchar](max) NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AccountLedger] PRIMARY KEY CLUSTERED 
(
	[LedgerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvancePayment]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvancePayment](
	[AdvancePaymentId] [int] IDENTITY(1,1) NOT NULL,
	[SerialNo] [nvarchar](50) NULL,
	[EmployeeId] [int] NULL,
	[LedgerId] [int] NULL,
	[VoucherNo] [nvarchar](50) NULL,
	[InvoiceNo] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Amount] [decimal](18, 2) NULL,
	[SalaryMonth] [datetime] NULL,
	[YearMonth] [nvarchar](50) NULL,
	[Narration] [nvarchar](max) NULL,
	[TenantId] [nvarchar](max) NULL,
	[AddedDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[VoucherTypeId] [int] NULL,
	[FinancialYearId] [int] NULL,
 CONSTRAINT [PK_AdvancePayment] PRIMARY KEY CLUSTERED 
(
	[AdvancePaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/6/2023 1:02:59 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/6/2023 1:02:59 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/6/2023 1:02:59 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/6/2023 1:02:59 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/6/2023 1:02:59 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Name] [nvarchar](256) NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/6/2023 1:02:59 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BonusDeduction]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BonusDeduction](
	[BonusDeductionId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[Date] [datetime] NULL,
	[Month] [datetime] NULL,
	[YearMonth] [nvarchar](50) NULL,
	[BonusAmount] [decimal](18, 2) NULL,
	[DeductionAmount] [decimal](18, 2) NULL,
	[Narration] [nvarchar](max) NULL,
	[TenantId] [nvarchar](max) NULL,
	[AddedDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_BonusDeduction] PRIMARY KEY CLUSTERED 
(
	[BonusDeductionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoriesId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[PhoneNo] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NULL,
	[CountryName] [nvarchar](max) NULL,
	[TaxId] [nvarchar](max) NULL,
	[TimeZoneId] [int] NULL,
	[DateFormat] [nvarchar](50) NULL,
	[CurrencyId] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[FinancialYearId] [int] NOT NULL,
	[Website] [nvarchar](max) NOT NULL,
	[Logo] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[CouponId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Limit] [decimal](18, 2) NULL,
	[Code] [nvarchar](50) NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[CurrencyId] [int] IDENTITY(1,1) NOT NULL,
	[CurrencySymbol] [nvarchar](max) NOT NULL,
	[CurrencyName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerSupplier]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerSupplier](
	[CustomerSupplierId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[WorkPhone] [nvarchar](450) NULL,
	[Mobile] [nvarchar](450) NULL,
	[Email] [nvarchar](450) NULL,
	[CountryId] [int] NULL,
	[City] [nvarchar](450) NULL,
	[Address] [nvarchar](450) NULL,
	[CreditLimit] [decimal](18, 2) NULL,
	[CompanyName] [nvarchar](450) NULL,
	[Website] [nvarchar](450) NULL,
	[SameasShipping] [bit] NULL,
	[Type] [nvarchar](450) NULL,
	[OpeningBalance] [decimal](18, 0) NULL,
	[DrCr] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[TenantId] [nvarchar](450) NULL,
	[AddedDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_CustomerSupplier] PRIMARY KEY CLUSTERED 
(
	[CustomerSupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyAttendanceDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyAttendanceDetails](
	[DailyAttendanceDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[DailyAttendanceMasterId] [int] NULL,
	[EmployeeId] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[TenantId] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL,
 CONSTRAINT [PK_DailyAttendanceDetails] PRIMARY KEY CLUSTERED 
(
	[DailyAttendanceDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyAttendanceMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyAttendanceMaster](
	[DailyAttendanceMasterId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Narration] [nvarchar](max) NULL,
	[TenantId] [nvarchar](max) NULL,
	[AddedDate] [date] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_DailyAttendanceMaster] PRIMARY KEY CLUSTERED 
(
	[DailyAttendanceMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailySalaryVoucherDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailySalaryVoucherDetails](
	[DailySalaryVoucherDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[DailySalaryVoucherMasterId] [int] NULL,
	[EmployeeId] [int] NULL,
	[Wage] [decimal](18, 5) NULL,
	[Status] [nvarchar](50) NULL,
	[TenantId] [nvarchar](max) NULL,
 CONSTRAINT [PK_DailySalaryVoucherDetails] PRIMARY KEY CLUSTERED 
(
	[DailySalaryVoucherDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailySalaryVoucherMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailySalaryVoucherMaster](
	[DailySalaryVoucherMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SerialNo] [nvarchar](50) NULL,
	[LedgerId] [int] NULL,
	[VoucherNo] [nvarchar](50) NULL,
	[InvoiceNo] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[SalaryDate] [datetime] NULL,
	[YearMonthDay] [nvarchar](50) NULL,
	[TotalAmount] [decimal](18, 5) NULL,
	[Narration] [nvarchar](max) NULL,
	[TenantId] [nvarchar](max) NULL,
	[AddedDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[VoucherTypeId] [int] NULL,
	[FinancialYearId] [int] NULL,
 CONSTRAINT [PK_DailySalaryVoucherMaster] PRIMARY KEY CLUSTERED 
(
	[DailySalaryVoucherMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationName] [nvarchar](50) NULL,
	[LeaveDays] [decimal](18, 2) NULL,
	[AdvanceAmount] [decimal](18, 2) NULL,
	[TenantId] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailSetting]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSetting](
	[EmailSettingId] [int] IDENTITY(1,1) NOT NULL,
	[MailHost] [nvarchar](max) NOT NULL,
	[MailPort] [int] NOT NULL,
	[MailAddress] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[MailFromname] [nvarchar](max) NOT NULL,
	[EncryptionName] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_EmailSetting] PRIMARY KEY CLUSTERED 
(
	[EmailSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationId] [int] NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[Dob] [datetime] NULL,
	[MaritalStatus] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Qualification] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[MobileNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[JoiningDate] [datetime] NULL,
	[isActive] [bit] NULL,
	[Narration] [nvarchar](max) NULL,
	[SalaryType] [nvarchar](max) NULL,
	[DailyWage] [decimal](18, 2) NULL,
	[DefaultPackageId] [int] NULL,
	[TenantId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpenseMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenseMaster](
	[ExpensiveMasterId] [int] IDENTITY(1,1) NOT NULL,
	[LedgerId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[VoucherTypeId] [int] NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[ModifyDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ExpenseMaster] PRIMARY KEY CLUSTERED 
(
	[ExpensiveMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpensesDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpensesDetails](
	[ExpensesDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[ExpensiveMasterId] [int] NOT NULL,
	[LedgerId] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ExpensesDetails] PRIMARY KEY CLUSTERED 
(
	[ExpensesDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[FeaturesId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[FeaturesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialYear]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialYear](
	[FinancialYearId] [int] IDENTITY(1,1) NOT NULL,
	[FromDate] [datetime2](7) NOT NULL,
	[ToDate] [datetime2](7) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[FiscalYear] [nvarchar](max) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_FinancialYear] PRIMARY KEY CLUSTERED 
(
	[FinancialYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneralSetting]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralSetting](
	[GeneralId] [int] IDENTITY(1,1) NOT NULL,
	[ShowCurrency] [bit] NOT NULL,
	[NegativeCash] [bit] NOT NULL,
	[NegativeStock] [bit] NOT NULL,
	[StockCalculationMode] [bit] NOT NULL,
	[CreditLimit] [bit] NOT NULL,
	[Discount] [bit] NOT NULL,
	[VatOnPurchase] [bit] NOT NULL,
	[VatOnSales] [bit] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_GeneralSetting] PRIMARY KEY CLUSTERED 
(
	[GeneralId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomeMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomeMaster](
	[IncomeMasterId] [int] IDENTITY(1,1) NOT NULL,
	[LedgerId] [int] NOT NULL,
	[Date] [datetime2](7) NULL,
	[VoucherTypeId] [int] NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_IncomeMaster] PRIMARY KEY CLUSTERED 
(
	[IncomeMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceSetting]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceSetting](
	[VoucherTypeId] [int] NOT NULL,
	[VoucherTypeName] [nvarchar](max) NULL,
	[StartIndex] [int] NULL,
	[Prefix] [nvarchar](max) NULL,
	[Suffix] [nvarchar](max) NULL,
	[CompanyId] [int] NULL,
	[PONumber] [nvarchar](max) NULL,
	[EwayBillNo] [nvarchar](max) NULL,
	[VechileNo] [nvarchar](max) NULL,
	[ShowDiscount] [bit] NULL,
	[ShowTax] [bit] NULL,
	[ShowBarcode] [bit] NULL,
	[IsActive] [bit] NULL,
	[TenantId] [nvarchar](450) NULL,
 CONSTRAINT [PK_InvoiceSetting] PRIMARY KEY CLUSTERED 
(
	[VoucherTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JournalDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JournalDetails](
	[JournalDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[JournalMasterId] [int] NOT NULL,
	[LedgerId] [int] NOT NULL,
	[ProjectId] [int] NULL,
	[Credit] [decimal](18, 2) NOT NULL,
	[Debit] [decimal](18, 2) NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_JournalDetails] PRIMARY KEY CLUSTERED 
(
	[JournalDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JournalMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JournalMaster](
	[JournalMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[InvoiceNo] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[ReferenceNo] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[CurrencyId] [int] NULL,
	[VoucherTypeId] [int] NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_JournalMaster] PRIMARY KEY CLUSTERED 
(
	[JournalMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LedgerPosting]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LedgerPosting](
	[LedgerPostingId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NULL,
	[VoucherTypeId] [int] NULL,
	[VoucherNo] [nvarchar](max) NULL,
	[LedgerId] [int] NULL,
	[Debit] [decimal](18, 2) NULL,
	[Credit] [decimal](18, 2) NULL,
	[DetailsId] [int] NULL,
	[YearId] [int] NULL,
	[InvoiceNo] [nvarchar](max) NULL,
	[ChequeNo] [nvarchar](max) NULL,
	[ChequeDate] [nvarchar](max) NULL,
	[TenantId] [nvarchar](450) NULL,
	[ReferenceN] [nvarchar](max) NULL,
	[LongReference] [nvarchar](max) NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_LedgerPosting] PRIMARY KEY CLUSTERED 
(
	[LedgerPostingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlySalary]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlySalary](
	[MonthlySalaryId] [int] IDENTITY(1,1) NOT NULL,
	[SalaryMonth] [datetime] NULL,
	[YearMonth] [nvarchar](50) NULL,
	[Narration] [nvarchar](max) NULL,
	[TenantId] [nvarchar](max) NULL,
	[AddedDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_MonthlySalary] PRIMARY KEY CLUSTERED 
(
	[MonthlySalaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlySalaryDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlySalaryDetails](
	[MonthlySalaryDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[SalaryPackageId] [int] NULL,
	[MonthlySalaryId] [int] NULL,
	[TenantId] [nvarchar](max) NULL,
 CONSTRAINT [PK_MonthlySalaryDetails] PRIMARY KEY CLUSTERED 
(
	[MonthlySalaryDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayHead]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayHead](
	[PayHeadId] [int] IDENTITY(1,1) NOT NULL,
	[PayHeadName] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[TenantId] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL,
 CONSTRAINT [PK_PayHead] PRIMARY KEY CLUSTERED 
(
	[PayHeadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetails](
	[PaymentDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMasterId] [int] NOT NULL,
	[PurchaseMasterId] [int] NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[ReceiveAmount] [decimal](18, 2) NOT NULL,
	[DueAmount] [decimal](18, 2) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_PaymentDetails] PRIMARY KEY CLUSTERED 
(
	[PaymentDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMaster](
	[PaymentMasterId] [int] IDENTITY(1,1) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[LedgerId] [int] NOT NULL,
	[CustomerSupplierId] [int] NULL,
	[PaidAmount] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[VoucherTypeId] [int] NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[PaymentType] [nvarchar](max) NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[Reference] [nvarchar](max) NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_PaymentMaster] PRIMARY KEY CLUSTERED 
(
	[PaymentMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMode]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMode](
	[PaymentmodeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PaymentMode] PRIMARY KEY CLUSTERED 
(
	[PaymentmodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanMaster](
	[PlanId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[Duration] [nvarchar](50) NULL,
	[MaximumUser] [int] NULL,
	[MaximumCustomer] [int] NULL,
	[MaximumSupplier] [int] NULL,
	[MaximumProduct] [int] NULL,
	[MaximumInvoice] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Crm] [bit] NULL,
	[Project] [bit] NULL,
	[Hrm] [bit] NULL,
	[Account] [bit] NULL,
	[Pos] [bit] NULL,
	[AddedDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanUpgrade]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanUpgrade](
	[PlanUpgradeId] [int] IDENTITY(1,1) NOT NULL,
	[PlanId] [int] NULL,
	[OrderNo] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[TenantId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PlanUpgrade] PRIMARY KEY CLUSTERED 
(
	[PlanUpgradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priviliage]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priviliage](
	[PriviliageId] [int] IDENTITY(1,1) NOT NULL,
	[Menu] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Priviliage] PRIMARY KEY CLUSTERED 
(
	[PriviliageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Snno] [nvarchar](50) NULL,
	[ProductCode] [nvarchar](max) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[CategoriesId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[UnitId] [int] NOT NULL,
	[TaxId] [int] NOT NULL,
	[PurchaseRate] [decimal](18, 2) NOT NULL,
	[SalesRate] [decimal](18, 2) NOT NULL,
	[PurchaseAccount] [int] NULL,
	[SalesAccount] [int] NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[ItemType] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Barcode] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[OpeningStock] [int] NOT NULL,
	[ExiparyDate] [datetime2](7) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NULL,
	[TenantId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseDetails](
	[PurchaseDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseMasterId] [int] NOT NULL,
	[OrderDetailsId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[UnitId] [int] NOT NULL,
	[LedgerId] [int] NULL,
	[ProjectId] [int] NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxId] [int] NOT NULL,
	[BatchId] [int] NOT NULL,
	[TaxRate] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[GrossAmount] [decimal](18, 2) NOT NULL,
	[NetAmount] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[WarehouseId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_PurchaseDetails] PRIMARY KEY CLUSTERED 
(
	[PurchaseDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseMaster](
	[PurchaseMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[OrderNo] [nvarchar](max) NULL,
	[WarehouseId] [int] NOT NULL,
	[VoucherTypeId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[DueDate] [datetime2](7) NOT NULL,
	[CustomerSupplierId] [int] NOT NULL,
	[Reference] [nvarchar](max) NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[PurchaseOrderMasterId] [int] NOT NULL,
	[TotalTax] [decimal](18, 2) NOT NULL,
	[DisPer] [decimal](18, 2) NOT NULL,
	[BillDiscount] [decimal](18, 2) NOT NULL,
	[DiscountType] [nvarchar](50) NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[NetAmounts] [decimal](18, 2) NOT NULL,
	[PayAmount] [decimal](18, 2) NOT NULL,
	[BalanceDue] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[PreviousDue] [decimal](18, 2) NOT NULL,
	[PaymentStatus] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_PurchaseMaster] PRIMARY KEY CLUSTERED 
(
	[PurchaseMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseReturnDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseReturnDetails](
	[PurchaseReturnDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseReturnMasterId] [int] NOT NULL,
	[PurchaseDetailsId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[UnitId] [int] NOT NULL,
	[LedgerId] [int] NULL,
	[ProjectId] [int] NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxId] [int] NOT NULL,
	[TaxRate] [decimal](18, 2) NOT NULL,
	[BatchId] [int] NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[GrossAmount] [decimal](18, 2) NOT NULL,
	[NetAmount] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_PurchaseReturnDetails] PRIMARY KEY CLUSTERED 
(
	[PurchaseReturnDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseReturnMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseReturnMaster](
	[PurchaseReturnMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[OrderNo] [nvarchar](max) NULL,
	[WarehouseId] [int] NOT NULL,
	[VoucherTypeId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[CustomerSupplierId] [int] NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[Reference] [nvarchar](max) NULL,
	[PurchaseMasterId] [int] NOT NULL,
	[TotalTax] [decimal](18, 2) NOT NULL,
	[DisPer] [decimal](18, 2) NOT NULL,
	[BillDiscount] [decimal](18, 2) NOT NULL,
	[DiscountType] [nvarchar](50) NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[NetAmounts] [decimal](18, 2) NOT NULL,
	[PayAmount] [decimal](18, 2) NOT NULL,
	[BalanceDue] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[PreviousDue] [decimal](18, 2) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_PurchaseReturnMaster] PRIMARY KEY CLUSTERED 
(
	[PurchaseReturnMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptDetails](
	[ReceiptDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptMasterId] [int] NOT NULL,
	[SalesMasterId] [int] NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[ReceiveAmount] [decimal](18, 2) NOT NULL,
	[DueAmount] [decimal](18, 2) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ReceiptDetails] PRIMARY KEY CLUSTERED 
(
	[ReceiptDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptMaster](
	[ReceiptMasterId] [int] IDENTITY(1,1) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[LedgerId] [int] NOT NULL,
	[CustomerSupplierId] [int] NULL,
	[PaidAmount] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[VoucherTypeId] [int] NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[PaymentType] [nvarchar](max) NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[Reference] [nvarchar](max) NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ReceiptMaster] PRIMARY KEY CLUSTERED 
(
	[ReceiptMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryPackage]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryPackage](
	[SalaryPackageId] [int] IDENTITY(1,1) NOT NULL,
	[SalaryPackageName] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Narration] [nvarchar](max) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[TenantId] [nvarchar](max) NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_SalaryPackage_1] PRIMARY KEY CLUSTERED 
(
	[SalaryPackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryPackageDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryPackageDetails](
	[SalaryPackageDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[SalaryPackageId] [int] NULL,
	[PayHeadId] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[TenantId] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL,
 CONSTRAINT [PK_SalaryPackageDetails] PRIMARY KEY CLUSTERED 
(
	[SalaryPackageDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryVoucherDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryVoucherDetails](
	[SalaryVoucherDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[SalaryVoucherMasterId] [int] NULL,
	[EmployeeId] [int] NULL,
	[Bonus] [decimal](18, 2) NULL,
	[Deduction] [decimal](18, 2) NULL,
	[Advance] [decimal](18, 2) NULL,
	[Lop] [decimal](18, 2) NULL,
	[Salary] [decimal](18, 2) NULL,
	[Status] [nvarchar](50) NULL,
	[TenantId] [nvarchar](max) NULL,
 CONSTRAINT [PK_SalaryVoucherDetails] PRIMARY KEY CLUSTERED 
(
	[SalaryVoucherDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryVoucherMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryVoucherMaster](
	[SalaryVoucherMasterId] [int] IDENTITY(1,1) NOT NULL,
	[LedgerId] [nvarchar](50) NULL,
	[SerialNo] [nvarchar](50) NULL,
	[VoucherNo] [nvarchar](50) NULL,
	[InvoiceNo] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Month] [datetime] NULL,
	[YearMonth] [nvarchar](50) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[Narration] [nvarchar](max) NULL,
	[TenantId] [nvarchar](max) NULL,
	[AddedDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[VoucherTypeId] [int] NULL,
	[financialYearId] [int] NULL,
 CONSTRAINT [PK_SalaryVoucherMaster] PRIMARY KEY CLUSTERED 
(
	[SalaryVoucherMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesDetails](
	[SalesDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[SalesMasterId] [int] NOT NULL,
	[OrderDetailsId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[UnitId] [int] NOT NULL,
	[LedgerId] [int] NULL,
	[ProjectId] [int] NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxId] [int] NOT NULL,
	[BatchId] [int] NOT NULL,
	[TaxRate] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[GrossAmount] [decimal](18, 2) NOT NULL,
	[NetAmount] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_SalesDetails] PRIMARY KEY CLUSTERED 
(
	[SalesDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesMaster](
	[SalesMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[OrderNo] [nvarchar](max) NULL,
	[WarehouseId] [int] NOT NULL,
	[VoucherTypeId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[DueDate] [datetime2](7) NOT NULL,
	[CustomerSupplierId] [int] NOT NULL,
	[OrderMasterId] [int] NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[TotalTax] [decimal](18, 2) NOT NULL,
	[Reference] [nvarchar](max) NOT NULL,
	[PaymentStatus] [nvarchar](max) NOT NULL,
	[DisPer] [decimal](18, 2) NOT NULL,
	[BillDiscount] [decimal](18, 2) NOT NULL,
	[DiscountType] [nvarchar](50) NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[NetAmounts] [decimal](18, 2) NOT NULL,
	[PayAmount] [decimal](18, 2) NOT NULL,
	[BalanceDue] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[PreviousDue] [decimal](18, 2) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_SalesMaster] PRIMARY KEY CLUSTERED 
(
	[SalesMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesQuotationDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesQuotationDetails](
	[QuotationDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[QuotationMasterId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitId] [int] NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[BatchId] [int] NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxId] [int] NOT NULL,
	[TaxRate] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[GrossAmount] [decimal](18, 2) NOT NULL,
	[NetAmount] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_SalesQuotationDetails] PRIMARY KEY CLUSTERED 
(
	[QuotationDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesQuotationMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesQuotationMaster](
	[QuotationMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[VoucherTypeId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[LedgerId] [int] NOT NULL,
	[TaxId] [decimal](18, 2) NOT NULL,
	[TotalTax] [decimal](18, 2) NOT NULL,
	[TaxRate] [decimal](18, 2) NOT NULL,
	[DisPer] [decimal](18, 2) NOT NULL,
	[BillDiscount] [decimal](18, 2) NOT NULL,
	[ShippingAmount] [decimal](18, 2) NOT NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[ModifyDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SalesQuotationMaster] PRIMARY KEY CLUSTERED 
(
	[QuotationMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesReturnDetails]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesReturnDetails](
	[SalesReturnDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[SalesReturnMasterId] [int] NOT NULL,
	[SalesDetailsId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[UnitId] [int] NOT NULL,
	[LedgerId] [int] NULL,
	[ProjectId] [int] NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxId] [int] NOT NULL,
	[TaxRate] [decimal](18, 2) NOT NULL,
	[BatchId] [int] NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[GrossAmount] [decimal](18, 2) NOT NULL,
	[NetAmount] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[TenantId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_SalesReturnDetails] PRIMARY KEY CLUSTERED 
(
	[SalesReturnDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesReturnMaster]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesReturnMaster](
	[SalesReturnMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[OrderNo] [nvarchar](max) NULL,
	[WarehouseId] [int] NOT NULL,
	[VoucherTypeId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[CustomerSupplierId] [int] NOT NULL,
	[SalesMasterId] [int] NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[Reference] [nvarchar](max) NULL,
	[TotalTax] [decimal](18, 2) NOT NULL,
	[DisPer] [decimal](18, 2) NOT NULL,
	[BillDiscount] [decimal](18, 2) NOT NULL,
	[DiscountType] [nvarchar](50) NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[NetAmounts] [decimal](18, 2) NOT NULL,
	[PayAmount] [decimal](18, 2) NOT NULL,
	[BalanceDue] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[PreviousDue] [decimal](18, 2) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_SalesReturnMaster] PRIMARY KEY CLUSTERED 
(
	[SalesReturnMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockPosting]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockPosting](
	[StockPostingId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[VoucherTypeId] [int] NOT NULL,
	[VoucherNo] [nvarchar](max) NOT NULL,
	[InvoiceNo] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
	[BatchId] [int] NOT NULL,
	[UnitId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[AgainstVoucherTypeId] [int] NOT NULL,
	[AgainstInvoiceNo] [nvarchar](max) NOT NULL,
	[AgainstVoucherNo] [nvarchar](max) NOT NULL,
	[InwardQty] [decimal](18, 2) NOT NULL,
	[OutwardQty] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[FinancialYearId] [int] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[DetailsId] [int] NOT NULL,
	[StockCalculate] [nvarchar](max) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_StockPosting] PRIMARY KEY CLUSTERED 
(
	[StockPostingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tax]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[TaxId] [int] IDENTITY(1,1) NOT NULL,
	[TaxName] [nvarchar](max) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeZones]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeZones](
	[TimeZoneId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TimeZones] PRIMARY KEY CLUSTERED 
(
	[TimeZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](max) NOT NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[ModifyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCompany]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCompany](
	[UserCompId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[RoleName] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[TenantId] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserCompany] PRIMARY KEY CLUSTERED 
(
	[UserCompId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[WarehouseId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[TenantId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[WarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebsiteSetting]    Script Date: 7/6/2023 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebsiteSetting](
	[WebId] [int] NOT NULL,
	[Name] [nvarchar](450) NULL,
	[Title] [nvarchar](450) NULL,
	[Description] [nvarchar](450) NULL,
	[Footer] [nvarchar](450) NULL,
	[Email] [nvarchar](50) NULL,
	[CopyRight] [nvarchar](450) NULL,
	[NoofDecimal] [int] NULL,
	[Facebook] [nvarchar](450) NULL,
	[Twitter] [nvarchar](450) NULL,
	[Youtube] [nvarchar](450) NULL,
	[Linkedin] [nvarchar](450) NULL,
	[Instagram] [nvarchar](450) NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_WebsiteSetting] PRIMARY KEY CLUSTERED 
(
	[WebId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230422015357_InitialCreate', N'7.0.5')
GO
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (1, 0, N'Current Assets', N'1', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (2, 0, N'Cash and Cash Equivalents', N'2', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (3, 0, N'Non Current Assets', N'3', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (4, 0, N'Fixed Assets', N'4', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (5, 1, N'Accounts Receivable', N'5', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (6, 1, N'Employee Advance', N'6', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (7, 1, N'Prepaid Expenses', N'7', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (8, 1, N'Inventory Asset', N'8', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (9, 1, N'Advance Tax', N'9', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (10, 2, N'Petty Cash', N'10', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (11, 2, N'Bank Account', N'11', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (12, 4, N'Furniture and Equipment', N'12', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (13, 4, N'Accumulated depreciation', N'13', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (14, 0, N'Current Liabilities', N'14', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (15, 0, N'Non-Current Liabilities', N'15', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (16, 14, N'Accounts Payable', N'16', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (17, 14, N'Unearned Revenue', N'17', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (18, 14, N'Opening Balance Adjustments', N'18', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (19, 14, N'Employee Reimbursements', N'19', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (20, 14, N'Rounding', N'20', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (21, 14, N'Sales Tax', N'21', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (22, 14, N'Sales Tax Payable', N'22', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (23, 0, N'Equity', N'23', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (24, 23, N'Acc. Other Comprehensive Income', N'24', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (25, 23, N'Opening Balance Equity', N'25', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (26, 23, N'Owner''s Equity', N'26', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (27, 23, N'Paid-in Capital', N'27', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (28, 23, N'Retained Earnings', N'28', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (29, 23, N'Capital Stock', N'29', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (30, 0, N'Cost of Sales', N'30', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (31, 0, N'Non-Operating Expenses', N'31', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (32, 0, N'Operating Expenses', N'32', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (33, 30, N'Cost of Goods Sold', N'33', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (34, 31, N'Exchange Gain or Loss', N'34', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (35, 31, N'Uncategorized', N'35', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (36, 31, N'Depreciation Expense', N'36', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (37, 31, N'Other Expenses', N'37', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (38, 32, N'Office Supplies', N'38', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (39, 32, N'Lodging', N'39', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (40, 32, N'Advertising And Marketing', N'40', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (41, 32, N'Bank Fees and Charges', N'41', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (42, 32, N'Credit Card Charges', N'42', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (43, 32, N'Travel Expense', N'43', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (44, 32, N'Telephone Expense', N'44', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (45, 32, N'Automobile Expense', N'45', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (46, 32, N'Rent Expense', N'46', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (47, 32, N'Printing and Stationery', N'47', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (48, 32, N'Salaries and Employee Wages', N'48', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (49, 32, N'Repairs and Maintenance', N'49', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (50, 0, N'Income', N'50', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (51, 0, N'Other Income', N'51', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (52, 0, N'Other Income', N'52', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (53, 51, N'Other Charges', N'53', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (54, 51, N'Sales', N'54', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (55, 51, N'General Income', N'55', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (56, 51, N'Interest Income', N'56', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (57, 51, N'Late Fee Income', N'57', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (58, 51, N'Shipping Charge', N'58', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[A] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (59, 51, N'Discount', N'59', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
GO
SET IDENTITY_INSERT [dbo].[AccountLedger] ON 

INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (1, 0, N'Current Assets', N'1', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (2, 0, N'Cash and Cash Equivalents', N'2', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (3, 0, N'Non Current Assets', N'3', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (4, 0, N'Fixed Assets', N'4', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (5, 1, N'Accounts Receivable', N'5', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (6, 1, N'Employee Advance', N'6', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (7, 1, N'Prepaid Expenses', N'7', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (8, 1, N'Inventory Asset', N'8', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (9, 1, N'Advance Tax', N'9', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (10, 2, N'Petty Cash', N'10', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (11, 2, N'Bank Account', N'11', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (12, 4, N'Furniture and Equipment', N'12', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Assets', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (13, 4, N'Accumulated depreciation', N'13', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (14, 0, N'Current Liabilities', N'14', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (15, 0, N'Non-Current Liabilities', N'15', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (16, 14, N'Accounts Payable', N'16', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (17, 14, N'Unearned Revenue', N'17', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (18, 14, N'Opening Balance Adjustments', N'18', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (19, 14, N'Employee Reimbursements', N'19', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (20, 14, N'Rounding', N'20', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (21, 14, N'Sales Tax', N'21', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (22, 14, N'Tax Payable', N'22', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Liabilities', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (23, 0, N'Equity', N'23', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (24, 23, N'Acc. Other Comprehensive Income', N'24', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (25, 23, N'Opening Balance Equity', N'25', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (26, 23, N'Owner''s Equity', N'26', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (27, 23, N'Paid-in Capital', N'27', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (28, 23, N'Retained Earnings', N'28', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (29, 23, N'Capital Stock', N'29', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Equity', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (30, 0, N'Cost of Sales', N'30', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (31, 0, N'Non-Operating Expenses', N'31', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (32, 0, N'Operating Expenses', N'32', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (33, 30, N'Cost of Goods Sold', N'33', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (34, 31, N'Exchange Gain or Loss', N'34', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (35, 31, N'Uncategorized', N'35', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (36, 31, N'Depreciation Expense', N'36', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (37, 31, N'Other Expenses', N'37', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (38, 32, N'Office Supplies', N'38', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (39, 32, N'Lodging', N'39', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (40, 32, N'Advertising And Marketing', N'40', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (41, 32, N'Bank Fees and Charges', N'41', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (42, 32, N'Credit Card Charges', N'42', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (43, 32, N'Travel Expense', N'43', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (44, 32, N'Telephone Expense', N'44', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (45, 32, N'Automobile Expense', N'45', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (46, 32, N'Rent Expense', N'46', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (47, 32, N'Printing and Stationery', N'47', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (48, 32, N'Salaries and Employee Wages', N'48', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (49, 32, N'Repairs and Maintenance', N'49', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (50, 0, N'Income', N'50', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (51, 0, N'Other Income', N'51', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (52, 50, N'Other Charges', N'52', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (53, 50, N'Sales', N'53', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (54, 50, N'General Income', N'54', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (55, 50, N'Interest Income', N'55', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (56, 50, N'Late Fee Income', N'56', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (57, 50, N'Shipping Charge', N'57', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (58, 50, N'Discount Received', N'58', CAST(0.00 AS Decimal(18, 2)), 1, N'Cr', N'Income', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AccountLedger] ([LedgerId], [GroupUnder], [LedgerName], [LedgerCode], [OpeningBalance], [IsDefault], [CrOrDr], [Type], [AccountName], [AccountNo], [TenantId], [AddedDate], [ModifyDate]) VALUES (59, 31, N'Discount Allowed', N'37', CAST(0.00 AS Decimal(18, 2)), 1, N'Dr', N'Expenses', N'', N'', N'0', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[AccountLedger] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'49ee346b-0c05-4d11-bad6-1799c7720217', N'SuperAdmin', N'SUPERADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7ae2819f-0e40-410c-a21b-c3f2d932ac2d', N'Company', N'COMPANY', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8cc94eeb-c19b-4a34-8c7a-8f0c3d484de2', N'User', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c4cf94d2-6a96-48cf-bcce-f8ace560e2db', N'Employee', N'Employee', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fac5a157-d958-436e-b82e-b8eb3e4a2375', N'Accountant', N'ACCOUNTANT', NULL)
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1047, N'24bc81fe-f108-4c2b-af86-92c8ca41e2e0', N'tenantId', N'24bc81fe-f108-4c2b-af86-92c8ca41e2e0')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1063, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', N'tenantId', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2069, N'7cb6ae3c-04a6-4476-8fb7-fb92f081a937', N'tenantId', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2071, N'338c3b1c-e791-4397-bce0-1750e7ffc4c2', N'tenantId', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2072, N'b7d74280-aa84-444c-bccf-273b567e7b73', N'tenantId', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'24bc81fe-f108-4c2b-af86-92c8ca41e2e0', N'49ee346b-0c05-4d11-bad6-1799c7720217')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', N'7ae2819f-0e40-410c-a21b-c3f2d932ac2d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7cb6ae3c-04a6-4476-8fb7-fb92f081a937', N'8cc94eeb-c19b-4a34-8c7a-8f0c3d484de2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'338c3b1c-e791-4397-bce0-1750e7ffc4c2', N'c4cf94d2-6a96-48cf-bcce-f8ace560e2db')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b7d74280-aa84-444c-bccf-273b567e7b73', N'fac5a157-d958-436e-b82e-b8eb3e4a2375')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Name], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'24bc81fe-f108-4c2b-af86-92c8ca41e2e0', N'superadmin@gmail.com', N'SUPERADMIN@GMAIL.COM', N'Super Admin', N'superadmin@gmail.com', N'SUPERADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEPg/WdFm7JJrDIczSWENILFO4wdwgJmgysLsgS/tR5l8c/T8lhvuNtuLLWkW8SXclQ==', N'GLRBPEHNHRCMIZON2F62EZJY54FKCZ6C', N'ed1c68b8-ada5-49a5-838a-b2b587bf0479', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Name], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'338c3b1c-e791-4397-bce0-1750e7ffc4c2', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', N'employee', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHKXqkXF7aIMMfaBQBKwNBCsDKmxhkLoMRB4cBpTB9U0S2Di0qBpI+YrGI7XNu5htA==', N'4JYMUKUS6OHB7YZ4Q2SM3Z3HICEYO5D6', N'93b015d4-a26a-45a4-b060-983d160e8999', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Name], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', N'company@gmail.com', N'COMPANY@GMAIL.COM', N'Prathana Innovation Pvt Ltd.', N'company@gmail.com', N'COMPANY@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENpEiHxvrdMLZZ9lyf5jDkiKnSVSFdd7HDNHYCX9k1EORX7/WYS7NIv48gxkQ32avw==', N'EGB2DM665P2MY3LAK6HTVEQI2UNWP6HK', N'398c94c0-dc11-481c-8c5f-bfa7edf720a1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Name], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7cb6ae3c-04a6-4476-8fb7-fb92f081a937', N'user@gmail.com', N'USER@GMAIL.COM', N'user', N'user@gmail.com', N'USER@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEItwLjoE7Nb/IeAC6Y40fx0/N44YldtvryQrmnxCDv6m/6QcNyPSQHY17mQKfUxXTQ==', N'F7PAYDGY2KYUJ6IX3L7V2PBIHTUPES6R', N'41e70eaa-0be4-4c32-8ac2-40c46e697019', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Name], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b7d74280-aa84-444c-bccf-273b567e7b73', N'accountant@gmail.com', N'ACCOUNTANT@GMAIL.COM', N'accountant', N'accountant@gmail.com', N'ACCOUNTANT@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAaKlCeFxUGm+LPxTetsptIZLYGsMR0y0VLvL8JFonTi26ow8neEOxFTSgSQz9iU7Q==', N'HCTIMLLCSLEXCXGAT3YVE4LGQCLA7NIW', N'61c0054e-332a-4e29-8117-23d1a58435bb', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoriesId], [CategoryName], [Image], [TenantId], [AddedDate], [ModifyDate]) VALUES (106, N'Fashion', N'', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', CAST(N'2023-06-29T03:10:14.7752938' AS DateTime2), NULL)
INSERT [dbo].[Categories] ([CategoriesId], [CategoryName], [Image], [TenantId], [AddedDate], [ModifyDate]) VALUES (107, N'Electronices', N'', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', CAST(N'2023-06-29T03:10:23.4462147' AS DateTime2), NULL)
INSERT [dbo].[Categories] ([CategoriesId], [CategoryName], [Image], [TenantId], [AddedDate], [ModifyDate]) VALUES (108, N'Grocery', N'', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', CAST(N'2023-06-29T03:10:29.6194653' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [PhoneNo], [Email], [City], [CountryName], [TaxId], [TimeZoneId], [DateFormat], [CurrencyId], [StartDate], [FinancialYearId], [Website], [Logo], [TenantId], [AddedDate], [ModifyDate]) VALUES (1025, N'Prathana Innovation Pvt Ltd', N'Birendranagar', N'', N'company@gmail.com', N'Surkhet', N'Nepal', N'10101', 1, N'MM-DD-YYYY', 1, CAST(N'2023-06-29T02:58:30.783' AS DateTime), 0, N'prathanainnovation.com', N'data:image/png;base64,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', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', NULL, CAST(N'2023-06-29T03:01:47.4239752' AS DateTime2))
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [PhoneNo], [Email], [City], [CountryName], [TaxId], [TimeZoneId], [DateFormat], [CurrencyId], [StartDate], [FinancialYearId], [Website], [Logo], [TenantId], [AddedDate], [ModifyDate]) VALUES (1026, N'Company', N'', N'', N'dreamer@gmail.com', N'', N'', N'', 1, N'MM-DD-YYYY', 1, CAST(N'2023-07-04T06:17:59.900' AS DateTime), 0, N'', N'', N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb', CAST(N'2023-07-04T06:17:59.8991551' AS DateTime2), NULL)
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [PhoneNo], [Email], [City], [CountryName], [TaxId], [TimeZoneId], [DateFormat], [CurrencyId], [StartDate], [FinancialYearId], [Website], [Logo], [TenantId], [AddedDate], [ModifyDate]) VALUES (2026, N'ssdjlsjf', N'', N'', N'lfj@gmail.com', N'', N'', N'', 1, N'MM-DD-YYYY', 1, CAST(N'2023-07-05T16:35:46.377' AS DateTime), 0, N'', N'', N'5c638a45-71e1-49e4-bdb3-2419cb8c26b8', CAST(N'2023-07-05T16:35:46.3771831' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (1, N'Nepal     ')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (2, N'USA       ')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (3, N'India     ')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (7, N'United Kingdom')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (8, N'Bangladesh')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (9, N'Pakistan  ')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (10, N'Srilanka  ')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (11, N'Saudi Arabia')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (12, N'France')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (13, N'South Korea')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (14, N'China')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (15, N'Jerman')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (16, N'Iraq')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (17, N'Somalia')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (18, N'Kenya')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (19, N'Philipines')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (20, N'Thailand')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (21, N'Indonesia')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (22, N'Espn')
INSERT [dbo].[Country] ([CountryId], [Name]) VALUES (23, N'Egypt')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 

INSERT [dbo].[Coupons] ([CouponId], [Name], [Discount], [Limit], [Code]) VALUES (1, N'FreeCoupon', CAST(100.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'BPPP')
INSERT [dbo].[Coupons] ([CouponId], [Name], [Discount], [Limit], [Code]) VALUES (2, N'50 % Discount', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), N'PPPPPPPPPP')
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[Currency] ON 

INSERT [dbo].[Currency] ([CurrencyId], [CurrencySymbol], [CurrencyName]) VALUES (1, N'USD', N'USA')
INSERT [dbo].[Currency] ([CurrencyId], [CurrencySymbol], [CurrencyName]) VALUES (2, N'Nrs', N'Nepal')
INSERT [dbo].[Currency] ([CurrencyId], [CurrencySymbol], [CurrencyName]) VALUES (3, N'Rs', N'India')
INSERT [dbo].[Currency] ([CurrencyId], [CurrencySymbol], [CurrencyName]) VALUES (4, N'BDT', N'Bangladesh')
INSERT [dbo].[Currency] ([CurrencyId], [CurrencySymbol], [CurrencyName]) VALUES (6, N'GDB', N'UK')
SET IDENTITY_INSERT [dbo].[Currency] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerSupplier] ON 

INSERT [dbo].[CustomerSupplier] ([CustomerSupplierId], [Name], [WorkPhone], [Mobile], [Email], [CountryId], [City], [Address], [CreditLimit], [CompanyName], [Website], [SameasShipping], [Type], [OpeningBalance], [DrCr], [Date], [TenantId], [AddedDate], [ModifyDate]) VALUES (15, N'Customer 01', N'9800000', N'', N'customer@gmail.com', 1, N'Surkhet', N'Birendranagar', CAST(0.00 AS Decimal(18, 2)), N'kdff', N'', 1, N'Customer', CAST(0 AS Decimal(18, 0)), N'Dr', CAST(N'2023-07-05T10:38:43.480' AS DateTime), N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', NULL, NULL)
INSERT [dbo].[CustomerSupplier] ([CustomerSupplierId], [Name], [WorkPhone], [Mobile], [Email], [CountryId], [City], [Address], [CreditLimit], [CompanyName], [Website], [SameasShipping], [Type], [OpeningBalance], [DrCr], [Date], [TenantId], [AddedDate], [ModifyDate]) VALUES (16, N'Purchase Name', N'9800000', N'', N'purchase@gmail.com', 1, N'Surkhet', N'Birendranagar', CAST(0.00 AS Decimal(18, 2)), N'', N'', 1, N'Supplier', CAST(0 AS Decimal(18, 0)), N'Dr', CAST(N'2023-07-05T10:40:09.863' AS DateTime), N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', NULL, NULL)
SET IDENTITY_INSERT [dbo].[CustomerSupplier] OFF
GO
SET IDENTITY_INSERT [dbo].[EmailSetting] ON 

INSERT [dbo].[EmailSetting] ([EmailSettingId], [MailHost], [MailPort], [MailAddress], [Password], [MailFromname], [EncryptionName], [TenantId]) VALUES (1, N'smtp.gmail.com', 587, N'dreamerbryan2043@gmail.com', N'prrphbppjninexxv', N'dreamerbryan2043@gmail.com', N'Encryption', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
SET IDENTITY_INSERT [dbo].[EmailSetting] OFF
GO
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([FeaturesId], [Title], [Description]) VALUES (1, N'Crm Management', N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[Features] ([FeaturesId], [Title], [Description]) VALUES (2, N'Stock Management', N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[Features] ([FeaturesId], [Title], [Description]) VALUES (3, N'Inventory Management', N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[Features] ([FeaturesId], [Title], [Description]) VALUES (4, N'Account Management', N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
SET IDENTITY_INSERT [dbo].[Features] OFF
GO
SET IDENTITY_INSERT [dbo].[FinancialYear] ON 

INSERT [dbo].[FinancialYear] ([FinancialYearId], [FromDate], [ToDate], [TenantId], [FiscalYear], [AddedDate], [ModifyDate]) VALUES (1015, CAST(N'2023-06-29T02:58:30.7843710' AS DateTime2), CAST(N'2024-06-28T02:58:31.1546818' AS DateTime2), N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', N'', CAST(N'2023-06-29T08:43:31.1550522' AS DateTime2), NULL)
INSERT [dbo].[FinancialYear] ([FinancialYearId], [FromDate], [ToDate], [TenantId], [FiscalYear], [AddedDate], [ModifyDate]) VALUES (1016, CAST(N'2023-07-04T06:17:59.8991036' AS DateTime2), CAST(N'2024-07-03T06:17:59.9906141' AS DateTime2), N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb', N'', CAST(N'2023-07-04T12:02:59.9908052' AS DateTime2), NULL)
INSERT [dbo].[FinancialYear] ([FinancialYearId], [FromDate], [ToDate], [TenantId], [FiscalYear], [AddedDate], [ModifyDate]) VALUES (2016, CAST(N'2023-07-05T16:35:46.3771822' AS DateTime2), CAST(N'2024-07-04T16:35:46.4726227' AS DateTime2), N'5c638a45-71e1-49e4-bdb3-2419cb8c26b8', N'', CAST(N'2023-07-05T22:20:46.4728326' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[FinancialYear] OFF
GO
SET IDENTITY_INSERT [dbo].[GeneralSetting] ON 

INSERT [dbo].[GeneralSetting] ([GeneralId], [ShowCurrency], [NegativeCash], [NegativeStock], [StockCalculationMode], [CreditLimit], [Discount], [VatOnPurchase], [VatOnSales], [TenantId]) VALUES (4, 1, 1, 0, 0, 0, 0, 0, 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
SET IDENTITY_INSERT [dbo].[GeneralSetting] OFF
GO
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (1, N'Opening Balance', 0, N'1', N'', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (2, N'Opening Stock', 0, N'1', N'', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (3, N'Customer Payment', 0, N'1', N'Rec', NULL, N'1', N'1', N'2', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (4, N'Supplier Payment', 0, N'1', N'Pay', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (5, N'Journal Voucher', 0, N'1', N'Jou', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (6, N'Bill', 0, N'1', N'Pur', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (7, N'Debit Notes', 0, N'1', N'PurReturn', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (8, N'Sales Quotation', 0, N'1', N'SalesQuo', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (9, N'Sales Invoice', 0, N'1', N'Sales', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (10, N'Credit Notes', 0, N'1', N'SalesReturn', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (11, N'Expenses Voucher', 0, N'1', N'Expenses', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (12, N'Salary Voucher', 0, N'1', N'Sv', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (13, N'Advance Payment', 0, N'1', N'Adv', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
INSERT [dbo].[InvoiceSetting] ([VoucherTypeId], [VoucherTypeName], [StartIndex], [Prefix], [Suffix], [CompanyId], [PONumber], [EwayBillNo], [VechileNo], [ShowDiscount], [ShowTax], [ShowBarcode], [IsActive], [TenantId]) VALUES (14, N'DailySalary Voucher', 0, N'1', N'Daily', NULL, N'1', N'', N'', NULL, 1, 1, 1, N'True')
GO
SET IDENTITY_INSERT [dbo].[PaymentMode] ON 

INSERT [dbo].[PaymentMode] ([PaymentmodeId], [Name]) VALUES (1, N'Cash')
INSERT [dbo].[PaymentMode] ([PaymentmodeId], [Name]) VALUES (2, N'Bank')
INSERT [dbo].[PaymentMode] ([PaymentmodeId], [Name]) VALUES (3, N'Credit')
INSERT [dbo].[PaymentMode] ([PaymentmodeId], [Name]) VALUES (4, N'Online Payment')
SET IDENTITY_INSERT [dbo].[PaymentMode] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentType] ON 

INSERT [dbo].[PaymentType] ([PaymentId], [Name], [IsActive]) VALUES (1, N'Manual ', 1)
INSERT [dbo].[PaymentType] ([PaymentId], [Name], [IsActive]) VALUES (2, N'Bank Transfer', 1)
INSERT [dbo].[PaymentType] ([PaymentId], [Name], [IsActive]) VALUES (3, N'Paypal', 1)
INSERT [dbo].[PaymentType] ([PaymentId], [Name], [IsActive]) VALUES (4, N'Stripe', 1)
INSERT [dbo].[PaymentType] ([PaymentId], [Name], [IsActive]) VALUES (5, N'Paystack', 1)
INSERT [dbo].[PaymentType] ([PaymentId], [Name], [IsActive]) VALUES (6, N'Paytm', 1)
INSERT [dbo].[PaymentType] ([PaymentId], [Name], [IsActive]) VALUES (7, N'RazorPay', 1)
INSERT [dbo].[PaymentType] ([PaymentId], [Name], [IsActive]) VALUES (8, N'Skrill', 1)
SET IDENTITY_INSERT [dbo].[PaymentType] OFF
GO
SET IDENTITY_INSERT [dbo].[PlanMaster] ON 

INSERT [dbo].[PlanMaster] ([PlanId], [Name], [Price], [Duration], [MaximumUser], [MaximumCustomer], [MaximumSupplier], [MaximumProduct], [MaximumInvoice], [Description], [Crm], [Project], [Hrm], [Account], [Pos], [AddedDate], [ModifyDate]) VALUES (1, N'Free Plan', CAST(0.00 AS Decimal(18, 2)), N'Lifetime', 5, 200, 200, 200, 200, N'Free Plan', 1, 1, 1, 1, 1, CAST(N'2023-06-13T18:01:28.377' AS DateTime), CAST(N'2023-06-29T02:59:13.613' AS DateTime))
INSERT [dbo].[PlanMaster] ([PlanId], [Name], [Price], [Duration], [MaximumUser], [MaximumCustomer], [MaximumSupplier], [MaximumProduct], [MaximumInvoice], [Description], [Crm], [Project], [Hrm], [Account], [Pos], [AddedDate], [ModifyDate]) VALUES (2, N'Platinum', CAST(500.00 AS Decimal(18, 2)), N'Peryear', 40, 40, 40, 2, 200, N'Platinum', 1, 1, 1, 1, 1, CAST(N'2023-06-13T18:29:52.600' AS DateTime), CAST(N'2023-07-05T16:30:34.657' AS DateTime))
INSERT [dbo].[PlanMaster] ([PlanId], [Name], [Price], [Duration], [MaximumUser], [MaximumCustomer], [MaximumSupplier], [MaximumProduct], [MaximumInvoice], [Description], [Crm], [Project], [Hrm], [Account], [Pos], [AddedDate], [ModifyDate]) VALUES (3, N'Gold', CAST(600.00 AS Decimal(18, 2)), N'Peryear', 20, 20, 20, 20, 20, N'Gold', 1, 1, 1, 1, 1, CAST(N'2023-06-15T03:40:56.140' AS DateTime), CAST(N'2023-07-05T16:30:31.587' AS DateTime))
INSERT [dbo].[PlanMaster] ([PlanId], [Name], [Price], [Duration], [MaximumUser], [MaximumCustomer], [MaximumSupplier], [MaximumProduct], [MaximumInvoice], [Description], [Crm], [Project], [Hrm], [Account], [Pos], [AddedDate], [ModifyDate]) VALUES (4, N'Silver', CAST(800.00 AS Decimal(18, 2)), N'Peryear', 40, 40, 40, 40, 40, N'Silver', 1, 1, 1, 1, 1, CAST(N'2023-06-15T03:41:26.120' AS DateTime), NULL)
INSERT [dbo].[PlanMaster] ([PlanId], [Name], [Price], [Duration], [MaximumUser], [MaximumCustomer], [MaximumSupplier], [MaximumProduct], [MaximumInvoice], [Description], [Crm], [Project], [Hrm], [Account], [Pos], [AddedDate], [ModifyDate]) VALUES (5, N'slldjf', CAST(0.00 AS Decimal(18, 2)), N'Lifetime', 0, 0, 0, 0, 0, N'', 1, 1, 1, 1, 1, CAST(N'2023-07-05T16:30:42.317' AS DateTime), CAST(N'2023-07-05T16:30:46.967' AS DateTime))
SET IDENTITY_INSERT [dbo].[PlanMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[PlanUpgrade] ON 

INSERT [dbo].[PlanUpgrade] ([PlanUpgradeId], [PlanId], [OrderNo], [IsActive], [TenantId]) VALUES (15, 1, N'47ffc021dcfe4143a887766377c9a330', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
SET IDENTITY_INSERT [dbo].[PlanUpgrade] OFF
GO
SET IDENTITY_INSERT [dbo].[Priviliage] ON 

INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1, N'Items', N'User', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (2, N'Sales', N'User', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (3, N'Purchase', N'User', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (4, N'Payroll', N'User', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (5, N'Accounting', N'User', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (6, N'ManageUsers', N'User', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (7, N'Setting', N'User', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (8, N'Reports', N'User', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (9, N'Items', N'Employee', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (10, N'Sales', N'Employee', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (11, N'Purchase', N'Employee', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (12, N'Payroll', N'Employee', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (13, N'Accounting', N'Employee', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (14, N'ManageUsers', N'Employee', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (15, N'Setting', N'Employee', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (16, N'Reports', N'Employee', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (17, N'Items', N'Accountant', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (18, N'Sales', N'Accountant', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (19, N'Purchase', N'Accountant', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (20, N'Payroll', N'Accountant', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (21, N'Accounting', N'Accountant', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (22, N'ManageUsers', N'Accountant', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (23, N'Setting', N'Accountant', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (24, N'Reports', N'Accountant', 1, N'0')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1051, N'Items', N'User', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1052, N'Sales', N'User', 0, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1053, N'Purchase', N'User', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1054, N'Payroll', N'User', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1055, N'Accounting', N'User', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1056, N'ManageUsers', N'User', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1057, N'Setting', N'User', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1058, N'Reports', N'User', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1059, N'Items', N'Employee', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1060, N'Sales', N'Employee', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1061, N'Purchase', N'Employee', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1062, N'Payroll', N'Employee', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1063, N'Accounting', N'Employee', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1064, N'ManageUsers', N'Employee', 0, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1065, N'Setting', N'Employee', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1066, N'Reports', N'Employee', 0, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1067, N'Items', N'Accountant', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1068, N'Sales', N'Accountant', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1069, N'Purchase', N'Accountant', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1070, N'Payroll', N'Accountant', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1071, N'Accounting', N'Accountant', 0, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1072, N'ManageUsers', N'Accountant', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1073, N'Setting', N'Accountant', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1074, N'Reports', N'Accountant', 1, N'8b8053b2-1bf3-419e-833e-0ad0273ce1cb')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1075, N'Items', N'User', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1076, N'Sales', N'User', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1077, N'Purchase', N'User', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1078, N'Payroll', N'User', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1079, N'Accounting', N'User', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1080, N'ManageUsers', N'User', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1081, N'Setting', N'User', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1082, N'Reports', N'User', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1083, N'Items', N'Employee', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1084, N'Sales', N'Employee', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1085, N'Purchase', N'Employee', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1086, N'Payroll', N'Employee', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1087, N'Accounting', N'Employee', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1088, N'ManageUsers', N'Employee', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1089, N'Setting', N'Employee', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1090, N'Reports', N'Employee', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1091, N'Items', N'Accountant', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1092, N'Sales', N'Accountant', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1093, N'Purchase', N'Accountant', 0, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1094, N'Payroll', N'Accountant', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1095, N'Accounting', N'Accountant', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1096, N'ManageUsers', N'Accountant', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1097, N'Setting', N'Accountant', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[Priviliage] ([PriviliageId], [Menu], [RoleName], [IsActive], [TenantId]) VALUES (1098, N'Reports', N'Accountant', 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
SET IDENTITY_INSERT [dbo].[Priviliage] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [Snno], [ProductCode], [ProductName], [CategoriesId], [BrandId], [UnitId], [TaxId], [PurchaseRate], [SalesRate], [PurchaseAccount], [SalesAccount], [Narration], [ItemType], [IsActive], [Barcode], [Image], [TenantId], [OpeningStock], [ExiparyDate], [AddedDate], [ModifyDate]) VALUES (15, N'1', N'PRO001', N'Item 01', 106, 0, 7, 53, CAST(90.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 33, 53, N'', N'Goods', 1, N'', N'', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', 0, CAST(N'2023-07-04T05:57:45.1501605' AS DateTime2), CAST(N'2023-07-04T05:58:00.6782981' AS DateTime2), NULL)
INSERT [dbo].[Product] ([ProductId], [Snno], [ProductCode], [ProductName], [CategoriesId], [BrandId], [UnitId], [TaxId], [PurchaseRate], [SalesRate], [PurchaseAccount], [SalesAccount], [Narration], [ItemType], [IsActive], [Barcode], [Image], [TenantId], [OpeningStock], [ExiparyDate], [AddedDate], [ModifyDate]) VALUES (1015, N'2', N'PRO002', N'Item 02', 106, 0, 7, 0, CAST(100.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 33, 53, N'', N'Goods', 1, N'', N'', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', 0, CAST(N'2023-07-04T13:07:44.0909165' AS DateTime2), CAST(N'2023-07-04T13:07:59.3681070' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([ProjectId], [ProjectName], [TenantId]) VALUES (2, N'Project 01', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[Tax] ON 

INSERT [dbo].[Tax] ([TaxId], [TaxName], [Rate], [IsActive], [TenantId], [AddedDate], [ModifyDate]) VALUES (53, N'Sales Tax', CAST(10.00 AS Decimal(18, 2)), 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', CAST(N'2023-06-29T03:03:22.8933272' AS DateTime2), NULL)
INSERT [dbo].[Tax] ([TaxId], [TaxName], [Rate], [IsActive], [TenantId], [AddedDate], [ModifyDate]) VALUES (54, N'Purchase Tax', CAST(12.00 AS Decimal(18, 2)), 1, N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', CAST(N'2023-06-29T03:03:33.7509631' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Tax] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeZones] ON 

INSERT [dbo].[TimeZones] ([TimeZoneId], [Name]) VALUES (1, N'Asia/Calcutta')
INSERT [dbo].[TimeZones] ([TimeZoneId], [Name]) VALUES (2, N'Europe/Andorra')
INSERT [dbo].[TimeZones] ([TimeZoneId], [Name]) VALUES (3, N'Asia/Dubai')
INSERT [dbo].[TimeZones] ([TimeZoneId], [Name]) VALUES (4, N'Asia/Kabul')
SET IDENTITY_INSERT [dbo].[TimeZones] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([UnitId], [UnitName], [TenantId], [AddedDate], [ModifyDate]) VALUES (7, N'Piece', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', CAST(N'2023-06-29T03:03:03.3916082' AS DateTime2), NULL)
INSERT [dbo].[Unit] ([UnitId], [UnitName], [TenantId], [AddedDate], [ModifyDate]) VALUES (8, N'Kg', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', CAST(N'2023-06-29T03:03:08.4206484' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[UserCompany] ON 

INSERT [dbo].[UserCompany] ([UserCompId], [Name], [RoleName], [Email], [TenantId], [UserId]) VALUES (1, N'Prathana Innovation Pvt Ltd.', N'Company', N'company@gmail.com', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
INSERT [dbo].[UserCompany] ([UserCompId], [Name], [RoleName], [Email], [TenantId], [UserId]) VALUES (7, N'user', N'User', N'user@gmail.com', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', N'7cb6ae3c-04a6-4476-8fb7-fb92f081a937')
INSERT [dbo].[UserCompany] ([UserCompId], [Name], [RoleName], [Email], [TenantId], [UserId]) VALUES (8, N'employee', N'Employee', N'employee@gmail.com', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', N'338c3b1c-e791-4397-bce0-1750e7ffc4c2')
INSERT [dbo].[UserCompany] ([UserCompId], [Name], [RoleName], [Email], [TenantId], [UserId]) VALUES (9, N'accountant', N'Accountant', N'accountant@gmail.com', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14', N'b7d74280-aa84-444c-bccf-273b567e7b73')
SET IDENTITY_INSERT [dbo].[UserCompany] OFF
GO
SET IDENTITY_INSERT [dbo].[Warehouse] ON 

INSERT [dbo].[Warehouse] ([WarehouseId], [Name], [Mobile], [Country], [City], [Email], [TenantId]) VALUES (1002, N'Warehouse', N'', N'', N'', N'', N'5db169ea-4ef2-4bc8-9fa4-39d8a018ef14')
SET IDENTITY_INSERT [dbo].[Warehouse] OFF
GO
INSERT [dbo].[WebsiteSetting] ([WebId], [Name], [Title], [Description], [Footer], [Email], [CopyRight], [NoofDecimal], [Facebook], [Twitter], [Youtube], [Linkedin], [Instagram], [Logo]) VALUES (1, N'Prathana Innovation Pvt Ltd.', N'', N'', N'', N'prathanahamal@gmail.com', N'', 2, N'', N'', N'', N'', N'', N'data:image/png;base64,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')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Brand_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_Brand_TenantId] ON [dbo].[Brand]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_TenantId] ON [dbo].[Categories]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EmailSetting_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_EmailSetting_TenantId] ON [dbo].[EmailSetting]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ExpenseMaster_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_ExpenseMaster_TenantId] ON [dbo].[ExpenseMaster]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ExpensesDetails_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_ExpensesDetails_TenantId] ON [dbo].[ExpensesDetails]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FinancialYear_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_FinancialYear_TenantId] ON [dbo].[FinancialYear]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_GeneralSetting_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_GeneralSetting_TenantId] ON [dbo].[GeneralSetting]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_IncomeMaster_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_IncomeMaster_TenantId] ON [dbo].[IncomeMaster]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_InvoiceSetting_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceSetting_TenantId] ON [dbo].[InvoiceSetting]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_JournalDetails_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_JournalDetails_TenantId] ON [dbo].[JournalDetails]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_JournalMaster_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_JournalMaster_TenantId] ON [dbo].[JournalMaster]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LedgerPosting_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_LedgerPosting_TenantId] ON [dbo].[LedgerPosting]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PaymentDetails_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetails_TenantId] ON [dbo].[PaymentDetails]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PaymentMaster_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentMaster_TenantId] ON [dbo].[PaymentMaster]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Product_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_Product_TenantId] ON [dbo].[Product]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PurchaseDetails_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_PurchaseDetails_TenantId] ON [dbo].[PurchaseDetails]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PurchaseMaster_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_PurchaseMaster_TenantId] ON [dbo].[PurchaseMaster]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PurchaseReturnDetails_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_PurchaseReturnDetails_TenantId] ON [dbo].[PurchaseReturnDetails]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PurchaseReturnMaster_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_PurchaseReturnMaster_TenantId] ON [dbo].[PurchaseReturnMaster]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ReceiptDetails_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_ReceiptDetails_TenantId] ON [dbo].[ReceiptDetails]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SalesDetails_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_SalesDetails_TenantId] ON [dbo].[SalesDetails]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SalesMaster_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_SalesMaster_TenantId] ON [dbo].[SalesMaster]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SalesQuotationDetails_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_SalesQuotationDetails_TenantId] ON [dbo].[SalesQuotationDetails]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SalesQuotationMaster_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_SalesQuotationMaster_TenantId] ON [dbo].[SalesQuotationMaster]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SalesReturnDetails_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_SalesReturnDetails_TenantId] ON [dbo].[SalesReturnDetails]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SalesReturnMaster_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_SalesReturnMaster_TenantId] ON [dbo].[SalesReturnMaster]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_StockPosting_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_StockPosting_TenantId] ON [dbo].[StockPosting]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Tax_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tax_TenantId] ON [dbo].[Tax]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Unit_TenantId]    Script Date: 7/6/2023 1:03:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_Unit_TenantId] ON [dbo].[Unit]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[AccountLedgerDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AccountLedgerDelete]
@LedgerId int
AS
IF NOT EXISTS(SELECT LedgerId from SalesDetails where LedgerId=@LedgerId)
IF NOT EXISTS(SELECT LedgerId from SalesReturnDetails where LedgerId=@LedgerId)
IF NOT EXISTS(SELECT LedgerId from PurchaseDetails where LedgerId=@LedgerId)
IF NOT EXISTS(SELECT LedgerId from PurchaseReturnDetails where LedgerId=@LedgerId)
IF NOT EXISTS(SELECT LedgerId from PaymentMaster where LedgerId=@LedgerId)
IF NOT EXISTS(SELECT LedgerId from ReceiptMaster where LedgerId=@LedgerId)
IF NOT EXISTS(SELECT LedgerId from LedgerPosting where LedgerId=@LedgerId)
IF NOT EXISTS(SELECT LedgerId from LedgerPosting where LedgerId=@LedgerId)
DELETE FROM AccountLedger where LedgerId=@LedgerId
GO
/****** Object:  StoredProcedure [dbo].[AccountTransaction]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AccountTransaction]
	@FromDate datetime,
	@ToDate datetime,
	@TenantId nvarchar(Max)

AS
SELECT        dbo.LedgerPosting.LedgerPostingId, dbo.LedgerPosting.Date, dbo.LedgerPosting.VoucherNo, dbo.LedgerPosting.Debit, dbo.LedgerPosting.Credit, dbo.AccountLedger.LedgerName
FROM            dbo.LedgerPosting INNER JOIN
                         dbo.AccountLedger ON dbo.LedgerPosting.LedgerId = dbo.AccountLedger.LedgerId
					  where LedgerPosting.Date between @fromDate and @toDate 
					  and
					   LedgerPosting.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[AdvancePaymentDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdvancePaymentDelete]
@AdvancePaymentId int,
@TenantId nvarchar(Max)
AS
DELETE FROM AdvancePayment where AdvancePaymentId=@AdvancePaymentId and TenantId=@TenantId
DELETE FROM LedgerPosting where DetailsId=@AdvancePaymentId and VoucherTypeId=13 and TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[AdvancePaymentReport]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdvancePaymentReport]
@FromDate datetime,
@ToDate datetime,
@EmployeeId int,
@YearMonth nvarchar(50),
@TenantId nvarchar(max)
AS
	
SELECT        dbo.Employee.EmployeeCode as EmploymeeCode, dbo.Employee.EmployeeName as EmploymeeName, dbo.AdvancePayment.YearMonth, dbo.AdvancePayment.Amount
FROM            dbo.AdvancePayment INNER JOIN
                         dbo.Employee ON dbo.AdvancePayment.EmployeeId = dbo.Employee.EmployeeId
WHERE     (AdvancePayment.Date BETWEEN @FromDate AND @ToDate)
AND Employee.EmployeeId=(case when @EmployeeId=0 then Employee.EmployeeId else @EmployeeId end)
AND AdvancePayment.YearMonth=(case when @YearMonth='All'then YearMonth else @YearMonth end)
AND AdvancePayment.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[AttendanceDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[AttendanceDelete]
	@DailyAttendanceMasterId int,
	@TenantId nvarchar(Max)
AS
DELETE FROM DailyAttendanceMaster where DailyAttendanceMasterId=@DailyAttendanceMasterId and TenantId=@TenantId
DELETE FROM DailyAttendanceDetails where DailyAttendanceMasterId=@DailyAttendanceMasterId and TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[BonusDeductionDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BonusDeductionDelete]
@BonusDeductionId int,
@TenantId nvarchar(Max)
AS
DELETE FROM BonusDeduction where BonusDeductionId=@BonusDeductionId and TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[BonusDeductionReport]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BonusDeductionReport]
	@FromDate datetime,
	@ToDate datetime,
	@EmployeeId int,
	@YearMonth nvarchar(50),
	@TenantId nvarchar(max)
	


AS


SELECT BD.EmployeeId,BD.YearMonth,E.EmployeeCode,E.EmployeeName, Convert(Decimal(18,2),BD.BonusAmount) AS BonusAmount,BD.Narration

FROM Employee AS E
INNER JOIN 
BonusDeduction AS BD ON E.employeeId=BD.employeeId

WHERE BD.date between @fromDate and @toDate
AND BD.EmployeeId=(case when @EmployeeId=0 then BD.EmployeeId else @EmployeeId end)
AND BD.YearMonth=(case when @YearMonth='All'then YearMonth else @YearMonth end)
AND BD.TenantId=@TenantId

GO
/****** Object:  StoredProcedure [dbo].[CustomerSupplierDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CustomerSupplierDelete]
@CustomerSupplierId int
AS
IF NOT EXISTS(SELECT CustomerSupplierId from SalesMaster where CustomerSupplierId=@CustomerSupplierId)
IF NOT EXISTS(SELECT CustomerSupplierId from SalesReturnMaster where CustomerSupplierId=@CustomerSupplierId)
IF NOT EXISTS(SELECT CustomerSupplierId from PurchaseMaster where CustomerSupplierId=CustomerSupplierId)
IF NOT EXISTS(SELECT CustomerSupplierId from PurchaseReturnMaster where CustomerSupplierId=@CustomerSupplierId)
DELETE FROM CustomerSupplier where CustomerSupplierId=@CustomerSupplierId
GO
/****** Object:  StoredProcedure [dbo].[EmployeeDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmployeeDelete]
@EmployeeId int,
@TenantId nvarchar(Max)
AS
IF NOT EXISTS(SELECT EmployeeId from AdvancePayment where EmployeeId=@EmployeeId and TenantId=@TenantId)
IF NOT EXISTS(SELECT EmployeeId from BonusDeduction where EmployeeId=@EmployeeId and TenantId=@TenantId)
IF NOT EXISTS(SELECT EmployeeId from MonthlySalaryDetails where EmployeeId=@EmployeeId and TenantId=@TenantId)
IF NOT EXISTS(SELECT EmployeeId from DailySalaryVoucherDetails where EmployeeId=@EmployeeId and TenantId=@TenantId)
DELETE FROM Employee where EmployeeId=@EmployeeId and TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[GetAttandanceDetails]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[GetAttandanceDetails]
@Narration nvarchar(max),
@EmployeeId int,
@TenantId nvarchar(MAX)
AS
SELECT        dbo.DailyAttendanceDetails.DailyAttendanceDetailsId, dbo.DailyAttendanceDetails.Status
FROM            dbo.DailyAttendanceMaster INNER JOIN
                         dbo.DailyAttendanceDetails ON dbo.DailyAttendanceMaster.DailyAttendanceMasterId = dbo.DailyAttendanceDetails.DailyAttendanceMasterId
where DailyAttendanceMaster.Narration=@Narration and DailyAttendanceDetails.EmployeeId=@EmployeeId AND DailyAttendanceMaster.TenantId=@TenantId

GO
/****** Object:  StoredProcedure [dbo].[ItemWisePurchase]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ItemWisePurchase]
	@FromDate datetime,
	@ToDate datetime,
	@ProductId int,
	@TenantId nvarchar(Max)

AS
SELECT   dbo.PurchaseMaster.PurchaseMasterId,  dbo.PurchaseMaster.VoucherNo,
 dbo.PurchaseMaster.Date, dbo.PurchaseMaster.Narration, dbo.PurchaseMaster.GrandTotal, dbo.PurchaseMaster.PaymentStatus, dbo.PurchaseMaster.Status, 
 dbo.PurchaseMaster.BillDiscount, dbo.PurchaseMaster.GrandTotal, dbo.PurchaseMaster.TotalTax,
                      dbo.PurchaseMaster.UserId
FROM         dbo.PurchaseMaster INNER JOIN
                      dbo.PurchaseDetails ON dbo.PurchaseMaster.PurchaseMasterId = dbo.PurchaseDetails.PurchaseMasterId 
					  where PurchaseMaster.date between @fromDate and @toDate 
					  and
                       (PurchaseDetails.ProductId=CASE WHEN @ProductId=0 THEN PurchaseDetails.ProductId ELSE @ProductId END)
					   and PurchaseMaster.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[JournalVoucherDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JournalVoucherDelete]
@JournalMasterId int,
@VoucherTypeId int,
@VoucherNo nvarchar(MAX),
@TenantId nvarchar(MAX)
AS
DELETE FROM JournalMaster where JournalMasterId=@JournalMasterId
DELETE FROM JournalDetails where JournalMasterId=@JournalMasterId
DELETE FROM LedgerPosting where VoucherTypeId=@VoucherTypeId and VoucherNo=@VoucherNo and TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[MonthlySalaryReport]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MonthlySalaryReport]
@FromDate datetime,
@ToDate datetime,
@EmployeeId int,
@YearMonth nvarchar(50),
@TenantId nvarchar(Max)
AS
	
SELECT     Employee.EmployeeName, Employee.EmployeeCode, SalaryVoucherMaster.YearMonth, CAST(SalaryVoucherDetails.Salary AS decimal(18, 2)) 
                      AS Salary
FROM         Employee INNER JOIN
                      SalaryVoucherDetails ON Employee.employeeId = SalaryVoucherDetails.employeeId INNER JOIN
                      SalaryVoucherMaster ON SalaryVoucherMaster.SalaryVoucherMasterId = SalaryVoucherDetails.SalaryVoucherMasterId
WHERE     (SalaryVoucherMaster.month BETWEEN @FromDate AND @ToDate)
AND Employee.EmployeeId=(case when @EmployeeId=0 then Employee.EmployeeId else @EmployeeId end)
AND SalaryVoucherMaster.YearMonth=(case when @YearMonth='All'then YearMonth else @YearMonth end)
AND SalaryVoucherMaster.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[MonthlySalarySettingsEmployeeViewAll]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MonthlySalarySettingsEmployeeViewAll]
	@YearMonth nvarchar(50),
	@TenantId nvarchar(max)
	AS
	
	SELECT  Employee.EmployeeId,Employee.EmployeeName, Employee.EmployeeCode, Employee.DefaultPackageId 
	,ISNULL(( SELECT  MonthlySalaryDetails.SalaryPackageId FROM         MonthlySalary INNER JOIN MonthlySalaryDetails 
	ON MonthlySalary.MonthlySalaryId = MonthlySalaryDetails.MonthlySalaryId 
	WHERE MonthlySalaryDetails.EmployeeId=Employee.EmployeeId AND MonthlySalary.YearMonth=@YearMonth AND MonthlySalary.TenantId=@TenantId ),Employee.DefaultPackageId) AS SalaryPackageId,
	(SELECT MonthlySalaryDetails.MonthlySalaryId FROM         MonthlySalary INNER JOIN  MonthlySalaryDetails 
	ON MonthlySalary.MonthlySalaryId = MonthlySalaryDetails.MonthlySalaryId
	WHERE MonthlySalaryDetails.EmployeeId=Employee.EmployeeId and MonthlySalary.YearMonth=@YearMonth AND MonthlySalary.TenantId=@TenantId) as MonthlySalaryId,
	(SELECT MonthlySalaryDetails.MonthlySalaryDetailsId FROM         MonthlySalaryDetails INNER JOIN  MonthlySalary 
	ON MonthlySalary.MonthlySalaryId = MonthlySalaryDetails.MonthlySalaryId
	WHERE MonthlySalaryDetails.EmployeeId=Employee.EmployeeId and MonthlySalary.YearMonth=@YearMonth AND MonthlySalary.TenantId=@TenantId) as MonthlySalaryDetailsId,
	(SELECT MonthlySalary.Narration FROM         MonthlySalary INNER JOIN  MonthlySalaryDetails 
	ON MonthlySalary.MonthlySalaryId = MonthlySalaryDetails.MonthlySalaryId
	WHERE MonthlySalaryDetails.EmployeeId=Employee.EmployeeId and MonthlySalary.YearMonth=@YearMonth AND MonthlySalary.TenantId=@TenantId) as Narration
	FROM         Employee
	WHERE Employee.	SalaryType='Monthly' AND Employee.IsActive='true'
GO
/****** Object:  StoredProcedure [dbo].[MonthlySalaryVoucherDetailsViewAll]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MonthlySalaryVoucherDetailsViewAll]
@monthYear NVARCHAR(max),
@TenantId nvarchar(MAX)
AS 
SELECT     MonthlySalary.MonthlySalaryId,SalaryPackage.SalaryPackageId,Employee.EmployeeId, dbo.Employee.EmployeeCode, dbo.Employee.EmployeeName, dbo.SalaryPackage.TotalAmount as Salary,
MonthlySalary.YearMonth
FROM            dbo.MonthlySalary INNER JOIN
                         dbo.MonthlySalaryDetails ON dbo.MonthlySalary.MonthlySalaryId = dbo.MonthlySalaryDetails.MonthlySalaryId INNER JOIN
                         dbo.Employee ON dbo.MonthlySalaryDetails.EmployeeId = dbo.Employee.EmployeeId INNER JOIN
                         dbo.SalaryPackage ON dbo.MonthlySalaryDetails.SalaryPackageId = dbo.SalaryPackage.SalaryPackageId
						 where Employee.SalaryType='Monthly' and MonthlySalary.YearMonth=@monthYear AND MonthlySalary.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PayableSummary]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PayableSummary]
	@FromDate datetime,
	@ToDate datetime,
	@TenantId nvarchar(Max)

AS
SELECT        dbo.PurchaseMaster.PurchaseMasterId, dbo.PurchaseMaster.VoucherNo, dbo.PurchaseMaster.Date,dbo.PurchaseMaster.DueDate, dbo.PurchaseMaster.Reference, dbo.PurchaseMaster.GrandTotal, dbo.CustomerSupplier.Name, dbo.PurchaseMaster.Status, 
                         dbo.PurchaseMaster.BalanceDue
FROM            dbo.PurchaseMaster INNER JOIN
                         dbo.CustomerSupplier ON dbo.PurchaseMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
					  where PurchaseMaster.Date between @fromDate and @toDate 
					  and
					   PurchaseMaster.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PayamentMade]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PayamentMade]
	@FromDate datetime,
	@ToDate datetime,
	@TenantId nvarchar(Max)

AS
SELECT        dbo.PaymentMaster.PaymentMasterId, dbo.PaymentMaster.VoucherNo, dbo.PaymentMaster.Date, dbo.PaymentMaster.Amount, dbo.PaymentMaster.PaymentType, dbo.PaymentMaster.Reference, dbo.AccountLedger.LedgerName, 
                         dbo.CustomerSupplier.Name
FROM            dbo.PaymentMaster INNER JOIN
                         dbo.AccountLedger ON dbo.PaymentMaster.LedgerId = dbo.AccountLedger.LedgerId INNER JOIN
                         dbo.CustomerSupplier ON dbo.PaymentMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
					  where PaymentMaster.Date between @fromDate and @toDate 
					  and
					   PaymentMaster.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PayamentReceived]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PayamentReceived]
	@FromDate datetime,
	@ToDate datetime,
	@TenantId nvarchar(Max)

AS
SELECT        dbo.ReceiptMaster.ReceiptMasterId, dbo.ReceiptMaster.VoucherNo, dbo.ReceiptMaster.Date, dbo.ReceiptMaster.Amount, dbo.ReceiptMaster.PaymentType, dbo.ReceiptMaster.Reference, dbo.AccountLedger.LedgerName, 
                         dbo.CustomerSupplier.Name
FROM            dbo.ReceiptMaster INNER JOIN
                         dbo.AccountLedger ON dbo.ReceiptMaster.LedgerId = dbo.AccountLedger.LedgerId INNER JOIN
                         dbo.CustomerSupplier ON dbo.ReceiptMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
					  where ReceiptMaster.Date between @fromDate and @toDate 
					  and
					   ReceiptMaster.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PaymentMadeDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaymentMadeDelete]
@PaymentMasterId int,
@VoucherTypeId int,
@TenantId nvarchar(Max)
AS
DELETE FROM PaymentMaster where PaymentMasterId=@PaymentMasterId and TenantId=@TenantId
DELETE FROM PaymentDetails where PaymentMasterId=@PaymentMasterId and TenantId=@TenantId
DELETE FROM LedgerPosting where VoucherTypeId=@VoucherTypeId and DetailsId=@PaymentMasterId and TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PaymentReceiptDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaymentReceiptDelete]
@ReceiptMasterId int,
@VoucherTypeId int,
@TenantId nvarchar(Max)
AS
DELETE FROM ReceiptMaster where ReceiptMasterId=@ReceiptMasterId and TenantId=@TenantId
DELETE FROM ReceiptDetails where ReceiptMasterId=@ReceiptMasterId and TenantId=@TenantId
DELETE FROM LedgerPosting where VoucherTypeId=@VoucherTypeId and DetailsId=@ReceiptMasterId and TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PaymentViewAll]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaymentViewAll]
@fromDate datetime = NULL,	
	@toDate datetime = NULL,	
	@CustomerSupplierId int,
	@VoucherNo nvarchar(MAX),
	@ReportType nvarchar(50),
	@TenantId nvarchar(MAX)
AS
BEGIN
	SET ARITHABORT ON;

	IF(@ReportType = 'Filter')
	BEGIN
SELECT        dbo.PaymentMaster.PaymentMasterId, dbo.PaymentMaster.VoucherNo, dbo.PaymentMaster.Date, dbo.PaymentMaster.PaidAmount, dbo.PaymentMaster.Amount, dbo.PaymentMaster.Narration, dbo.PaymentMaster.UserId, 
                         dbo.PaymentMaster.PaymentType, dbo.CustomerSupplier.Name
FROM            dbo.PaymentMaster INNER JOIN
                         dbo.CustomerSupplier ON dbo.PaymentMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
						where PaymentMaster.Date between @fromDate and @toDate
					  AND
                       (CustomerSupplier.CustomerSupplierId=CASE WHEN @CustomerSupplierId=0 THEN CustomerSupplier.CustomerSupplierId ELSE @CustomerSupplierId END)
					  AND 
					  PaymentMaster.VoucherNo LIKE @VoucherNo+'%'
					   AND PaymentMaster.TenantId=@TenantId
					   order by dbo.PaymentMaster.Date DESC
					   END
	ELSE
	BEGIN

	SELECT        dbo.PaymentMaster.PaymentMasterId, dbo.PaymentMaster.VoucherNo, dbo.PaymentMaster.Date, dbo.PaymentMaster.PaidAmount, dbo.PaymentMaster.Amount, dbo.PaymentMaster.Narration, dbo.PaymentMaster.UserId, 
                         dbo.PaymentMaster.PaymentType, dbo.CustomerSupplier.Name
FROM            dbo.PaymentMaster INNER JOIN
                         dbo.CustomerSupplier ON dbo.PaymentMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
						where (CustomerSupplier.CustomerSupplierId=CASE WHEN @CustomerSupplierId=0 THEN CustomerSupplier.CustomerSupplierId ELSE @CustomerSupplierId END)
					   AND PaymentMaster.TenantId=@TenantId
					   order by dbo.PaymentMaster.Date DESC
					   END
	END
GO
/****** Object:  StoredProcedure [dbo].[PaymentViewPrint]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaymentViewPrint]
	@PaymentMasterId int,
	@TenantId nvarchar(MAX)
AS
SELECT        dbo.PaymentMaster.PaymentMasterId, dbo.PaymentMaster.VoucherNo, dbo.PaymentMaster.Date, dbo.PaymentMaster.PaidAmount, dbo.PaymentMaster.Amount, dbo.PaymentMaster.SerialNo, dbo.PaymentMaster.Narration, 
                         dbo.PaymentMaster.UserId, dbo.PaymentMaster.PaymentType, dbo.PaymentMaster.Reference, dbo.CustomerSupplier.Name,dbo.CustomerSupplier.Email, dbo.AccountLedger.LedgerName
FROM            dbo.PaymentMaster INNER JOIN
                         dbo.CustomerSupplier ON dbo.PaymentMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId INNER JOIN
                         dbo.AccountLedger ON dbo.PaymentMaster.LedgerId = dbo.AccountLedger.LedgerId
						 where PaymentMaster.PaymentMasterId=@PaymentMasterId 
						 and AccountLedger.TenantId='0'
						 and PaymentMaster.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PlanCheckValidorNot]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PlanCheckValidorNot]
@TenantId nvarchar(Max)
AS
SELECT        dbo.PlanMaster.Name, dbo.PlanMaster.Price, dbo.PlanMaster.Duration, dbo.PlanMaster.MaximumUser, dbo.PlanMaster.MaximumCustomer, dbo.PlanMaster.MaximumSupplier, dbo.PlanMaster.MaximumProduct, 
                         dbo.PlanMaster.MaximumInvoice,dbo.PlanUpgrade.IsActive
FROM            dbo.PlanUpgrade INNER JOIN
                         dbo.PlanMaster ON dbo.PlanUpgrade.PlanId = dbo.PlanMaster.PlanId
							where dbo.PlanUpgrade.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[ProductDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProductDelete]
@ProductId int
AS
IF NOT EXISTS(SELECT ProductId from SalesDetails where ProductId=@ProductId)
IF NOT EXISTS(SELECT ProductId from SalesReturnDetails where ProductId=@ProductId)
IF NOT EXISTS(SELECT ProductId from PurchaseDetails where ProductId=@ProductId)
IF NOT EXISTS(SELECT ProductId from PurchaseReturnDetails where ProductId=@ProductId)
IF NOT EXISTS(SELECT ProductId from StockPosting where ProductId=@ProductId)
DELETE FROM Product where ProductId=@ProductId
GO
/****** Object:  StoredProcedure [dbo].[PurchaseDetailsView]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PurchaseDetailsView]
	@PurchaseMasterId int,
	@TenantId nvarchar(max)
AS
SELECT        dbo.PurchaseDetails.PurchaseDetailsId, dbo.PurchaseDetails.ProductId, dbo.PurchaseDetails.Qty, 
dbo.PurchaseDetails.Rate, dbo.PurchaseDetails.UnitId, dbo.PurchaseDetails.LedgerId, dbo.PurchaseDetails.ProjectId, 
                         dbo.PurchaseDetails.Discount, dbo.PurchaseDetails.DiscountAmount, dbo.PurchaseDetails.TaxId, 
						 dbo.PurchaseDetails.TaxRate, dbo.PurchaseDetails.TaxAmount, dbo.PurchaseDetails.GrossAmount, 
                         dbo.PurchaseDetails.NetAmount, dbo.PurchaseDetails.Amount as TotalAmount, 
						 dbo.PurchaseDetails.Description as Narration, dbo.Product.ProductName, dbo.Product.PurchaseRate,
						 dbo.Product.SalesRate, dbo.Unit.UnitName, 
                         dbo.AccountLedger.LedgerName, dbo.Tax.TaxName,Warehouse.WarehouseId
FROM            dbo.PurchaseDetails INNER JOIN
                         dbo.Product ON dbo.PurchaseDetails.ProductId = dbo.Product.ProductId INNER JOIN
                         dbo.Unit ON dbo.PurchaseDetails.UnitId = dbo.Unit.UnitId INNER JOIN
                         dbo.AccountLedger ON dbo.PurchaseDetails.LedgerId = dbo.AccountLedger.LedgerId LEFT JOIN
                         dbo.Tax ON dbo.PurchaseDetails.TaxId = dbo.Tax.TaxId LEFT JOIN
                         dbo.Warehouse ON dbo.PurchaseDetails.WarehouseId = dbo.Warehouse.WarehouseId
						 where PurchaseDetails.PurchaseMasterId=@PurchaseMasterId
						 --and
						 --AccountLedger.TenantId='0'
						 AND PurchaseDetails.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PurchaseInvoiceDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PurchaseInvoiceDelete]
@PurchaseMasterId int,
@VoucherTypeId int,
@VoucherNo nvarchar(MAX),
@TenantId nvarchar(Max)
AS
IF NOT EXISTS (SELECT PurchaseMasterId FROM PaymentDetails where PurchaseMasterId=@PurchaseMasterId AND TenantId=@TenantId)
DELETE FROM PurchaseMaster where PurchaseMasterId=@PurchaseMasterId AND TenantId=@TenantId
DELETE FROM PurchaseDetails where PurchaseMasterId=@PurchaseMasterId AND TenantId=@TenantId
DELETE FROM StockPosting where VoucherTypeId=@VoucherTypeId and VoucherNo=@VoucherNo AND TenantId=@TenantId
DELETE FROM LedgerPosting where VoucherTypeId=@VoucherTypeId and VoucherNo=@VoucherNo AND TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PurchaseInvoiceFilter]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PurchaseInvoiceFilter]
	@fromDate datetime = NULL,	
	@toDate datetime = NULL,	
	@CustomerSupplierId int,
	@VoucherNo nvarchar(MAX),
	@Status nvarchar(MAX),
	@FilterType nvarchar(50),
	@TenantId nvarchar(MAX)
AS
BEGIN
	SET ARITHABORT ON;

	IF(@FilterType = 'Filter')
	BEGIN
	SELECT   dbo.PurchaseMaster.PurchaseMasterId,  dbo.CustomerSupplier.CustomerSupplierId, dbo.PurchaseMaster.VoucherNo,
 dbo.PurchaseMaster.Date,PurchaseMaster.DueDate, dbo.PurchaseMaster.Narration, dbo.PurchaseMaster.GrandTotal, dbo.PurchaseMaster.Status, 
 dbo.PurchaseMaster.BalanceDue, dbo.PurchaseMaster.GrandTotal,
                      dbo.PurchaseMaster.UserId, dbo.CustomerSupplier.Name
FROM         dbo.PurchaseMaster INNER JOIN
                      dbo.CustomerSupplier ON dbo.PurchaseMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
                      where PurchaseMaster.date between @fromDate and @toDate
					  AND
                       (CustomerSupplier.CustomerSupplierId=CASE WHEN @CustomerSupplierId=0 THEN CustomerSupplier.CustomerSupplierId ELSE @CustomerSupplierId END)
					  AND 
					  PurchaseMaster.VoucherNo LIKE @VoucherNo+'%'
					  AND
                       (PurchaseMaster.Status=CASE WHEN @Status='All' THEN PurchaseMaster.Status ELSE @Status END)
					   AND PurchaseMaster.TenantId=@TenantId
					   order by dbo.PurchaseMaster.Date DESC

	END
	ELSE
	BEGIN
	SELECT   dbo.PurchaseMaster.PurchaseMasterId,  dbo.CustomerSupplier.CustomerSupplierId, dbo.PurchaseMaster.VoucherNo,
 dbo.PurchaseMaster.Date, PurchaseMaster.DueDate, dbo.PurchaseMaster.Narration, dbo.PurchaseMaster.GrandTotal, dbo.PurchaseMaster.Status, 
 dbo.PurchaseMaster.BalanceDue, dbo.PurchaseMaster.GrandTotal,
                      dbo.PurchaseMaster.UserId, dbo.CustomerSupplier.Name
FROM         dbo.PurchaseMaster INNER JOIN
                      dbo.CustomerSupplier ON dbo.PurchaseMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
                      where (PurchaseMaster.Status=CASE WHEN @Status='All' THEN PurchaseMaster.Status ELSE @Status END)
					   AND PurchaseMaster.TenantId=@TenantId
					   order by dbo.PurchaseMaster.Date DESC


	END
	END
GO
/****** Object:  StoredProcedure [dbo].[PurchaseReturnDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PurchaseReturnDelete]
@PurchaseReturnMasterId int,
@VoucherTypeId int,
@VoucherNo nvarchar(MAX),
@TenantId nvarchar(Max)
AS
DELETE FROM PurchaseReturnMaster where PurchaseReturnMasterId=@PurchaseReturnMasterId
DELETE FROM PurchaseReturnDetails where PurchaseReturnMasterId=@PurchaseReturnMasterId
DELETE FROM StockPosting where VoucherTypeId=@VoucherTypeId and VoucherNo=@VoucherNo AND TenantId=@TenantId
DELETE FROM LedgerPosting where VoucherTypeId=@VoucherTypeId and VoucherNo=@VoucherNo AND TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PurchaseReturnDetailsView]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PurchaseReturnDetailsView]
	@PurchaseReturnMasterId int,
	@TenantId nvarchar(max)
AS
SELECT        dbo.PurchaseReturnDetails.PurchaseReturnDetailsId, dbo.PurchaseReturnDetails.ProductId, dbo.PurchaseReturnDetails.Qty, 
dbo.PurchaseReturnDetails.Rate, dbo.PurchaseReturnDetails.UnitId, dbo.PurchaseReturnDetails.LedgerId, dbo.PurchaseReturnDetails.ProjectId, 
                         dbo.PurchaseReturnDetails.Discount, dbo.PurchaseReturnDetails.DiscountAmount, dbo.PurchaseReturnDetails.TaxId, 
						 dbo.PurchaseReturnDetails.TaxRate, dbo.PurchaseReturnDetails.TaxAmount, dbo.PurchaseReturnDetails.GrossAmount, 
                         dbo.PurchaseReturnDetails.NetAmount, dbo.PurchaseReturnDetails.Amount as TotalAmount, 
						 dbo.PurchaseReturnDetails.Description as Narration, dbo.Product.ProductName, dbo.Product.PurchaseRate,
						 dbo.Product.SalesRate, dbo.Unit.UnitName, 
                         dbo.AccountLedger.LedgerName, dbo.Tax.TaxName
FROM            dbo.PurchaseReturnDetails INNER JOIN
                         dbo.Product ON dbo.PurchaseReturnDetails.ProductId = dbo.Product.ProductId INNER JOIN
                         dbo.Unit ON dbo.PurchaseReturnDetails.UnitId = dbo.Unit.UnitId INNER JOIN
                         dbo.AccountLedger ON dbo.PurchaseReturnDetails.LedgerId = dbo.AccountLedger.LedgerId LEFT JOIN
                         dbo.Tax ON dbo.PurchaseReturnDetails.TaxId = dbo.Tax.TaxId
						 where PurchaseReturnDetails.PurchaseReturnMasterId=@PurchaseReturnMasterId
						 and
						 AccountLedger.TenantId='0' AND PurchaseReturnDetails.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[PurchaseReturnFilter]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PurchaseReturnFilter]
	@fromDate datetime = NULL,	
	@toDate datetime = NULL,	
	@CustomerSupplierId int,
	@VoucherNo nvarchar(MAX),
	@Status nvarchar(MAX),
	@FilterType nvarchar(50),
	@TenantId nvarchar(MAX)
AS
BEGIN
	SET ARITHABORT ON;

	IF(@FilterType = 'Filter')
	BEGIN
	SELECT   dbo.PurchaseReturnMaster.PurchaseReturnMasterId,  dbo.CustomerSupplier.CustomerSupplierId, dbo.PurchaseReturnMaster.VoucherNo,
 dbo.PurchaseReturnMaster.Date, dbo.PurchaseReturnMaster.Narration, dbo.PurchaseReturnMaster.GrandTotal, dbo.PurchaseReturnMaster.Status, 
 dbo.PurchaseReturnMaster.BalanceDue, dbo.PurchaseReturnMaster.GrandTotal,
                      dbo.PurchaseReturnMaster.UserId, dbo.CustomerSupplier.Name
FROM         dbo.PurchaseReturnMaster INNER JOIN
                      dbo.CustomerSupplier ON dbo.PurchaseReturnMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
                      where PurchaseReturnMaster.date between @fromDate and @toDate
					  AND
                       (CustomerSupplier.CustomerSupplierId=CASE WHEN @CustomerSupplierId=0 THEN CustomerSupplier.CustomerSupplierId ELSE @CustomerSupplierId END)
					  AND 
					  PurchaseReturnMaster.VoucherNo LIKE @VoucherNo+'%'
					  AND
                       (PurchaseReturnMaster.Status=CASE WHEN @Status='All' THEN PurchaseReturnMaster.Status ELSE @Status END)
					   AND PurchaseReturnMaster.TenantId=@TenantId
					   order by dbo.PurchaseReturnMaster.Date DESC

	END
	ELSE
	BEGIN
	SELECT   dbo.PurchaseReturnMaster.PurchaseReturnMasterId,  dbo.CustomerSupplier.CustomerSupplierId, dbo.PurchaseReturnMaster.VoucherNo,
 dbo.PurchaseReturnMaster.Date, dbo.PurchaseReturnMaster.Narration, dbo.PurchaseReturnMaster.GrandTotal, dbo.PurchaseReturnMaster.Status, 
 dbo.PurchaseReturnMaster.BalanceDue, dbo.PurchaseReturnMaster.GrandTotal,
                      dbo.PurchaseReturnMaster.UserId, dbo.CustomerSupplier.Name
FROM         dbo.PurchaseReturnMaster INNER JOIN
                      dbo.CustomerSupplier ON dbo.PurchaseReturnMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
                      where (PurchaseReturnMaster.Status=CASE WHEN @Status='All' THEN PurchaseReturnMaster.Status ELSE @Status END)
					   AND PurchaseReturnMaster.TenantId=@TenantId
					   order by dbo.PurchaseReturnMaster.Date DESC


	END
	END
GO
/****** Object:  StoredProcedure [dbo].[ReceiptViewAll]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReceiptViewAll]
@fromDate datetime = NULL,	
	@toDate datetime = NULL,	
	@CustomerSupplierId int,
	@VoucherNo nvarchar(MAX),
	@ReportType nvarchar(50),
	@TenantId nvarchar(MAX)
AS
BEGIN
	SET ARITHABORT ON;

	IF(@ReportType = 'Filter')
	BEGIN
SELECT        dbo.ReceiptMaster.ReceiptMasterId, dbo.ReceiptMaster.VoucherNo, dbo.ReceiptMaster.Date, dbo.ReceiptMaster.PaidAmount, dbo.ReceiptMaster.Amount, dbo.ReceiptMaster.Narration, dbo.ReceiptMaster.UserId, 
                         dbo.ReceiptMaster.PaymentType, dbo.CustomerSupplier.Name
FROM            dbo.ReceiptMaster INNER JOIN
                         dbo.CustomerSupplier ON dbo.ReceiptMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
						where ReceiptMaster.Date between @fromDate and @toDate
					  AND
                       (CustomerSupplier.CustomerSupplierId=CASE WHEN @CustomerSupplierId=0 THEN CustomerSupplier.CustomerSupplierId ELSE @CustomerSupplierId END)
					  AND 
					  ReceiptMaster.VoucherNo LIKE @VoucherNo+'%'
					   AND ReceiptMaster.TenantId=@TenantId
					   order by dbo.ReceiptMaster.Date DESC
					   END
	ELSE
	BEGIN

	SELECT        dbo.ReceiptMaster.ReceiptMasterId, dbo.ReceiptMaster.VoucherNo, dbo.ReceiptMaster.Date, dbo.ReceiptMaster.PaidAmount, dbo.ReceiptMaster.Amount, dbo.ReceiptMaster.Narration, dbo.ReceiptMaster.UserId, 
                         dbo.ReceiptMaster.PaymentType, dbo.CustomerSupplier.Name
FROM            dbo.ReceiptMaster INNER JOIN
                         dbo.CustomerSupplier ON dbo.ReceiptMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
						where (CustomerSupplier.CustomerSupplierId=CASE WHEN @CustomerSupplierId=0 THEN CustomerSupplier.CustomerSupplierId ELSE @CustomerSupplierId END)
					   AND ReceiptMaster.TenantId=@TenantId
					   order by dbo.ReceiptMaster.Date DESC
					   END
	END
GO
/****** Object:  StoredProcedure [dbo].[ReceiptViewPrint]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReceiptViewPrint]
	@ReceiptMasterId int,
	@TenantId nvarchar(MAX)
AS
SELECT        dbo.ReceiptMaster.ReceiptMasterId, dbo.ReceiptMaster.VoucherNo, dbo.ReceiptMaster.Date, dbo.ReceiptMaster.PaidAmount, dbo.ReceiptMaster.Amount, dbo.ReceiptMaster.SerialNo, dbo.ReceiptMaster.Narration, 
                         dbo.ReceiptMaster.UserId, dbo.ReceiptMaster.PaymentType, dbo.ReceiptMaster.Reference, dbo.CustomerSupplier.Name,  dbo.CustomerSupplier.Email, dbo.AccountLedger.LedgerName
FROM            dbo.ReceiptMaster INNER JOIN
                         dbo.CustomerSupplier ON dbo.ReceiptMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId INNER JOIN
                         dbo.AccountLedger ON dbo.ReceiptMaster.LedgerId = dbo.AccountLedger.LedgerId
						 where ReceiptMaster.ReceiptMasterId=@ReceiptMasterId 
						 and AccountLedger.TenantId='0'
						 and ReceiptMaster.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[ReceivablesSummary]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReceivablesSummary]
	@FromDate datetime,
	@ToDate datetime,
	@TenantId nvarchar(Max)

AS
SELECT        dbo.SalesMaster.SalesMasterId, dbo.SalesMaster.VoucherNo, dbo.SalesMaster.Date,dbo.SalesMaster.DueDate, dbo.SalesMaster.Reference, dbo.SalesMaster.GrandTotal, dbo.CustomerSupplier.Name, dbo.SalesMaster.Status, 
                         dbo.SalesMaster.BalanceDue
FROM            dbo.SalesMaster INNER JOIN
                         dbo.CustomerSupplier ON dbo.SalesMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
					  where SalesMaster.Date between @fromDate and @toDate 
					  and
					   SalesMaster.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[SalaryVoucherDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalaryVoucherDelete]
@SalaryVoucherMasterId int,
@TenantId nvarchar(max)
AS
DELETE FROM SalaryVoucherMaster where SalaryVoucherMasterId=@SalaryVoucherMasterId and TenantId=@TenantId
DELETE FROM SalaryVoucherDetails where SalaryVoucherMasterId=@SalaryVoucherMasterId and TenantId=@TenantId
DELETE FROM LedgerPosting where DetailsId=@SalaryVoucherMasterId and VoucherTypeId=12 and TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[SalesbyItem]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesbyItem]
	@FromDate datetime,
	@ToDate datetime,
	@ProductId int,
	@TenantId nvarchar(Max)

AS
SELECT   dbo.SalesMaster.SalesMasterId,  dbo.SalesMaster.VoucherNo,
 dbo.SalesMaster.Date, dbo.SalesMaster.Narration, dbo.SalesMaster.GrandTotal, dbo.SalesMaster.PaymentStatus, dbo.SalesMaster.Status, 
 dbo.SalesMaster.BillDiscount, dbo.SalesMaster.GrandTotal, dbo.SalesMaster.TotalTax,
                      dbo.SalesMaster.UserId
FROM         dbo.SalesMaster INNER JOIN
                      dbo.SalesDetails ON dbo.SalesMaster.SalesMasterId = dbo.SalesDetails.SalesMasterId 
					  where SalesMaster.date between @fromDate and @toDate 
					  and
                       (SalesDetails.ProductId=CASE WHEN @ProductId=0 THEN SalesDetails.ProductId ELSE @ProductId END)
					  and SalesMaster.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[SalesDetailsView]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesDetailsView]
	@SalesMasterId int,
	@TenantId nvarchar(max)
AS
SELECT        dbo.SalesDetails.SalesDetailsId, dbo.SalesDetails.ProductId, dbo.SalesDetails.Qty, 
dbo.SalesDetails.Rate, dbo.SalesDetails.UnitId, dbo.SalesDetails.LedgerId, dbo.SalesDetails.ProjectId, 
                         dbo.SalesDetails.Discount, dbo.SalesDetails.DiscountAmount, dbo.SalesDetails.TaxId, 
						 dbo.SalesDetails.TaxRate, dbo.SalesDetails.TaxAmount, dbo.SalesDetails.GrossAmount, 
                         dbo.SalesDetails.NetAmount, dbo.SalesDetails.Amount as TotalAmount, 
						 dbo.SalesDetails.Description as Narration, dbo.Product.ProductName, dbo.Product.PurchaseRate,
						 dbo.Product.SalesRate, dbo.Unit.UnitName, 
                         dbo.AccountLedger.LedgerName, dbo.Tax.TaxName
FROM            dbo.SalesDetails INNER JOIN
                         dbo.Product ON dbo.SalesDetails.ProductId = dbo.Product.ProductId INNER JOIN
                         dbo.Unit ON dbo.SalesDetails.UnitId = dbo.Unit.UnitId INNER JOIN
                         dbo.AccountLedger ON dbo.SalesDetails.LedgerId = dbo.AccountLedger.LedgerId LEFT JOIN
                         dbo.Tax ON dbo.SalesDetails.TaxId = dbo.Tax.TaxId
						 where SalesDetails.SalesMasterId=@SalesMasterId
						 and
						 AccountLedger.TenantId='0' AND SalesDetails.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[SalesInvoiceDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesInvoiceDelete]
@SalesMasterId int,
@VoucherTypeId int,
@VoucherNo nvarchar(MAX),
@TenantId nvarchar(Max)
AS
IF NOT EXISTS (SELECT SalesMasterId FROM ReceiptDetails where SalesMasterId=@SalesMasterId AND TenantId=@TenantId)
DELETE FROM SalesMaster where SalesMasterId=@SalesMasterId AND TenantId=@TenantId
DELETE FROM SalesDetails where SalesMasterId=@SalesMasterId AND TenantId=@TenantId
DELETE FROM StockPosting where VoucherTypeId=@VoucherTypeId and VoucherNo=@VoucherNo AND TenantId=@TenantId
DELETE FROM LedgerPosting where VoucherTypeId=@VoucherTypeId and VoucherNo=@VoucherNo AND TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[SalesInvoiceFilter]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesInvoiceFilter]
	@fromDate datetime = NULL,	
	@toDate datetime = NULL,	
	@CustomerSupplierId int,
	@VoucherNo nvarchar(MAX),
	@Status nvarchar(MAX),
	@FilterType nvarchar(50),
	@TenantId nvarchar(MAX)
AS
BEGIN
	SET ARITHABORT ON;

	IF(@FilterType = 'Filter')
	BEGIN
	SELECT   dbo.SalesMaster.SalesMasterId,  dbo.CustomerSupplier.CustomerSupplierId, dbo.SalesMaster.VoucherNo,
 dbo.SalesMaster.Date,SalesMaster.DueDate, dbo.SalesMaster.Narration, dbo.SalesMaster.GrandTotal, dbo.SalesMaster.Status, 
 dbo.SalesMaster.BalanceDue, dbo.SalesMaster.GrandTotal,
                      dbo.SalesMaster.UserId, dbo.CustomerSupplier.Name
FROM         dbo.SalesMaster INNER JOIN
                      dbo.CustomerSupplier ON dbo.SalesMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
                      where SalesMaster.date between @fromDate and @toDate
					  AND
                       (CustomerSupplier.CustomerSupplierId=CASE WHEN @CustomerSupplierId=0 THEN CustomerSupplier.CustomerSupplierId ELSE @CustomerSupplierId END)
					  AND 
					  SalesMaster.VoucherNo LIKE @VoucherNo+'%'
					  AND
                       (SalesMaster.Status=CASE WHEN @Status='All' THEN SalesMaster.Status ELSE @Status END)
					   AND SalesMaster.TenantId=@TenantId
					   order by dbo.SalesMaster.Date DESC

	END
	ELSE
	BEGIN
	SELECT   dbo.SalesMaster.SalesMasterId,  dbo.CustomerSupplier.CustomerSupplierId, dbo.SalesMaster.VoucherNo,
 dbo.SalesMaster.Date, SalesMaster.DueDate, dbo.SalesMaster.Narration, dbo.SalesMaster.GrandTotal, dbo.SalesMaster.Status, 
 dbo.SalesMaster.BalanceDue, dbo.SalesMaster.GrandTotal,
                      dbo.SalesMaster.UserId, dbo.CustomerSupplier.Name
FROM         dbo.SalesMaster INNER JOIN
                      dbo.CustomerSupplier ON dbo.SalesMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
                      where (SalesMaster.Status=CASE WHEN @Status='All' THEN SalesMaster.Status ELSE @Status END)
					   AND SalesMaster.TenantId=@TenantId
					   order by dbo.SalesMaster.Date DESC


	END
	END
GO
/****** Object:  StoredProcedure [dbo].[SalesReturnDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesReturnDelete]
@SalesReturnMasterId int,
@VoucherTypeId int,
@VoucherNo nvarchar(MAX),
@TenantId nvarchar(Max)
AS
DELETE FROM SalesReturnMaster where SalesReturnMasterId=@SalesReturnMasterId AND TenantId=@TenantId
DELETE FROM SalesReturnDetails where SalesReturnMasterId=@SalesReturnMasterId AND TenantId=@TenantId
DELETE FROM StockPosting where VoucherTypeId=@VoucherTypeId and VoucherNo=@VoucherNo AND TenantId=@TenantId
DELETE FROM LedgerPosting where VoucherTypeId=@VoucherTypeId and VoucherNo=@VoucherNo AND TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[SalesReturnDetailsView]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesReturnDetailsView]
	@SalesReturnMasterId int,
	@TenantId nvarchar(max)
AS
SELECT        dbo.SalesReturnDetails.SalesReturnDetailsId, dbo.SalesReturnDetails.ProductId, dbo.SalesReturnDetails.Qty, 
dbo.SalesReturnDetails.Rate, dbo.SalesReturnDetails.UnitId, dbo.SalesReturnDetails.LedgerId, dbo.SalesReturnDetails.ProjectId, 
                         dbo.SalesReturnDetails.Discount, dbo.SalesReturnDetails.DiscountAmount, dbo.SalesReturnDetails.TaxId, 
						 dbo.SalesReturnDetails.TaxRate, dbo.SalesReturnDetails.TaxAmount, dbo.SalesReturnDetails.GrossAmount, 
                         dbo.SalesReturnDetails.NetAmount, dbo.SalesReturnDetails.Amount as TotalAmount, 
						 dbo.SalesReturnDetails.Description as Narration, dbo.Product.ProductName, dbo.Product.PurchaseRate,
						 dbo.Product.SalesRate, dbo.Unit.UnitName, 
                         dbo.AccountLedger.LedgerName, dbo.Tax.TaxName
FROM            dbo.SalesReturnDetails INNER JOIN
                         dbo.Product ON dbo.SalesReturnDetails.ProductId = dbo.Product.ProductId INNER JOIN
                         dbo.Unit ON dbo.SalesReturnDetails.UnitId = dbo.Unit.UnitId INNER JOIN
                         dbo.AccountLedger ON dbo.SalesReturnDetails.LedgerId = dbo.AccountLedger.LedgerId LEFT JOIN
                         dbo.Tax ON dbo.SalesReturnDetails.TaxId = dbo.Tax.TaxId
						 where SalesReturnDetails.SalesReturnMasterId=@SalesReturnMasterId
						 and
						 AccountLedger.TenantId='0' AND SalesReturnDetails.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[SalesReturnFilter]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesReturnFilter]
	@fromDate datetime = NULL,	
	@toDate datetime = NULL,	
	@CustomerSupplierId int,
	@VoucherNo nvarchar(MAX),
	@Status nvarchar(MAX),
	@FilterType nvarchar(50),
	@TenantId nvarchar(MAX)
AS
BEGIN
	SET ARITHABORT ON;

	IF(@FilterType = 'Filter')
	BEGIN
	SELECT   dbo.SalesReturnMaster.SalesReturnMasterId,  dbo.CustomerSupplier.CustomerSupplierId, dbo.SalesReturnMaster.VoucherNo,
 dbo.SalesReturnMaster.Date, dbo.SalesReturnMaster.Narration, dbo.SalesReturnMaster.GrandTotal, dbo.SalesReturnMaster.Status, 
 dbo.SalesReturnMaster.BalanceDue, dbo.SalesReturnMaster.GrandTotal,
                      dbo.SalesReturnMaster.UserId, dbo.CustomerSupplier.Name
FROM         dbo.SalesReturnMaster INNER JOIN
                      dbo.CustomerSupplier ON dbo.SalesReturnMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
                      where SalesReturnMaster.date between @fromDate and @toDate
					  AND
                       (CustomerSupplier.CustomerSupplierId=CASE WHEN @CustomerSupplierId=0 THEN CustomerSupplier.CustomerSupplierId ELSE @CustomerSupplierId END)
					  AND 
					  SalesReturnMaster.VoucherNo LIKE @VoucherNo+'%'
					  AND
                       (SalesReturnMaster.Status=CASE WHEN @Status='All' THEN SalesReturnMaster.Status ELSE @Status END)
					   AND SalesReturnMaster.TenantId=@TenantId
					   order by dbo.SalesReturnMaster.Date DESC

	END
	ELSE
	BEGIN
	SELECT   dbo.SalesReturnMaster.SalesReturnMasterId,  dbo.CustomerSupplier.CustomerSupplierId, dbo.SalesReturnMaster.VoucherNo,
 dbo.SalesReturnMaster.Date, dbo.SalesReturnMaster.Narration, dbo.SalesReturnMaster.GrandTotal, dbo.SalesReturnMaster.Status, 
 dbo.SalesReturnMaster.BalanceDue, dbo.SalesReturnMaster.GrandTotal,
                      dbo.SalesReturnMaster.UserId, dbo.CustomerSupplier.Name
FROM         dbo.SalesReturnMaster INNER JOIN
                      dbo.CustomerSupplier ON dbo.SalesReturnMaster.CustomerSupplierId = dbo.CustomerSupplier.CustomerSupplierId
                      where (SalesReturnMaster.Status=CASE WHEN @Status='All' THEN SalesReturnMaster.Status ELSE @Status END)
					   AND SalesReturnMaster.TenantId=@TenantId
					   order by dbo.SalesReturnMaster.Date DESC


	END
	END
GO
/****** Object:  StoredProcedure [dbo].[StockReport]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StockReport]
	@CategoriesId int,
	@productId int,
	@TenantId nvarchar(Max)
	AS
	
	SELECT   DISTINCT  temp.ProductCode,temp.ProductName,Unit.unitName,
	(convert(decimal(18,2),ISNULL((select TOP 1 rate from StockPosting STP inner join InvoiceSetting VT on STP.voucherTypeId=VT.voucherTypeId OR STP.againstVoucherTypeId=VT.voucherTypeId where productId=temp.productId 
	--and batchId=temp.batchId 
	AND (VT.VoucherTypeName='Purchase Invoice' OR VT.VoucherTypeName='Material Receipt') order by STP.date  desc),Product.purchaseRate))) AS rate,
	temp.purQty,
	convert(decimal(18,2),ISNULL((select TOP 1 rate from StockPosting STP inner join InvoiceSetting VT on STP.voucherTypeId=VT.voucherTypeId OR STP.againstVoucherTypeId=VT.voucherTypeId where productId=temp.productId 
	--and batchId=temp.batchId 
	AND (VT.VoucherTypeName='Purchase Invoice' OR VT.VoucherTypeName='Material Receipt') order by STP.date  desc),Product.purchaseRate) * temp.purQty) as PurchaseStockBal,
	(convert(decimal(18,2),Product.salesRate))AS salesRate ,
temp.SalesQty,
convert(decimal(18,2),Product.salesRate * temp.SalesQty) as SalesStockBalance,
	temp.Stock,
	ISNULL(convert(decimal(18,2),(Stock*(select TOP 1 rate from StockPosting STP inner join InvoiceSetting VT on STP.voucherTypeId=VT.voucherTypeId OR STP.againstVoucherTypeId=VT.voucherTypeId where productId=temp.productId 
	--and batchId=temp.batchId 
	AND (VT.VoucherTypeName='Purchase Invoice' OR VT.VoucherTypeName='Material Receipt') order by STP.date  desc))),0)as stockvalue,
	 temp.productId 
	FROM   (select Product.productId,Product.ProductCode,Product.ProductName,
	--Batch.batchId,
	CONVERT(decimal(18,2),ISNULL(SUM(StockPosting.inwardQty),0)) as PurQty,
	CONVERT(decimal(18,2),ISNULL(SUM(StockPosting.outwardQty),0)) as SalesQty, 
	( CONVERT(decimal(18,2),ISNULL(SUM(StockPosting.inwardQty),0) 
	- ISNULL(SUM(StockPosting.outwardQty),0))) AS Stock

	from Product
	--left join Batch ON Product.productId=Batch.productId --LEFT JOIN tbl_Batch on tbl_Batch.productId=tbl_Product.productId
	left JOIN
	StockPosting ON Product.productId = StockPosting.productId
	
	group by Product.productCode,Product.productName,Product.productId
	--Batch.batchId
	) As temp
		
	left join

	Product  ON Product.productId = temp.productId
	left JOIN
	Unit ON Product.unitId = Unit.unitId
	left JOIN
	Categories on Product.CategoriesId=Categories.CategoriesId
	where
    Categories.CategoriesId=(CASE WHEN @CategoriesId=0 THEN  Categories.CategoriesId  ELSE @CategoriesId END)
	AND Product.productId=(CASE WHEN @productId=0 THEN  Product.productId  ELSE @productId END)
	AND Product.TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[TaxDelete]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TaxDelete]
@TaxId int,
@TenantId nvarchar(Max)
AS
IF NOT EXISTS(SELECT TaxId from Product where TaxId=@TaxId AND TenantId=@TenantId)
IF NOT EXISTS(SELECT TaxId from SalesDetails where TaxId=@TaxId AND TenantId=@TenantId)
IF NOT EXISTS(SELECT TaxId from SalesReturnDetails where TaxId=@TaxId AND TenantId=@TenantId)
IF NOT EXISTS(SELECT TaxId from PurchaseDetails where TaxId=@TaxId AND TenantId=@TenantId)
IF NOT EXISTS(SELECT TaxId from PurchaseDetails where TaxId=@TaxId AND TenantId=@TenantId)
DELETE FROM Tax where TaxId=@TaxId AND TenantId=@TenantId
GO
/****** Object:  StoredProcedure [dbo].[TotalBalanceGroup]    Script Date: 7/6/2023 1:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TotalBalanceGroup]
@Type nvarchar(50),
	@FromDate datetime,
	@ToDate datetime,
	@TenantId nvarchar(Max)

AS
SELECT ISNULL(SUM(LedgerPosting.Debit), 0) as Debit, ISNULL(SUM(LedgerPosting.Credit), 0) as Credit, 
ISNULL(SUM(LedgerPosting.Debit), 0) - ISNULL(SUM(LedgerPosting.Credit), 0) as Balance
FROM            dbo.LedgerPosting INNER JOIN
                         dbo.AccountLedger ON dbo.LedgerPosting.LedgerId = dbo.AccountLedger.LedgerId 
					  where AccountLedger.Type=@Type and LedgerPosting.date between @fromDate and @toDate 
					   and LedgerPosting.TenantId=@TenantId
GO
USE [master]
GO
ALTER DATABASE [OpenbookDb] SET  READ_WRITE 
GO
