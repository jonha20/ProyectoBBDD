--Cuantos alumnos hay en cada promoción
SELECT 
	COUNT(alumno.nombre),
	promocion.npromocion
FROM alumno
INNER JOIN promocion
ON promocion.id_promocion = alumno.id_promocion
GROUP BY promocion.npromocion;

--Cuantos alumnos hay en cada campus (hay alumnos con campus sin añadir)
SELECT 
	COUNT(alumno.nombre),
	campus.nombre
FROM alumno
INNER JOIN promocion
ON promocion.id_promocion = alumno.id_promocion
INNER JOIN campus
ON campus.id_promocion = promocion.id_promocion
GROUP BY campus.nombre;

--Cuantos alumnos hay por campus y por a que promoción pertenecen
SELECT 
	COUNT(alumno.nombre),
	campus.nombre,
	promocion.npromocion,
	promocion.fecha_inicio
FROM alumno
INNER JOIN promocion
ON promocion.id_promocion = alumno.id_promocion
LEFT JOIN campus
ON campus.id_promocion = promocion.id_promocion
GROUP BY promocion.npromocion, campus.nombre, promocion.fecha_inicio;


--Cuantos alumnos hay de cada modalidad

select  count(t1.Nombre) ,t3.nombre from alumno t1
inner join promocion t2 on t1.id_promocion = t2.id_promocion
inner join rama t3 on t2.id_rama = t3.id_rama
group by 2