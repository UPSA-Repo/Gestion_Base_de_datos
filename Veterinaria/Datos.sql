-- INSERCION DE DATOS VetTrans
USE VeterinariaTransaccional

insert into Clientes 
(CodigoCliente, ApellidoFamilia, CuentaBancaria, Direccion, TelefonoFijo, TelefonoCel)
values 
('C1',	'Eguez',		'1051-2200', 'El Remanso|Zona Norte',		'3568361', '69274257'),
('C2',	'Nunez',		'1051-2200', 'Equipetrol|Zona Norte',		'3568361', '69274257'),
('C3',	'Guarachi',		'1051-2200', 'Sirari|Zona Oeste',			'3568361', '69274257'),
('C4',	'Arellano',		'1051-2200', 'Las Palmas|Zona Oeste',		'3568361', '69274257'),
('C5',	'Hurtado',		'1051-2200', 'Cambodromo|Zona Norte',		'3568361', '69274257'),
('C6',	'Cespedes',		'1051-2200', 'Parque Industrial|Zona Este', '3568361', '69274257'),
('C7',	'Rojas',		'1051-2200', 'Los Penocos|Zona Este',		'3568361', '69274257'),
('C8',	'Telchi',		'1051-2200', 'Sevilla II|Zona Este',		'3568361', '69274257'),
('C9',	'Romero',		'1051-2200', 'Santos Dumont|Zona Sur',		'3568361', '69274257'),
('C10', 'Aleman',		'1051-2200', 'Santos Dumont|Zona Sur',		'3568361', '69274257');

insert into personas 
(CI, nombre, apellidop, apellidom, TelefonoCel)
values 
('1',	'Carlos', 'Eguez',		'ApMat', '69274257'),
('2',	'Carlos', 'Nunez',		'ApMat', '69274257'),
('3',	'Carlos', 'Guarachi',	'ApMat', '69274257'),
('4',	'Carlos', 'Arellano',	'ApMat', '69274257'),
('5',	'Carlos', 'Hurtado',	'ApMat', '69274257'),
('6',	'Carlos', 'Cespedes',	'ApMat', '69274257'),
('7',	'Carlos', 'Rojas',		'ApMat', '69274257'),
('8',	'Carlos', 'Telchi',		'ApMat', '69274257'),
('9',	'Carlos', 'Aleman',		'ApMat', '69274257'),
('10',	'Carlos', 'Eguez',		'ApMat', '69274257'),
('11',	'Carlos', 'Nunez',		'ApMat', '69274257'),
('12',	'Carlos', 'Guarachi',	'ApMat', '69274257'),
('13',	'Carlos', 'Arellano',	'ApMat', '69274257'),
('14',	'Carlos', 'Hurtado',	'ApMat', '69274257'),
('15',	'Carlos', 'Cespedes',	'ApMat', '69274257'),
('16',	'Carlos', 'Telchi',		'ApMat', '69274257'),
('17',	'Carlos', 'Aleman',		'ApMat', '69274257'),
('18',	'Carlos', 'Nunez',		'ApMat', '69274257'),
('19',	'Carlos', 'Guarachi',	'ApMat', '69274257'),
('20',	'Carlos', 'Arellano',	'ApMat', '69274257'); -- No necesita datos pero soy wn

insert into PersonaCliente 
values ('A', '1', '2021-09-30'); -- No necesita datos

insert into Mascotas
(CodMascota, Alias, Especie, Raza, Color, FechaNac, PesoActual, CodCliente)
values
('M1',	'Mico',		'Canino',	'maltes',		'Gris',		'2021-12-12', 4, 'C1'),
('M2',	'Chispa',	'Felino',	'asiatico',		'Marron',	'2021-12-09', 4, 'C2'),
('M3',	'Rayo',		'Ave',		'loro',			'Verde',	'2020-12-01', 1, 'C3'),
('M4',	'Chiqui',	'Canino',	'otterhaund',	'Blanco',	'2021-10-01', 4, 'C4'),
('M5',	'Pluto',	'Felino',	'birmano',		'Gris',		'2021-10-02', 4, 'C5'),
('M6',	'Chico',	'Ave',		'perico',		'Azul',		'2022-12-07', 1, 'C6'),
('M7',	'Luna',		'Canino',	'maltes',		'Gris',		'2022-12-05', 4, 'C7'),
('M8',	'Lola',		'Felino',	'asiatico',		'Negro',	'2021-10-13', 4, 'C8'),
('M9',	'Coco',		'Ave',		'loro',			'Verde',	'2021-12-22', 1, 'C9'),
('M10', 'Linda',	'Canino',	'otterhaund',	'Blanco',	'2020-12-17', 4, 'C1'),
('M11', 'Toby',		'Felino',	'birmano',		'Negro',	'2021-12-28', 4, 'C2'),
('M12', 'Maxi',		'Ave',		'periquito',	'Azul',		'2022-10-11', 1, 'C3'),
('M13', 'Gaia',		'Canino',	'maltes',		'Negro',	'2021-12-10', 4, 'C4');

