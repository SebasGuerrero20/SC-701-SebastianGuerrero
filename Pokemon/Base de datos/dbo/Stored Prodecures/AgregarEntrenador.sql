CREATE PROCEDURE AgregarEntrenador
@Id UniqueIdentifier,
@nombre varchar(Max)
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [dbo].[Entrenadores]
			   ([Id]
			   ,[Nombre])
		 VALUES
			   (@Id
			   ,@Nombre)
END