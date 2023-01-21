/* RESOLUCION DE LAS CONSULTAS*/

/*a.Por cada vuelo, liste el número del mismo, el aeropuerto de partida del primer plan de vuelo y el aeropuerto de llegada del último.*/
select NumVuelo,'SALIDA' as tipo, CodAeropuertoSalida as aeropuerto from PLAN_VUELO where NumVuelo='V1' 
       and HoraSalidaProgramada in (select min(HoraSalidaProgramada) from PLAN_VUELO where NumVuelo='V1')
union 
select NumVuelo, 'LLEGADA' as tipo, CodAeropuertoLlegada as aeropuerto from PLAN_VUELO where NumVuelo='V1' 	   
	   and HoraLlegadaProgramada in (select max(HoraLlegadaProgramada) from PLAN_VUELO where NumVuelo='V1')
/*a.(la consulta se hace para un vuelo en particular)*/


/*b.Enumere los números de vuelo y los días de la semana de todos los vuelos, o planes de vuelo, 
    que salgan del Aeropuerto internacional de Houston (código de aeropuerto 'IAH') y 
    lleguen al Aeropuerto internacional de Los Ángeles (código de aeropuerto 'LAX').*/

select vuelo.NumVuelo, DiasSemana  from PLAN_VUELO 
	inner join vuelo on vuelo.NumVuelo = PLAN_VUELO.NumVuelo
	where CodAeropuertoSalida='IAH' and CodAeropuertoLlegada='LAX'


select vuelo.NumVuelo, DiasSemana  from PLAN_VUELO 
	inner join vuelo on vuelo.NumVuelo = PLAN_VUELO.NumVuelo
	where CodAeropuertoSalida='CAL3' and CodAeropuertoLlegada='CAL2'
/*b.(adecuamos las contantes a los datos registrados)*/

/*c.Obtenga el número de vuelo, el código del aeropuerto de salida, la hora programada para el despegue, 
  el código del aeropuerto de llegada, la hora programada para el aterrizaje y los días de la semana de todos los vuelos, 
  o planes de vuelo, que salgan de algún aeropuerto de la ciudad de Houston y lleguen a alguno de Los Ángeles.
*/

select plan_vuelo.NumVuelo, CodAeropuertoSalida, horasalidaprogramada, codaeropuertollegada, HoraLlegadaProgramada, DiasSemana 
   from plan_vuelo inner join vuelo on vuelo.NumVuelo = PLAN_VUELO.NumVuelo
   where CodAeropuertoSalida in (select codaeropuerto from AEROPUERTO where ciudad='Houston')
     and CodAeropuertoLlegada in (select codaeropuerto from AEROPUERTO where ciudad='Los Angeles')


 select PLAN_VUELO.NumVuelo,CodAeropuertoSalida,HoraSalidaProgramada, CodAeropuertoLlegada, HoraLlegadaProgramada, vuelo.DiasSemana
  from PLAN_VUELO inner join vuelo on VUELO.NumVuelo = PLAN_VUELO.NumVuelo
  where CodAeropuertoSalida in (select CodAeropuerto from AEROPUERTO where ciudad = 'Sucre')
    and CodAeropuertoLlegada in (select CodAeropuerto from AEROPUERTO where ciudad = 'Santa Cruz')

/*c. (adecuamos las contantes a los datos registrados)*/


/*d.Liste todas las tarifas del número de vuelo 'CO 197'.*/
select codtarifa, cantidad from PrecioBillete where NumVuelo = 'CO 197'

select CodTarifa, cantidad from PrecioBillete where NumVuelo='V4'
/*d. (adecuamos las contantes a los datos registrados)*/

/*e.Recupere el número de asientos disponibles del vuelo 'CO 197' el día '09-10-1999'.*/

select NumTotalAsientos from AVION where IDavion in
       (select idavion from INSTANCIA_PLAN where NumVuelo= 'CO 197' and fecha = '1999-10-09')

select NumTotalAsientos from AVION 
   where IDavion in (select idavion from INSTANCIA_PLAN 
                      where NumVuelo = 'V3' and Fecha = '2020-01-02')

/* opcion 2 coinsiderando que Instancia_Plan tiene el campo NumAsientosLibres */
select NumAsientosLibres from INSTANCIA_PLAN where NumVuelo = 'V3' and Fecha = '2020-01-02'

/*e. (adecuamos las contantes a los datos registrados)*/




/*Probelma a. Versión completa*/
/*a.Por cada vuelo, liste el número del mismo, el aeropuerto de partida del primer plan de vuelo y el aeropuerto de llegada del último.*/
/**Para todos los vuelos, adelantandonos al tratamiento de Transact-SQL, el componente procedural del lenguaje SQL*/


	   declare @ListaVuelos table (NumVuelo char(10)) /*Tabla temporal para lista de vuelos*/
	   declare @NumVueloAct char(10)
	   insert into @ListaVuelos(NumVuelo) select numvuelo from PLAN_VUELO /*Poblamos la tabla temporal*/
	   select * from @ListaVuelos
	   declare @Resultado table (NumVuelo char(10), AeropSalida char(10), AeropLlegada char(10)) /*Tabla temporal para resultado*/
	   declare @AeropSalida char(10), @AeropLlegada char(10)

	   while exists(select * from @ListaVuelos)  /*Recorremos Tabla temporal lista de vuelos*/
	   begin
	      select top 1 @NumVueloAct = Numvuelo from @ListaVuelos
			select @AeropSalida = CodAeropuertoSalida from PLAN_VUELO 
				where NumVuelo=@NumVueloAct  and HoraSalidaProgramada in (select min(HoraSalidaProgramada) from PLAN_VUELO where NumVuelo=@NumVueloAct)
			select  @AeropLlegada = CodAeropuertoLlegada from PLAN_VUELO where NumVuelo=@NumVueloAct 	   
				and HoraLlegadaProgramada in (select max(HoraLlegadaProgramada) from PLAN_VUELO where NumVuelo=@NumVueloAct)
		  insert into @Resultado values(@NumVueloAct, @AeropSalida, @AeropLlegada) /*colocamos resultados en tabla temporal*/
		  delete from @ListaVuelos where NumVuelo = @NumVueloAct 
	   end
	   select * from @Resultado

