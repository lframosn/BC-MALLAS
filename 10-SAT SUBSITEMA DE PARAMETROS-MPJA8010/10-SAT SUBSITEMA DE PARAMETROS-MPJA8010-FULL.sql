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
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo 
,	DESBLQ 	VARCHAR	(30)	--Descripci�n del bloqueo 
,	DESBLQRED 	VARCHAR	(10)	--Descripci�n reducida del bloqueo 
,	INDAPLEMISOR 	VARCHAR	(1)	--Indicador de aplicaci�n en vertiente emisor:
--C � Contrato de tarjeta	 	 		
--T � Tarjeta	 	 		
--A � Ambos	 	 		
,	CODBLQSIA 	VARCHAR	(2)	--C�digo de bloqueo para el SIA o Switch:
--�00� � Tarjeta operativa	 	 		
--�01� � Denegar sin retener	 	 		
--�02� � Denegar en respaldo	 	 		
--�03� � Retener tarjeta	 	 		
--�06�- Denegar tarjeta robada	 	 		
--�07�- Denegar tarjeta perdida	 	 		
--�08�- Sospechoso fraude	 	 		
,	INDBLQOPE 	VARCHAR	(1)	--Bloquea operatividad:
--N: Sin bloqueo	 	 		
--S: Bloqueo de Operaciones	 	 		
--T: Bloqueo de Operaciones y Pagos	 	 		
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovaci�n:
--0 � S� renovar	 	 		
--1 � No renovar	 	 		
,	INDENVRED 	VARCHAR	(1)	--Indicador de env�o a red o franquicia (S/N) 
,	INDGENCUO 	VARCHAR	(1)	--Indicador de generaci�n de cuota 
,	INDBONCUO 	VARCHAR	(1)	--Indicador de bonificaci�n de cuota 
,	INDBLQCON 	VARCHAR	(1)	--Indicador bloqueo consulta (S/N) 
,	INDBLQLIQ 	VARCHAR	(1)	--Indicador de bloqueo de liquidaci�n (S/N) 
,	PESO 	DECIMAL	(2,0)	--Peso del bloqueo 
,	INDREVER 	VARCHAR	(1)	--Indicador de reversibilidad (S/N) 
,	INDREEM 	VARCHAR	(1)	--Indicador de permiso de reemisi�n para el estado (S/N) 
,	INDCMBPAN 	VARCHAR	(1)	--Indicador de cambio de PAN en la reemisi�n de la tarjeta (S/N) 
,	INDLIQDEU 	VARCHAR	(1)	--Indicador de aceleraci�n de deuda al extracto pendiente 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.TBCODBLQ;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCODBLQ  (
--MPDT060 - BLOQUEOS	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo 
,	DESBLQ 	VARCHAR	(30)	--Descripci�n del bloqueo 
,	DESBLQRED 	VARCHAR	(10)	--Descripci�n reducida del bloqueo 
,	INDAPLEMISOR 	VARCHAR	(1)	--Indicador de aplicaci�n en vertiente emisor:
--C � Contrato de tarjeta	 	 		
--T � Tarjeta	 	 		
--A � Ambos	 	 		
,	CODBLQSIA 	VARCHAR	(2)	--C�digo de bloqueo para el SIA o Switch:
--�00� � Tarjeta operativa	 	 		
--�01� � Denegar sin retener	 	 		
--�02� � Denegar en respaldo	 	 		
--�03� � Retener tarjeta	 	 		
--�06�- Denegar tarjeta robada	 	 		
--�07�- Denegar tarjeta perdida	 	 		
--�08�- Sospechoso fraude	 	 		
,	INDBLQOPE 	VARCHAR	(1)	--Bloquea operatividad:
--N: Sin bloqueo	 	 		
--S: Bloqueo de Operaciones	 	 		
--T: Bloqueo de Operaciones y Pagos	 	 		
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovaci�n:
--0 � S� renovar	 	 		
--1 � No renovar	 	 		
,	INDENVRED 	VARCHAR	(1)	--Indicador de env�o a red o franquicia (S/N) 
,	INDGENCUO 	VARCHAR	(1)	--Indicador de generaci�n de cuota 
,	INDBONCUO 	VARCHAR	(1)	--Indicador de bonificaci�n de cuota 
,	INDBLQCON 	VARCHAR	(1)	--Indicador bloqueo consulta (S/N) 
,	INDBLQLIQ 	VARCHAR	(1)	--Indicador de bloqueo de liquidaci�n (S/N) 
,	PESO 	DECIMAL	(2,0)	--Peso del bloqueo 
,	INDREVER 	VARCHAR	(1)	--Indicador de reversibilidad (S/N) 
,	INDREEM 	VARCHAR	(1)	--Indicador de permiso de reemisi�n para el estado (S/N) 
,	INDCMBPAN 	VARCHAR	(1)	--Indicador de cambio de PAN en la reemisi�n de la tarjeta (S/N) 
,	INDLIQDEU 	VARCHAR	(1)	--Indicador de aceleraci�n de deuda al extracto pendiente 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
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
 @NOMBRE_MALLA = 'MPJA8010'
,@OBJECT_NAME = 'TBCODBLQ'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '5d7995d17e50a52b88bcc6f129cd19cc0509138b'
,@VERSION_CODE = '5d7995d'
,@VERSION_DATE = 'February 11, 2019 2:03:00 PM'
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