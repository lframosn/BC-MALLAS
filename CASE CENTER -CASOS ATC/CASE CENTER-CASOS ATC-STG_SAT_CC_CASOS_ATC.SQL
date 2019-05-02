drop table IF EXISTS STG_SAT.CC_CASOS_ATC;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_CASOS_ATC  ( 	NUMERO_DE_CASO	VARCHAR	(255)	--numero de caso
,	CODIGO_GESTION	VARCHAR	(255)	--codigo gestion
,	GESTION_DESCRIPCION	VARCHAR	(255)	--gestion descripcion
,	FECHA_APERTURA	TIMESTAMP		--fecha apertura
,	FECHA_MODIFICACION	TIMESTAMP		--fecha modificacion
,	DESCRIPCION_DEL_CASO	VARCHAR	(6000)	--descripcion del caso
,	PAN	VARCHAR	(255)	--pan
,	NUMERO_DE_CONTRATO	VARCHAR	(255)	--numero de contrato
,	NOMBRE_1	VARCHAR	(255)	--nombre 1
,	APELLIDO_1	VARCHAR	(255)	--apellido 1
,	APELLIDO_2	VARCHAR	(255)	--apellido 2
,	RECORD_ID_CASECENTER	VARCHAR	(255)	--record id casecenter
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	CREATED_BY	VARCHAR	(255)	--created by
,	ESTADO	VARCHAR	(255)	--estado
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		
