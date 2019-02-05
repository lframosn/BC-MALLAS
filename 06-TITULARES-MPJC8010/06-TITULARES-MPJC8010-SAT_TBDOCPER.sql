drop table IF EXISTS SAT.TBDOCPER;  CREATE TABLE IF NOT EXISTS SAT.TBDOCPER  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT	VARCHAR	(4)	--Código de entidad
,	IDENTCLI	VARCHAR	(8)	--Número único de persona
,	TIPDOC 	VARCHAR	(3)	--Tipo de documento
,	NUMDOC	VARCHAR	(22)	--Número de documento
,	FECDOC	DATE		--Fecha de vigencia de documento
,	DOCPRIN	VARCHAR	(1)	--Indicador de documento principal
,	DOCDUPL	VARCHAR	(1)	--Indicador de documento duplicado
,	FECALTA	DATE		--Fecha de alta
,	FECBAJA	DATE		--Fecha de baja
,	CODENTUMO	VARCHAR	(4)	--Entidad última modificación
,	CODOFIUMO	VARCHAR	(4)	--Oficina última modificación
,	USUARIOUMO	VARCHAR	(8)	--Usuario última modificación
,	CODTERMUMO	VARCHAR	(8)	--Terminal última modificación
,	CONTCUR	TIMESTAMP		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
