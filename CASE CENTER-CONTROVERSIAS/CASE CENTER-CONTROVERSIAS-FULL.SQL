--- creacion de grupo de usuarios SAT
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'SAT')
BEGIN
  CREATE USER SAT 
  FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

--- creacion de grupo de usuarios STG_SAT
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'STG_SAT')
BEGIN
  CREATE USER STG_SAT
  FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

drop table IF EXISTS SAT.CC_CONTROVERSIAS;  CREATE TABLE IF NOT EXISTS SAT.CC_CONTROVERSIAS  ( 	FECHA_CREACION	TIMESTAMP		--fecha creacion
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
,	MOV_COMERCIO1	VARCHAR(255)  -- mov_comercio1
,	MOV_CLASS	VARCHAR	(255)	--mov class
,	CENTALTA2	VARCHAR	(255)	--centalta2
,	CUENTA2	VARCHAR	(255)	--cuenta2
,	NUMEXTCTA2	VARCHAR	(255)	--numextcta2
,	CLAMON2	VARCHAR	(255)	--clamon2
,	ARN2	VARCHAR	(255)	--arn2
,	MOV_AMT2	DECIMAL	(17,2)	--mov amt2
,	MOV_COMERCIO2	VARCHAR(255)  -- mov_comercio2
,	MOV_CLASS2	VARCHAR	(255)	--mov class2
,	CENTALTA3	VARCHAR	(255)	--centalta3
,	CUENTA3	VARCHAR	(255)	--cuenta3
,	NUMEXTCTA3	VARCHAR	(255)	--numextcta3
,	CLAMON3	VARCHAR	(255)	--clamon3
,	ARN3	VARCHAR	(255)	--arn3
,	MOV_AMT3	DECIMAL	(17,2)	--mov amt3
,	MOV_COMERCIO3	VARCHAR(255)  -- mov_comercio3
,	MOV_CLASS3	VARCHAR	(255)	--mov class3
,	CENTALTA4	VARCHAR	(255)	--centalta4
,	CUENTA4	VARCHAR	(255)	--cuenta4
,	NUMEXTCTA4	VARCHAR	(255)	--numextcta4
,	CLAMON4	VARCHAR	(255)	--clamon4
,	ARN4	VARCHAR	(255)	--arn4
,	MOV_AMT4	DECIMAL	(17,2)	--mov amt4
,	MOV_COMERCIO4	VARCHAR(255)  -- mov_comercio4
,	MOV_CLASS4	VARCHAR	(255)	--mov class4
,	CENTALTA5	VARCHAR	(255)	--centalta5
,	CUENTA5	VARCHAR	(255)	--cuenta5
,	NUMEXTCTA5	VARCHAR	(255)	--numextcta5
,	CLAMON5	VARCHAR	(255)	--clamon5
,	ARN5	VARCHAR	(255)	--arn5
,	MOV_AMT5	DECIMAL	(17,2)	--mov amt5
,	MOV_COMERCIO5	VARCHAR(255)  -- mov_comercio5
,	MOV_CLASS5	VARCHAR	(255)	--mov class5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	ID_REGISTRO	VARCHAR	(255)	--id registro
,	ID_CLIENTE	VARCHAR	(255)	--id cliente
,	ESTADO	VARCHAR	(255)	--estado
,	FECHA_ULTIMA_MODIFICACION	TIMESTAMP		--fecha ultima modificacion
,	CREATED_BY	VARCHAR	(255)	--created by
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

-------------------- TABLAS STAGE ------------------
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
,	MOV_COMERCIO1	VARCHAR(255)  -- mov_comercio1
,	MOV_CLASS	VARCHAR	(255)	--mov class
,	CENTALTA2	VARCHAR	(255)	--centalta2
,	CUENTA2	VARCHAR	(255)	--cuenta2
,	NUMEXTCTA2	VARCHAR	(255)	--numextcta2
,	CLAMON2	VARCHAR	(255)	--clamon2
,	ARN2	VARCHAR	(255)	--arn2
,	MOV_AMT2	DECIMAL	(17,2)	--mov amt2
,	MOV_COMERCIO2	VARCHAR(255)  -- mov_comercio2
,	MOV_CLASS2	VARCHAR	(255)	--mov class2
,	CENTALTA3	VARCHAR	(255)	--centalta3
,	CUENTA3	VARCHAR	(255)	--cuenta3
,	NUMEXTCTA3	VARCHAR	(255)	--numextcta3
,	CLAMON3	VARCHAR	(255)	--clamon3
,	ARN3	VARCHAR	(255)	--arn3
,	MOV_AMT3	DECIMAL	(17,2)	--mov amt3
,	MOV_COMERCIO3	VARCHAR(255)  -- mov_comercio3
,	MOV_CLASS3	VARCHAR	(255)	--mov class3
,	CENTALTA4	VARCHAR	(255)	--centalta4
,	CUENTA4	VARCHAR	(255)	--cuenta4
,	NUMEXTCTA4	VARCHAR	(255)	--numextcta4
,	CLAMON4	VARCHAR	(255)	--clamon4
,	ARN4	VARCHAR	(255)	--arn4
,	MOV_AMT4	DECIMAL	(17,2)	--mov amt4
,	MOV_COMERCIO4	VARCHAR(255)  -- mov_comercio4
,	MOV_CLASS4	VARCHAR	(255)	--mov class4
,	CENTALTA5	VARCHAR	(255)	--centalta5
,	CUENTA5	VARCHAR	(255)	--cuenta5
,	NUMEXTCTA5	VARCHAR	(255)	--numextcta5
,	CLAMON5	VARCHAR	(255)	--clamon5
,	ARN5	VARCHAR	(255)	--arn5
,	MOV_AMT5	DECIMAL	(17,2)	--mov amt5
,	MOV_COMERCIO5	VARCHAR(255)  -- mov_comercio5
,	MOV_CLASS5	VARCHAR	(255)	--mov class5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	ID_REGISTRO	VARCHAR	(255)	--id registro
,	ID_CLIENTE	VARCHAR	(255)	--id cliente
,	ESTADO	VARCHAR	(255)	--estado
,	FECHA_ULTIMA_MODIFICACION	TIMESTAMP		--fecha ultima modificacion
,	CREATED_BY	VARCHAR	(255)	--created by
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

------------------------------------------------
---- CONTROL DE VERSION ------------------------
------------------------------------------------
create table IF NOT EXISTS CNF.VERSION_OBJETOS (
 NOMBRE_MALLA varchar(100)
,OBJECT_NAME varchar(100)
,OBJECT_USER varchar(20)
,VERSION_COMMIT VARCHAR(100)
,VERSION_CODE VARCHAR(20)
,VERSION_DATE DATETIME
,CRDATE DATETIME null default getdate()
,CRUSER varchar(20) null default user_name()
)
;
COMMIT;

declare 
 @NOMBRE_MALLA varchar(100)
,@OBJECT_NAME varchar(100)
,@OBJECT_USER varchar(20)
,@VERSION_COMMIT VARCHAR(100)
,@VERSION_CODE VARCHAR(20)
,@VERSION_DATE DATETIME 
,@CRDATE DATETIME

select 
 @NOMBRE_MALLA = 'CASE_CENTER'
,@OBJECT_NAME = 'CC_CONTROVERSIAS'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '20155413b28abc2014cee18a7abf8f4adc3ed324'
,@VERSION_CODE = '2015541'
,@VERSION_DATE = 'May 4, 2019 3:50:25 PM'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_USER = 'STG_SAT'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

COMMIT;

if exists (select 1 from CNF.CAT_JOBS WHERE NOMBRE_TABLA = 'CC_CONTROVERSIAS')
BEGIN
  DELETE CNF.CAT_JOBS WHERE NOMBRE_TABLA = 'CC_CONTROVERSIAS'
END
INSERT INTO "CNF"."CAT_JOBS" ("NOMBRE_JOB","NOMBRE_TABLA","TIPO_CARGA","REPROCESO") 
VALUES('JOB_CASE_CENTER_CTV','CC_CONTROVERSIAS',NULL,0);
COMMIT;

