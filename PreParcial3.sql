create PROCEDURE RegistrarLyA
	
	@IdLibro as char(10),
	@Titulo as varchar(40), 
	@Subtitulo as varchar(40),
	@Editorial as varchar(40),
	@Area as varchar(30),
	@AnoPublicacion as char(10),
	@TotalPaginas as int,
	@Edicion as varchar(10),

	@IdAutor as char(10),
	@Nombre as varchar(40),
	@Nacionalidad as varchar(40)
	
AS
BEGIN
	declare @auxLibro as int, @auxAutor as int, @auxAutoria as int
	SET NOCOUNT ON;
	select @auxLibro = count (*) from dbo.Libros where IdLibro = @IdLibro 
	if(@auxLibro = 0)
		begin
		INSERT INTO [dbo].[Libros]([IdLibro],[Titulo],[SubTitulo],[Editorial],[Area],[AnoPublicacion],[TotalPaginas],[Edicion]) VALUES(@IdLibro,@Titulo,@SubTitulo,@Editorial,@Area,@AnoPublicacion,@TotalPaginas,@Edicion)
		select @auxAutor = count (*) from dbo.Autores where IdAutor = @IdAutor
		if(@auxAutor = 0)
			begin
			INSERT INTO [dbo].[Autores]([IdAutor],[Nombre],[Nacionalidad]) VALUES(@IdAutor,@Nombre,@Nacionalidad)
			end
		select @auxAutoria = count (*) from dbo.Autorias where IdAutor = @IdAutor and IdLibro = @IdLibro
		if(@auxAutoria = 0)
			begin
			INSERT INTO [dbo].[Autorias]([IdAutor],[IdLibro]) VALUES(@IdAutor,@IdLibro)
			end
		end

END
GO