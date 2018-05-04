/*
	Practica 08
	5 Funciones almacenados
	1 Funcion
	1 Trigger


	Procedimientos almacenados y los SP, su funcion puede ser para meyor seguridad y la jerarquizacion de las configuraciones de la informacion.
	Triggers dentro de la programacion existen eventos

*/




--					Triggers 1/1
--01
CREATE TRIGGER TR_Insert
AFTER OF UPDATE --AFTER
AS
	BEGIN
	SELECT *
	FROM INSERTED
	SELECT *
	FROM DELETED
END









--					Funciones 1/1
--01
CREATE FUNCTION FN_PromDeDosCalificaciones(@n1 float, @n2 float ) RETURNS float
AS
	BEGIN
		DECLARE @x float

		SET @x = @n1 + @n2
		SET @x = @x/2

		return @x
	END





--					PROCEDURES 5/5
--01
CREATE PROCEDURE SP_Add_Maestro @Maestro varchar(100), @idCarrera INT
AS
	INSERT INTO 
		Maestro(maestro,idCarrera)
	VALUES
		(@Maestro,@idCarrera)

--SP_INSERT_Maestro 'Rodriguez Salazar Ivan', 5


--02
CREATE PROCEDURE SP_Add_Materia @Materia varchar(100), @idCarrera INT
AS
	INSERT INTO 
		Materia(materia,idCarrera)
	VALUES
		(@Materia,@idCarrera)


--03
CREATE PROCEDURE SP_Add_Carrera @Carrera varchar(100)
AS
	INSERT INTO 
		Carrera(carrera)
	VALUES
		(@Carrera)


--04
CREATE PROCEDURE SP_BuscarMaestro @Busqueda VARCHAR(100)
AS
	SELECT 
		*  
	FROM 
		VIEW_Maestros
	WHERE
		VIEW_Maestros.Maestro LIKE '%'+@Busqueda+'%'

--SP_BuscarMaestro 'IVAN'


--05
CREATE PROCEDURE SP_BuscarEnComentarios @Busqueda VARCHAR(100)
AS
	SELECT 
		*  
	FROM 
		VIEW_Calificaciones
	WHERE
		VIEW_Calificaciones.Comentario LIKE '%'+@Busqueda+'%'

--SP_BuscarEnComentarios 'muy bueno'

