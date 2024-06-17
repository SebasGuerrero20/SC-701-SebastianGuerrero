CREATE TABLE [dbo].[PokemonxEquipos] (
    [IdPokemon] UNIQUEIDENTIFIER NOT NULL,
    [IdEquipo]  UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_PokemonxEquipos] PRIMARY KEY CLUSTERED ([IdPokemon] ASC, [IdEquipo] ASC)
);

