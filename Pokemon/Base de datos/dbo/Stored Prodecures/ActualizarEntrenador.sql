CREATE PROCEDURE ActualizarEntrenador
@Id UniqueIdentifier,
@nombre varchar(Max)
AS
BEGIN

	SET NOCOUNT ON;

	UPDATE [dbo].[Entrenadores]
	SET [Nombre]=@Nombre
	WHERE Id=@Id
			   
END
