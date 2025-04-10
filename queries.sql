--Sacar una tabla con los alumnos como el ejemplo del csv

SELECT 
    alumno.nombre,
    alumno.email,
    promocion.npromocion,
    promocion.fecha_inicio,
    campus.nombre,
    proyecto.nombre,
    aprobado.apto
FROM rama
INNER JOIN promocion
ON rama.id_rama = promocion.id_rama
INNER JOIN alumno
ON promocion.id_promocion = alumno.id_promocion
INNER JOIN proyecto
ON proyecto.id_rama = rama.id_rama
INNER JOIN aprobado
ON aprobado.id_proyecto = proyecto.id_proyecto
INNER JOIN campus
ON prmocion.id_promocion = campus.id_promocion
INNER JOIN tasistencia
ON rama.id_rama = tasistencia.id_rama
INNER JOIN modalidad
ON rama.id_rama = modalidad.id_rama;

--Sacar una tabla con los profesores como el ejemplo del csv

SELECT 
    profesor.nombre,
    rol.nombre,
    rama.nombre,
    promocion.npromocion,
    campus.nombre,
    tasistencia.tipo
FROM profesor
INNER JOIN rama
ON rama.id_rama = profesor.id_rama
INNER JOIN promocion
ON promocion.id_rama = rama.id_rama
INNER JOIN rol
ON rol.id_rol = profesor.id_rol
INNER JOIN campus
ON campus.id_promocion = promocion.id_promocion
