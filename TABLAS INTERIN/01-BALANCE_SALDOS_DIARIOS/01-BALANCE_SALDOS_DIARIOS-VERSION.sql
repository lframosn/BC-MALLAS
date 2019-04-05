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
,@OBJECT_TYPE_STR CHAR(128)

select 
 @NOMBRE_MALLA = 'N/A.CONTROL INTERNO'
,@OBJECT_NAME = 'SP_BALANCE_SALDOS_DIARIOS'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '40221d077fb6c2ee78918f405e62d28033bb8b8f'
,@VERSION_CODE = '40221d0'
,@VERSION_DATE = 'April 5, 2019 4:18:51 PM'
,@OBJECT_TYPE_STR = 'PROCEDURE'
,@CRDATE = NULL

select @CRDATE = creation_time_utc from sys.SYSOBJECT S, SYSOBJECTS O, SYSUSERS U
where S.object_type_str = @OBJECT_TYPE_STR 
AND O.name = object_name(S.object_id)
and O.uid = U.uid
and U.name = @OBJECT_USER
and O.name = @OBJECT_NAME
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'TB_BALANCE_SALDOS_DIARIOS'
,@OBJECT_TYPE_STR = 'TABLE'
,@CRDATE = NULL

select @CRDATE = MAX(creation_time_utc) from sys.SYSOBJECT S, SYSOBJECTS O, SYSUSERS U
where S.object_type_str = @OBJECT_TYPE_STR 
AND O.name = object_name(S.object_id)
and O.uid = U.uid
and U.name = @OBJECT_USER
and O.name = @OBJECT_NAME
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'VW_BALANCE_SALDOS_DIARIOS'
,@VERSION_COMMIT = '8d9fb2ca348d4a0c36a8c5aadebe06c61bbdc25f'
,@VERSION_CODE = '8d9fb2c'
,@VERSION_DATE = 'April 3, 2019 11:44:41 AM'
,@OBJECT_TYPE_STR = 'VIEW'
,@CRDATE = NULL

select @CRDATE = creation_time_utc from sys.SYSOBJECT S, SYSOBJECTS O, SYSUSERS U
where S.object_type_str = @OBJECT_TYPE_STR 
AND O.name = object_name(S.object_id)
and O.uid = U.uid
and U.name = @OBJECT_USER
and O.name = @OBJECT_NAME
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

COMMIT;
