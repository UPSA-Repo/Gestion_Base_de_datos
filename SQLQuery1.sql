Create database Veterinaria
use Veterinaria

create table Personas(
	CodPersona char(10) not null,
	Nombre varchar(40) not null, 
	TelCel varchar(15)
	constraint PKPersona primary key(CodPersona)
)

create table Personas2(
	CodPersona char(10) primary key not null, 
	Nombre varchar(40) not null, 
	TelCel varchar(15)
)

drop table Personas2

create table Mascotas(
	CodMascota char(10) not null,
	Alias varchar(20),
	Especie varchar(20) not null, 
	Raza varchar(20) not null,
	Color varchar(10),
	FechaNac date,
	PesoActual float not null
	constraint PKMascotas primary key(CodMascota)
)

create table HistorialMed(
	FechaConsulta date not null,
	Enfermedad varchar(50) not null,
	Medicacion varchar(100) not null,
	constraint PKHistorialMed primary key(FechaConsulta)
)

create table Cliente(
	CodCliente char(10) not null,
	ApellidoFam varchar(20),
	CuentaBanco varchar(20),
	Direccion varchar(50),
	Telefono varchar(15)
	constraint PKCliente primary key(CodCliente)
)

create table Vacunas(
	TipoVacuna varchar(20) not null, 
	NombreVacuna varchar(30) not null,
	EnfermedadPrevia varchar(50),
	constraint PKVacunas primary key(TipoVacuna)
)

create table ControlPeso(
	FechaVisita date not null,
	Peso float not null,
	constraint PKControlPeso primary key(FechaVisita)
)