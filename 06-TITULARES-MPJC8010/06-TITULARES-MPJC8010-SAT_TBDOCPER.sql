drop table IF EXISTS SAT.TBDOCPER;  CREATE TABLE IF NOT EXISTS SAT.TBDOCPER  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT	VARCHAR	(4)	--C�digo de entidad
,	IDENTCLI	VARCHAR	(8)	--N�mero �nico de persona
,	TIPDOC 	VARCHAR	(3)	--Tipo de documento
,	NUMDOC	VARCHAR	(22)	--N�mero de documento
,	FECDOC	DATE		--Fecha de vigencia de documento
,	DOCPRIN	VARCHAR	(1)	--Indicador de documento principal
,	DOCDUPL	VARCHAR	(1)	--Indicador de documento duplicado
,	FECALTA	DATE		--Fecha de alta
,	FECBAJA	DATE		--Fecha de baja
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	TIMESTAMP		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
