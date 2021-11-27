USE [master]
GO
/****** Object:  Database [base1]    Script Date: 26/11/2021 8:12:45 p. m. ******/
CREATE DATABASE [base1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'base1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\base1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'base1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\base1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [base1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [base1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [base1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [base1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [base1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [base1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [base1] SET ARITHABORT OFF 
GO
ALTER DATABASE [base1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [base1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [base1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [base1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [base1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [base1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [base1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [base1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [base1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [base1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [base1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [base1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [base1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [base1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [base1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [base1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [base1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [base1] SET RECOVERY FULL 
GO
ALTER DATABASE [base1] SET  MULTI_USER 
GO
ALTER DATABASE [base1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [base1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [base1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [base1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [base1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [base1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'base1', N'ON'
GO
ALTER DATABASE [base1] SET QUERY_STORE = OFF
GO
USE [base1]
GO
/****** Object:  User [David]    Script Date: 26/11/2021 8:12:45 p. m. ******/
CREATE USER [David] FOR LOGIN [David] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[articulos]    Script Date: 26/11/2021 8:12:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articulos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[precio] [float] NULL,
 CONSTRAINT [PK_articulos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[articulos] ON 

INSERT [dbo].[articulos] ([codigo], [descripcion], [precio]) VALUES (1, N'naranja', 1100)
SET IDENTITY_INSERT [dbo].[articulos] OFF
GO
USE [master]
GO
ALTER DATABASE [base1] SET  READ_WRITE 
GO
