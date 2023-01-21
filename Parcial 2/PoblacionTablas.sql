use Biblioteca

----------------- AUTOR -----------------
insert into Autor
(IdAutor, Nombre, Nacionalidad)
values
(1, 'Enrique N', 'Boliviana')

insert into Autor
(IdAutor, Nombre, Nacionalidad)
values
(2, 'Pamela N', 'Chilena')

insert into Autor
(IdAutor, Nombre, Nacionalidad)
values
(3, 'Santiago N', 'Aleman')

insert into Autor
(IdAutor, Nombre, Nacionalidad)
values
(4, 'Graciela C', 'Boliviana')

insert into Autor
(IdAutor, Nombre, Nacionalidad)
values
(5, 'Santiago Enrique N', 'Chilena')

----------------- LIBRO -----------------
insert into Libro
(IdLibro, Titulo, SubTitulo, Editorial, Area, AnoPublicacion, TotalPaginas, Edicion)
values
(1, 'Libro1', 'librito', 'Alfaguara', 'Tecnologia', 2010, 300, 1)

insert into Libro
(IdLibro, Titulo, SubTitulo, Editorial, Area, AnoPublicacion, TotalPaginas, Edicion)
values
(2, 'Libro2', 'librito', 'Alfaguara', 'Medicina', 2015, 365, 3)

insert into Libro
(IdLibro, Titulo, SubTitulo, Editorial, Area, AnoPublicacion, TotalPaginas, Edicion)
values
(3, 'Libro3', 'librango', 'Billiken', 'Medicina', 2020, 400, 5)

insert into Libro
(IdLibro, Titulo, SubTitulo, Editorial, Area, AnoPublicacion, TotalPaginas, Edicion)
values
(4, 'Libro4', 'librango', 'Billiken', 'Tecnologia', 2013, 250, 2)

insert into Libro
(IdLibro, Titulo, SubTitulo, Editorial, Area, AnoPublicacion, TotalPaginas, Edicion)
values
(5, 'Libro5', 'libro', 'DeBolsillo', 'Novela', 2019, 120, 9)

insert into Libro
(IdLibro, Titulo, SubTitulo, Editorial, Area, AnoPublicacion, TotalPaginas, Edicion)
values
(6, 'Libro6', 'librito', 'Alfaguara', 'Tecnologia', 2017, 100, 1)

insert into Libro
(IdLibro, Titulo, SubTitulo, Editorial, Area, AnoPublicacion, TotalPaginas, Edicion)
values
(7, 'Libro7', 'libro', 'Alfaguara', 'Medicina', 2017, 350, 1)

insert into Libro
(IdLibro, Titulo, SubTitulo, Editorial, Area, AnoPublicacion, TotalPaginas, Edicion)
values
(8, 'Libro8', 'libro', 'Alfaguara', 'Tecnologia', 2017, 270, 1)

----------------- ESTUDIANTE -----------------
insert into Estudiante
(NroRegistro, CI, Nombre, Direccion, Telefono, Carrera, Edad)
values
(1, 123, 'Enrique', 'Dir1', 7777777, 'Sistemas', 20)

insert into Estudiante
(NroRegistro, CI, Nombre, Direccion, Telefono, Carrera, Edad)
values
(2, 234, 'Pamela', 'Dir2', 7777778, 'Medicina', 24)

insert into Estudiante
(NroRegistro, CI, Nombre, Direccion, Telefono, Carrera, Edad)
values
(3, 345, 'Santiago', 'Dir3', 7777788, 'Geologia', 78)

insert into Estudiante
(NroRegistro, CI, Nombre, Direccion, Telefono, Carrera, Edad)
values
(4, 456, 'Graciela', 'Dir4', 7777888, 'Ninguna', 58)

insert into Estudiante
(NroRegistro, CI, Nombre, Direccion, Telefono, Carrera, Edad)
values
(5, 567, 'Santiago Enrique', 'Dir5', 7778888, 'Sistemas', null)

----------------- AUTORLIBRO -----------------
insert into AutorLibro (IdAutor, IdLibro)
values (1, 1)

insert into AutorLibro (IdAutor, IdLibro)
values (1, 4)

insert into AutorLibro (IdAutor, IdLibro)
values (2, 2)

insert into AutorLibro (IdAutor, IdLibro)
values (2, 3)

insert into AutorLibro (IdAutor, IdLibro)
values (2, 5)

insert into AutorLibro (IdAutor, IdLibro)
values (3, 8)

insert into AutorLibro (IdAutor, IdLibro)
values (4, 6)

insert into AutorLibro (IdAutor, IdLibro)
values (5, 7)

----------------- LIBROESTUDIANTE -----------------
insert into LibroEstudiante
(IdLibro, NroRegistro, FechaDebeDevolver, FechaDevolucion, FechaPrestamo)
values
(1, 1, '2021-01-10', '2021-01-07', '2020-12-20')

insert into LibroEstudiante
(IdLibro, NroRegistro, FechaDebeDevolver, FechaDevolucion, FechaPrestamo)
values
(4, 1, '2021-01-10', '2021-01-10', '2020-12-20')

insert into LibroEstudiante
(IdLibro, NroRegistro, FechaDebeDevolver, FechaDevolucion, FechaPrestamo)
values
(2, 2, '2021-01-10', '2021-01-06', '2020-12-15')

insert into LibroEstudiante
(IdLibro, NroRegistro, FechaDebeDevolver, FechaDevolucion, FechaPrestamo)
values
(3, 5, '2021-01-10', '2020-12-27', '2020-12-20')

insert into LibroEstudiante
(IdLibro, NroRegistro, FechaDebeDevolver, FechaDevolucion, FechaPrestamo)
values
(7, 5, '2020-12-12', '2020-12-14', '2020-11-25')

insert into LibroEstudiante
(IdLibro, NroRegistro, FechaDebeDevolver, FechaDevolucion, FechaPrestamo)
values
(6, 5, '2020-12-12', null, '2020-11-25')