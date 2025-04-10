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
ON rama.id_promocion = promocion.id_promocion
INNER JOIN alumno
ON promocion.id_promocion = alumno.id_promocion
INNER JOIN proyecto
ON proyecto.id_rama = rama.id_rama
INNER JOIN aprobado
ON aprobado.id_proyecto = proyecto.id_proyecto
INNER JOIN campus
ON prmocion.id_promocion = campus.id_promocion
INNER JOIN 
