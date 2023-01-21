use Avion

insert into AEROPUERTO
(CodAeropuerto, Nombre, Ciudad, Provincia)
values
('CAL1','Tajibos','Santa Cruz','Obispo Santistevan')

insert into AEROPUERTO
(CodAeropuerto, Nombre, Ciudad, Provincia)
values
('CAL2','Viru Viru','Santa Cruz','Obispo Santistevan')

insert into AEROPUERTO
(CodAeropuerto, Nombre, Ciudad, Provincia)
values
('CAL3','Alcantari','Sucre','Mira Flores')

insert into AEROPUERTO
(CodAeropuerto, Nombre, Ciudad, Provincia)
values
('CAL4','Fancesa','Santa Cruz','Obispo Santistevan')

insert into AEROPUERTO
(CodAeropuerto, Nombre, Ciudad, Provincia)
values
('CAL5','El Trompillo','Santa Cruz','Obispo Santistevan')
/*----------TIPO_AVION----------------*/
insert into TIPO_AVION
(TipoAvion, MaxAsientos, Compania)
values
('TA1',20,'TAM')

insert into TIPO_AVION
(TipoAvion, MaxAsientos, Compania)
values
('TA2',20,'TAM')

insert into TIPO_AVION
(TipoAvion, MaxAsientos, Compania)
values
('TA3',20,'BOA')

insert into TIPO_AVION
(TipoAvion, MaxAsientos, Compania)
values
('TA4',20,'TAM')

insert into TIPO_AVION
(TipoAvion, MaxAsientos, Compania)
values
('TA5',30,'BOA')

/*---------------PUEDE ATERRIZAR---------------*/
insert into PUEDE_ATERRIZAR
(TipoAvion, CodAeropuerto)
values
('TA1','CAL5')

insert into PUEDE_ATERRIZAR
(TipoAvion, CodAeropuerto)
values
('TA4','CAL4')

insert into PUEDE_ATERRIZAR
(TipoAvion, CodAeropuerto)
values
('TA3','CAL2')

insert into PUEDE_ATERRIZAR
(TipoAvion, CodAeropuerto)
values
('TA2','CAL1')

insert into PUEDE_ATERRIZAR
(TipoAvion, CodAeropuerto)
values
('TA2','CAL5')
/*-------------AVION------------*/
insert into	AVION
(IdAvion, NumTotalAsientos, TipoAvion)
values
('A1',30,'TA2')

insert into	AVION
(IdAvion, NumTotalAsientos, TipoAvion)
values
('A2',30,'TA5')

insert into	AVION
(IdAvion, NumTotalAsientos, TipoAvion)
values
('A3',30,'TA4')

insert into	AVION
(IdAvion, NumTotalAsientos, TipoAvion)
values
('A4',30,'TA5')

insert into	AVION
(IdAvion, NumTotalAsientos, TipoAvion)
values
('A5',30,'TA1')

/*-----------VUELO -----------------*/
insert into VUELO
(NumVuelo,Aerolinea,DiasSemana)
values
('V1','CODEX','5')

insert into VUELO
(NumVuelo,Aerolinea,DiasSemana)
values
('V2','INFAX','3')

insert into VUELO
(NumVuelo,Aerolinea,DiasSemana)
values
('V3','TRASN','4')

insert into VUELO
(NumVuelo,Aerolinea,DiasSemana)
values
('V4','INFEX','2')

insert into VUELO
(NumVuelo,Aerolinea,DiasSemana)
values
('V5','ZOKAS','7')

/*--------PLAN VUELO---------*/
insert into PLAN_VUELO
(NumVuelo, NumPlan, CodAeropuertoLlegada, CodAeropuertoSalida, HoraLlegadaProgramada, HoraSalidaProgramada)
values
('V4','P1','CAL1','CAL5','4:00','5:00')

insert into PLAN_VUELO
(NumVuelo, NumPlan, CodAeropuertoLlegada, CodAeropuertoSalida, HoraLlegadaProgramada, HoraSalidaProgramada)
values
('V3','P2','CAL3','CAL1','2:00','5:00')

insert into PLAN_VUELO
(NumVuelo, NumPlan, CodAeropuertoLlegada, CodAeropuertoSalida, HoraLlegadaProgramada, HoraSalidaProgramada)
values
('V2','P3','CAL2','CAL5','9:00','12:00')

insert into PLAN_VUELO
(NumVuelo, NumPlan, CodAeropuertoLlegada, CodAeropuertoSalida, HoraLlegadaProgramada, HoraSalidaProgramada)
values
('V1','P4','CAL5','CAL3','1:00','2:00')

