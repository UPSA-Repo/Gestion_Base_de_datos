-- CREACION DE BD MODELO OLAP
create database VeterinariaDW
use VeterinariaDW

CREATE TABLE Clientes (
	CodigoCliente CHAR(10)    NOT NULL PRIMARY KEY,
	ApellidoFam   VARCHAR(20) NOT NULL,
	Zona		  VARCHAR(50) NOT NULL,
	Direccion	  VARCHAR(50) NULL,
);

CREATE TABLE Mascotas
(
	CodMascota CHAR(10)		NOT NULL PRIMARY KEY,
	Alias	   VARCHAR(40)	NOT NULL,
	Especie	   VARCHAR(20)	NOT NULL,
	Raza	   VARCHAR(20)	NOT NULL,
	Color      VARCHAR(20)	NOT NULL,
	Edad       INT			NOT NULL,
	CatPeso    CHAR(10)		NULL,
	PesoActual INT			NOT NULL
);

CREATE TABLE Vacunas
(
	CodVacuna	   CHAR(10)		NOT NULL PRIMARY KEY,
	TipoVacuna	   CHAR(10)		NOT NULL,
	NombreVac	   VARCHAR(100) NOT NULL,
	EnfermedadPrev VARCHAR(100) NOT NULL
);

CREATE TABLE Tiempos
(
	Fecha		DATE		PRIMARY KEY,
	Mes			CHAR(2)		NOT NULL,
	NombreMes	CHAR(10)	NOT NULL,
	Año			CHAR(4)		NOT NULL,
	Estacion	CHAR(10)	NOT NULL
);

CREATE TABLE Visita
(
	Peso			INT				NOT NULL,
	MontoAtencion	MONEY			NOT NULL,
	Enfermedad		VARCHAR(100)	NOT NULL,
	Medicacion		VARCHAR(100)	NOT NULL,
	CodigoCliente	CHAR(10)		NOT NULL,
	CodMascota		CHAR(10)		NOT NULL,
	CodVacuna		CHAR(10)		NOT NULL,
	FechaConsulta	DATE			NOT NULL,

	CONSTRAINT FKCli	FOREIGN KEY (CodigoCliente)	REFERENCES Clientes(CodigoCliente),
	CONSTRAINT FKMasc	FOREIGN KEY (CodMascota)	REFERENCES Mascotas(CodMascota),
	CONSTRAINT FKVac	FOREIGN KEY (CodVacuna)		REFERENCES Vacunas(CodVacuna),
	CONSTRAINT FKTime	FOREIGN KEY (FechaConsulta) REFERENCES Tiempos(fecha)
);

SELECT
  *
FROM
  SYSOBJECTS
WHERE
  xtype = 'U';
GO

select * from ClientesDW
select * from MascotasDW
select * from VacunasDW
select * from TiemposDW
select * from VisitasDW

delete from VisitasDW
delete from TiemposDW
delete from VacunasDW
delete from MascotasDW
delete from ClientesDW