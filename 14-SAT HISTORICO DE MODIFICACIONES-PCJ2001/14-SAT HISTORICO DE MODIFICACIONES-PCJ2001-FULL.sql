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

drop table IF EXISTS SAT.TBHISMOD;  CREATE TABLE IF NOT EXISTS SAT.TBHISMOD  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT068-Histórico de Modificaciones	 	 		
,	CODENT_ENC	VARCHAR	(4)	--Código de entidad
,	OFICINA	VARCHAR	(4)	--Oficina Usuario
,	USUARIO	VARCHAR	(8)	--Usuario que realiza la acción
,	TIPO_ACCION	VARCHAR	(30)	--Acción realizada por el usuario
,	TIPO_REGISTRO	VARCHAR	(1)	--REGISTRO DETALLE (alfanumerico 2300)
--1 - Log Movimientos formato  ATLOGMOV	 	 		
--2 – Histórico Modificaciones formato ATHISMOD	 	 		
--DETALLE DE COLUMNAS ATHISMOD	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECHIS 	DECIMAL	(15,0)	--Número secuencial del histórico 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deberá almacenarse justificado a la izquierda 
,	CODCOM 	VARCHAR	(15)	--Código de comercio 
,	FECHAMOD 	DATE		--Fecha de modificación 
,	HORAMOD 	TIME		--Hora de modificación 
,	TIPACCES 	DECIMAL	(1,0)	--Tipo de acceso: 
--0  – Cuenta de tarjeta 	 	 		
--1  – Tarjeta 	 	 		
--2  – Comercio 	 	 		
,	PROCESO 	VARCHAR	(10)	--Nombre del proceso que realizó la modificación 
,	DESPROCESO 	VARCHAR	(30)	--Descripción del proceso o función 
,	DATOMOD 	VARCHAR	(2)	--Dato modificado (bancos, bloqueos, …) 
,	MOTIVO 	VARCHAR	(2)	--Motivo de la modificación 
,	CANALMOD 	VARCHAR	(2)	--Canal de la modificación (en persona, teléfono …) 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	TABLA 	VARCHAR	(3)	--Nombre de tabla modificada 
,	REGANT 	VARCHAR	(1024)	--Registro anterior 
,	REGACT 	VARCHAR	(1024)	--Registro actual 
,	FILLER1	VARCHAR	(62)	--FILLER
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.TBHISMOD;  CREATE TABLE IF NOT EXISTS STG_SAT.TBHISMOD  (
--MPDT068-Histórico de Modificaciones	 	 		
	CODENT_ENC	VARCHAR	(4)	--Código de entidad
,	OFICINA	VARCHAR	(4)	--Oficina Usuario
,	USUARIO	VARCHAR	(8)	--Usuario que realiza la acción
,	TIPO_ACCION	VARCHAR	(30)	--Acción realizada por el usuario
,	TIPO_REGISTRO	VARCHAR	(1)	--REGISTRO DETALLE (alfanumerico 2300)
--1 - Log Movimientos formato  ATLOGMOV	 	 		
--2 – Histórico Modificaciones formato ATHISMOD	 	 		
--DETALLE DE COLUMNAS ATHISMOD	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECHIS 	DECIMAL	(15,0)	--Número secuencial del histórico 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deberá almacenarse justificado a la izquierda 
,	CODCOM 	VARCHAR	(15)	--Código de comercio 
,	FECHAMOD 	DATE		--Fecha de modificación 
,	HORAMOD 	TIME		--Hora de modificación 
,	TIPACCES 	DECIMAL	(1,0)	--Tipo de acceso: 
--0  – Cuenta de tarjeta 	 	 		
--1  – Tarjeta 	 	 		
--2  – Comercio 	 	 		
,	PROCESO 	VARCHAR	(10)	--Nombre del proceso que realizó la modificación 
,	DESPROCESO 	VARCHAR	(30)	--Descripción del proceso o función 
,	DATOMOD 	VARCHAR	(2)	--Dato modificado (bancos, bloqueos, …) 
,	MOTIVO 	VARCHAR	(2)	--Motivo de la modificación 
,	CANALMOD 	VARCHAR	(2)	--Canal de la modificación (en persona, teléfono …) 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	TABLA 	VARCHAR	(3)	--Nombre de tabla modificada 
,	REGANT 	VARCHAR	(1024)	--Registro anterior 
,	REGACT 	VARCHAR	(1024)	--Registro actual 
,	FILLER1	VARCHAR	(62)	--FILLER
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
 @NOMBRE_MALLA = 'PCJ2001'
,@OBJECT_NAME = 'TBHISMOD'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '90ad9ba9d3b107ffd6e7f02c95ffc32d8b075829'
,@VERSION_CODE = '90ad9ba'
,@VERSION_DATE = 'February 7, 2019 1:25:44 PM'
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
 @NOMBRE_MALLA = 'PCJ2001'
,@OBJECT_NAME = 'TBHISMOD'
,@OBJECT_USER = 'STG_SAT'
,@VERSION_COMMIT = '90ad9ba9d3b107ffd6e7f02c95ffc32d8b075829'
,@VERSION_CODE = '90ad9ba'
,@VERSION_DATE = 'February 7, 2019 1:25:44 PM'
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