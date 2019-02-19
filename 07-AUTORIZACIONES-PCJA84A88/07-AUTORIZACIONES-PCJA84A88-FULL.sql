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
-- INTERFAZ  AUTORIZACIONES
--------------------------------
drop table IF EXISTS SAT.TBAUTORI;  CREATE TABLE IF NOT EXISTS SAT.TBAUTORI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	TIPOMSGON 	VARCHAR	(4)	--C�digo de mensaje on-line 
,	CODPROON 	DECIMAL	(6,0)	--C�digo de proceso on-line 
,	SIAIDCD 	VARCHAR	(19)	--C�digo de identificaci�n SIA. Est� compuesto de la sesi�n de SIA y del identificador del mensaje. 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta que realiz� la operaci�n. El valor de este campo deber� almacenarse justificado a la izquierda 
,	CODMAR 	DECIMAL	(2,0)	--C�digo de marca de tarjeta 
,	INDTIPT 	DECIMAL	(2,0)	--Indicador de tipo de tarjeta 
,	INDDEBCRE 	DECIMAL	(1,0)	--Indicador de operatividad de la operaci�n: 
--1� � Cr�dito  	 	 		
--2� � D�bito 	 	 		
--5� � Prepago Regalo 	 	 		
--6� � Prepago  	 	 		
,	IMPTRN 	DECIMAL	(17,2)	--Importe de la transacci�n 
,	CLAMONTRN 	DECIMAL	(3,0)	--C�digo de moneda de la transacci�n 
,	IMPCCA 	DECIMAL	(17,2)	--Importe de conciliaci�n 
,	CLAMONCCA 	DECIMAL	(3,0)	--C�digo de moneda de conciliaci�n 
,	IMPDIV 	DECIMAL	(17,2)	--Importe en divisa original 
,	CLAMONDIV 	DECIMAL	(3,0)	--C�digo de moneda de la divisa original 
,	FECTRN 	DATE		--Fecha de la transacci�n 
,	HORTRN 	TIME		--Hora de la transacci�n 
,	CMBAPLI 	DECIMAL	(9,4)	--Factor de cambio aplicado (s�lo tiene sentido para operaciones en el extranjero) 
,	CODACT 	DECIMAL	(4,0)	--C�digo de actividad 
,	CODPAIS 	DECIMAL	(3,0)	--C�digo del pa�s 
,	MODENTDAT 	VARCHAR	(12)	--Modo de entrada de datos 
,	SESIONORI 	VARCHAR	(12)	--Sesi�n origen 
,	SESIONSIA 	VARCHAR	(7)	--Sesi�n establecida entre SIA y SAT 
,	IMPTASAS 	DECIMAL	(17,2)	--Importe de las tasas 
,	IDADQUIR 	VARCHAR	(11)	--Identificador de adquirente 
,	CODRED 	VARCHAR	(11)	--C�digo de la red o elemento SIA que env�o el mensaje 
,	NUMREFOPE 	DECIMAL	(12,0)	--N�mero operaci�n original 
,	IDTERM 	VARCHAR	(16)	--Identificador del terminal 
,	CODCOM 	VARCHAR	(15)	--C�digo de comercio 
,	NOMCOM 	VARCHAR	(15)	--Nombre del establecimiento 
,	LOCALIDAD 	VARCHAR	(15)	--Localidad del comercio 
,	RTSITD 	VARCHAR	(40)	--Clave de franquicia 
,	DATORI 	VARCHAR	(30)	--Datos del origen. Podr� venir la clave de franquicia de la operaci�n original 
,	NUMAUT 	VARCHAR	(6)	--N�mero de autorizaci�n 
,	CODRESPU 	VARCHAR	(3)	--C�digo respuesta 
,	CODACCRED 	DECIMAL	(3,0)	--C�digo de acci�n de red 
,	TIPFRAN 	DECIMAL	(4,0)	--C�digo de la franquicia 
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de normal o correctora:  
--0 - Normal	 	 		
--1 � Correctora 	 	 		
,	TIPOFAC 	DECIMAL	(4,0)	--Tipo de factura 
,	INDPREAUT 	DECIMAL	(1,0)	--Indicador de preautorizaci�n: 
--0� - Normal 	 	 		
--1� - Preautorizaci�n 	 	 		
--2� - Preautorizaci�n confirmada 	 	 		
--3� - Confirmaci�n de la preautorizaci�n 	 	 		
,	INDCRUCE 	DECIMAL	(1,0)	--Indicativo de cruce: 
--0� � No cruzada 	 	 		
--1� � Cruzada 	 	 		
--2� � Expirada 	 	 		
--3� � Cruzada manual 	 	 		
--4� � Cruzada manual y cruzada 	 	 		
--5� � Cruzada manual y expirada 	 	 		
--8� � Contable 	 	 		
--9� � Comunicaci�n contable err�nea 	 	 		
,	INDANUL 	DECIMAL	(1,0)	--Indicativo de anulaci�n 
,	INDRETSAL 	VARCHAR	(1)	--Indicador de retenci�n de saldo 
,	IMPTRNCON 	DECIMAL	(17,2)	--Importe transacci�n en moneda del contrato 
,	IMPAUTCON 	DECIMAL	(17,2)	--Importe total autorizado en moneda del contrato 
,	CLAMONCON 	DECIMAL	(3,0)	--Clave de moneda del contrato 
,	FECCONTA 	DATE		--Fecha contable 
,	NUMRETSAL 	DECIMAL	(10,0)	--N�mero de retenci�n en saldo 
,	IMPRETSAL 	DECIMAL	(17,2)	--Importe de retenci�n de saldo 
,	CLAMONRET 	DECIMAL	(3,0)	--Clave de moneda de la retenci�n de saldo 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	IMPPROP 	DECIMAL	(17,2)	--Importe de la propina                    
,	ACCEMICRE 	VARCHAR	(1)	--Acci�n de evento emisor cr�dito: 
--0���� � No acci�n 	 	 		
--1���� � Actualizar saldo autorizado  	 	 		
--2���� � Actualizar saldo dispuesto (single message) 	 	 		
--3���� � No acci�n con c�lculo de comisi�n  	 	 		
--4���� � Actualizaci�n de saldo autorizado con c�lculo de comisi�n  	 	 		
,	ACCEMIDEB 	VARCHAR	(1)	--Acci�n de evento emisor d�bito: 
--0����� � No acci�n 	 	 		
--1����� � Retener (el movimiento y conceptos se incluir� con la operaci�n en batch) 	 	 		
--2����� � Pasivo (el movimiento y conceptos se incluir� con la operaci�n en batch) 	 	 		
--3����� � Pasivo con comisi�n (se incluye movimiento en tiempo de autorizaci�n, aunque posteriormente llegue operaci�n) 	 	 		
--4����� � Pasivo sin comisi�n (single message) 	 	 		
--5����� � Pasivo con comisi�n (single message) 	 	 		
--6����� � Retener con comisi�n (el movimiento y conceptos se incluir� con la operaci�n en batch) 	 	 		
--7� � No acci�n con c�lculo de comisi�n  	 	 		
--8� � Pasivo con c�lculo de comisi�n  	 	 		
,	ACCMERCH 	VARCHAR	(1)	--Acci�n de evento merchant: 
---����������� 0 - No acci�n 	 	 		
---����������� 1 - Grabar operaci�n en remesas+actualizaci�n saldos 	 	 		
---����������� 2 � Actualizaci�n de saldos del comercio 	 	 		
,	INDPROINC 	VARCHAR	(1)	--Indicador de si se ha abonado al cliente en la en la expiraci�n (S/N) 
,	FECCADTAR 	DECIMAL	(6,0)	--Fecha de caducidad de la tarjeta 
,	CALFRAUDE 	VARCHAR	(3)	--Calificaci�n de fraude 
,	NUMPASIVO 	VARCHAR	(24)	--N�mero interno de operaci�n asignado por pasivo 
,	CODBLQFRA 	VARCHAR	(2)	--C�digo de bloqueo de la franquicia 
,	TIPOLIN  	VARCHAR	(4)	--Tipo de l�nea 
,	LINREF  	DECIMAL	(8,0)	--Referencia del tipo de l�nea 
,	TIPOLIM  	VARCHAR	(1)	--Indicador de tipo de l�mite de la l�nea: 
--A: L�mite adicional (no depende del disponible del contrato)  	 	 		
--C: L�mite compartido (dependiente del contrato)  	 	 		
,	FORPAGO  	DECIMAL	(2,0)	--Forma de pago de la operaci�n en el origen 
,	RESOLUTOR  	VARCHAR	(11)	--Identificador de la red o elemento SWITCH que autoriz� la operaci�n. 
,	COMISION 	DECIMAL	(17,2)	--Comisi�n de la operaci�n 
,	IMPUESTO 	DECIMAL	(17,2)	--Impuesto de la operaci�n 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	DATADI 	VARCHAR	(650)	--Datos adicionales 
); COMMIT;	 	 		

