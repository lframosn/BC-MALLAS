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

drop table IF EXISTS SAT.TBTARJET;  CREATE TABLE IF NOT EXISTS SAT.TBTARJET  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT009-Tarjetas	 	 		
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CODMAR 	DECIMAL	(2,0)	--Marca de la tarjeta 
,	INDTIPT 	DECIMAL	(2,0)	--Tipo de la tarjeta 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMBENCTA 	DECIMAL	(5,0)	--N�mero de beneficiario dentro de la cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--N�mero de pl�stico   
,	TIPBON 	VARCHAR	(6)	--Tipo de bonificaci�n 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deber� almacenarse justificado a la izquierda   
,	PANANT 	VARCHAR	(22)	--PAN anterior. El valor de este campo deber� almacenarse justificado a la izquierda        
,	FECALTA 	DATE		--Fecha de alta de la tarjeta 
,	FECULTUSO 	DATE		--Fecha de �ltima utilizaci�n de la tarjeta 
,	INDSITTAR 	DECIMAL	(2,0)	--Indicador de situaci�n (ver tabla) 
,	INDULTTAR 	VARCHAR	(2)	--Indicador de �ltima tarjeta (S/N) 
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovaci�n: 
--0� - S� renovar 	 	 		
--1� - No renovar 	 	 		
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo                 
,	FECULTBLQ 	DATE		--Fecha de �ltimo bloqueo           
,	TEXBLQ 	VARCHAR	(30)	--Comentario de bloqueo             
,	FECBAJA 	DATE		--Fecha de baja                    
,	MOTBAJA 	VARCHAR	(2)	--Motivo de baja                    
,	FECCADTAR 	DECIMAL	(6,0)	--Fecha de caducidad de la tarjeta (AAAAMM) 
,	FECCADTARANT 	DECIMAL	(6,0)	--Fecha de caducidad anterior de la tarjeta (AAAAMM) 
,	FECCOBCUO 	DECIMAL	(6,0)	--Fecha de pr�ximo cobro cuota de tarjeta (AAAAMM) 
,	OFFSET1  	DECIMAL	(4,0)	--Offset 1 del PIN 
,	OFFSET2 	DECIMAL	(4,0)	--Offset 2 del PIN 
,	PVV1 	VARCHAR	(4)	--PVV1 
,	PVV2  	VARCHAR	(4)	--PVV2 
--	 	 		
,	CODCLAVE 	VARCHAR	(3)	--C�digo de grupo criptogr�fico 
,	CODCLVANT 	VARCHAR	(3)	--C�digo de grupo criptogr�fico anterior 
,	NUMACT1 	DECIMAL	(1,0)	--N�mero de orden actual PIN 1 
,	NUMACT2 	DECIMAL	(1,0)	--N�mero de orden actual PIN 2 
,	NUMANT1 	DECIMAL	(1,0)	--N�mero de orden anterior PIN 1 
,	NUMANT2 	DECIMAL	(1,0)	--N�mero de orden anterior PIN 2 
,	INDCAMLIM 	VARCHAR	(1)	--Indicador de si afecta el cambio masivo de l�mites (S/N) 
,	INDACTLIM 	VARCHAR	(1)	--Indicador de ampliaci�n de disponible de tarjeta con saldo acreedor y movimientos de pago:  
--0������������� -El saldo acreedor de contrato y los pagos no afectan al disponible de tarjeta  	 	 		
--1������������� -El saldo acreedor de contrato no afectan al disponible de restricciones de tarjeta, los pagos si afectan al disponible de tarjeta 	 	 		
--2- El saldo acreedor afecta al disponible de restricciones de tarjeta, los pagos no afectan al disponible de tarjeta 	 	 		
--3-Los pagos y el saldo acreedor afectan al disponible de tarjeta.  	 	 		
-- 	 	 		
,	INDRESACT 	VARCHAR	(1)	--Indicador de restricci�n por sector de actividad (S/N) 
,	INDRESCOM 	VARCHAR	(1)	--Indicador de restricci�n por comercio (S/N) 
,	INDLIMFAC 	VARCHAR	(1)	--Indicador de restricci�n por importe de operaci�n (S/N) 
,	VISAPHONE 	DECIMAL	(4,0)	--C�digo VISAPHONE 
,	NUMKPIN 	DECIMAL	(2,0)	--N�mero de intentos de PIN 
,	IDEMPLEADO 	VARCHAR	(20)	--Identificador de empleado. 
,	NOMBENRED 	VARCHAR	(35)	--Nombre de estampaci�n 
,	INDFOTO 	VARCHAR	(1)	--Indicador de foto en pl�stico (S/N) 
,	REFFOTO 	VARCHAR	(30)	--Referencia de la foto, s�lo si el campo anterior est� activo 
,	CODBARR 	DECIMAL	(14,0)	--C�digo de barras  
,	CODPROMO 	VARCHAR	(3)	--C�digo de promoci�n 
,	INDEXECUO 	VARCHAR	(1)	--Indicador de exenci�n de compra en cuotas  
--0-Permite compra en cuotas y l�neas adicionales 	 	 		
--1-No Permite compra en cuotas ni l�neas adicionales 	 	 		
--2-Permite compra en cuotas pero no l�neas adicionales 3-Permite l�neas adicionales pero no compra en cuotas 	 	 		
-- 	 	 		
,	INDTAREME 	VARCHAR	(1)	--Indicador de tarjeta de emergencia (S/N) 
,	INDAPLIREST 	VARCHAR	(1)	--Indicador de aplicaci�n de restricciones de tarjeta en autorizaci�n (S/N) 
,	INDTARPROV  	VARCHAR	(1)	--Indicador de Tarjeta provisional (S/N) 
,	INDTAREMV 	DECIMAL	(1,0)	--Indicador de si la tarjeta es o no EMV: 
--0� - Tarjeta no EMV  	 	 		
--1� - Tarjeta EMV con estampaci�n Interna 	 	 		
--2� - Tarjeta EMV con estampaci�n Externa 	 	 		
,	HORBLQ 	TIME		--Hora de bloqueo 
,	FILLER1	VARCHAR	(539)	--FILLER
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.TBTARJET;  

