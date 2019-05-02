drop table IF EXISTS STG_SAT.CC_CONTROVERSIAS;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_CONTROVERSIAS  ( 	FECHA_CREACION	TIMESTAMP		--fecha creacion
,	TIPO_IDENTIFICACION	VARCHAR	(255)	--tipo identificacion
,	NUMERO_IDENTIFICACION	VARCHAR	(255)	--numero identificacion
,	NUMERO_TARJETA	VARCHAR	(255)	--numero tarjeta
,	NOMBRE1	VARCHAR	(255)	--nombre1
,	NOMBRE2	VARCHAR	(255)	--nombre2
,	APELLIDO1	VARCHAR	(255)	--apellido1
,	APELLIDO2	VARCHAR	(255)	--apellido2
,	APELLIDO_CASADA	VARCHAR	(255)	--apellido casada
,	RAZON_SOCIAL	VARCHAR	(255)	--razon social
,	TELEFONO	VARCHAR	(255)	--telefono
,	TIPO_VIA	VARCHAR	(255)	--tipo via
,	NOMBRE_VIA	VARCHAR	(255)	--nombre via
,	NUMERO_VIA	VARCHAR	(255)	--numero via
,	CODIGO_POSTAL	VARCHAR	(255)	--codigo postal
,	PROVINCIA	VARCHAR	(255)	--provincia
,	COMENTARIOS	VARCHAR	(6000)	--comentarios
,	CTA_CENTRO_ALTA	VARCHAR	(255)	--cta centro alta
,	CUENTA	VARCHAR	(255)	--cuenta
,	PAN	VARCHAR	(255)	--pan
,	CENTALTA1	VARCHAR	(255)	--centalta1
,	CUENTA1	VARCHAR	(255)	--cuenta1
,	NUMEXTCTA1	VARCHAR	(255)	--numextcta1
,	CLAMON1	VARCHAR	(255)	--clamon1
,	ARN1	VARCHAR	(255)	--arn1
,	MOV_AMT1	DECIMAL	(17,2)	--mov amt1
,	MOV_CLASS	VARCHAR	(255)	--mov class
,	CENTALTA2	VARCHAR	(255)	--centalta2
,	CUENTA2	VARCHAR	(255)	--cuenta2
,	NUMEXTCTA2	VARCHAR	(255)	--numextcta2
,	CLAMON2	VARCHAR	(255)	--clamon2
,	ARN2	VARCHAR	(255)	--arn2
,	MOV_AMT2	DECIMAL	(17,2)	--mov amt2
,	MOV_CLASS2	VARCHAR	(255)	--mov class2
,	CENTALTA3	VARCHAR	(255)	--centalta3
,	CUENTA3	VARCHAR	(255)	--cuenta3
,	NUMEXTCTA3	VARCHAR	(255)	--numextcta3
,	CLAMON3	VARCHAR	(255)	--clamon3
,	ARN3	VARCHAR	(255)	--arn3
,	MOV_AMT3	DECIMAL	(17,2)	--mov amt3
,	MOV_CLASS3	VARCHAR	(255)	--mov class3
,	CENTALTA4	VARCHAR	(255)	--centalta4
,	CUENTA4	VARCHAR	(255)	--cuenta4
,	NUMEXTCTA4	VARCHAR	(255)	--numextcta4
,	CLAMON4	VARCHAR	(255)	--clamon4
,	ARN4	VARCHAR	(255)	--arn4
,	MOV_AMT4	DECIMAL	(17,2)	--mov amt4
,	MOV_CLASS4	VARCHAR	(255)	--mov class4
,	CENTALTA5	VARCHAR	(255)	--centalta5
,	CUENTA5	VARCHAR	(255)	--cuenta5
,	NUMEXTCTA5	VARCHAR	(255)	--numextcta5
,	CLAMON5	VARCHAR	(255)	--clamon5
,	ARN5	VARCHAR	(255)	--arn5
,	MOV_AMT5	DECIMAL	(17,2)	--mov amt5
,	MOV_CLASS5	VARCHAR	(255)	--mov class5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	ID_REGISTRO	VARCHAR	(255)	--id registro
,	ID_CLIENTE	VARCHAR	(255)	--id cliente
,	ESTADO	VARCHAR	(255)	--estado
,	FECHA_ULTIMA_MODIFICACION	TIMESTAMP		--fecha ultima modificacion
,	CREATED_BY	VARCHAR	(255)	--created by
,	CODIGO_DE_LA_AUTORIZACION	VARCHAR	(255)	--Codigo de la autorizacion
,	NOMBRE_DEL_COMERCIO	VARCHAR	(255)	--Nombre del comercio
,	CODIGO_DE_COMERCIO_MCC	DECIMAL	(4,0)	--Codigo de Comercio MCC
,	FECHA_Y_HORA_DE_LA_TRANSACCION	TIMESTAMP		--fecha y hora de la transaccion
,	PAIS_DE_LA_TRANSACCION	DECIMAL	(3,0)	--pais de la transaccion
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		
