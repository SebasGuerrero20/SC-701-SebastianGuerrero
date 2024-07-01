Create procedure AgregarPokemon

@Id UniqueIdentifier,
@Numero int,
@Nivel int
as
Begin

	Set nocount on;

insert into [dbo].[Pokemon]
			([Id],[Numero],[Nivel])
		Values
			(@Id, @Numero, Nivel)
end
