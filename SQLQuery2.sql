Create database Veterinaria
use Veterinaria

create table Personas
(
    CodPersona char(10) primary key not null,
    Nombre varchar(40) not null, 
    TelCel varchar(15)
)

--drop table Personas

create table Personas2
(
    CodPersona char(10) primary key not null, 
    Nombre varchar(40) not null, 
    TelCel varchar(15)
)

drop table Personas2

create table Cliente(
    CodCliente char(10) primary key not null,
    ApellidoFam varchar(20),
    CuentaBanco varchar(20),
    Direccion varchar(50),
    Telefono varchar(15)
)

--drop table Cliente

create table Mascotas
(
    CodMascota char(10) primary key not null,
    Alias varchar(20) not null,
    Especie varchar(20) not null, 
    Raza varchar(20) not null,
    Color varchar(10) not null,
    FechaNac date not null,
    PesoActual float not null,
	CodCliente char(10) not null
	constraint FKCliente foreign key(CodCliente) references Cliente
)

--drop table Mascotas

create table HistorialMed(
    FechaConsulta date primary key not null,
    Enfermedad varchar(50) not null,
    Medicacion varchar(100) not null,
)

--drop table HistorialMed

create table Vacunas(
    TipoVacuna varchar(20) primary key not null, 
    NombreVacuna varchar(30) not null,
    EnfermedadPrevia varchar(50),
)

--drop table Vacunas

create table ControlPeso(
    FechaVisita date primary key not null,
    Peso float not null,
	CodMascota char(10) not null
	constraint FKMascota foreign key(CodMascota) references Mascotas
	on delete cascade
)

--drop table ControlPeso

insert into Personas(
	CodPersona, Nombre, TelCel
) values (
	'201911', 'Natalia', '35683'
)

insert into Cliente(
	CodCliente, ApellidoFam, CuentaBanco, Direccion, Telefono
) values (
	'201940', 'Joso', '12345', 'Av Viva Siempre', '3565555'
)

insert into Mascotas(
	CodMascota, Alias, Especie, Raza, Color, FechaNac, PesoActual, CodCliente
) values (
	'567', 'Pecas', 'Felino', 'Arabe', 'Blanco', '2020-09-11', 7, '201911'
)

insert into HistorialMed(
	FechaConsulta, Enfermedad, Medicacion
) values (
	'2021-02-11', 'Lime', 'Veneno'
) 

insert into Vacunas(
	TipoVacuna, NombreVacuna, EnfermedadPrevia
) values (
	'Toxoides', 'AD', 'Ninguna'
)

insert into ControlPeso(
	FechaVisita, Peso, CodMascota
) values (
	'12-12-20', 4, '345'
)

select * from Mascotas where CodCliente = '2019112540'