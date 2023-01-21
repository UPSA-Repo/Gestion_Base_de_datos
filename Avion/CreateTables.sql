create database Avion
use Avion

create table AEROPUERTO
(
	CodAeropuerto char(10) not null,
	Nombre varchar(30) not null, 
	Ciudad varchar(30) not null, 
	Provincia varchar(30) not null,
	constraint PKAeropuerto primary key(CodAeropuerto)
)

create table TIPO_AVION
(
	TipoAvion char(20) not null,
	MaxAsientos int not null,
	Compania varchar(20),
	constraint PKTipoAvion primary key(TipoAvion)
)

create table PUEDE_ATERRIZAR
(
	TipoAvion char(20) not null,
	CodAeropuerto char(10) not null,
	constraint PKAterrizar primary key(TipoAvion, CodAeropuerto),
	constraint FKAeropuerto foreign key (TipoAvion) references TIPO_AVION,
	constraint FKAvion foreign key (CodAeropuerto) references AEROPUERTO
)

create table AVION
(
	IDavion char(10) not null,
	NumTotalAsientos int not null,
	TipoAvion char(20) not null,
	constraint PKIDavion primary key(IDavion),
	constraint KFTipo foreign key (TipoAvion) references Tipo_Avion
)

create table VUELO
(
	NumVuelo char(10) not null,
	Aerolinea varchar(40) not null,
	DiasSemana char(20) not null,
	constraint PKVuelo primary key(NumVuelo)
)

create table PLAN_VUELO
(
	NumVuelo char(10) not null,
	NumPlan char(10) not null,
	CodAeropuertoSalida char(10) not null,
	CodAeropuertoLlegada char(10) not null,
	HoraLlegadaProgramada datetime not null,
	HoraSalidaProgramada datetime not null,
	constraint PKNumVuelo primary key (NumVuelo, NumPlan),
	constraint FKVuelo foreign key (NumVuelo) references VUELO
)

create table INSTANCIA_PLAN
(
	NumVuelo char(10) not null,
	NumPlan char(10) not null,
	Fecha date not null,
	NumAsientosLibres int not null,
	IDavion char(10) not null,
	CodAeropuertoLlegada char(10) not null,
	CodAeropuertoSalida char(10) not null,
	HoraLlegada datetime not null,
	HoraSalida datetime not null,
	constraint PKInstancia primary key (NumVuelo, NumPlan, Fecha),
	constraint FKVueloIns foreign key (NumVuelo, NumPlan) references PLAN_VUELO,
	constraint FKAvionIns foreign key (IDavion) references Avion
)

create table RESERVA_ASIENTO
(
	NumVuelo char(10) not null,
	NumPlan char(10) not null,
	Fecha date not null,
	NumAsiento char(10) not null,
	Nombre varchar(40) not null,
	TlfCliente varchar(15),
	constraint PKReserva primary key(NumVuelo, NumPlan, Fecha, NumAsiento),
	constraint FKVueloRes foreign key(NumVuelo, NumPlan, Fecha) references INSTANCIA_PLAN
)

--EXEC sp_rename 'RESERVA_ASIENTO.NombreCleinte', 'NombreCliente', 'COLUMN';

--drop table RESERVA_ASIENTO

create table PrecioBillete
(
	CodTarifa char(10) not null, 
	NumVuelo char(10) not null,
	cantidad int not null,
	Restricciones varchar(100),
	constraint PKPrecio primary key(CodTarifa, NumVuelo),
	constraint FKVueloPrecio foreign key(NumVuelo) references VUELO
)