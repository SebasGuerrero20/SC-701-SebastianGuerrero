﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReclutarEntrenadores]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @i INTEGER;
	DECLARE @cantidad INTEGER;
	SET @i = 1;
	
	SELECT @cantidad=COUNT(Id) FROM Entrenadores
	
	BEGIN TRAN				
		DELETE FROM Entrenadores
	
		
		INSERT INTO [dbo].[Entrenadores]
				([Id]
				,[Nombre])
			VALUES
(NEWID(),'	ALVARADO SALAZAR JOSUE	'),
(NEWID(),'	AVILES ESCALANTE CARLOS ALEJANDRO	'),
(NEWID(),'	BARBOZA CORRALES EZEQUIEL	'),
(NEWID(),'	BOLAÑOS CASTILLO VICTOR ANDRES	'),
(NEWID(),'	BRENES MONTERO JOSE ANDRES	'),
(NEWID(),'	BUSTOS PERALTA AARON JOSUE	'),
(NEWID(),'	CAMPOS MATAMOROS STEVEN RAMSES	'),
(NEWID(),'	CHRISTOPHER HERNANDEZ	'),
(NEWID(),'	CORDERO ESTRADA SEBASTIAN	'),
(NEWID(),'	DIAZ BARBOZA ESTEBAN ALBERTO	'),
(NEWID(),'	FERNANDEZ CALDERON RODRIGO DANIEL	'),
(NEWID(),'	FERNANDEZ ROMERO YULIANA MARIA	'),
(NEWID(),'	GARCIA BALTODANO DAVID MAURICIO	'),
(NEWID(),'	GARCIA VASQUEZ JUAN MANUEL	'),
(NEWID(),'	GUERRERO ACUÑA SEBASTIAN	'),
(NEWID(),'	HOUSSAIN ZAYZAFOUN NAZIH	'),
(NEWID(),'	JIMENEZ CALVO CARLOS EMANUEL	'),
(NEWID(),'	LEON SAENZ ISMAEL	'),
(NEWID(),'	LOZADA CASTRO JAISSON STEVEN	'),
(NEWID(),'	OBANDO HIDALGO ROOSEMBERG	'),
(NEWID(),'	PEREIRA ARCE JOSE ANDRES	'),
(NEWID(),'	REYES VARGAS LEONARDO ENRIQUE	'),
(NEWID(),'	RODRIGUEZ BARBOZA VALERIA	'),
(NEWID(),'	SALAS VILLALOBOS ANTHONY JOSHUA	'),
(NEWID(),'	SANCHEZ CAMACHO CRISTOPHER JOSUE	'),
(NEWID(),'	SANCHEZ ZUÑIGA OLMAN ANDREY	'),
(NEWID(),'	VARGAS ALFARO JOSE DAVID	'),
(NEWID(),'	DEL VALLE RODRIGUEZ MARIA PAULA	'),
(NEWID(),'	GUERRERO VARGAS JOSE LUIS	'),
(NEWID(),'	ROJAS PEREZ JASON JOSUE	')

		SET @i = @i + 1;
		COMMIT TRAN
	SELECT *  FROM Entrenadores
END