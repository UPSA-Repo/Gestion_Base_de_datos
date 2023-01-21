use Biblioteca

create procedure ReporteDiarioRetrasos as
	declare cursorPrestamos cursor for 
		select Libro.IdLibro, Estudiante.NroRegistro, Nombre, FechaDebeDevolver, FechaDevolucion from LibroEstudiante
			inner join Libro on Libro.IdLibro = LibroEstudiante.IdLibro
			inner join Estudiante on Estudiante.NroRegistro = LibroEstudiante.NroRegistro
			where FechaDevolucion > FechaDebeDevolver or (GETDATE() > FechaDebeDevolver and FechaDevolucion is NULL)
	open cursorPrestamo

	fetch next from cursorPrestamo

	close cursorPrestamo
	deallocate cursorPrestamo

	exec ReporteDiarioRetrasos