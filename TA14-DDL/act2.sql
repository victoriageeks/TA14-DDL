CREATE DATABASE biblio;
USE biblio;

CREATE TABLE editorial(
id_editorial SMALLINT NOT NULL,
nombre VARCHAR(60),
direccion VARCHAR(60),
telefono VARCHAR(15),
PRIMARY KEY(id_editorial)
);

CREATE TABLE libro(
id_libro INT NOT NULL,
titulo VARCHAR(60),
idioma VARCHAR(15),
formato VARCHAR(15),
id_editorial SMALLINT,
PRIMARY KEY(id_libro),
KEY(id_editorial),
FOREIGN KEY(id_editorial)
REFERENCES editorial(id_editorial)
ON DELETE SET NULL
ON UPDATE CASCADE
);

CREATE TABLE tema(
id_tema SMALLINT NOT NULL,
nombre VARCHAR(40),
PRIMARY KEY(id_tema)
);

CREATE TABLE autor(
id_autor INT NOT NULL,
nombre VARCHAR(60),
PRIMARY KEY(id_autor)
);

CREATE TABLE ejemplar(
id_clave_ej INT NOT NULL,
id_libro INT NOT NULL,
num_orden SMALLINT NOT NULL,
edicion SMALLINT,
ubicacion VARCHAR(15),
categoria CHAR,
PRIMARY KEY(id_clave_ej),
FOREIGN KEY(id_libro)
REFERENCES libro(id_libro)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE socio(
id_socio INT NOT NULL,
nombre VARCHAR(60),
direccion VARCHAR(60),
telefono VARCHAR(15),
cateogria CHAR,
PRIMARY KEY(id_socio)
);

CREATE TABLE prestamo(
id_socio INT,
id_clave_ej INT,
num_orden SMALLINT,
fecha_prestamo DATE NOT NULL,
fecha_devolucion DATE DEFAULT NULL,
notas BLOB,
FOREIGN KEY(id_socio)
REFERENCES socio(id_socio)
ON DELETE SET NULL
ON UPDATE CASCADE,
FOREIGN KEY(id_clave_ej)
REFERENCES ejemplar(id_clave_ej)
ON DELETE SET NULL
ON UPDATE CASCADE
);

CREATE TABLE trata_sobre(
id_libro INT NOT NULL,
id_tema INT NOT NULL,
FOREIGN KEY(id_libro)
REFERENCES libro(id_libro)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY(id_tema)
REFERENCES autor(id_tema)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE escrito_por(
id_libro INT NOT NULL,
id_autor INT NOT NULL,
FOREIGN KEY(id_libro)
REFERENCES libro(id_libro)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY(id_autor)
REFERENCES autor(id_autor)
ON DELETE CASCADE
ON UPDATE CASCADE
);