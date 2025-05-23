CREATE TABLE DueñosConDireccion AS
SELECT d.Nombre, d.Apellido, dir.Ciudad, dir.Calle
FROM `Dueños de mascotas` d
JOIN Direcciones dir ON d.Direccion = dir.id_Direcciones;


SELECT m.Nombre AS NombreMascota, e.Nombre AS TipoEspecie
FROM Mascotas m
JOIN Especies e ON m.Especies_id_Especies = e.id_Especies;


SELECT nombre, (SELECT COUNT(*) FROM Visitas v WHERE v.id_Mascota = m.id_Mascota) AS TotalVisitas
FROM Mascotas m;


SELECT d.Nombre, d.Apellido, COUNT(m.id_Mascota) AS CantidadMascotas
FROM `Dueños de mascotas` d
JOIN Mascotas m ON d.id_Dueños_de_mascotas = m.`Dueños de mascotas_id_Dueños de mascotas`
GROUP BY d.id_Dueños_de_mascotas;


SELECT e.Nombre AS Especie, ROUND(AVG(m.Edad), 2) AS EdadPromedio
FROM Mascotas m
JOIN Especies e ON m.Especies_id_Especies = e.id_Especies
GROUP BY e.Nombre;


SELECT Nombre, Precio_base
FROM Servicios
WHERE Precio_base = (SELECT MAX(Precio_base) FROM Servicios);


SELECT CONCAT(Nombre, ' ', Apellido) AS NombreCompleto
FROM `Dueños de mascotas`;


SELECT UPPER(Nombre) AS NombreMayusculas, LOWER(Apellido) AS ApellidoMinusculas
FROM `Dueños de mascotas`;


SELECT Nombre, LENGTH(TRIM(Nombre)) AS LargoNombre
FROM Mascotas;


SELECT Nombre, SUBSTRING(Nombre, 1, 3) AS Prefijo
FROM Mascotas;


SELECT Nombre, ROUND(Precio_base, -3) AS PrecioRedondeado
FROM Servicios;


SELECT Nombre, IF(Vacunado = 'Sí', 'Vacunado', 'No vacunado') AS EstadoVacuna
FROM Mascotas;


SELECT v.fecha, m.Nombre AS Mascota, s.Nombre AS Servicio
FROM Visitas v
JOIN Mascotas m ON v.id_Mascota = m.id_Mascota
JOIN Servicios s ON v.id_Servicio = s.id_Servicio;


SELECT s.Nombre AS Servicio, COUNT(v.id_Visitas) AS TotalVisitas
FROM Visitas v
JOIN Servicios s ON v.id_Servicio = s.id_Servicio
GROUP BY s.Nombre;


SELECT Nombre, Apellido
FROM `Dueños de mascotas`
ORDER BY Apellido ASC;
