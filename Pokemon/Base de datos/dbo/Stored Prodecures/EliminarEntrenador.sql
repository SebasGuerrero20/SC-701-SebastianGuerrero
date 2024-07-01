CREATE PROCEDURE EliminarEntrenador
@Id UniqueIdentifier
AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM [dbo].[Entrenadores]
	WHERE Id=@Id
			   
END