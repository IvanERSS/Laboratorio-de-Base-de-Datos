

/*
		Nombre:		Ivan Emiliano Rodriguez Salazar
		Matricula:	1666705

		Descripcion:
			Con esta DB se pretende crear una aplicacion web que apoye principalmente a alumnos de la FCFM en la seleccion de maestros de dicha facultad.
			La finalidad de esta aplicación web es crear una comunidad de alumnos de la FCFM, donde de forma voluntaria se evalúan los maestros.
			Los datos en esta DB han obtenidos de la pagina oficial de la FCFM.			
*/


USE [Comunidad_FCFM_By_Ivan]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_PromeidoTotal_Maestro'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_PromeidoTotal_Maestro'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Materias'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Materias'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Maestros'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Maestros'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Maestro_Materias'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Maestro_Materias'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Clases'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Clases'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Calificaciones'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Calificaciones'

GO
ALTER TABLE [dbo].[Calificacion] DROP CONSTRAINT [CK__Calificac__calif__373B3228]
GO
ALTER TABLE [dbo].[Rel_Materia_Maestro] DROP CONSTRAINT [FK_Rel_Materia_Maestro_Materia]
GO
ALTER TABLE [dbo].[Rel_Materia_Maestro] DROP CONSTRAINT [FK_Rel_Materia_Maestro_Maestro]
GO
ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_Materia_Carrera]
GO
ALTER TABLE [dbo].[Maestro] DROP CONSTRAINT [FK_Maestro_Carrera]
GO
ALTER TABLE [dbo].[Calificacion] DROP CONSTRAINT [FK_Calificacion_Rel_Materia_Maestro]
GO
ALTER TABLE [dbo].[Calificacion] DROP CONSTRAINT [DF__Calificac__fecha__3552E9B6]
GO
/****** Object:  View [dbo].[VIEW_Materias]    Script Date: 05/05/2018 18:55:45 ******/
DROP VIEW [dbo].[VIEW_Materias]
GO
/****** Object:  View [dbo].[VIEW_Maestro_Materias]    Script Date: 05/05/2018 18:55:45 ******/
DROP VIEW [dbo].[VIEW_Maestro_Materias]
GO
/****** Object:  View [dbo].[VIEW_TotalDeMaestrosPorCarrera]    Script Date: 05/05/2018 18:55:45 ******/
DROP VIEW [dbo].[VIEW_TotalDeMaestrosPorCarrera]
GO
/****** Object:  View [dbo].[VIEW_Maestros]    Script Date: 05/05/2018 18:55:45 ******/
DROP VIEW [dbo].[VIEW_Maestros]
GO
/****** Object:  View [dbo].[VIEW_PromeidoTotal_Maestro]    Script Date: 05/05/2018 18:55:45 ******/
DROP VIEW [dbo].[VIEW_PromeidoTotal_Maestro]
GO
/****** Object:  View [dbo].[VIEW_AllComentarios]    Script Date: 05/05/2018 18:55:45 ******/
DROP VIEW [dbo].[VIEW_AllComentarios]
GO
/****** Object:  View [dbo].[VIEW_Calificaciones]    Script Date: 05/05/2018 18:55:45 ******/
DROP VIEW [dbo].[VIEW_Calificaciones]
GO
/****** Object:  View [dbo].[VIEW_Clases]    Script Date: 05/05/2018 18:55:45 ******/
DROP VIEW [dbo].[VIEW_Clases]
GO
/****** Object:  Table [dbo].[Rel_Materia_Maestro]    Script Date: 05/05/2018 18:55:45 ******/
DROP TABLE [dbo].[Rel_Materia_Maestro]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 05/05/2018 18:55:45 ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 05/05/2018 18:55:45 ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 05/05/2018 18:55:45 ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 05/05/2018 18:55:45 ******/
DROP TABLE [dbo].[Calificacion]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_PromDeDosCalificaciones]    Script Date: 05/05/2018 18:55:45 ******/
DROP FUNCTION [dbo].[FN_PromDeDosCalificaciones]
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarMateria]    Script Date: 05/05/2018 18:55:45 ******/
DROP PROCEDURE [dbo].[SP_BuscarMateria]
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarMaestro]    Script Date: 05/05/2018 18:55:45 ******/
DROP PROCEDURE [dbo].[SP_BuscarMaestro]
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarEnComentarios]    Script Date: 05/05/2018 18:55:45 ******/
DROP PROCEDURE [dbo].[SP_BuscarEnComentarios]
GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Materia]    Script Date: 05/05/2018 18:55:45 ******/
DROP PROCEDURE [dbo].[SP_Add_Materia]
GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Maestro]    Script Date: 05/05/2018 18:55:45 ******/
DROP PROCEDURE [dbo].[SP_Add_Maestro]
GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Clase]    Script Date: 05/05/2018 18:55:45 ******/
DROP PROCEDURE [dbo].[SP_Add_Clase]
GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Carrera]    Script Date: 05/05/2018 18:55:45 ******/
DROP PROCEDURE [dbo].[SP_Add_Carrera]
GO
USE [master]
GO
/****** Object:  Database [Comunidad_FCFM_By_Ivan]    Script Date: 05/05/2018 18:55:45 ******/
DROP DATABASE [Comunidad_FCFM_By_Ivan]
GO
/****** Object:  Database [Comunidad_FCFM_By_Ivan]    Script Date: 05/05/2018 18:55:45 ******/
CREATE DATABASE [Comunidad_FCFM_By_Ivan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Comunidad_FCFM_By_Ivan', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Comunidad_FCFM_By_Ivan.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Comunidad_FCFM_By_Ivan_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Comunidad_FCFM_By_Ivan_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Comunidad_FCFM_By_Ivan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET ARITHABORT OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET  MULTI_USER 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Comunidad_FCFM_By_Ivan]
GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Carrera]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Add_Carrera] @Carrera varchar(100)
AS
	INSERT INTO 
		Carrera(carrera)
	VALUES
		(@Carrera)
GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Clase]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Add_Clase] @idMaestro int, @idMateria int, @idCarrera int
AS
	INSERT INTO Rel_Materia_Maestro(idMaestro,idMateria)
	VALUES (@idMaestro,@idMateria)


GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Maestro]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Add_Maestro] @Maestro varchar(100), @idCarrera INT
AS
	INSERT INTO 
		Maestro(maestro,idCarrera)
	VALUES
		(@Maestro,@idCarrera)

GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Materia]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Add_Materia] @Materia varchar(100), @idCarrera INT
AS
	INSERT INTO 
		Materia(materia,idCarrera)
	VALUES
		(@Materia,@idCarrera)

GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarEnComentarios]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BuscarEnComentarios] @Busqueda VARCHAR(100)
AS
	SELECT 
		*  
	FROM 
		VIEW_Calificaciones
	WHERE
		VIEW_Calificaciones.Comentario LIKE '%'+@Busqueda+'%'
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarMaestro]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BuscarMaestro] @Busqueda VARCHAR(100)
AS
	SELECT 
		*  
	FROM 
		VIEW_Maestros
	WHERE
		VIEW_Maestros.Maestro LIKE '%'+@Busqueda+'%'
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarMateria]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BuscarMateria] @Busqueda VARCHAR(100)
AS
	SELECT 
		*  
	FROM 
		VIEW_Materias
	WHERE
		VIEW_Materias.Materia LIKE '%'+@Busqueda+'%'
