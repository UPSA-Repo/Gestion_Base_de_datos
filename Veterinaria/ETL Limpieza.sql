use VeterinariaTransaccional

select * from Clientes where CodigoCliente = 'C1'

-- DW
-- ClientesDW
--		CodCliente  = CodCliente
--		ApellidoFam = ApellidoFam
--		Direccion   = Direccion |
--		Zona        = | Direccion
--		CuentaBanco = CuentaBanco
--		Telefono    = Telefono

select SUBSTRING(Direccion, 1, CHARINDEX('|', Direccion)-1) as FirstPart,
	   SUBSTRING(Direccion, CHARINDEX('|', Direccion) + 1, 100) as SecondPart
from Clientes

select 
CodigoCliente, 
ApellidoFamilia,  
SUBSTRING(Direccion, 1, CHARINDEX('|', Direccion)-1) as Direccion,
SUBSTRING(Direccion, CHARINDEX('|', Direccion) + 1, 100) as Zona,
CuentaBancaria,
CONCAT(TRIM(TelefonoCel), ' / ', TRIM(TelefonoFijo)) as Telefono
from Clientes

select 
CodMascota,
Alias,
Especie,
Raza,
Color,
( DATEDIFF(YY, FechaNac, GETDATE()) ) as Edad,
PesoActual as Peso
from mascotas


select * from Vacunas

select
CodVacuna,
NombreVac,
EnfermedadPrev
from Vacunas

select * from HistoriaClinica

select
YEAR(FechaVisita) as Año,
MONTH(FechaVisita) as Mes,
DAY(FechaVisita) as Dia,
(case when month(FechaVisita) in (3, 4, 5) then 'otoño'
      when month(FechaVisita) in (6, 7, 8) then 'invierno'
      when month(FechaVisita) in (9, 10, 11) then 'primavera'
      when month(FechaVisita) in (12, 1, 2) then 'verano'
 end) as Estacion
from HistoriaClinica

select
HC.FechaVisita as FechaConsulta,
HP.Peso as Peso,
HC.MontoPagado as MontoAtencion,
V.NombreVac as Vacuna,
HC.Medicacion as Medicacion,
HC.CodMascota as CodMascota
from HistoriaClinica HC
inner join HistoricoPeso HP on HC.CodMascota = HP.CodMascota
inner join AplicaVacunas AP on HC.CodMascota = AP.CodMascota
inner join Vacunas V on AP.CodVacuna = V.CodVacuna