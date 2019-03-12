drop table IF EXISTS SAT.TBPLASTI;  CREATE TABLE IF NOT EXISTS SAT.TBPLASTI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT008-Plasticos	 	 		
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--Número de plástico   
,	FECENVEST 	DATE		--Fecha de envío a estampación 
,	FECRECEST 	DATE		--Fecha de rechazo de estampación 
,	FECACUSER 	DATE		--Fecha acuse de recibo 
,	FECULTREN 	DATE		--Fecha última renovación 
,	FECRECTAR 	DATE		--Fecha de recuperación plástico 
,	FCORETTAR 	DATE		--Fecha de comunicación de retención del plástico 
,	HCORETTAR 	TIME		--Hora comunicación de retención del plástico 
,	CONDEST 	VARCHAR	(3)	--Condiciones de estampación 
,	FILLER	VARCHAR	(777)	--Filler
); COMMIT;	 	 		
