drop table IF EXISTS STG_SAT.CC_CASOS_ATC;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_CASOS_ATC  ( 	NUMERO_DE_CASO	VARCHAR	(21)	--numero de caso
,	CODIGO_GESTION	VARCHAR	(10)	--codigo gestion
,	GESTION_DESCRIPCION	VARCHAR	(100)	--gestion descripcion
,	FECHA_APERTURA	TIMESTAMP		--fecha apertura
,	FECHA_MODIFICACION	TIMESTAMP		--fecha modificacion
,	DESCRIPCION_DEL_CASO	VARCHAR	(6000)	--descripcion del caso
,	PAN	VARCHAR	(22)	--pan
,	NUMERO_DE_CONTRATO	VARCHAR	(12)	--numero de contrato
,	NOMBRE_1	VARCHAR	(40)	--nombre 1
,	APELLIDO_1	VARCHAR	(36)	--apellido 1
,	APELLIDO_2	VARCHAR	(36)	--apellido 2
,	RECORD_ID_CASECENTER	VARCHAR	(30)	--record id casecenter
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	CREATED_BY	VARCHAR	(255)	--created by
,	ESTADO	VARCHAR	(50)	--estado
); COMMIT;	 	 		
