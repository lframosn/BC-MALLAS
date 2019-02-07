drop table IF EXISTS SAT.TBBLQCTA;  CREATE TABLE IF NOT EXISTS SAT.TBBLQCTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT178 - Bloqueos de Cuenta o Contrato de Tarjeta	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo 
,	FECULTBLQ 	DATE		--Fecha de �ltimo bloqueo 
,	TEXBLQ  	VARCHAR	(30)	--Comentario del bloqueo 
--	 	 		
,	INDBLQEXT 	VARCHAR	(1)	--Indicador de bloqueo:
--E � Externo	 	 		
--M � Manual	 	 		
--A � Autom�tico	 	 		
,	MOTBLQ 	DECIMAL	(2,0)	--Motivo de Bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n  
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n  
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n    
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n    
,	CONTCUR 	TIMESTAMP		--Control de concurrencia  
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
