
--5 SELECT comunes
--Materias
SELECT nombreMateria AS Materias FROM Materia
--Maestros
SELECT nombreMaestro AS Maestros FROM Maestro
--Calificaciones
SELECT calificacion AS Calificaciones FROM Calficacion
--Reportes
SELECT reporte AS Reportes FROM Reporte
--Carreras
SELECT nombreCarrera AS Carreras FROM Carrera


--5 SELECT con top
--Materias
SELECT TOP 5 nombreMateria AS TOP_5_Materias FROM Materia
--Maestros
SELECT TOP 5 nombreMaestro AS TOP_5_Maestros FROM Maestro
--Calificaciones
SELECT TOP 5 calificacion AS TOP_5_Calificaciones FROM Calficacion
--Reportes
SELECT TOP 5 reporte AS TOP_5_Reportes FROM Reporte
--Carreras
SELECT TOP 5 nombreCarrera AS TOP_5_Carreras FROM Carrera


--5 SELECT con goup by
SELECT nombreMaestro AS Maestro, nivelAcademico AS Nivel_Academico
FROM Maestro
GROUP BY idMaestro

SELECT nombreMateria AS Materia
FROM Materia
GROUP BY idMateria

SELECT Carrera.nombreCarrera
FROM Carrera
GROUP BY idCarrera

SELECT nivelAcademico, nombreMaestro
FROM Maestro
GROUP BY nivelAcademico

SELECT reporte
FROM Reporte
GROUP BY idReporte



--5 SELECT con funcinon agregada
SELECT COUNT(Maestro.nivelAcademico), Maestro.nivelAcademico
FROM Maestro

SELECT Maestro.nivelAcademico, COUNT(Maestro.idMaestro) AS NoDeMaestros
FROM Maestro
GROUP BY Maestro.nivelAcademico

SELECT SUM(Calficacion.calificacion) AS SumaTotal
FROM Calficacion

SELECT MAX(calificacion)
FROM Calficacion

SELECT MIN(calificacion)
FROM Calficacion



--5 SELECT con having

SELECT Calficacion.comentario, calificacion
FROM Calficacion
GROUP BY idCalificacion
HAVING calificacion = 5

SELECT Maestro.nombreMaestro, Calficacion.calificacion
FROM Calficacion, Maestro
GROUP BY nombreMaestro
HAVING idMaestro = idCalificacion

SELECT Maestro.nombreMaestro
FROM Maestro, Calficacion
WHERE idCalificacion = idMaestro
GROUP BY idMaestro
HAVING calificacion = 5

SELECT Maestro.nivelAcademico
FROM Calficacion, Maestro
GROUP BY nombreMaestro
HAVING calificacion = 5

SELECT Maestro.nombreMaestro
FROM Maestro, Calficacion
GROUP BY nombreMaestro
HAVING calificacion = 1
