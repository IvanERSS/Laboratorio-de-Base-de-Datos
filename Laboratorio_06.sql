/*
Laboratorio 07 VIEWS y JIONS
Es una manera para ahorrar el uso de querys
Los JOINS hacen busquedas de uno en uno, eso hace que se sature el sistema.
Las vistas hacenn que de 5 tablas se comviertan en una sola, haciendo asi ahorrando RAM.
Las vistas no pueden ser modificadas, no compromete a las tablas originales de la base de datos.
*/


--01 Vista que muestre todos los maestros y las materias que imparten

CREATE VIEW Maestros_Materia_Carrera AS

	SELECT 
		ma.nombreMaestro as 'Maestro', mat.nombreMateria as 'Materia', car.nombreCarrera as 'Carrera de la materia'
	FROM 
		Materia as mat
		JOIN Relacion_Materia_Carrera as rel_mat_car
		ON mat.idMateria=rel_mat_car.idMateria
		JOIN Carrera as car
		ON car.idCarrera=rel_mat_car.idCarrera
		JOIN Relacion_Clase_Maestro as rel_cla_mae
		ON rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		JOIN Maestro as ma
		ON ma.idMaestro=rel_cla_mae.idMaestro
		JOIN Calificacion as cal
		ON cal.idMaestro=ma.idMaestro
	WHERE
			rel_mat_car.idCarrera=car.idCarrera 
		AND rel_mat_car.idMateria = mat.idMateria
		AND rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		AND rel_cla_mae.idMaestro=ma.idMaestro


--02 Vista que muestre la carrera y los maestros en ella

CREATE VIEW Licenciatura_Maestro AS

	SELECT 
		car.nombreCarrera as 'Lisenciatura', ma.nombreMaestro as 'Maestro'
	FROM 
		Materia as mat
		JOIN Relacion_Materia_Carrera as rel_mat_car
		ON mat.idMateria=rel_mat_car.idMateria
		JOIN Carrera as car
		ON car.idCarrera=rel_mat_car.idCarrera
		JOIN Relacion_Clase_Maestro as rel_cla_mae
		ON rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		JOIN Maestro as ma
		ON ma.idMaestro=rel_cla_mae.idMaestro
		JOIN Calificacion as cal
		ON cal.idMaestro=ma.idMaestro
	WHERE
			rel_mat_car.idCarrera=car.idCarrera 
		AND rel_mat_car.idMateria = mat.idMateria
		AND rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		AND rel_cla_mae.idMaestro=ma.idMaestro
	ORDER BY 
		car.idCarrera

--03 Vista que muestre todas las relaciones entre materia y carrera

CREATE VIEW Materias AS 

	SELECT 
		car.nombreCarrera as 'Lisenciatura', mat.nombreMateria as 'Materia'
	FROM 
		Materia as mat
		JOIN Relacion_Materia_Carrera as rel_mat_car
		ON mat.idMateria=rel_mat_car.idMateria
		JOIN Carrera as car
		ON car.idCarrera=rel_mat_car.idCarrera
		JOIN Relacion_Clase_Maestro as rel_cla_mae
		ON rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		JOIN Maestro as ma
		ON ma.idMaestro=rel_cla_mae.idMaestro
		JOIN Calificacion as cal
		ON cal.idMaestro=ma.idMaestro
	WHERE
			rel_mat_car.idCarrera=car.idCarrera 
		AND rel_mat_car.idMateria = mat.idMateria
		AND rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		AND rel_cla_mae.idMaestro=ma.idMaestro
	ORDER BY
		car.idCarrera

--04 Vista que muestre todos los comentarios, la calificacion y el maestro

