

create database DBSomething_News

go

use DBSomething_News

go

create table TbCategorias
(
IdCategorias int primary key identity,
Descripcion varchar (100),
Activo bit default 1,
FechaDeIngreso datetime default getdate()

)

go 

create table TbSucesos
(
IdSucesos int primary key identity,
Descripcion varchar (100),
Activo bit default 1,
FechaDeIngreso datetime default getdate()

)





create table TbNoticias
(
IdNoticias int primary key identity,
Nombre varchar (500),
Descripcion varchar (500),
IdSucesos int references TbSucesos (IdSucesos),
Idcategorias int references TbCategorias (IdCategorias),
RutaImagen varchar (100),
NombreImagen varchar (100),
Activo bit default 1,
FechaDeIngreso datetime default getdate()

)

go

create table TbLector
(
IdLector int primary key identity,
Nombre varchar (100),
Apellido varchar (100),
Correo varchar (100),
Clave varchar (100),
Restablecer bit default 0,
FechaRegistro datetime default getdate()

)
 go

 create table TbFavoritos
 (
 IdFavoritos int primary key identity,
 IdSucesos int references TbSucesos (IdSucesos),
 IdLector int references TbLector (IdLector)
 )

 
 go

 create table TbUsuario

 (
 IdUsuario int primary key identity,
 Nombre varchar (100),
 Apellido varchar (100),
 Correo varchar (100),
 Clave varchar (100),
 Activo bit default 1,
 Restablecer bit default 1,
 FechaRegistro datetime default getdate()
 )

 go

 create table TbDepartamento 
 (
 IdDepartamento varchar (2) not null,
 Descripcion varchar (100) not null
 )


 go
 create table TbMunicipio
 (
 IdMunicipio Varchar (3) not null,
 Descripcion Varchar (50) not null,
 IdDepartamento varchar (2) not null
 )

 select * from TbUsuario

insert into TbUsuario(Nombre,Apellido, Correo, Clave) values ('test nombre','test apellido','test@example.com','db8ce9a06c6b5ec2cc40edcbc7c13570592c21a8bd9b100bb8934fa708fa445c')

select * from TbCategorias

insert into TbCategorias (Descripcion) values 
('Deportes'),
('Moda'),
('Cocina'),
('Entretenimiento'),
('Video Juegos'),
('Cultura'),
('Salud')

select * from TbSucesos

insert into TbSucesos (Descripcion) values 
('Golden State Warriors Fuera De La Serie'),
('GUCCI Pierde Millones'),
('Alimentos aludables'),
('Nueva Serie De Five Nights At Fredd`s'),
('Playe Unknouns Battle Groud El Mejor Juego De La Historia'),
('Fiestas Patronales'),
('Hacer Ejercicio Reduce El Riesgo de Paro Cardiaco')



select * from TbDepartamento

insert into TbDepartamento (IdDepartamento, Descripcion)
values 
('01','Chalatenango'),
('02','La Paz')


select * from TbMunicipio 

insert into TbMunicipio 
values 
('001','San Ignacio','01'),
('002','Chalchuapa','02')