GO
/****** Object:  UserDefinedFunction [dbo].[FN_PromDeDosCalificaciones]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_PromDeDosCalificaciones](@n1 float, @n2 float ) RETURNS float
AS
	BEGIN
		DECLARE @x float

		SET @x = @n1 + @n2
		SET @x = @x/2

		return @x
	END
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[idCalificacion] [int] IDENTITY(1,1) NOT NULL,
	[calificacion] [int] NOT NULL,
	[comentario] [nvarchar](500) NULL,
	[fecha] [date] NULL,
	[idClase] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[idCarrera] [int] IDENTITY(1,1) NOT NULL,
	[carrera] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[idMaestro] [int] IDENTITY(1,1) NOT NULL,
	[maestro] [nvarchar](100) NOT NULL,
	[idCarrera] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materia]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[idMateria] [int] IDENTITY(1,1) NOT NULL,
	[materia] [varchar](100) NOT NULL,
	[idCarrera] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rel_Materia_Maestro]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rel_Materia_Maestro](
	[idClase] [int] IDENTITY(1,1) NOT NULL,
	[idMateria] [int] NULL,
	[idMaestro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idClase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[VIEW_Clases]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_Clases]
AS
SELECT dbo.Rel_Materia_Maestro.idClase AS ID_Clase, dbo.Maestro.idMaestro AS ID_Maestro, dbo.Maestro.maestro AS Maestro, dbo.Materia.idMateria AS ID_Materia, dbo.Materia.materia AS Materia, dbo.Carrera.idCarrera AS ID_Carrera, 
             dbo.Carrera.carrera AS Carrera
FROM   dbo.Maestro INNER JOIN
             dbo.Rel_Materia_Maestro ON dbo.Maestro.idMaestro = dbo.Rel_Materia_Maestro.idMaestro INNER JOIN
             dbo.Materia ON dbo.Materia.idMateria = dbo.Rel_Materia_Maestro.idMateria INNER JOIN
             dbo.Carrera ON dbo.Carrera.idCarrera = dbo.Materia.idCarrera AND dbo.Materia.idCarrera = dbo.Carrera.idCarrera AND dbo.Materia.idCarrera = dbo.Carrera.idCarrera

GO
/****** Object:  View [dbo].[VIEW_Calificaciones]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VIEW_Calificaciones]
AS
SELECT dbo.Calificacion.idCalificacion AS ID_Calificacion, dbo.VIEW_Clases.Maestro, dbo.VIEW_Clases.Materia, dbo.VIEW_Clases.Carrera, dbo.Calificacion.calificacion AS [Calificacion 0/10], dbo.Calificacion.comentario AS Comentario
FROM   dbo.VIEW_Clases INNER JOIN
             dbo.Calificacion ON dbo.VIEW_Clases.ID_Clase = dbo.Calificacion.idClase


GO
/****** Object:  View [dbo].[VIEW_AllComentarios]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_AllComentarios]
AS
SELECT
	VIEW_Calificaciones.Maestro as Maestro, VIEW_Calificaciones.Comentario
FROM
	VIEW_Calificaciones
WHERE
	VIEW_Calificaciones.Comentario IS NOT NULL
GO
/****** Object:  View [dbo].[VIEW_PromeidoTotal_Maestro]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*,
VIEW_Clases.materia,
VIEW_Clases.carrera*/
CREATE VIEW [dbo].[VIEW_PromeidoTotal_Maestro]
AS
SELECT dbo.VIEW_Clases.Maestro, AVG(dbo.Calificacion.calificacion) AS Promedio
FROM   dbo.VIEW_Clases INNER JOIN
             dbo.Calificacion ON dbo.VIEW_Clases.ID_Clase = dbo.Calificacion.idClase
GROUP BY dbo.VIEW_Clases.Maestro

