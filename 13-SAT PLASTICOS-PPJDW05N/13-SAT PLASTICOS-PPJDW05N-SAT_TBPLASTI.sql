drop table IF EXISTS SAT.TBPLASTI;  CREATE TABLE IF NOT EXISTS SAT.TBPLASTI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT008-Plasticos	 	 		
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--N�mero de pl�stico   
,	FECENVEST 	DATE		--Fecha de env�o a estampaci�n 
,	FECRECEST 	DATE		--Fecha de rechazo de estampaci�n 
,	FECACUSER 	DATE		--Fecha acuse de recibo 
,	FECULTREN 	DATE		--Fecha �ltima renovaci�n 
,	FECRECTAR 	DATE		--Fecha de recuperaci�n pl�stico 
,	FCORETTAR 	DATE		--Fecha de comunicaci�n de retenci�n del pl�stico 
,	HCORETTAR 	TIME		--Hora comunicaci�n de retenci�n del pl�stico 
,	CONDEST 	VARCHAR	(3)	--Condiciones de estampaci�n 
,	FILLER	VARCHAR	(777)	--Filler
); COMMIT;	 	 		
