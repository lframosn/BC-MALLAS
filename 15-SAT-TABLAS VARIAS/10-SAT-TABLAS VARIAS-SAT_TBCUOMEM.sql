drop table IF EXISTS SAT.TBCUOMEM;  CREATE TABLE IF NOT EXISTS SAT.TBCUOMEM  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--PCDT048-Cuota membresia	 	 		
,	CODENT	VARCHAR	(4)	--Código de entidad
,	CENTALTA	VARCHAR	(4)	--Centro de alta cuenta de tarjeta
,	CUENTA	VARCHAR	(12)	--Cuenta de tarjeta
,	NUMBENCTA	DECIMAL	(5,0)	--Número de beneficiario dentro de la cuenta de tarjeta
,	FECALTA	DATE		--Fecha de Activación de la Tarjeta
,	CODMAR	DECIMAL	(2,0)	--Código de marca de tarjeta
,	INDTIPT	DECIMAL	(2,0)	--Indicador de tipo de tarjeta
,	FECCARGO	DATE		--Fecha de siguiente cargo
,	CODENTUMO	VARCHAR	(4)	--Entidad última modificación
,	CODOFIUMO	VARCHAR	(4)	--Oficina última modificación
,	USUARIOUMO	VARCHAR	(8)	--Usuario última modificación
,	CODTERMUMO	VARCHAR	(8)	--Terminal última modificación
,	CONTCUR	TIMESTAMP		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		