insert into PLAN_VUELO
(NumVuelo, NumPlan, CodAeropuertoLlegada, CodAeropuertoSalida, HoraLlegadaProgramada, HoraSalidaProgramada)
values
('V1','P6','CAL2','CAL3','5:00','9:00')

insert into PLAN_VUELO
(NumVuelo, NumPlan, CodAeropuertoLlegada, CodAeropuertoSalida, HoraLlegadaProgramada, HoraSalidaProgramada)
values
('V1','P7','CAL1','CAL4','4:00','8:00')


insert into PLAN_VUELO
(NumVuelo, NumPlan, CodAeropuertoLlegada, CodAeropuertoSalida, HoraLlegadaProgramada, HoraSalidaProgramada)
values
('V5','P5','CAL4','CAL4','1:00','7:00')

/*---------INSTANCIA PLAN---------*/
insert into INSTANCIA_PLAN
(NumVuelo,NumPlan,Fecha,NumAsientosLibres,IdAvion,CodAeropuertoLlegada,CodAeropuertoSalida,HoraLlegada,HoraSalida)
values
('V4','P1','01/02/2020',20,'A1','CAL1','CAL5','4:00','5:00')

insert into INSTANCIA_PLAN
(NumVuelo,NumPlan,Fecha,NumAsientosLibres,IdAvion,CodAeropuertoLlegada,CodAeropuertoSalida,HoraLlegada,HoraSalida)
values
('V3','P2','01/02/2020',20,'A1','CAL3','CAL1','4:00','5:00')

insert into INSTANCIA_PLAN
(NumVuelo,NumPlan,Fecha,NumAsientosLibres,IdAvion,CodAeropuertoLlegada,CodAeropuertoSalida,HoraLlegada,HoraSalida)
values
('V2','P3','08/02/2020',20,'A1','CAL2','CAL5','4:00','5:00')

insert into INSTANCIA_PLAN
(NumVuelo,NumPlan,Fecha,NumAsientosLibres,IdAvion,CodAeropuertoLlegada,CodAeropuertoSalida,HoraLlegada,HoraSalida)
values
('V1','P4','04/02/2020',20,'A1','CAL5','CAL3','4:00','5:00')

insert into INSTANCIA_PLAN
(NumVuelo,NumPlan,Fecha,NumAsientosLibres,IdAvion,CodAeropuertoLlegada,CodAeropuertoSalida,HoraLlegada,HoraSalida)
values
('V5','P5','03/02/2020',20,'A1','CAL4','CAL4','4:00','5:00')

/*----RESERVA_ASIENTO-----*/
insert into RESERVA_ASIENTO
(NumVuelo, NumPlan, Fecha, NumAsiento, NombreCliente, TlfCliente)
values
('V4','P1','01/02/2020','NA4','Roberto','62031486')

insert into RESERVA_ASIENTO
(NumVuelo, NumPlan, Fecha, NumAsiento, NombreCliente, TlfCliente)
values
('V3','P2','01/02/2020','NA3','Carl','62039486')

insert into RESERVA_ASIENTO
(NumVuelo, NumPlan, Fecha, NumAsiento, NombreCliente, TlfCliente)
values
('V2','P3','08/02/2020','NA2','Mario','62231486')

insert into RESERVA_ASIENTO
(NumVuelo, NumPlan, Fecha, NumAsiento, NombreCliente, TlfCliente)
values
('V1','P4','04/02/2020','NA1','Nohemy','72031486')

insert into RESERVA_ASIENTO
(NumVuelo, NumPlan, Fecha, NumAsiento, NombreCliente, TlfCliente)
values
('V5','P5','03/02/2020','NA5','Andres','63033486')

/*--------PRECIO_BILLETE--------*/
insert into PRECIOBILLETE
(CodTarifa,NumVuelo,Cantidad,Restricciones)
values
('PB1','V4',500,'Prohibido Fumar')

insert into PRECIOBILLETE
(CodTarifa,NumVuelo,Cantidad,Restricciones)
values
('PB2','V2',700,'Prohibido Fumar')

insert into PRECIOBILLETE
(CodTarifa,NumVuelo,Cantidad,Restricciones)
values
('PB3','V3',1000,'Prohibido Fumar')

insert into PRECIOBILLETE
(CodTarifa,NumVuelo,Cantidad,Restricciones)
values
('PB4','V1',3500,'Prohibido Fumar')

insert into PRECIOBILLETE
(CodTarifa,NumVuelo,Cantidad,Restricciones)
values
('PB5','V5',450,'Prohibido Fumar')