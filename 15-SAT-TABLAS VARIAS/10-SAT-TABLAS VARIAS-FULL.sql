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

drop table IF EXISTS SAT.TBCONGEL;  CREATE TABLE IF NOT EXISTS SAT.TBCONGEL  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT250-Cuentas Congeladas	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECIMP	DECIMAL	(15,0)	--N�mero de secuencia del recibo impagado con formato 
--AAAAMMDDNNNNNNN 	 	 		
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	IMPORTE 	DECIMAL	(17,2)	--Importe traspasado a congelaci�n 
,	IMPORTETOT 	DECIMAL	(17,2)	--Importe total congelado. Incluye intereses y comisiones por gesti�n de cobro 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado (cobrado) 
,	FECALTA 	DATE		--Fecha de alta en congelaci�n 
,	FECULTAPL 	DATE		--Fecha de �ltima aplicaci�n pago 
,	FECBAJA 	DATE		--Fecha de baja en congelaci�n 
,	MOTBAJA 	DECIMAL	(2,0)	--C�digo de motivo de baja 
,	NUMULTMOV 	DECIMAL	(7,0)	--N�mero de �ltimo movimiento 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n 
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n 
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n 
,	CONTCUR 	TIMESTAMP		--Control de concurrencia 
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBCUOMEM;  CREATE TABLE IF NOT EXISTS SAT.TBCUOMEM  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--PCDT048-Cuota membresia	 	 		
,	CODENT	VARCHAR	(4)	--C�digo de entidad
,	CENTALTA	VARCHAR	(4)	--Centro de alta cuenta de tarjeta
,	CUENTA	VARCHAR	(12)	--Cuenta de tarjeta
,	NUMBENCTA	DECIMAL	(5,0)	--N�mero de beneficiario dentro de la cuenta de tarjeta
,	FECALTA	DATE		--Fecha de Activaci�n de la Tarjeta
,	CODMAR	DECIMAL	(2,0)	--C�digo de marca de tarjeta
,	INDTIPT	DECIMAL	(2,0)	--Indicador de tipo de tarjeta
,	FECCARGO	DATE		--Fecha de siguiente cargo
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	TIMESTAMP		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS SAT.TBMEDENV_ECTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--PCDT420-Medios de envio de estados de cuenta	 	 		
,	CODENT	VARCHAR	(4)	--C�digo de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--N�mero de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de env�o
--�EM� � E-Mail	 	 		
--�CO�- Correo	 	 		
--�AM�- Ambos	 	 		
--�NO�- Sin medio de env�o	 	 		
,	EMAIL	VARCHAR	(30)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--C�digo de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripci�n de la oficina de abogados
,	CODVIAJFRE	VARCHAR	(25)	--C�digo de viajero frecuente
,	FECALTAVIAJ	VARCHAR	(10)	--Fecha de alta c�digo de viajero frecuente
,	INDCLICUMM	VARCHAR	(1)	--Indicador cliente cumplido para mora (S/N)
,	INDCLICUMC	VARCHAR	(1)	--Indicador de cliente cumplido para consumos
--N � No Cumple	 	 		
--C � Cliente cumplidor	 	 		
--M � Cliente medio cumplidor	 	 		
,	FECCLICUM	VARCHAR	(10)	--Fecha �ltima actualizaci�n cliente cumplido
,	CLASIFRISAT	VARCHAR	(2)	--Clasificaci�n de riesgo SAT
,	CLASIFRIREG	VARCHAR	(2)	--Clasificaci�n de riesgo regulatorios
,	CLASIFRIMDE	DECIMAL	(5,0)	--Clasificaci�n de riesgo motor de decisi�n
,	TASAEFECMAX	DECIMAL	(7,4)	--Tasa efectiva m�xima
,	REFEXTCONTR	VARCHAR	(25)	--Referencia externa de contrato
,	CONPRODT	VARCHAR	(3)	--Condici�n Econ�mica temporal
,	FECCETINI	DATE		--Fecha inicio Cond. Econ. Temporal
,	FECCETFIN	DATE		--Fecha fin Cond. Econ. Temporal
,	CONPRODO	VARCHAR	(3)	--Condici�n Econ�mica original del contrato
,	TASAFINAN	DECIMAL	(7,4)	--Tasa de financiamiento
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	Timestamp		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.TBCONGEL;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCONGEL  (
--MPDT250-Cuentas Congeladas	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECIMP	DECIMAL	(15,0)	--N�mero de secuencia del recibo impagado con formato 
--AAAAMMDDNNNNNNN 	 	 		
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	IMPORTE 	DECIMAL	(17,2)	--Importe traspasado a congelaci�n 
,	IMPORTETOT 	DECIMAL	(17,2)	--Importe total congelado. Incluye intereses y comisiones por gesti�n de cobro 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado (cobrado) 
,	FECALTA 	DATE		--Fecha de alta en congelaci�n 
,	FECULTAPL 	DATE		--Fecha de �ltima aplicaci�n pago 
,	FECBAJA 	DATE		--Fecha de baja en congelaci�n 
,	MOTBAJA 	DECIMAL	(2,0)	--C�digo de motivo de baja 
,	NUMULTMOV 	DECIMAL	(7,0)	--N�mero de �ltimo movimiento 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n 
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n 
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n 
,	CONTCUR 	TIMESTAMP		--Control de concurrencia 
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBCUOMEM;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCUOMEM  (
--PCDT048-Cuota membresia	 	 		
	CODENT	VARCHAR	(4)	--C�digo de entidad
,	CENTALTA	VARCHAR	(4)	--Centro de alta cuenta de tarjeta
,	CUENTA	VARCHAR	(12)	--Cuenta de tarjeta
,	NUMBENCTA	DECIMAL	(5,0)	--N�mero de beneficiario dentro de la cuenta de tarjeta
,	FECALTA	DATE		--Fecha de Activaci�n de la Tarjeta
,	CODMAR	DECIMAL	(2,0)	--C�digo de marca de tarjeta
,	INDTIPT	DECIMAL	(2,0)	--Indicador de tipo de tarjeta
,	FECCARGO	DATE		--Fecha de siguiente cargo
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	TIMESTAMP		--Control de concurrencia
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS STG_SAT.TBMEDENV_ECTA  (
--PCDT420-Medios de envio de estados de cuenta	 	 		
	CODENT	VARCHAR	(4)	--C�digo de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--N�mero de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de env�o
--�EM� � E-Mail	 	 		
--�CO�- Correo	 	 		
--�AM�- Ambos	 	 		
--�NO�- Sin medio de env�o	 	 		
,	EMAIL	VARCHAR	(30)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--C�digo de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripci�n de la oficina de abogados
,	CODVIAJFRE	VARCHAR	(25)	--C�digo de viajero frecuente
,	FECALTAVIAJ	VARCHAR	(10)	--Fecha de alta c�digo de viajero frecuente
,	INDCLICUMM	VARCHAR	(1)	--Indicador cliente cumplido para mora (S/N)
,	INDCLICUMC	VARCHAR	(1)	--Indicador de cliente cumplido para consumos
--N � No Cumple	 	 		
--C � Cliente cumplidor	 	 		
--M � Cliente medio cumplidor	 	 		
,	FECCLICUM	VARCHAR	(10)	--Fecha �ltima actualizaci�n cliente cumplido
,	CLASIFRISAT	VARCHAR	(2)	--Clasificaci�n de riesgo SAT
,	CLASIFRIREG	VARCHAR	(2)	--Clasificaci�n de riesgo regulatorios
,	CLASIFRIMDE	DECIMAL	(5,0)	--Clasificaci�n de riesgo motor de decisi�n
,	TASAEFECMAX	DECIMAL	(7,4)	--Tasa efectiva m�xima
,	REFEXTCONTR	VARCHAR	(25)	--Referencia externa de contrato
,	CONPRODT	VARCHAR	(3)	--Condici�n Econ�mica temporal
,	FECCETINI	DATE		--Fecha inicio Cond. Econ. Temporal
,	FECCETFIN	DATE		--Fecha fin Cond. Econ. Temporal
,	CONPRODO	VARCHAR	(3)	--Condici�n Econ�mica original del contrato
,	TASAFINAN	DECIMAL	(7,4)	--Tasa de financiamiento
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	Timestamp		--Control de concurrencia
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
 @NOMBRE_MALLA = 'N/A.SAT-TABLAS VARIAS'
,@OBJECT_NAME = 'TBCONGEL'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '1ed3eb78899734e14d597abf39d2c6dfb77470d0'
,@VERSION_CODE = '1ed3eb7'
,@VERSION_DATE = 'February 5, 2019 9:00:43 AM'
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
@OBJECT_NAME = 'TBCUOMEM'
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
@OBJECT_NAME = 'TBMEDENV_ECTA'
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
 @NOMBRE_MALLA = 'N/A.SAT-TABLAS VARIAS'
,@OBJECT_NAME = 'TBCONGEL'
,@OBJECT_USER = 'STG_SAT'
,@VERSION_COMMIT = '1ed3eb78899734e14d597abf39d2c6dfb77470d0'
,@VERSION_CODE = '1ed3eb7'
,@VERSION_DATE = 'February 5, 2019 9:00:43 AM'
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
@OBJECT_NAME = 'TBCUOMEM'
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
@OBJECT_NAME = 'TBMEDENV_ECTA'
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