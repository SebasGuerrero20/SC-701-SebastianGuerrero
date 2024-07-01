CREATE PROCEDURE ObtenerEntrenador
@Id UniqueIdentifier
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Id, Nombre 
	FROM Entrenadores
	WHERE Id=@Id
			   
END