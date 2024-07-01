CREATE PROCEDURE AgregarPokemonEquipo 
	-- Add the parameters for the stored procedure here
@IdEquipo UniqueIdentifier,
@IdPokemon UniqueIdentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[PokemonxEquipos]
           ([IdEquipo]
           ,[IdPokemon])           
     VALUES
           (@IdEquipo
           ,@IdPokemon)           
END
