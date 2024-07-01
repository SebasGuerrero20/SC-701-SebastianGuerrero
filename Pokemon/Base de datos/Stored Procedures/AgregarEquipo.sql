-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE AgregarEquipo 
	-- Add the parameters for the stored procedure here
@IdEquipo UniqueIdentifier,
@IdEntrenador UniqueIdentifier,
@Nombre varchar(MAX)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[Equipos]
           ([IdEquipo]
           ,[IdEntrenador]
           ,[Nombre])
     VALUES
           (@IdEquipo
           ,@IdEntrenador
           ,@Nombre)
END