CREATE TABLE IF NOT EXISTS "STG_SAT"."TBTARJET" (
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
	"NUMBENCTA" DECIMAL(5,0) NULL ,
	"NUMPLASTICO" DECIMAL(12,0) NULL ,
	"TIPBON" VARCHAR(6) NULL ,
	"PAN" VARCHAR(22) NULL ,
	"PANANT" VARCHAR(22) NULL ,
	"FECALTA" VARCHAR(10) NULL ,
	"FECULTUSO" VARCHAR(10) NULL ,
	"INDSITTAR" DECIMAL(2,0) NULL ,
	"INDULTTAR" VARCHAR(2) NULL ,
	"INDNOREN" DECIMAL(1,0) NULL ,
	"CODBLQ" DECIMAL(2,0) NULL ,
	"FECULTBLQ" VARCHAR(10) NULL ,
	"TEXBLQ" VARCHAR(30) NULL ,
	"FECBAJA" VARCHAR(10) NULL ,
	"MOTBAJA" VARCHAR(2) NULL ,
	"FECCADTAR" DECIMAL(6,0) NULL ,
	"FECCADTARANT" DECIMAL(6,0) NULL ,
	"FECCOBCUO" DECIMAL(6,0) NULL ,
	"OFFSET1" DECIMAL(4,0) NULL ,
	"OFFSET2" DECIMAL(4,0) NULL ,
	"PVV1" VARCHAR(4) NULL ,
	"PVV2" VARCHAR(4) NULL ,
	"CODCLAVE" VARCHAR(3) NULL ,
	"CODCLVANT" VARCHAR(3) NULL ,
	"NUMACT1" DECIMAL(1,0) NULL ,
	"NUMACT2" DECIMAL(1,0) NULL ,
	"NUMANT1" DECIMAL(1,0) NULL ,
	"NUMANT2" DECIMAL(1,0) NULL ,
	"INDCAMLIM" VARCHAR(1) NULL ,
	"INDACTLIM" VARCHAR(1) NULL ,
	"INDRESACT" VARCHAR(1) NULL ,
	"INDRESCOM" VARCHAR(1) NULL ,
	"INDLIMFAC" VARCHAR(1) NULL ,
	"VISAPHONE" DECIMAL(4,0) NULL ,
	"NUMKPIN" DECIMAL(2,0) NULL ,
	"IDEMPLEADO" VARCHAR(20) NULL ,
	"NOMBENRED" VARCHAR(35) NULL ,
	"INDFOTO" VARCHAR(1) NULL ,
	"REFFOTO" VARCHAR(30) NULL ,
	"CODBARR" DECIMAL(14,0) NULL ,
	"CODPROMO" VARCHAR(3) NULL ,
	"INDEXECUO" VARCHAR(1) NULL ,
	"INDTAREME" VARCHAR(1) NULL ,
	"INDAPLIREST" VARCHAR(1) NULL ,
	"INDTARPROV" VARCHAR(1) NULL ,
	"INDTAREMV" DECIMAL(1,0) NULL ,
	"HORBLQ" VARCHAR(8) NULL ,
	"FILLER1" VARCHAR(539) NULL 
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
 @NOMBRE_MALLA = 'PPJDW04N'
,@OBJECT_NAME = 'TBTARJET'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '02b52784b0b76251c614f1136d46a93bd7e26033'
,@VERSION_CODE = '02b5278'
,@VERSION_DATE = 'March 5, 2019 1:12:54 PM'
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
,@VERSION_COMMIT = '43c53d045d0a0dcd666c2e8b06c5d2265292b22c'
,@VERSION_CODE = '43c53d0'
,@VERSION_DATE = 'March 6, 2019 11:21:57 AM'
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