DROP TABLE IF EXISTS "DWH_ETLS"."TBAUTORI";
COMMIT;
DROP TABLE IF EXISTS "STG"."TBAUTORI";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."TBAUTORI";
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."TBAUTORI" (
	"CODENT" VARCHAR(4) NULL ,
	"TIPOMSGON" VARCHAR(4) NULL ,
	"CODPROON" DECIMAL(6,0) NULL ,
	"SIAIDCD" VARCHAR(19) NULL ,
	"PAN" VARCHAR(22) NULL ,
	"CODMAR" DECIMAL(2,0) NULL ,
	"INDTIPT" DECIMAL(2,0) NULL ,
	"INDDEBCRE" DECIMAL(1,0) NULL ,
	"IMPTRN" DECIMAL(17,2) NULL ,
	"CLAMONTRN" DECIMAL(3,0) NULL ,
	"IMPCCA" DECIMAL(17,2) NULL ,
	"CLAMONCCA" DECIMAL(3,0) NULL ,
	"IMPDIV" DECIMAL(17,2) NULL ,
	"CLAMONDIV" DECIMAL(3,0) NULL ,
	"FECTRN" DATE NULL ,
	"HORTRN" TIME NULL ,
	"CMBAPLI" DECIMAL(9,4) NULL ,
	"CODACT" DECIMAL(4,0) NULL ,
	"CODPAIS" DECIMAL(3,0) NULL ,
	"MODENTDAT" VARCHAR(12) NULL ,
	"SESIONORI" VARCHAR(12) NULL ,
	"SESIONSIA" VARCHAR(7) NULL ,
	"IMPTASAS" DECIMAL(17,2) NULL ,
	"IDADQUIR" VARCHAR(11) NULL ,
	"CODRED" VARCHAR(11) NULL ,
	"NUMREFOPE" DECIMAL(12,0) NULL ,
	"IDTERM" VARCHAR(16) NULL ,
	"CODCOM" VARCHAR(15) NULL ,
	"NOMCOM" VARCHAR(15) NULL ,
	"LOCALIDAD" VARCHAR(15) NULL ,
	"RTSITD" VARCHAR(40) NULL ,
	"DATORI" VARCHAR(30) NULL ,
	"NUMAUT" VARCHAR(6) NULL ,
	"CODRESPU" VARCHAR(3) NULL ,
	"CODACCRED" DECIMAL(3,0) NULL ,
	"TIPFRAN" DECIMAL(4,0) NULL ,
	"INDNORCOR" DECIMAL(1,0) NULL ,
	"TIPOFAC" DECIMAL(4,0) NULL ,
	"INDPREAUT" DECIMAL(1,0) NULL ,
	"INDCRUCE" DECIMAL(1,0) NULL ,
	"INDANUL" DECIMAL(1,0) NULL ,
	"INDRETSAL" VARCHAR(1) NULL ,
	"IMPTRNCON" DECIMAL(17,2) NULL ,
	"IMPAUTCON" DECIMAL(17,2) NULL ,
	"CLAMONCON" DECIMAL(3,0) NULL ,
	"FECCONTA" DATE NULL ,
	"NUMRETSAL" DECIMAL(10,0) NULL ,
	"IMPRETSAL" DECIMAL(17,2) NULL ,
	"CLAMONRET" DECIMAL(3,0) NULL ,
	"CENTALTA" VARCHAR(4) NULL ,
	"CUENTA" VARCHAR(12) NULL ,
	"IMPPROP" DECIMAL(17,2) NULL ,
	"ACCEMICRE" VARCHAR(1) NULL ,
	"ACCEMIDEB" VARCHAR(1) NULL ,
	"ACCMERCH" VARCHAR(1) NULL ,
	"INDPROINC" VARCHAR(1) NULL ,
	"FECCADTAR" DECIMAL(6,0) NULL ,
	"CALFRAUDE" VARCHAR(3) NULL ,
	"NUMPASIVO" VARCHAR(24) NULL ,
	"CODBLQFRA" VARCHAR(2) NULL ,
	"TIPOLIN" VARCHAR(4) NULL ,
	"LINREF" DECIMAL(8,0) NULL ,
	"TIPOLIM" VARCHAR(1) NULL ,
	"FORPAGO" DECIMAL(2,0) NULL ,
	"RESOLUTOR" VARCHAR(11) NULL ,
	"COMISION" DECIMAL(17,2) NULL ,
	"IMPUESTO" DECIMAL(17,2) NULL ,
	"CODENTUMO" VARCHAR(4) NULL ,
	"CODOFIUMO" VARCHAR(4) NULL ,
	"USUARIOUMO" VARCHAR(8) NULL ,
	"CODTERMUMO" VARCHAR(8) NULL ,
	"CONTCUR" TIMESTAMP NULL ,
	"DATADI" VARCHAR(650) NULL 
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
 @NOMBRE_MALLA = 'PCJA84A88'
,@OBJECT_NAME = 'TBAUTORI'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '1dd26e14e7eb5c3d687f756dc6c602fbf18e36b5'
,@VERSION_CODE = '1dd26e1'
,@VERSION_DATE = 'February 19, 2019 8:45:57 AM'
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