drop database if exists academia;
create database academia;

use academia;

drop tables if exists alumnos;
create table alumnos(
	dni varchar(8) not null,
    nombre varchar(20),
    apellido1 varchar(20),
	apellido2 varchar(20),
    direccion varchar(50),
    sexo char(1) default 'H',
    fecha_nacimiento date,
    curso int not null,
    primary key (dni)
);

drop tables if exists profesores;
create table profesores(
	dni varchar(8) not null,
    nombre varchar(20) unique,
    apellido1 varchar(20),
	apellido2 varchar(20),
    direccion varchar(50),
    titulo varchar(50),
    gana double not null,
    primary key (dni)
);

drop tables if exists cursos;
create table cursos(
	cod_curso int not null auto_increment,
    nombre_curso varchar(50) unique,
    dni_profesor varchar(8) not null,
	maximo_alumnos int,
    fecha_inicio date,
    fecha_fin date,
    num_horas int not null,
    primary key (cod_curso)
);

alter table cursos
add constraint FK_ProfesoresCursos
foreign key (dni_profesor) references profesores(dni)
on delete cascade on update cascade;

alter table alumnos
add constraint FK_CursosAlumnos
foreign key (curso) references cursos(cod_curso)
on delete cascade on update cascade;