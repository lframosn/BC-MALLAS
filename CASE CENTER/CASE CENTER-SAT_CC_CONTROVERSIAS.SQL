drop table IF EXISTS SAT.CC_CONTROVERSIAS;  CREATE TABLE IF NOT EXISTS SAT.CC_CONTROVERSIAS  ( 	FECHA_CREACION	TIMESTAMP		--fecha creacion
,	TIPO_IDENTIFICACION	VARCHAR	(1)	--tipo identificacion
,	NUMERO_IDENTIFICACION	VARCHAR	(14)	--numero identificacion
,	NUMERO_TARJETA	VARCHAR	(22)	--numero tarjeta
,	NOMBRE1	VARCHAR	(40)	--nombre1
,	NOMBRE2	VARCHAR	(40)	--nombre2
,	APELLIDO1	VARCHAR	(36)	--apellido1
,	APELLIDO2	VARCHAR	(36)	--apellido2
,	APELLIDO_CASADA	VARCHAR	(36)	--apellido casada
,	RAZON_SOCIAL	VARCHAR	(100)	--razon social
,	TELEFONO	VARCHAR	(8)	--telefono
,	TIPO_VIA	VARCHAR	(2)	--tipo via
,	NOMBRE_VIA	VARCHAR	(40)	--nombre via
,	NUMERO_VIA	VARCHAR	(5)	--numero via
,	CODIGO_POSTAL	VARCHAR	(10)	--codigo postal
,	PROVINCIA	VARCHAR	(2)	--provincia
,	COMENTARIOS	VARCHAR	(6000)	--comentarios
,	CTA_CENTRO_ALTA	VARCHAR	(30)	--cta centro alta
,	CUENTA	VARCHAR	(30)	--cuenta
,	PAN	VARCHAR	(22)	--pan
,	CENTALTA1	VARCHAR	(4)	--centalta1
,	CUENTA1	VARCHAR	(30)	--cuenta1
,	NUMEXTCTA1	VARCHAR	(3)	--numextcta1
,	CLAMON1	VARCHAR	(3)	--clamon1
,	ARN1	VARCHAR	(7)	--arn1
,	MOV_AMT1	VARCHAR	(17)	--mov amt1
,	MOV_CLASS	VARCHAR	(10)	--mov class
,	CENTALTA2	VARCHAR	(4)	--centalta2
,	CUENTA2	VARCHAR	(30)	--cuenta2
,	NUMEXTCTA2	VARCHAR	(3)	--numextcta2
,	CLAMON2	VARCHAR	(3)	--clamon2
,	ARN2	VARCHAR	(7)	--arn2
,	MOV_AMT2	VARCHAR	(17)	--mov amt2
,	MOV_CLASS2	VARCHAR	(10)	--mov class2
,	CENTALTA3	VARCHAR	(4)	--centalta3
,	CUENTA3	VARCHAR	(30)	--cuenta3
,	NUMEXTCTA3	VARCHAR	(3)	--numextcta3
,	CLAMON3	VARCHAR	(3)	--clamon3
,	ARN3	VARCHAR	(7)	--arn3
,	MOV_AMT3	VARCHAR	(17)	--mov amt3
,	MOV_CLASS3	VARCHAR	(10)	--mov class3
,	CENTALTA4	VARCHAR	(4)	--centalta4
,	CUENTA4	VARCHAR	(30)	--cuenta4
,	NUMEXTCTA4	VARCHAR	(3)	--numextcta4
,	CLAMON4	VARCHAR	(3)	--clamon4
,	ARN4	VARCHAR	(7)	--arn4
,	MOV_AMT4	VARCHAR	(17)	--mov amt4
,	MOV_CLASS4	VARCHAR	(10)	--mov class4
,	CENTALTA5	VARCHAR	(4)	--centalta5
,	CUENTA5	VARCHAR	(30)	--cuenta5
,	NUMEXTCTA5	VARCHAR	(3)	--numextcta5
,	CLAMON5	VARCHAR	(3)	--clamon5
,	ARN5	VARCHAR	(7)	--arn5
,	MOV_AMT5	VARCHAR	(17)	--mov amt5
,	MOV_CLASS5	VARCHAR	(10)	--mov class5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	ID_REGISTRO	VARCHAR	(30)	--id registro
,	ID_CLIENTE	VARCHAR	(8)	--id cliente
,	ESTADO	VARCHAR	(50)	--estado
,	FECHA_ULTIMA_MODIFICACION	TIMESTAMP		--fecha ultima modificacion
,	CREATED_BY	VARCHAR	(255)	--created by
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		