insert into vacunas
(CodVacuna, NombreVac, EnfermedadPrev)
values 
('V1', 'Vacuna1', 'Enfermedad1'),
('V2', 'Vacuna2', 'Enfermedad2'),
('V3', 'Vacuna3', 'Enfermedad3'),
('V4', 'Vacuna4', 'Enfermedad4'),
('V5', 'Vacuna5', 'Enfermedad5');

insert into AplicaVacunas
values
('M1',	'V1', '2021-01-13'),
('M2',	'V2', '2021-02-01'),
('M3',	'V3', '2021-03-25'),
('M4',	'V4', '2021-04-10'),
('M5',	'V5', '2021-05-07'),
('M6',	'V1', '2021-06-04'),
('M7',	'V2', '2021-07-21'),
('M8',	'V3', '2021-08-17'),
('M9',	'V4', '2021-09-23'),
('M10', 'V5', '2021-10-02'),
('M11', 'V1', '2021-11-09'),
('M12', 'V2', '2021-12-11'),
('M13', 'V3', '2021-01-19'),
('M1',	'V4', '2021-02-28'),
('M2',	'V5', '2021-03-27'),
('M3',	'V1', '2021-04-07'),
('M4',	'V2', '2021-05-07'),
('M5',	'V3', '2021-06-13'),
('M6',	'V4', '2021-07-10'),
('M7',	'V5', '2021-08-20');

insert into HistoricoPeso
values 
('M1',	'2021-01-13', 4),
('M2',	'2021-02-01', 4),
('M3',	'2021-03-25', 1),
('M4',	'2021-04-10', 4),
('M5',	'2021-05-07', 4),
('M6',	'2021-06-04', 1),
('M7',	'2021-07-21', 4),
('M8',	'2021-08-17', 4),
('M9',	'2021-09-23', 1),
('M10', '2021-10-02', 4),
('M11', '2021-11-09', 4),
('M12', '2021-12-11', 1),
('M13', '2021-01-19', 4),
('M1',	'2021-02-28', 4),
('M2',	'2021-03-27', 4),
('M3',	'2021-04-07', 1),
('M4',	'2021-05-07', 4),
('M5',	'2021-06-13', 4),
('M6',	'2021-07-10', 1),
('M7',	'2021-08-20', 4);

insert into HistoriaClinica
values 
('M1',	'2021-01-13', 100, 'Enfermedad1', 'Medicacion1'),
('M2',	'2021-02-01', 100, 'Enfermedad2', 'Medicacion2'),
('M3',	'2021-03-25', 100, 'Enfermedad3', 'Medicacion3'),
('M4',	'2021-04-10', 100, 'Enfermedad4', 'Medicacion4'),
('M5',	'2021-05-07', 100, 'Enfermedad5', 'Medicacion5'),
('M6',	'2021-06-04', 100, 'Enfermedad1', 'Medicacion1'),
('M7',	'2021-07-21', 100, 'Enfermedad2', 'Medicacion2'),
('M8',	'2021-08-17', 100, 'Enfermedad3', 'Medicacion3'),
('M9',	'2021-09-23', 100, 'Enfermedad4', 'Medicacion4'),
('M10', '2021-10-02', 100, 'Enfermedad5', 'Medicacion5'),
('M11', '2021-11-09', 100, 'Enfermedad1', 'Medicacion1'),
('M12', '2021-12-11', 100, 'Enfermedad2', 'Medicacion2'),
('M13', '2021-01-19', 100, 'Enfermedad3', 'Medicacion3'),
('M1',	'2021-02-28', 100, 'Enfermedad4', 'Medicacion4'),
('M2',	'2021-03-27', 100, 'Enfermedad5', 'Medicacion5'),
('M3',	'2021-04-07', 100, 'Enfermedad1', 'Medicacion1'),
('M4',	'2021-05-07', 100, 'Enfermedad2', 'Medicacion2'),
('M5',	'2021-06-13', 100, 'Enfermedad3', 'Medicacion3'),
('M6',	'2021-07-10', 100, 'Enfermedad4', 'Medicacion4'),
('M7',	'2021-08-20', 100, 'Enfermedad5', 'Medicacion5');
