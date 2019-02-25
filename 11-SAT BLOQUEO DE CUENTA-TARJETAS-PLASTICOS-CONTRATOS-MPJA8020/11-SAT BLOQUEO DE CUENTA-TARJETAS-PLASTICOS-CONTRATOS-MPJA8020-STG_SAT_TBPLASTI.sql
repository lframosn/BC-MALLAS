drop table IF EXISTS STG_SAT.TBPLASTI;  CREATE TABLE IF NOT EXISTS STG_SAT.TBPLASTI  (
--MPDT008-Plasticos	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
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
,	ESTPLAS1 	VARCHAR	(40)	--Datos de estampación a voluntad 
,	ESTPLAS2 	VARCHAR	(40)	--Datos de estampación a voluntad 
,	RELTAR 	VARCHAR	(70)	--Relación de tarjetas emitidas en el plástico. Ver nota a continuación. 
); COMMIT;	 	 		