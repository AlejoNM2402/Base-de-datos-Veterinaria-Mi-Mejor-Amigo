INSERT INTO Direcciones (id_Direcciones, Calle, Numero, Ciudad, Departamento, Pais, Codigo_postal)
VALUES
(1, 'Av. Central', '101', 'Bogotá', 'Cundinamarca', 'Colombia', '110111'),
(2, 'Calle Luna', '22', 'Medellín', 'Antioquia', 'Colombia', '050021'),
(3, 'Av. Libertador', '150', 'Cali', 'Valle del Cauca', 'Colombia', '760001'),
(4, 'Calle Sol', '33B', 'Barranquilla', 'Atlántico', 'Colombia', '080001'),
(5, 'Calle Real', '45', 'Cartagena', 'Bolívar', 'Colombia', '130001');


INSERT INTO `Dueños de mascotas` (id_Dueños_de_mascotas, Nombre, Apellido, Cédula, Teléfono, Direccion)
VALUES
(1, 'Carlos', 'Ramírez', '12345678', '3100000001', 1),
(2, 'Laura', 'González', '87654321', '3100000002', 2),
(3, 'Andrés', 'Pérez', '23456789', '3100000003', 3),
(4, 'María', 'López', '98765432', '3100000004', 4),
(5, 'Sofía', 'Martínez', '34567890', '3100000005', 5);


INSERT INTO Razas (id_Razas, Nombre) VALUES
(1, 'Golden Retriever'),
(2, 'Persa'),
(3, 'Labrador'),
(4, 'Pastor Alemán'),
(5, 'Siamés');


INSERT INTO Especies (id_Especies, Nombre) VALUES
(1, 'Perro'),
(2, 'Gato');


INSERT INTO Mascotas (id_Mascota, Nombre, Edad, Especie, Raza, Sexo, Vacunado, `Dueños de mascotas_id_Dueños de mascotas`, Razas_id_Razas, Especies_id_Especies)
VALUES
(1, 'Max', 5, 'Perro', 'Golden Retriever', 'M', 'Sí', 1, 1, 1),
(2, 'Luna', 3, 'Gato', 'Persa', 'F', 'Sí', 2, 2, 2),
(3, 'Rocky', 2, 'Perro', 'Labrador', 'M', 'No', 1, 3, 1),
(4, 'Mia', 1, 'Gato', 'Siamés', 'F', 'Sí', 3, 5, 2),
(5, 'Simba', 4, 'Perro', 'Pastor Alemán', 'M', 'Sí', 2, 4, 1),
(6, 'Nala', 6, 'Gato', 'Persa', 'F', 'No', 3, 2, 2),
(7, 'Toby', 2, 'Perro', 'Labrador', 'M', 'Sí', 4, 3, 1),
(8, 'Felix', 5, 'Gato', 'Siamés', 'M', 'Sí', 4, 5, 2),
(9, 'Coco', 3, 'Perro', 'Golden Retriever', 'F', 'Sí', 5, 1, 1),
(10, 'Lola', 4, 'Gato', 'Persa', 'F', 'No', 5, 2, 2);


INSERT INTO Servicios (id_Servicio, Nombre, Descripción, Precio_base)
VALUES
(1, 'Consulta general', 'Revisión médica básica', 30000),
(2, 'Vacunación', 'Aplicación de vacuna general', 50000),
(3, 'Desparasitación', 'Tratamiento antiparasitario', 25000),
(4, 'Cirugía menor', 'Intervención quirúrgica menor', 120000),
(5, 'Control dental', 'Limpieza de dientes', 40000);


INSERT INTO Tratamientos (idTratamiento, nombre, observaciones)
VALUES
(1, 'Antibiótico', 'Administrar durante 7 días'),
(2, 'Desparasitación', 'Repetir en 15 días'),
(3, 'Vacuna rabia', 'Anual'),
(4, 'Anestesia', 'Uso supervisado'),
(5, 'Curación de herida', 'Cambiar vendaje cada 2 días');


INSERT INTO Visitas (id_Visitas, id_Mascota, id_Servicio, fecha, Tratamientos_idTratamiento, Servicio_id_Servicio, Mascotas_id_Mascota, Mascotas_Dueños_de_mascotas_id_Dueños_de_mascotas)
VALUES
(1, 1, 1, '2024-01-10', 1, 1, 1, 1),
(2, 2, 2, '2024-02-14', 3, 2, 2, 2),
(3, 3, 3, '2024-03-01', 2, 3, 3, 1),
(4, 4, 5, '2024-03-20', 5, 5, 4, 3),
(5, 5, 4, '2024-04-10', 4, 4, 5, 2),
(6, 6, 2, '2024-05-01', 3, 2, 6, 3),
(7, 7, 1, '2024-05-15', 1, 1, 7, 4),
(8, 8, 5, '2024-06-01', 5, 5, 8, 4),
(9, 9, 3, '2024-06-10', 2, 3, 9, 5),
(10, 10, 1, '2024-06-20', 1, 1, 10, 5);