CREATE VIEW Calificacion_Comentarios AS 

	SELECT 
		ma.nombreMaestro as 'Maestro', cal.calificacion as 'Calificacion 01/10' --, cal.comentario
	FROM 
		Materia as mat
		JOIN Relacion_Materia_Carrera as rel_mat_car
		ON mat.idMateria=rel_mat_car.idMateria
		JOIN Carrera as car
		ON car.idCarrera=rel_mat_car.idCarrera
		JOIN Relacion_Clase_Maestro as rel_cla_mae
		ON rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		JOIN Maestro as ma
		ON ma.idMaestro=rel_cla_mae.idMaestro
		JOIN Calificacion as cal
		ON cal.idMaestro=ma.idMaestro
	WHERE
			rel_mat_car.idCarrera=car.idCarrera 
		AND rel_mat_car.idMateria = mat.idMateria
		AND rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		AND rel_cla_mae.idMaestro=ma.idMaestro
	ORDER BY
		cal.fecha

--05 Vista que muestra el maestro y toas sus calificaciones calificacion

CREATE VIEW Maestro_Calificacion AS 

	SELECT 
		ma.nombreMaestro as 'Maestro', cal.calificacion as 'Calificacion', cal.fecha as 'Fecha'
	FROM 
		Materia as mat
		JOIN Relacion_Materia_Carrera as rel_mat_car
		ON mat.idMateria=rel_mat_car.idMateria
		JOIN Carrera as car
		ON car.idCarrera=rel_mat_car.idCarrera
		JOIN Relacion_Clase_Maestro as rel_cla_mae
		ON rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		JOIN Maestro as ma
		ON ma.idMaestro=rel_cla_mae.idMaestro
		JOIN Calificacion as cal
		ON cal.idMaestro=ma.idMaestro
	WHERE
			rel_mat_car.idCarrera=car.idCarrera 
		AND rel_mat_car.idMateria = mat.idMateria
		AND rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		AND rel_cla_mae.idMaestro=ma.idMaestro
	ORDER BY 
		cal.fecha

--Vista que tome rl promedio de cada maestro

CREATE VIEW Promedio AS 

	SELECT 
		ma.nombreMaestro as 'Maestro', AVG(calificacion) as 'Promedio'
	FROM 
		Materia as mat
		JOIN Relacion_Materia_Carrera as rel_mat_car
		ON mat.idMateria=rel_mat_car.idMateria
		JOIN Carrera as car
		ON car.idCarrera=rel_mat_car.idCarrera
		JOIN Relacion_Clase_Maestro as rel_cla_mae
		ON rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		JOIN Maestro as ma
		ON ma.idMaestro=rel_cla_mae.idMaestro
		JOIN Calificacion as cal
		ON cal.idMaestro=ma.idMaestro
	WHERE
			rel_mat_car.idCarrera=car.idCarrera 
		AND rel_mat_car.idMateria = mat.idMateria
		AND rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		AND rel_cla_mae.idMaestro=ma.idMaestro
	GROUP BY 
		ma.idMaestro


--Vista Buenos maestros
CREATE VIEW Promedio AS 

	SELECT 
		ma.nombreMaestro as 'Maestro', AVG(calificacion) as 'Promedio'
	FROM 
		Materia as mat
		JOIN Relacion_Materia_Carrera as rel_mat_car
		ON mat.idMateria=rel_mat_car.idMateria
		JOIN Carrera as car
		ON car.idCarrera=rel_mat_car.idCarrera
		JOIN Relacion_Clase_Maestro as rel_cla_mae
		ON rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		JOIN Maestro as ma
		ON ma.idMaestro=rel_cla_mae.idMaestro
		JOIN Calificacion as cal
		ON cal.idMaestro=ma.idMaestro
	WHERE
			rel_mat_car.idCarrera=car.idCarrera 
		AND rel_mat_car.idMateria = mat.idMateria
		AND rel_cla_mae.idClase=rel_mat_car.idRelMateria_Carrera
		AND rel_cla_mae.idMaestro=ma.idMaestro
	GROUP BY 
		ma.idMaestro
	HAVING
		Promedio > 70