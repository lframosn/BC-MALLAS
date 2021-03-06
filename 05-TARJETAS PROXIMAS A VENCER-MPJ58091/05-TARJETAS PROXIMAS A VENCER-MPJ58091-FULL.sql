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

------------------------------
-- INTERFAZ  TARJETAS PROXIMAS A VENCER
--------------------------------
-- TABLA ATINTVTO

drop table IF EXISTS SAT.ATINTVTO;  
CREATE TABLE IF NOT EXISTS SAT.ATINTVTO  (
 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	CODMAR	DECIMAL	(2,0)	--CODIGO MARCA DE TARJETA
,	INDTIPT	DECIMAL	(2,0)	--INDICADOR DE TIPO DE TARJETA
,	CENTALTA	VARCHAR	(4)	--CENTRO DE ALTA DEL CONTRATO
,	CUENTA	VARCHAR	(12)	--CUENTA DE CONTRATO
,	CALPART	VARCHAR	(2)	--CALIDA DE PARTICIPACION
,	IDENTCLI	VARCHAR	(8)	--IDENTIFICADOR DE CLIENTE
,	TIPBON	VARCHAR	(6)	--TIPO DE BONIFICACION
,	PAN	VARCHAR	(22)	--NUMERO DE LA TARJETA
,	FECALTA	DATE		--FECHA DE ALTA DE LA TARJETA
,	FECCADTAR	DECIMAL	(6,0)	--FECHA DE CADUCIDAD DE LA TARJETA (AAAAMM)
,	CODBLQ	DECIMAL	(2,0)	--CODIGO DE BLOQUEO
); COMMIT;	 
	 		
DROP TABLE IF EXISTS "DWH_ETLS"."ATINTVTO";
COMMIT;
DROP TABLE IF EXISTS "STG"."ATINTVTO";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."ATINTVTO";
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."ATINTVTO" (
	"CODENT_D" VARCHAR(4) NULL ,
	"NSECFIC_D" DECIMAL(10,0) NULL ,
	"TIPOCINTA_D" DECIMAL(2,0) NULL ,
	"TIPOREG_D" VARCHAR(1) NULL ,
	"FILLER_D" VARCHAR(91) NULL ,
	"NUMREGPROC" DECIMAL(12,0) NULL ,
	"CODENT" VARCHAR(4) NULL ,
	"CODMAR" DECIMAL(2,0) NULL ,
	"INDTIPT" DECIMAL(2,0) NULL ,
	"CENTALTA" VARCHAR(4) NULL ,
	"CUENTA" VARCHAR(12) NULL ,
	"CALPART" VARCHAR(2) NULL ,
	"IDENTCLI" VARCHAR(8) NULL ,
	"TIPBON" VARCHAR(6) NULL ,
	"PAN" VARCHAR(22) NULL ,
	"FECALTA" VARCHAR(10) NULL ,
	"FECCADTAR" DECIMAL(6,0) NULL ,
	"CODBLQ" DECIMAL(2,0) NULL 
)  COMMIT;

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
 @NOMBRE_MALLA = 'MPJ58091'
,@OBJECT_NAME = 'ATINTVTO'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = 'f0e40d208599d1ca3c1f317fee2205f331490c20'
,@VERSION_CODE = 'f0e40d2'
,@VERSION_DATE = ' 2019/01/28 4:16:42 PM'
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