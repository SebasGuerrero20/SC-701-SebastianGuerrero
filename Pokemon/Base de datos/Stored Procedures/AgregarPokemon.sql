
CREATE PROCEDURE AgregarPokemon
	-- Add the parameters for the stored procedure here
	@Id UniqueIdentifier,
	@Numero int,
	@Nivel int
AS
BEGIN

	SET NOCOUNT ON;

INSERT INTO [dbo].[Pokemon]
           ([Id]
           ,[Numero]
           ,[Nivel])
     VALUES
           (@Id,@Numero,@Nivel)
END