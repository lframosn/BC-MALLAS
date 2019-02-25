drop table IF EXISTS STG_SAT.TBPLASTI;  CREATE TABLE IF NOT EXISTS STG_SAT.TBPLASTI  (
--MPDT008-Plasticos	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
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
,	ESTPLAS1 	VARCHAR	(40)	--Datos de estampaci�n a voluntad 
,	ESTPLAS2 	VARCHAR	(40)	--Datos de estampaci�n a voluntad 
,	RELTAR 	VARCHAR	(70)	--Relaci�n de tarjetas emitidas en el pl�stico. Ver nota a continuaci�n. 
); COMMIT;	 	 		