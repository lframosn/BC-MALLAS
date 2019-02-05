drop table IF EXISTS STG_SAT.TBCUOMEM;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCUOMEM  (
--PCDT048-Cuota membresia	 	 		
	CODENT	VARCHAR	(4)	--C�digo de entidad
,	CENTALTA	VARCHAR	(4)	--Centro de alta cuenta de tarjeta
,	CUENTA	VARCHAR	(12)	--Cuenta de tarjeta
,	NUMBENCTA	DECIMAL	(5,0)	--N�mero de beneficiario dentro de la cuenta de tarjeta
,	FECALTA	DATE		--Fecha de Activaci�n de la Tarjeta
,	CODMAR	DECIMAL	(2,0)	--C�digo de marca de tarjeta
,	INDTIPT	DECIMAL	(2,0)	--Indicador de tipo de tarjeta
,	FECCARGO	DATE		--Fecha de siguiente cargo
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	TIMESTAMP		--Control de concurrencia
); COMMIT;	 	 		