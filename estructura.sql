CREATE TABLE Direcciones (
    id_Direcciones INT PRIMARY KEY,
    Calle VARCHAR(45),
    Numero VARCHAR(45),
    Ciudad VARCHAR(45),
    Departamento VARCHAR(45),
    País VARCHAR(45),
    Código_postal VARCHAR(45),
    Dueños_de_mascotas_id INT,
    FOREIGN KEY (Dueños_de_mascotas_id) REFERENCES Dueños_de_mascotas(id_Dueños_de_mascotas)
);


CREATE TABLE Dueños_de_mascotas (
    id_Dueños_de_mascotas INT PRIMARY KEY,
    Nombre VARCHAR(45),
    Apellido VARCHAR(45),
    Cédula VARCHAR(45),
    Teléfono VARCHAR(45)
);


CREATE TABLE Razas (
    id_Razas INT PRIMARY KEY,
    Nombre VARCHAR(45)
);


CREATE TABLE Especies (
    id_Especies INT PRIMARY KEY,
    Nombre VARCHAR(45)
);


CREATE TABLE Mascotas (
    id_Mascota INT PRIMARY KEY,
    Nombre VARCHAR(45),
    Edad INT,
    Especie VARCHAR(45),
    Raza VARCHAR(45),
    Sexo VARCHAR(45),
    Vacunado MEDIUMTEXT,
    Dueños_de_mascotas_id INT,
    Razas_id_Razas INT,
    Especies_id_Especies INT,
    FOREIGN KEY (Dueños_de_mascotas_id) REFERENCES Dueños_de_mascotas(id_Dueños_de_mascotas),
    FOREIGN KEY (Razas_id_Razas) REFERENCES Razas(id_Razas),
    FOREIGN KEY (Especies_id_Especies) REFERENCES Especies(id_Especies)
);


CREATE TABLE Servicios (
    id_Servicio INT PRIMARY KEY,
    Nombre VARCHAR(45),
    Descripción LONGTEXT,
    Precio_base INT
);


CREATE TABLE Tratamientos (
    idTratamiento INT PRIMARY KEY,
    nombre VARCHAR(45),
    observaciones VARCHAR(45)
);


CREATE TABLE Visitas (
    id_Visitas INT PRIMARY KEY,
    id_Mascota INT,
    id_Servicio INT,
    id_Tratamiento INT,
    fecha DATE,
    FOREIGN KEY (id_Mascota) REFERENCES Mascotas(id_Mascota),
    FOREIGN KEY (id_Servicio) REFERENCES Servicios(id_Servicio),
    FOREIGN KEY (id_Tratamiento) REFERENCES Tratamientos(idTratamiento)
);