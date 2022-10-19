CREATE DATABASE cientificos;
USE cientificos;

CREATE TABLE cientificos(
DNI VARCHAR(8) PRIMARY KEY,
nom_apels VARCHAR(255)
);

CREATE TABLE proyecto(
id CHAR(4) PRIMARY KEY,
nombre VARCHAR(255),
horas INT 
);

CREATE TABLE asignado_a(
cientifico VARCHAR(8),
proyecto CHAR(4),
FOREIGN KEY(cientifico) REFERENCES cientificos(DNI)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(proyecto) REFERENCES proyecto(id)
ON DELETE CASCADE ON UPDATE CASCADE
);

USE cientificos;

INSERT INTO cientificos(DNI, nom_apels) VALUES
('12345678','Victoria Lavega'),
('12345679','Jaume Curto'),
('12345677','Alvaro Lopez'),
('12345676','Ivan Herrero'),
('12345665','Dani Martos'),
('12345664','Carlos Montero'),
('12345663','Alberto Gonzalez'),
('12345662','Justin Bieber'),
('12345619','Benito Martinez'),
('12345650','Selena Gomez');

INSERT INTO proyecto (id,nombre,horas) values
('001A','Reaccion de Caustificacion',100),
('001B','Humo al vacio',50),
('001C','Vortex Rings',150),
('001D','Electrolisis de una mezcla de agua y sal',70),
('001E','Explosion de burbujas',70),
('001F','acido base',50),
('001G','Reaccion de precipitacion',60),
('001H','globo newtoniano',75),
('001I','cuchara con agua',20),
('001J','derretir una cuchara con agua',35);

INSERT INTO asignado_a (cientifico, proyecto) VALUES
 ('12345678','001A'),
 ('12345679','001B'),
 ('12345677','001C'),
 ('12345676','001D'),
 ('12345665','001E'),
 ('12345664','001F'),
 ('12345663','001G'),
 ('12345662','001H'),
 ('12345619','001I'),
 ('12345650','001J');