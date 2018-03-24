/*
10 insert por tabla
5 update
5 delete
*/

--INSERT's


--USUARIO
INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	1,
	'Ivan',
	'Van',
	'123',
	'19980225',
	GETDATE()
)

INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	2,
	'Jose Isrrael',
	'Isrra',
	'123',
	'19980225',
	GETDATE()
)

INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	3,
	'Jesus Eduardo',
	'Lalocura',
	'123',
	'19980225',
	GETDATE()
)

INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	4,
	'Guilermo',
	'Memo',
	'123',
	'19980225',
	GETDATE()
)

INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	5,
	'Allan Ubago',
	'Yisus',
	'123',
	'19980225',
	GETDATE()
)

INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	6,
	'Allan Ubago',
	'Yisus',
	'123',
	'19980225',
	GETDATE()
)

INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	7,
	'Anahi Vega',
	'Vega',
	'123',
	'19980225',
	GETDATE()
)

INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	8,
	'MElissa Herrera',
	'Mels',
	'123',
	'19980225',
	GETDATE()
)

INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	9,
	'Fabian Raoms',
	'Tarro',
	'123',
	'19980225',
	GETDATE()
)

INSERT INTO Usuario
VALUES (
--id, nombre, nombreUsuario, contraseña, fechaNacimiento, edad, antiguedad, fechaCreacion
	10,
	'Gustavo Cortez',
	'ORK',
	'123',
	'19980225',
	GETDATE()
)


--COMENTARIO
INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	1,
	'hola',
	GETDATE(),
	1,
	1	
)

INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	2,
	'que buen post',
	GETDATE(),
	1,
	1	
)

INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	3,
	'no soy de aqui',
	GETDATE(),
	1,
	1	
)

INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	4,
	'estoy aburrido',
	GETDATE(),
	1,
	1	
)

INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	5,
	'soy nuevo',
	GETDATE(),
	1,
	1	
)

INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	6,
	'hola',
	GETDATE(),
	1,
	1	
)

INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	8,
	'soy el comentario numero 1,000',
	GETDATE(),
	1,
	1	
)

INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	1,
	'que buena pagina',
	GETDATE(),
	1,
	1	
)

INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	9,
	'ooohhhh',
	GETDATE(),
	1,
	1	
)

INSERT INTO Comentario
VALUES (
--idComentario, comentario, fecha, idUsuario, idPlantilla
	10,
	'ohhhh',
	GETDATE(),
	1,
	1	
)


--PLANTILLA
INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	1,
	'Analisis y administracion del riesgo',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	2,
	'TELE I',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	1,
	'TELE II',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	1,
	'TELE III',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	1,
	'TELE IV',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	1,
	'Circuitos Digitales',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	1,
	'Ambiente y sustentabilidad',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	1,
	'Competencia Comunicativa',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	1,
	'Cultura de calidad',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Plantilla
VALUES(
--id, nombrePlantilla, descripcion, noComentarios, idTema, fechaCreacion
	1,
	'Cultura de regional',
	'Materia de la FCFM',
	0,
	1,
	GETDATE()
)

INSERT INTO Tema
Values (
--idTema, nombreTema, noPlantillas, feccha
	1,
	'Materias FCFM',
	0,
	GETDATE()
	
)



--UPDATES
UPDATE Tema  SET nombreTema = 'Clases FCFM' where idTema = 1

UPDATE Tema  SET nombreTema = 'Clases FCFM' where idTema = 1

UPDATE Tema  SET nombreTema = 'Clases FCFM' where idTema = 1

UPDATE Tema  SET nombreTema = 'Clases FCFM' where idTema = 1

UPDATE Tema  SET nombreTema = 'Clases FCFM' where idTema = 1

--DELETE'S

DELETE FROM Usuario WHERE idUsuario = 2;

DELETE FROM Usuario WHERE idUsuario = 1;

DELETE FROM Tema WHERE idTema = 2;

DELETE FROM Plantilla WHERE idPlantilla = 2;

DELETE FROM Plantilla WHERE idPlantilla = 3;

