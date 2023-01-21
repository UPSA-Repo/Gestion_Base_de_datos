use Biblioteca

-- Generar un listado de los libros existentes en la biblioteca, ordenados por titulo y año de publicación
select * from Libro order by Titulo asc
select * from Libro order by AnoPublicacion asc

-- Generar un listado de los autores registrados, y los libros de los que son autores, ordenados por area, autor y año de publicación
select Autor.Nombre, Libro.Titulo, Libro.Area, Libro.AnoPublicacion from AutorLibro
inner join Autor on Autor.IdAutor = AutorLibro.IdAutor
inner join Libro on Libro.IdLibro = AutorLibro.IdLibro
order by Libro.Area, Autor.Nombre, Libro.AnoPublicacion

-- Listar los libros que actualmente se encuentran prestados, y los estudiantes que los tienen en prestamo.
select Libro.Titulo, Estudiante.Nombre from LibroEstudiante
inner join Libro on Libro.IdLibro = LibroEstudiante.IdLibro
inner join Estudiante on Estudiante.NroRegistro = LibroEstudiante.NroRegistro
where LibroEstudiante.FechaDevolucion is null

-- Listar los prestamos que hayan incurrido en retrasos en la devolución de libros, y los estudiantes a los que corresponden, tanto en prestamos que ya se haya devuelto, como en prestamos aún pendientes de devolución
select Libro.Titulo, Estudiante.Nombre from LibroEstudiante
inner join Libro on Libro.IdLibro = LibroEstudiante.IdLibro
inner join Estudiante on Estudiante.NroRegistro = LibroEstudiante.NroRegistro
where LibroEstudiante.FechaDevolucion is null or LibroEstudiante.FechaDevolucion > LibroEstudiante.FechaDebeDevolver

-- Listar los libros y sus autores, que han sido prestados por estudiantes de Ingenieria de Sistemas, siempre que los libros tengan solo un autor, o que sean de autores de nacionalidad francesa.
select Libro.Titulo, Estudiante.Carrera, Estudiante.Nombre from LibroEstudiante
inner join Libro on Libro.IdLibro = LibroEstudiante.IdLibro
inner join Estudiante on Estudiante.NroRegistro = LibroEstudiante.NroRegistro
where Estudiante.Carrera like '%sistemas%'  

select Libro.Titulo, Autor.Nombre from AutorLibro
inner join Libro on Libro.IdLibro = AutorLibro.IdLibro
inner join Autor on Autor.IdAutor = AutorLibro.IdAutor
where Libro.IdLibro in(
	select Libro.IdLibro, Estudiante.Carrera from LibroEstudiante
	inner join Estudiante on Estudiante.NroRegistro = LibroEstudiante.NroRegistro
	where LibroEstudiante.FechaDevolucion is null and Estudiante.Carrera like '%sistemas%'
) -- FALTA PULIR

-- Generar un listado de estudiantes ordenado por carrera y nombre. Complemente con un listado de cantidad de estudiantes por carrera.
select * from Estudiante order by Carrera
select * from Estudiante order by Nombre
select count(*) as CantidadPorCarrera from Estudiante group by Carrera

-- Generar un listado de la cantidad de libros regitrados por editorial. Generar un listado de la cantidad de libros regitrados por año de publicación.
select count(*) as Librosporeditorial from Libro group by Editorial
select count(*) as AñoPublicacion from Libro group by AnoPublicacion