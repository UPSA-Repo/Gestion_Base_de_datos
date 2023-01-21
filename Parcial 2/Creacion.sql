create database Biblioteca
use Biblioteca

create table Autor
(
	IdAutor int not null,

	Nombre varchar(50) not null,
	Nacionalidad varchar(25) not null,
	constraint PKIDAutor primary key (IdAutor)
)

create table Libro
(
	IdLibro int not null,

	Titulo varchar(30) not null,
	SubTitulo varchar(30) not null,
	Editorial varchar(30) not null,
	Area varchar(30) not null,
	AnoPublicacion int not null,
	TotalPaginas int not null,
	Edicion varchar(20) not null,
	constraint PKIDLibro primary key (IdLibro)
)

create table AutorLibro
(
	IdAutor int not null,
	IdLibro int not null,

	constraint PKID primary key (IdAutor, IdLibro),
	constraint FKIDA foreign key (IdAutor) references Autor,
	constraint FKIDL foreign key (IdLibro) references Libro
)

create table Estudiante
(
	NroRegistro int not null,

	CI varchar(20) not null,
	Nombre varchar(50) not null,
	Direccion varchar(50) not null,
	Telefono int  not null,
	Carrera varchar(50) not null,
	Edad int,

	constraint PKNroRegistro primary key (NroRegistro)
)

create table LibroEstudiante
(
	IdLibro int not null,
	NroRegistro int not null,

	FechaDebeDevolver date not null,
	FechaDevolucion date,
	FechaPrestamo date not null,

	constraint PKID2 primary key (IdLibro, NroRegistro),
	constraint FKIDL2 foreign key (IdLibro) references Libro,
	constraint FKNR foreign key (NroRegistro) references Estudiante
)