GO
/****** Object:  View [dbo].[VIEW_Maestros]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_Maestros]
AS
SELECT dbo.Maestro.idMaestro AS ID, dbo.Maestro.maestro AS Maestro, dbo.Carrera.carrera AS Carrera
FROM   dbo.Maestro INNER JOIN
             dbo.Carrera ON dbo.Maestro.idCarrera = dbo.Carrera.idCarrera

GO
/****** Object:  View [dbo].[VIEW_TotalDeMaestrosPorCarrera]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VIEW_TotalDeMaestrosPorCarrera]
AS
SELECT 
	VIEW_Maestros.Carrera as Carrera, COUNT(VIEW_Maestros.Carrera) as 'Total de Maestros'
FROM
	VIEW_Maestros
GROUP BY
	VIEW_Maestros.Carrera

GO
/****** Object:  View [dbo].[VIEW_Maestro_Materias]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_Maestro_Materias]
AS
SELECT dbo.Maestro.idMaestro AS ID_Maestro, dbo.Maestro.maestro AS Maestro, dbo.Materia.materia AS Materia, dbo.Carrera.carrera AS Carrera
FROM   dbo.Maestro INNER JOIN
             dbo.Rel_Materia_Maestro ON dbo.Rel_Materia_Maestro.idMaestro = dbo.Maestro.idMaestro INNER JOIN
             dbo.Materia ON dbo.Materia.idMateria = dbo.Rel_Materia_Maestro.idMateria INNER JOIN
             dbo.Carrera ON dbo.Carrera.idCarrera = dbo.Materia.idCarrera AND dbo.Materia.idCarrera = dbo.Carrera.idCarrera

GO
/****** Object:  View [dbo].[VIEW_Materias]    Script Date: 05/05/2018 18:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_Materias]
AS
SELECT dbo.Materia.idMateria AS ID, dbo.Materia.materia AS Materia, dbo.Carrera.carrera AS Carrera
FROM   dbo.Materia INNER JOIN
             dbo.Carrera ON dbo.Materia.idCarrera = dbo.Carrera.idCarrera

GO
SET IDENTITY_INSERT [dbo].[Calificacion] ON 

INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (2, 8, N'Encarga muchas tareas', CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (3, 5, N'Muy dificil cero recomendado', CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (4, 8, N'Dificil pero posible', CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (5, 7, NULL, CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (7, 6, NULL, CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (8, 10, N'Buen maestro pero te tardas en acostumbrarte a su manera de evalauar', CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (9, 8, NULL, CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (10, 7, NULL, CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (11, 10, N'Muy bueno gran enseñanza', CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (13, 9, N'Muy buena', CAST(0x313E0B00 AS Date), 15)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (14, 10, N'Muy buena maestra m¡recomendada al maximo', CAST(0x313E0B00 AS Date), 16)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (15, 10, N'Explica muy bien y transmite confianza', CAST(0x313E0B00 AS Date), 16)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (16, 9, NULL, CAST(0x313E0B00 AS Date), 16)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (17, 8, NULL, CAST(0x313E0B00 AS Date), 16)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (18, 10, N'Muy buena, gran capasidad de enseñanza', CAST(0x313E0B00 AS Date), 16)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (19, 9, NULL, CAST(0x313E0B00 AS Date), 16)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (20, 6, N'Malo', CAST(0x313E0B00 AS Date), 1)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (21, 5, N'No le entendi nada en todo el semestre', CAST(0x313E0B00 AS Date), 1)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (22, 6, N'Bad', CAST(0x313E0B00 AS Date), 1)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (23, 7, N'Le falta algunas cosas pero es buen maestro', CAST(0x313E0B00 AS Date), 1)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (24, 7, N'Regular', CAST(0x313E0B00 AS Date), 1)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (25, 8, N'Me cayo bien, muy pocos le entendian a lo que explicaba', CAST(0x313E0B00 AS Date), 1)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (26, 5, NULL, CAST(0x313E0B00 AS Date), 1)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (27, 7, NULL, CAST(0x313E0B00 AS Date), 11)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (28, 6, N'Muy malo, no se le entiende nada', CAST(0x313E0B00 AS Date), 11)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (29, 9, N'Cuendo le entiendes te das cuenta de que explica muy bien', CAST(0x313E0B00 AS Date), 11)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (30, 9, N'Bueno', CAST(0x313E0B00 AS Date), 11)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (31, 9, N'Mejor que muchos', CAST(0x313E0B00 AS Date), 11)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (33, 9, NULL, CAST(0x313E0B00 AS Date), 11)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (35, 7, NULL, CAST(0x313E0B00 AS Date), 11)
INSERT [dbo].[Calificacion] ([idCalificacion], [calificacion], [comentario], [fecha], [idClase]) VALUES (36, 10, N'Gran nivel de conocimiento', CAST(0x313E0B00 AS Date), 11)
SET IDENTITY_INSERT [dbo].[Calificacion] OFF
SET IDENTITY_INSERT [dbo].[Carrera] ON 

INSERT [dbo].[Carrera] ([idCarrera], [carrera]) VALUES (1, N'Matematicas')
INSERT [dbo].[Carrera] ([idCarrera], [carrera]) VALUES (2, N'Fisica')
INSERT [dbo].[Carrera] ([idCarrera], [carrera]) VALUES (3, N'Ciencias Computacionales')
INSERT [dbo].[Carrera] ([idCarrera], [carrera]) VALUES (4, N'Actuaría')
INSERT [dbo].[Carrera] ([idCarrera], [carrera]) VALUES (5, N'Seguridad en T.I.')
INSERT [dbo].[Carrera] ([idCarrera], [carrera]) VALUES (6, N'Multimedia y Animación Digital')
SET IDENTITY_INSERT [dbo].[Carrera] OFF
SET IDENTITY_INSERT [dbo].[Maestro] ON 

INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (1, N'ADAME VILLANUEVA LUCIA, DRA.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (2, N'AYALA GÓMEZ SANDRA ANGÉLICA, DRA.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (3, N'CEBALLOS HERRERA DANIEL ENRIQUE, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (4, N'COMPARAN ELIZONDO JOSÉ LUÍS, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (5, N'ELIZONDO VILLARREAL NORA, DRA.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (6, N'GARCÍA MÉNDEZ MANUEL, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (7, N'GARZA LÓPEZ ISRAEL, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (8, N'GUERRERO VILLA MARTIN, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (9, N'GUZMÁN RAMOS VALENTÍN, M. C.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (10, N'GONZALEZ AMEZCUA OMAR, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (11, N'GRACIA PINILLA MIGUEL ÁNGEL, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (12, N'LARA NEAVE ALEJANDRO, M. E. C.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (13, N'MARTÍNEZ GUERRA EDGAR, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (14, N'MARTÍNEZ HERNÁNDEZ CARLOS, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (15, N'MENCHACA ARREDONDO JORGE LUIS, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (16, N'MEJÍA ROSALES  SERGIO, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (17, N'MORONES IBARRA RUBÉN, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (18, N'OBREGÓN GUERRA RICARDO, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (19, N'RAMÍREZ HERNÁNDEZ ENRIQUE RAÚL, M. C.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (20, N'RUIZ MENDOZA JUAN CARLOS, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (21, N'SALAS SOLÍS MARÍA CONCEPCIÓN. DRA.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (22, N'SALINAS ESTEVANE JUAN PABLO, DR.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (23, N'SUÁREZ DE LA CRUZ JESÚS GUADALUPE, M. E. C.', 2)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (24, N'AGUILAR DE LA ROSA MARTIN ALEJANDRO, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (25, N'CANDELARIA CORONADO MIGUEL ALEJANDRO, LIC.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (26, N'CANDELARIA TOVAR JOSE LUIS, LIC.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (27, N'CASTAÑEDA RODRIGUEZ DIANA, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (28, N'CASTRO MEDELLIN REYNA GUADALUPE, LIC.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (29, N'DE LA FUENTE GARCIA CARMEN DEL ROSARIO, M.A.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (30, N'DE LA GARZA OCHOA JUAN JESUS, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (31, N'ELIZONDO ESPINOZA CARLOS, ING.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (32, N'GARZA GARZA LUIS GERARDO, ING
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (33, N'GARZA GONZALEZ IRMA LETICIA , M.I.A.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (34, N'GIL GONZALEZ ALEIDA MAGDALENA, M.A.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (35, N'GRACIA PINILLA MIGUEL ANGEL, DR.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (36, N'HERNANDEZ BAEZ JORGE, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (37, N'HERNANDEZ CABRERA FRANCISCO, M.C.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (38, N'HERNANDEZ OYERVIDES MARISSA ESMERALDA, LIC.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (39, N'ISLAS PINEDA JORGE ALBERTO, M.C.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (40, N'JUAREZ AGUILAR MARIA LUISA, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (41, N'LEDEZMA MARTINEZ MARTHA, M.A.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (42, N'LUNA CRIADO CARLOS, DR.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (43, N'MARTINEZ CEJUDO MARIA DEL CARMEN, M.A.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (44, N'MARTINEZ MORENO PATRICIA, M.A.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (45, N'MEDINA MORON EDNA MARIA, M.A.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (46, N'MONTES GARZA RODOLFO, LIC.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (47, N'MORALES ALDANA ERICK GUILLERMO, LIC.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (48, N'RAMIREZ GRANADOS AURELIO, M.C.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (49, N'RAMIREZ TAMARIZ JUAN ANGEL, M.C.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (50, N'RECIO CANTU JOSE OSCAR, ING.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (51, N'REYES BARRERA GILBERTO, M.S.I.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (52, N'REYES MARTINEZ ALVARO, M.C.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (53, N'RODRIGUEZ GARCIA FELIPE DE JESUS, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (54, N'SALINAS MATA RENE AURELIANO, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (55, N'SALINAS RODRIGUEZ MONICA IVETT, LIC
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (56, N'SANCHEZ GARCIA MARIA DEL ROSARIO, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (57, N'SELVAS AGUILAR ROMEO, DR.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (58, N'SEPULVEDA GUERRERO RENE GASPAR, ING.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (59, N'SEPULVEDA GUERRERO ROGELIO JUVENAL, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (60, N'SOLIS BARBOSA MARTHA GUADALUPE, M.A.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (61, N'SOLIS POMAR FRANCISCO JOSÉ, DR.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (62, N'SOLIS VALENZUELA ERNESTO JESUS, M.I.A.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (63, N'TORRES CASTILLO FERNANDO, DR.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (64, N'VALDES MACIAS GERARDO MANUEL, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (65, N'VARGAS ZUÑIGA MIRIAM PATRICIA, M.T.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (66, N'VASILIEVNA KHARISSOVA OXANA, DRA.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (67, N'VAZQUEZ NIEBLA JOSE LUIS, ING.
', 3)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (68, N'ALANÍS LUNA LUIS ANTONIO,ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (69, N'ALVARADO DÍAZ DE LEÓN ESTELA, LIC.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (70, N'ALVAREZ CASTRO VICTOR MANUEL, ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (71, N'BARREIRO PALMA LUIS MANUEL, ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (72, N'CASTILLO CARRILLO OMAR MANUEL, ING.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (73, N'CARDENAS JAIMES JOSE ALBERTO, ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (74, N'CERDA RUIZ ALEJANDRA GUADALUPE, M.E.T.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (75, N'CHÁVEZ VALDÉZ MARÍA AURORA, M.A.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (76, N'DÁVALOS SÁNCHEZ CÉSAR CHRISTIAN, ING.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (77, N'DE LA CRUZ SANCHEZ HERIBERTO NOE, ING.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (78, N'FRANCO TREVIÑO GUILLERMO, ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (79, N'FUENTES OAXACA ELEAZAR, ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (80, N'GALVAN JARA FERNANDO IVAN, M.C
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (81, N'GALVAN JARA MIGUEL ANGEL, ING.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (82, N'GARCIA ESPINOSA BRAULIO OMAR, ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (83, N'GARCÍA MARQUEZ CHRISTIAN, ING.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (84, N'GHIO SEGOVIANO JESÚS LUIS CARLOS, M.C.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (85, N'GONZÁLEZ GONZÁLEZ OSVALDO HABIB, LIC
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (86, N'GONZÁLEZ SALINAS GABRIELA, M.A.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (87, N'HERNÁNDEZ ALANIS ENRIQUE, M.I.S.I.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (88, N'HERNÁNDEZ ALONSO DAVID ALEJANDRO, M.B.A.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (89, N'HERNÁNDEZ SALDAÑA JOSÉ ANASTACIO, LIC.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (90, N'JIMENEZ LARA JESUS ISAIAS, ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (91, N'LARA CHAVEZ MARIA DEL REFUGIO, LIC
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (92, N'LOYOLA RODRIGUEZ JOSE APOLINAR, M.T.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (93, N'MARGAIN REYES MIGUEL ÁNGEL, ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (94, N'MARTÍNEZ CANO ADRIANA, M.A.J.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (95, N'MARTINEZ HUERTA ATILANO, M.T.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (96, N'MENCHACA BRAVO SANTIAGO, M.F.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (97, N'MERLA VILLAFUERTE CARLOS, M.C.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (98, N'OCHOA OLIVA MARIA DE JESUS ANTONIA, M.T.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (99, N'OCHOA PINEDA JESÚS AGUSTÍN, M.B.A.
', 5)
GO
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (100, N'OROZCO ORTÍZ OMAR ARTURO, ING.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (101, N'ORTIZ OVIEDO ESTEBAN, ING.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (102, N'RODRIGUEZ MARTINEZ DAVID, M.T.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (103, N'RODRIGUEZ RAMIREZ PABLO CESAR, DR.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (104, N'RODRIGUEZ REYNA JOSE CARLOS, LIC
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (105, N'RUIZ AVILÉS ELI EMMANUEL, LIC.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (106, N'RUIZ AVILÉS ELI EMMANUEL, LIC.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (107, N'SALAZAR SANTILLAN MIGUEL ÁNGEL, LIC.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (108, N'SANCHEZ GUERRERO GUILLERMO EZEQUIEL, M.C.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (109, N'SANCHEZ MERINO GUILLERMO, ING.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (110, N'SANCHEZ LOPEZ ROMEO ALFONSO, ING
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (111, N'SILVA RUBIO RENÁN RAFAEL, M.C.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (112, N'SOTELO RUIZ ISRAEL FORTINO, M.T.I.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (113, N'SUSTAITA GUAJARDO DÁMASO ROBERTO, ING.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (114, N'VALENZUELA MURILLO YENNY DEL CARMEN, MC
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (115, N'VÁZQUEZ GONZÁLEZ JAIME ARTURO, M.I.
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (116, N'VERGARA CARMONA JUAN MANUEL, MBA
', 5)
INSERT [dbo].[Maestro] ([idMaestro], [maestro], [idCarrera]) VALUES (117, N'VIERA GONZALEZ PERLA MARLENE, LIC
', 5)
SET IDENTITY_INSERT [dbo].[Maestro] OFF
SET IDENTITY_INSERT [dbo].[Materia] ON 

INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (1, N'CÁLCULO DIFERENCIAL', 1)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (2, N'ÁLGEBRA', 1)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (3, N'GEOMETRÍA ANALÍTICA', 1)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (4, N'LÓGICA Y CONJUNTOS', 1)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (5, N'C. G 1 (COMPETENCIA COMUNICATIVA)', 1)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (6, N'C. G 2 (APLICACIÓN DE LAS TECNOLOGÍAS DE INFORMACIÓN)', 1)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (7, N'METODOLOGÍA DE LA PROGRAMACIÓN', 2)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (8, N'COMPETENCIA COMUNICATIVA', 2)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (9, N'CÁLCULO DIFERENCIAL', 2)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (10, N'ÁLGEBRA', 2)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (11, N'MECÁNICA TRASLACIONAL', 2)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (12, N'GEOMETRÍA ANALÍTICA', 2)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (13, N'APLICACIÓN DE LAS TECNOLOGÍAS DE INFORMACIÓN', 2)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (14, N'Metodología de la Programación', 3)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (15, N'Física Básica', 3)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (16, N'Geometría Analítica', 3)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (17, N'Álgebra', 3)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (18, N'Cálculo Diferencial', 3)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (19, N'Álgebra', 4)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (20, N'Cálculo diferencial', 4)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (21, N'Geometría analítica', 4)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (22, N'Metodología de la programación', 4)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (23, N'Física básica', 4)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (24, N'INGENIERÍA SOCIAL', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (25, N'PRINCIPIOS DE ARQUITECTURA COMPUTACIONAL', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (26, N'PROGRAMACION ORIENTADA A OBJETOS', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (27, N'LAB. PROGRAMACIÓN ORIENTADA A OBJETOS', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (28, N'ÁLGEBRA', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (29, N'NORMATIVIDAD Y REGULACIONES', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (30, N'FUNDAMENTOS DE LA SEGURIDAD INFORMÁTICA', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (31, N'APLICACION DE LAS TECNOLOGIAS DE INFORMACION', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (32, N'COMPETENCIA COMUNICATIVA', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (33, N'TOPICOS SELECTOS DE DESARROLLO HUMANO, SALUD Y DEPORTES', 5)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (34, N'Metodología de la programación', 6)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (35, N'Álgebra', 6)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (36, N'Geometría analítica', 6)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (37, N'Cálculo diferencial', 6)
INSERT [dbo].[Materia] ([idMateria], [materia], [idCarrera]) VALUES (38, N'Física básica', 6)
SET IDENTITY_INSERT [dbo].[Materia] OFF
SET IDENTITY_INSERT [dbo].[Rel_Materia_Maestro] ON 

INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (1, 7, 1)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (2, 8, 2)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (3, 9, 3)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (4, 10, 4)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (5, 11, 5)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (6, 12, 6)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (7, 13, 7)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (8, 7, 7)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (9, 8, 4)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (10, 14, 43)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (11, 15, 44)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (12, 16, 45)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (13, 17, 47)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (14, 18, 48)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (15, 24, 110)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (16, 25, 111)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (17, 26, 112)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (18, 27, 113)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (19, 28, 114)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (20, 29, 115)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (21, 30, 117)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (22, 31, 109)
INSERT [dbo].[Rel_Materia_Maestro] ([idClase], [idMateria], [idMaestro]) VALUES (23, 32, 106)
SET IDENTITY_INSERT [dbo].[Rel_Materia_Maestro] OFF
ALTER TABLE [dbo].[Calificacion] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Rel_Materia_Maestro] FOREIGN KEY([idClase])
REFERENCES [dbo].[Rel_Materia_Maestro] ([idClase])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Rel_Materia_Maestro]
GO
ALTER TABLE [dbo].[Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Maestro_Carrera] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carrera] ([idCarrera])
GO
ALTER TABLE [dbo].[Maestro] CHECK CONSTRAINT [FK_Maestro_Carrera]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carrera] ([idCarrera])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera]
GO
ALTER TABLE [dbo].[Rel_Materia_Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Rel_Materia_Maestro_Maestro] FOREIGN KEY([idMaestro])
REFERENCES [dbo].[Maestro] ([idMaestro])
GO
ALTER TABLE [dbo].[Rel_Materia_Maestro] CHECK CONSTRAINT [FK_Rel_Materia_Maestro_Maestro]
GO
ALTER TABLE [dbo].[Rel_Materia_Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Rel_Materia_Maestro_Materia] FOREIGN KEY([idMateria])
REFERENCES [dbo].[Materia] ([idMateria])
GO
ALTER TABLE [dbo].[Rel_Materia_Maestro] CHECK CONSTRAINT [FK_Rel_Materia_Maestro_Materia]
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD CHECK  (([calificacion]>=(0) AND [calificacion]<=(10)))
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[5] 4[56] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "VIEW_Clases"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Calificacion"
            Begin Extent = 
               Top = 207
               Left = 57
               Bottom = 404
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 3330
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Calificaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Calificaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[7] 4[53] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Maestro"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 179
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Rel_Materia_Maestro"
            Begin Extent = 
               Top = 180
               Left = 57
               Bottom = 350
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Materia"
            Begin Extent = 
               Top = 351
               Left = 57
               Bottom = 521
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Carrera"
            Begin Extent = 
               Top = 522
               Left = 57
               Bottom = 665
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Clases'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Clases'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[40] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Maestro"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 179
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Rel_Materia_Maestro"
            Begin Extent = 
               Top = 180
               Left = 57
               Bottom = 350
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Materia"
            Begin Extent = 
               Top = 351
               Left = 57
               Bottom = 521
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Carrera"
            Begin Extent = 
               Top = 522
               Left = 57
               Bottom = 665
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Maestro_Materias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Maestro_Materias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Maestro"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 179
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Carrera"
            Begin Extent = 
               Top = 180
               Left = 57
               Bottom = 323
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Maestros'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Maestros'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Materia"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 179
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Carrera"
            Begin Extent = 
               Top = 180
               Left = 57
               Bottom = 323
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Materias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_Materias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[39] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "VIEW_Clases"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 355
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Calificacion"
            Begin Extent = 
               Top = 207
               Left = 57
               Bottom = 404
               Right = 355
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_PromeidoTotal_Maestro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_PromeidoTotal_Maestro'
GO
USE [master]
GO
ALTER DATABASE [Comunidad_FCFM_By_Ivan] SET  READ_WRITE 
GO
