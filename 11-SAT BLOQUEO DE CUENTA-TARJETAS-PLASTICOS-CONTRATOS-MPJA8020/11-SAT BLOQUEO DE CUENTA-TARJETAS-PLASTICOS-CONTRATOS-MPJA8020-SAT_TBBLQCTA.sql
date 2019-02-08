drop table IF EXISTS SAT.TBBLQCTA;  CREATE TABLE IF NOT EXISTS SAT.TBBLQCTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT178 - Bloqueos de Cuenta o Contrato de Tarjeta	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo 
,	FECULTBLQ 	DATE		--Fecha de último bloqueo 
,	TEXBLQ  	VARCHAR	(30)	--Comentario del bloqueo 
--	 	 		
,	INDBLQEXT 	VARCHAR	(1)	--Indicador de bloqueo:
--E – Externo	 	 		
--M – Manual	 	 		
--A – Automático	 	 		
,	MOTBLQ 	DECIMAL	(2,0)	--Motivo de Bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación  
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación  
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación    
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación    
,	CONTCUR 	TIMESTAMP		--Control de concurrencia  
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
