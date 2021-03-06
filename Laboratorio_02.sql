USE [Blog]
GO
ALTER TABLE [dbo].[Reporte] DROP CONSTRAINT [FK_Reporte_Comentario]
GO
ALTER TABLE [dbo].[Plantilla] DROP CONSTRAINT [FK_Plantilla_Tema]
GO
ALTER TABLE [dbo].[Comentario] DROP CONSTRAINT [FK_Comentario_Usuario]
GO
ALTER TABLE [dbo].[Comentario] DROP CONSTRAINT [FK_Comentario_Plantilla]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 02/03/2018 19:49:31 ******/
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[Tema]    Script Date: 02/03/2018 19:49:31 ******/
DROP TABLE [dbo].[Tema]
GO
/****** Object:  Table [dbo].[Reporte]    Script Date: 02/03/2018 19:49:31 ******/
DROP TABLE [dbo].[Reporte]
GO
/****** Object:  Table [dbo].[Plantilla]    Script Date: 02/03/2018 19:49:31 ******/
DROP TABLE [dbo].[Plantilla]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 02/03/2018 19:49:31 ******/
DROP TABLE [dbo].[Comentario]
GO
USE [master]
GO
/****** Object:  Database [Blog]    Script Date: 02/03/2018 19:49:31 ******/
DROP DATABASE [Blog]
GO
/****** Object:  Database [Blog]    Script Date: 02/03/2018 19:49:31 ******/
CREATE DATABASE [Blog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Blog', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Blog.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Blog_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Blog_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Blog] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Blog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Blog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Blog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Blog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Blog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Blog] SET ARITHABORT OFF 
GO
ALTER DATABASE [Blog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Blog] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Blog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Blog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Blog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Blog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Blog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Blog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Blog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Blog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Blog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Blog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Blog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Blog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Blog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Blog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Blog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Blog] SET  MULTI_USER 
GO
ALTER DATABASE [Blog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Blog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Blog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Blog] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Blog]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 02/03/2018 19:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comentario](
	[idComentario] [int] NOT NULL,
	[comentario] [varchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idPlantilla] [int] NOT NULL,
 CONSTRAINT [PK_Comentario] PRIMARY KEY CLUSTERED 
(
	[idComentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Plantilla]    Script Date: 02/03/2018 19:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plantilla](
	[idPlantilla] [int] NOT NULL,
	[nombrePlantilla] [varchar](50) NOT NULL,
	[descripcion] [varchar](1000) NOT NULL,
	[noComentarios] [int] NOT NULL,
	[idTema] [int] NOT NULL,
	[fechaCreacion] [date] NOT NULL,
 CONSTRAINT [PK_Plantilla] PRIMARY KEY CLUSTERED 
(
	[idPlantilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reporte]    Script Date: 02/03/2018 19:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reporte](
	[idReporte] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[fecha] [date] NULL,
	[idComentario] [int] NULL,
 CONSTRAINT [PK_Reporte] PRIMARY KEY CLUSTERED 
(
	[idReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tema]    Script Date: 02/03/2018 19:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tema](
	[idTema] [int] NOT NULL,
	[nombreTema] [varchar](50) NOT NULL,
	[noPlantillas] [int] NOT NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [PK_Tema] PRIMARY KEY CLUSTERED 
(
	[idTema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 02/03/2018 19:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[nombreUsuario] [varchar](50) NOT NULL,
	[contraseña] [varchar](50) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[edad] [int] NOT NULL,
	[antiguedad] [int] NOT NULL,
	[fechaCreacion] [date] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Plantilla] FOREIGN KEY([idPlantilla])
REFERENCES [dbo].[Plantilla] ([idPlantilla])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Plantilla]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Usuario]
GO
ALTER TABLE [dbo].[Plantilla]  WITH CHECK ADD  CONSTRAINT [FK_Plantilla_Tema] FOREIGN KEY([idTema])
REFERENCES [dbo].[Tema] ([idTema])
GO
ALTER TABLE [dbo].[Plantilla] CHECK CONSTRAINT [FK_Plantilla_Tema]
GO
ALTER TABLE [dbo].[Reporte]  WITH CHECK ADD  CONSTRAINT [FK_Reporte_Comentario] FOREIGN KEY([idComentario])
REFERENCES [dbo].[Comentario] ([idComentario])
GO
ALTER TABLE [dbo].[Reporte] CHECK CONSTRAINT [FK_Reporte_Comentario]
GO
USE [master]
GO
ALTER DATABASE [Blog] SET  READ_WRITE 
GO
