CREATE SCHEMA Grandes_Almacenes_t14_10;
USE Grandes_Almacenes_t14_10;

CREATE TABLE Cajeros(
codigo INT NOT NULL AUTO_INCREMENT,
nombre_apellidos VARCHAR(255),
KEY(codigo)
);
CREATE TABLE Productos(
codigo INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100),
precio INT,
KEY (codigo)
);

CREATE TABLE Maquinas_registradoras(
codigo INT NOT NULL AUTO_INCREMENT,
piso INT,
KEY (codigo)
);

CREATE TABLE Venta(
cajero INT NOT NULL,
maquina INT NOT NULL,
producto INT NOT NULL,
FOREIGN KEY (cajero) REFERENCES Cajeros(codigo),
FOREIGN KEY (maquina) REFERENCES Maquinas_registradoras(codigo),
FOREIGN KEY (producto) REFERENCES Productos(codigo)
);

INSERT INTO Cajeros(nombre_apellidos) VALUE("Alvaro Bernabey");
INSERT INTO Cajeros(nombre_apellidos) VALUE("Nicolas Bernabey");
INSERT INTO Cajeros(nombre_apellidos) VALUE("Jaume robledo");
INSERT INTO Cajeros(nombre_apellidos) VALUE("Victoria Lopez");
INSERT INTO Cajeros(nombre_apellidos) VALUE("Jose Ramirez");
INSERT INTO Cajeros(nombre_apellidos) VALUE("Roberto Alabe");
INSERT INTO Cajeros(nombre_apellidos) VALUE("Albert Sudoku");
INSERT INTO Cajeros(nombre_apellidos) VALUE("Cristiano Jamaldo");
INSERT INTO Cajeros(nombre_apellidos) VALUE("Lionel Mesa");
INSERT INTO Cajeros(nombre_apellidos) VALUE("Roberto Tevez");

INSERT INTO Productos(nombre,precio) VALUE("Tomate",3);
INSERT INTO Productos(nombre,precio)  VALUE("CocaCola",4);
INSERT INTO Productos(nombre,precio) VALUE("Agua",1);
INSERT INTO Productos(nombre,precio)  VALUE("Salsa",2);
INSERT INTO Productos(nombre,precio) VALUE("Cerveza",1);
INSERT INTO Productos(nombre,precio)  VALUE("Papas",5);
INSERT INTO Productos(nombre,precio) VALUE("Jugo",5);
INSERT INTO Productos(nombre,precio) VALUE("Pollo",10);
INSERT INTO Productos(nombre,precio) VALUE("Lechuga",1);
INSERT INTO Productos(nombre,precio) VALUE("Arroz",1);

INSERT INTO Maquinas_registradoras(piso) VALUE(1);
INSERT INTO Maquinas_registradoras(piso) VALUE(6);
INSERT INTO Maquinas_registradoras(piso) VALUE(4);
INSERT INTO Maquinas_registradoras(piso) VALUE(5);
INSERT INTO Maquinas_registradoras(piso) VALUE(2);
INSERT INTO Maquinas_registradoras(piso) VALUE(3);
INSERT INTO Maquinas_registradoras(piso) VALUE(1);
INSERT INTO Maquinas_registradoras(piso) VALUE(2);
INSERT INTO Maquinas_registradoras(piso) VALUE(4);
INSERT INTO Maquinas_registradoras(piso) VALUE(2);
INSERT INTO Maquinas_registradoras(piso) VALUE(3);

INSERT INTO Venta(cajero,maquina,producto) VALUE(1,1,1);
INSERT INTO Venta(cajero,maquina,producto) VALUE(2,2,2);
INSERT INTO Venta(cajero,maquina,producto) VALUE(3,3,3);
INSERT INTO Venta(cajero,maquina,producto) VALUE(4,4,4);
INSERT INTO Venta(cajero,maquina,producto) VALUE(5,5,5);
INSERT INTO Venta(cajero,maquina,producto) VALUE(6,6,6);
INSERT INTO Venta(cajero,maquina,producto) VALUE(7,7,7);
INSERT INTO Venta(cajero,maquina,producto) VALUE(8,8,8);
INSERT INTO Venta(cajero,maquina,producto) VALUE(9,9,9);
INSERT INTO Venta(cajero,maquina,producto) VALUE(10,10,10);
