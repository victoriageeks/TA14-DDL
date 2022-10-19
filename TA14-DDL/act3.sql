CREATE DATABASE tienda_informatica;
USE tienda_informatica;

CREATE TABLE fabricantes(
codigo INT PRIMARY KEY,
nombre VARCHAR(100)
);

CREATE TABLE articulos(
codigo INT PRIMARY KEY,
nombre VARCHAR(100),
precio INT,
fabricante INT,
FOREIGN KEY(fabricante) REFERENCES fabricantes(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);