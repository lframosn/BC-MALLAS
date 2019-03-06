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

drop table IF EXISTS SAT.TBCODBLQ;  CREATE TABLE IF NOT EXISTS SAT.TBCODBLQ  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT060 - BLOQUEOS	 	 		
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo 
,	DESBLQ 	VARCHAR	(30)	--Descripción del bloqueo 
,	DESBLQRED 	VARCHAR	(10)	--Descripción reducida del bloqueo 
,	INDAPLEMISOR 	VARCHAR	(1)	--Indicador de aplicación en vertiente emisor:
--C – Contrato de tarjeta	 	 		
--T – Tarjeta	 	 		
--A – Ambos	 	 		
,	CODBLQSIA 	VARCHAR	(2)	--Código de bloqueo para el SIA o Switch:
--‘00’ – Tarjeta operativa	 	 		
--‘01’ – Denegar sin retener	 	 		
--‘02’ – Denegar en respaldo	 	 		
--‘03’ – Retener tarjeta	 	 		
--‘06’- Denegar tarjeta robada	 	 		
--‘07’- Denegar tarjeta perdida	 	 		
--‘08’- Sospechoso fraude	 	 		
,	INDBLQOPE 	VARCHAR	(1)	--Bloquea operatividad:
--N: Sin bloqueo	 	 		
--S: Bloqueo de Operaciones	 	 		
--T: Bloqueo de Operaciones y Pagos	 	 		
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovación:
--0 – Sí renovar	 	 		
--1 – No renovar	 	 		
,	INDENVRED 	VARCHAR	(1)	--Indicador de envío a red o franquicia (S/N) 
,	INDGENCUO 	VARCHAR	(1)	--Indicador de generación de cuota 
,	INDBONCUO 	VARCHAR	(1)	--Indicador de bonificación de cuota 
,	INDBLQCON 	VARCHAR	(1)	--Indicador bloqueo consulta (S/N) 
,	INDBLQLIQ 	VARCHAR	(1)	--Indicador de bloqueo de liquidación (S/N) 
,	PESO 	DECIMAL	(2,0)	--Peso del bloqueo 
,	INDREVER 	VARCHAR	(1)	--Indicador de reversibilidad (S/N) 
,	INDREEM 	VARCHAR	(1)	--Indicador de permiso de reemisión para el estado (S/N) 
,	INDCMBPAN 	VARCHAR	(1)	--Indicador de cambio de PAN en la reemisión de la tarjeta (S/N) 
,	INDLIQDEU 	VARCHAR	(1)	--Indicador de aceleración de deuda al extracto pendiente 
,	FILLER1	VARCHAR	(818)	--FILLER
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.TBCODBLQ;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCODBLQ  (
--MPDT060 - BLOQUEOS	 	 		
	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo 
,	DESBLQ 	VARCHAR	(30)	--Descripción del bloqueo 
,	DESBLQRED 	VARCHAR	(10)	--Descripción reducida del bloqueo 
,	INDAPLEMISOR 	VARCHAR	(1)	--Indicador de aplicación en vertiente emisor:
--C – Contrato de tarjeta	 	 		
--T – Tarjeta	 	 		
--A – Ambos	 	 		
,	CODBLQSIA 	VARCHAR	(2)	--Código de bloqueo para el SIA o Switch:
--‘00’ – Tarjeta operativa	 	 		
--‘01’ – Denegar sin retener	 	 		
--‘02’ – Denegar en respaldo	 	 		
--‘03’ – Retener tarjeta	 	 		
--‘06’- Denegar tarjeta robada	 	 		
--‘07’- Denegar tarjeta perdida	 	 		
--‘08’- Sospechoso fraude	 	 		
,	INDBLQOPE 	VARCHAR	(1)	--Bloquea operatividad:
--N: Sin bloqueo	 	 		
--S: Bloqueo de Operaciones	 	 		
--T: Bloqueo de Operaciones y Pagos	 	 		
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovación:
--0 – Sí renovar	 	 		
--1 – No renovar	 	 		
,	INDENVRED 	VARCHAR	(1)	--Indicador de envío a red o franquicia (S/N) 
,	INDGENCUO 	VARCHAR	(1)	--Indicador de generación de cuota 
,	INDBONCUO 	VARCHAR	(1)	--Indicador de bonificación de cuota 
,	INDBLQCON 	VARCHAR	(1)	--Indicador bloqueo consulta (S/N) 
,	INDBLQLIQ 	VARCHAR	(1)	--Indicador de bloqueo de liquidación (S/N) 
,	PESO 	DECIMAL	(2,0)	--Peso del bloqueo 
,	INDREVER 	VARCHAR	(1)	--Indicador de reversibilidad (S/N) 
,	INDREEM 	VARCHAR	(1)	--Indicador de permiso de reemisión para el estado (S/N) 
,	INDCMBPAN 	VARCHAR	(1)	--Indicador de cambio de PAN en la reemisión de la tarjeta (S/N) 
,	INDLIQDEU 	VARCHAR	(1)	--Indicador de aceleración de deuda al extracto pendiente 
,	FILLER1	VARCHAR	(818)	--FILLER
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
 @NOMBRE_MALLA = 'PPJDW03N'
,@OBJECT_NAME = 'TBCODBLQ'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '37915704c5ede2d26a7255839a3e7491a719721e'
,@VERSION_CODE = '3791570'
,@VERSION_DATE = 'March 5, 2019 11:19:17 AM'
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
 @NOMBRE_MALLA = 'PPJDW03N'
,@OBJECT_NAME = 'TBCODBLQ'
,@VERSION_COMMIT = '43c53d045d0a0dcd666c2e8b06c5d2265292b22c'
,@VERSION_CODE = '43c53d0'
,@VERSION_DATE = 'March 6, 2019 11:21:57 AM'
,@OBJECT_USER = 'STG_SAT'
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