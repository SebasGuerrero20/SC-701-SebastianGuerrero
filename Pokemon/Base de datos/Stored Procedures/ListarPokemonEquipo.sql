-- =============================================
-- Author:		Diego R
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[ListarPokemonEquipo] 

	@IdEquipo UniqueIdentifier
AS
BEGIN

	SET NOCOUNT ON;

SELECT        Pokemon.Numero, Pokemon.Nivel, Pokemon.Id
FROM            Pokemon INNER JOIN
                         PokemonxEquipos ON Pokemon.Id = PokemonxEquipos.IdPokemon
WHERE        (PokemonxEquipos.IdEquipo = @IdEquipo)
END