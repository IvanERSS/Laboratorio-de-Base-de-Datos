CREATE TABLE Materia (
	idMateria INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	materia VARCHAR(100)  NOT NULL
)


CREATE TABLE Carrera (
	idCarrera INT IDENTITY(1,1) PRIMARY KEY,
	carrera VARCHAR(30) NOT NULL
)


CREATE TABLE Maestro (
	idMaestro INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	maestro NVARCHAR(100) NOT NULL,
	idCarrera INT
)


CREATE TABLE Calificacion (
	idCalificacion INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	calificacion INT NOT NULL
		check(calificacion >= 0 AND calificacion <=10), --Crear rango del 0 al 10
	comentario NVARCHAR(500),
	fecha DATE DEFAULT GetDate(),
	idMaestro INT NOT NULL --LLAVE FORANEA
)


CREATE TABLE Rel_Materia_Maestro (
	idClase INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	idMateria INT,
	idMaestro INT
)
