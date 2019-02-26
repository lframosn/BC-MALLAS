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

drop table IF EXISTS SAT.TBINCINT;  CREATE TABLE IF NOT EXISTS SAT.TBINCINT  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT096-Incidencias	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	NUMINC 	DECIMAL	(9,0)	--N�mero de incidencia 
,	NUMEXP 	DECIMAL	(9,0)	--N�mero de expediente 
,	CODREG 	DECIMAL	(2,0)	--C�digo de registro: 
--1������� - Incidencia de incoming e incidencias en estudio (extracto) 	 	 		
--2������� - Error de incoming e incidencias de comercio 	 	 		
-- 	 	 		
,	NUMREFREM 	DECIMAL	(10,0)	--N�mero de referencia de la remesa 
,	NUMREFFACREM 	DECIMAL	(5,0)	--N�mero de referencia de la factura en la remesa 
,	INDAJENA 	VARCHAR	(1)	--Indicador de tarjeta ajena (S/N) 
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de normal o correctora:  
--0 - Normal    1 � Correctora 	 	 		
,	TIPOFAC 	DECIMAL	(4,0)	--Tipo de factura 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta que realiz� la operaci�n. El valor de este campo deber� almacenarse justificado a la izquierda 
,	TIPFRAN 	DECIMAL	(4,0)	--C�digo de la franquicia 
,	SECOPE 	DECIMAL	(12,0)	--Secuencia de operaci�n 
,	NUMREF 	VARCHAR	(23)	--N�mero de referencia 
,	FECFAC 	DATE		--Fecha de la factura 
,	NUMAUT 	VARCHAR	(6)	--N�mero de autorizaci�n 
,	NOMCOMRED 	VARCHAR	(27)	--Nombre reducido del comercio 
,	CODCOM 	VARCHAR	(15)	--C�digo de comercio 
,	CODACT 	DECIMAL	(4,0)	--C�digo de actividad 
,	INDDEBCRE 	DECIMAL	(1,0)	--Indicador d�bito/cr�dito 
,	CLAMONDIV 	DECIMAL	(3,0)	--C�digo de moneda de la divisa original 
,	FECCMB 	DATE		--Fecha de cambio 
,	CMBAPLI 	DECIMAL	(9,4)	--Factor de cambio aplicado 
,	IMPDIV 	DECIMAL	(17,2)	--Importe en divisa original 
,	IMPLIQ 	DECIMAL	(17,2)	--Importe de liquidaci�n de la operaci�n con el intercambio 
,	CLAMONLIQ 	DECIMAL	(3,0)	--C�digo de moneda de liquidaci�n con el intercambio 
,	POBCOM 	VARCHAR	(24)	--Poblaci�n del comercio 
--	 	 		
,	FECALTAINC 	DATE		--Fecha de alta de la incidencia 
,	TIPOINC 	DECIMAL	(3,0)	--Tipo de incidencia 
,	MOTINC 	DECIMAL	(2,0)	--Motivo de la incidencia 
,	INDERROR 	VARCHAR	(16)	--Indicador de error 
,	CODRAZ 	DECIMAL	(4,0)	--C�digo de raz�n 
,	CODSOLINC 	DECIMAL	(2,0)	--C�digo de soluci�n de incidencia 
,	TIPOSOL 	DECIMAL	(2,0)	--Tipo de soluci�n contable de la incidencia 
,	FECSOLINC 	DATE		--Fecha de soluci�n de la incidencia 
,	FECLIQ 	DATE		--Fecha de liquidaci�n a la red o franquicia 
,	CODFUNFRAN 	DECIMAL	(3,0)	--C�digo de funci�n de la franquicia 
,	INDCHAPAR 	VARCHAR	(1)	--Indicador de chargeback parcial (S/N) 
,	CODACTESP 	DECIMAL	(4,0)	--C�digo de actividad especial 
,	MODOOBTAUT 	VARCHAR	(2)	--Modo obtenci�n de autorizaci�n 
,	TEXTOINICIO 	VARCHAR	(60)	--Texto 
,	NUMCINTA 	DECIMAL	(17,0)	--Secuencia de cinta 
,	INDAPLCOM 	VARCHAR	(1)	--Indicador si la factura se abon� previamente al comercio 
,	INDAPLEXT 	VARCHAR	(1)	--Indicador de aplicaci�n en el extracto del titular 
,	INDORIINC 	VARCHAR	(1)	--Indicador de origen de la incidencia: 
--1� - EXTRACTO         	 	 		
--2� - INCIDENCIAS      	 	 		
--3� - MIGRACION        	 	 		
--4� - COMPRA EN CUOTAS 	 	 		
--5� - COMERCIOS	 	 		
,	INDANUL 	VARCHAR	(1)	--Indicativo de operaci�n anulada 
,	INDRET 	DECIMAL	(1,0)	--Indicador de retenci�n 
,	FECCONTA 	DATE		--Fecha contable 
,	FECCONTASOL 	DATE		--Fecha contable de soluci�n de la incidencia 
,	INDINCPEN 	VARCHAR	(1)	--Indicativo de incidencia pendiente (S/N) 
,	CLAMON 	DECIMAL	(3,0)	--C�digo de moneda 
,	IMPFAC 	DECIMAL	(17,2)	--Importe de la factura 
,	FECPROCIN 	DATE		--Fecha de proceso de la cinta 
,	CODSUBFRA 	VARCHAR	(1)	--C�digo de subfunci�n de la franquicia 
,	CODPAIS 	DECIMAL	(3,0)	--C�digo del pa�s 
,	CODRAZCHA 	DECIMAL	(4,0)	--C�digo de raz�n del chargeback 
,	INDCOMINC 	VARCHAR	(1)	--Indicador de comisi�n de incidencia 
,	INDCOMPCUO 	VARCHAR	(1)	--Indicador de compra en cuotas 
,	CODTIPC 	VARCHAR	(4)	--Tipo de compra en cuotas 
,	TOTCUOTAS 	DECIMAL	(9,0)	--Numero de cuotas totales 
,	MESCARCUO 	DECIMAL	(2,0)	--Numero de meses de carencia 
,	PORINT 	DECIMAL	(7,4)	--Porcentaje de inter�s 
,	SIAIDCD 	VARCHAR	(19)	--C�digo de identificaci�n SIA 
,	NUMOPECUO 	DECIMAL	(6,0)	--N�mero de operaci�n en compra en cuotas 
,	CODTERM 	VARCHAR	(16)	--C�digo de Terminal 
,	LINREF 	DECIMAL	(8,0)	--Referencia de la l�nea 
,	FORPAGO 	DECIMAL	(2,0)	--Forma de pago de la operaci�n en el origen 
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBPAGHIS;  CREATE TABLE IF NOT EXISTS SAT.TBPAGHIS  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT125-Historico de Pago	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMEXTPG 	DECIMAL	(15,0)	--N�mero de extracto del pago 
--- Se corresponder� con el n�mero de extracto o el n�mero de secuencia del impago en funci�n del tipo de deuda. 	 	 		
,	NUMMOVPG 	DECIMAL	(7,0)	--N�mero de movimiento 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	TIPDEU 	VARCHAR	(2)	--Tipo de deuda 
--EX � Extracto 	 	 		
--IE � Impago reflejado en extracto 	 	 		
--IM � Impago 	 	 		
--OV � Operaciones vivas 	 	 		
--TS � Conversi�n de pago por saldo acreedor en distinta moneda 	 	 		
--AI � Amortizaci�n de abonos en liquidaci�n sobre deuda impagada. 	 	 		
--AO � Amortizaci�n de abonos en liquidaci�n sobre operaciones vivas. 	 	 		
--AE � Amortizaci�n de abonos en liquidaci�n sobre deuda del extracto. 	 	 		
--PA � Traspaso de pago pendiente a saldo acreedor. 	 	 		
--PI � Amortizaci�n de pagos en liquidaci�n sobre deuda impagada. 	 	 		
--PO � Amortizaci�n de pagos en liquidaci�n sobre operaciones vivas. 	 	 		
--PE � Amortizaci�n de pagos en liquidaci�n sobre deuda del extracto. 	 	 		
,	TIPOLIN 	VARCHAR	(4)	--Tipo de l�nea 
,	TIPIMP 	DECIMAL	(2,0)	--Tipo de importe: 
--01� � Capital 	 	 		
--02� � Comisiones 	 	 		
--03� � Intereses 	 	 		
--04� � Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de operaci�n normal o correctora: 
--0� � normal 	 	 		
--1� � correctora 	 	 		
,	NUMREFAPL 	DECIMAL	(15,0)	--Dependiendo del tipo de deuda, se almacena el n�mero de recibo impagado, para IM, o n�mero de movimiento del extracto, para OV, donde se amortiza el pago 
,	IMPSALDIS 	DECIMAL	(17,2)	--Importe aplicado  al saldo dispuesto de cada l�nea por tipo de importe 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado al tipo de importe 
,	IMPRECAPL 	DECIMAL	(17,2)	--Importe aplicado al recibo 
,	NUMSECREC 	DECIMAL	(15,0)	--N�mero de secuencia del recibo 
,	IMPAPLAPL 	DECIMAL	(17,2)	--Importe aplicado al saldo aplazado 
,	FECAPL 	DATE		--Fecha de aplicaci�n del pago 
,	NUMORDEN 	DECIMAL	(3,0)	--N�mero de orden de aplicaci�n 
,	TIPOLINORI 	VARCHAR	(4)	--Tipo de l�nea origen 
,	TIPIMPORI 	DECIMAL	(2,0)	--Tipo de importe origen: 
--01� � Capital 	 	 		
--02� � Comisiones 	 	 		
--03� � Intereses 	 	 		
--04� � Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		


drop table IF EXISTS STG_SAT.TBINCINT;  CREATE TABLE IF NOT EXISTS STG_SAT.TBINCINT  (
--MPDT096-Incidencias	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	NUMINC 	DECIMAL	(9,0)	--N�mero de incidencia 
,	NUMEXP 	DECIMAL	(9,0)	--N�mero de expediente 
,	CODREG 	DECIMAL	(2,0)	--C�digo de registro: 
--1������� - Incidencia de incoming e incidencias en estudio (extracto) 	 	 		
--2������� - Error de incoming e incidencias de comercio 	 	 		
-- 	 	 		
,	NUMREFREM 	DECIMAL	(10,0)	--N�mero de referencia de la remesa 
,	NUMREFFACREM 	DECIMAL	(5,0)	--N�mero de referencia de la factura en la remesa 
,	INDAJENA 	VARCHAR	(1)	--Indicador de tarjeta ajena (S/N) 
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de normal o correctora:  
--0 - Normal    1 � Correctora 	 	 		
,	TIPOFAC 	DECIMAL	(4,0)	--Tipo de factura 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta que realiz� la operaci�n. El valor de este campo deber� almacenarse justificado a la izquierda 
,	TIPFRAN 	DECIMAL	(4,0)	--C�digo de la franquicia 
,	SECOPE 	DECIMAL	(12,0)	--Secuencia de operaci�n 
,	NUMREF 	VARCHAR	(23)	--N�mero de referencia 
,	FECFAC 	DATE		--Fecha de la factura 
,	NUMAUT 	VARCHAR	(6)	--N�mero de autorizaci�n 
,	NOMCOMRED 	VARCHAR	(27)	--Nombre reducido del comercio 
,	CODCOM 	VARCHAR	(15)	--C�digo de comercio 
,	CODACT 	DECIMAL	(4,0)	--C�digo de actividad 
,	INDDEBCRE 	DECIMAL	(1,0)	--Indicador d�bito/cr�dito 
,	CLAMONDIV 	DECIMAL	(3,0)	--C�digo de moneda de la divisa original 
,	FECCMB 	DATE		--Fecha de cambio 
,	CMBAPLI 	DECIMAL	(9,4)	--Factor de cambio aplicado 
,	IMPDIV 	DECIMAL	(17,2)	--Importe en divisa original 
,	IMPLIQ 	DECIMAL	(17,2)	--Importe de liquidaci�n de la operaci�n con el intercambio 
,	CLAMONLIQ 	DECIMAL	(3,0)	--C�digo de moneda de liquidaci�n con el intercambio 
,	POBCOM 	VARCHAR	(24)	--Poblaci�n del comercio 
--	 	 		
,	FECALTAINC 	DATE		--Fecha de alta de la incidencia 
,	TIPOINC 	DECIMAL	(3,0)	--Tipo de incidencia 
,	MOTINC 	DECIMAL	(2,0)	--Motivo de la incidencia 
,	INDERROR 	VARCHAR	(16)	--Indicador de error 
,	CODRAZ 	DECIMAL	(4,0)	--C�digo de raz�n 
,	CODSOLINC 	DECIMAL	(2,0)	--C�digo de soluci�n de incidencia 
,	TIPOSOL 	DECIMAL	(2,0)	--Tipo de soluci�n contable de la incidencia 
,	FECSOLINC 	DATE		--Fecha de soluci�n de la incidencia 
,	FECLIQ 	DATE		--Fecha de liquidaci�n a la red o franquicia 
,	CODFUNFRAN 	DECIMAL	(3,0)	--C�digo de funci�n de la franquicia 
,	INDCHAPAR 	VARCHAR	(1)	--Indicador de chargeback parcial (S/N) 
,	CODACTESP 	DECIMAL	(4,0)	--C�digo de actividad especial 
,	MODOOBTAUT 	VARCHAR	(2)	--Modo obtenci�n de autorizaci�n 
,	TEXTOINICIO 	VARCHAR	(60)	--Texto 
,	NUMCINTA 	DECIMAL	(17,0)	--Secuencia de cinta 
,	INDAPLCOM 	VARCHAR	(1)	--Indicador si la factura se abon� previamente al comercio 
,	INDAPLEXT 	VARCHAR	(1)	--Indicador de aplicaci�n en el extracto del titular 
,	INDORIINC 	VARCHAR	(1)	--Indicador de origen de la incidencia: 
--1� - EXTRACTO         	 	 		
--2� - INCIDENCIAS      	 	 		
--3� - MIGRACION        	 	 		
--4� - COMPRA EN CUOTAS 	 	 		
--5� - COMERCIOS	 	 		
,	INDANUL 	VARCHAR	(1)	--Indicativo de operaci�n anulada 
,	INDRET 	DECIMAL	(1,0)	--Indicador de retenci�n 
,	FECCONTA 	DATE		--Fecha contable 
,	FECCONTASOL 	DATE		--Fecha contable de soluci�n de la incidencia 
,	INDINCPEN 	VARCHAR	(1)	--Indicativo de incidencia pendiente (S/N) 
,	CLAMON 	DECIMAL	(3,0)	--C�digo de moneda 
,	IMPFAC 	DECIMAL	(17,2)	--Importe de la factura 
,	FECPROCIN 	DATE		--Fecha de proceso de la cinta 
,	CODSUBFRA 	VARCHAR	(1)	--C�digo de subfunci�n de la franquicia 
,	CODPAIS 	DECIMAL	(3,0)	--C�digo del pa�s 
,	CODRAZCHA 	DECIMAL	(4,0)	--C�digo de raz�n del chargeback 
,	INDCOMINC 	VARCHAR	(1)	--Indicador de comisi�n de incidencia 
,	INDCOMPCUO 	VARCHAR	(1)	--Indicador de compra en cuotas 
,	CODTIPC 	VARCHAR	(4)	--Tipo de compra en cuotas 
,	TOTCUOTAS 	DECIMAL	(9,0)	--Numero de cuotas totales 
,	MESCARCUO 	DECIMAL	(2,0)	--Numero de meses de carencia 
,	PORINT 	DECIMAL	(7,4)	--Porcentaje de inter�s 
,	SIAIDCD 	VARCHAR	(19)	--C�digo de identificaci�n SIA 
,	NUMOPECUO 	DECIMAL	(6,0)	--N�mero de operaci�n en compra en cuotas 
,	CODTERM 	VARCHAR	(16)	--C�digo de Terminal 
,	LINREF 	DECIMAL	(8,0)	--Referencia de la l�nea 
,	FORPAGO 	DECIMAL	(2,0)	--Forma de pago de la operaci�n en el origen 
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBPAGHIS;  CREATE TABLE IF NOT EXISTS STG_SAT.TBPAGHIS  (
--MPDT125-Historico de Pago	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMEXTPG 	DECIMAL	(15,0)	--N�mero de extracto del pago 
--- Se corresponder� con el n�mero de extracto o el n�mero de secuencia del impago en funci�n del tipo de deuda. 	 	 		
,	NUMMOVPG 	DECIMAL	(7,0)	--N�mero de movimiento 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	TIPDEU 	VARCHAR	(2)	--Tipo de deuda 
--EX � Extracto 	 	 		
--IE � Impago reflejado en extracto 	 	 		
--IM � Impago 	 	 		
--OV � Operaciones vivas 	 	 		
--TS � Conversi�n de pago por saldo acreedor en distinta moneda 	 	 		
--AI � Amortizaci�n de abonos en liquidaci�n sobre deuda impagada. 	 	 		
--AO � Amortizaci�n de abonos en liquidaci�n sobre operaciones vivas. 	 	 		
--AE � Amortizaci�n de abonos en liquidaci�n sobre deuda del extracto. 	 	 		
--PA � Traspaso de pago pendiente a saldo acreedor. 	 	 		
--PI � Amortizaci�n de pagos en liquidaci�n sobre deuda impagada. 	 	 		
--PO � Amortizaci�n de pagos en liquidaci�n sobre operaciones vivas. 	 	 		
--PE � Amortizaci�n de pagos en liquidaci�n sobre deuda del extracto. 	 	 		
,	TIPOLIN 	VARCHAR	(4)	--Tipo de l�nea 
,	TIPIMP 	DECIMAL	(2,0)	--Tipo de importe: 
--01� � Capital 	 	 		
--02� � Comisiones 	 	 		
--03� � Intereses 	 	 		
--04� � Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de operaci�n normal o correctora: 
--0� � normal 	 	 		
--1� � correctora 	 	 		
,	NUMREFAPL 	DECIMAL	(15,0)	--Dependiendo del tipo de deuda, se almacena el n�mero de recibo impagado, para IM, o n�mero de movimiento del extracto, para OV, donde se amortiza el pago 
,	IMPSALDIS 	DECIMAL	(17,2)	--Importe aplicado  al saldo dispuesto de cada l�nea por tipo de importe 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado al tipo de importe 
,	IMPRECAPL 	DECIMAL	(17,2)	--Importe aplicado al recibo 
,	NUMSECREC 	DECIMAL	(15,0)	--N�mero de secuencia del recibo 
,	IMPAPLAPL 	DECIMAL	(17,2)	--Importe aplicado al saldo aplazado 
,	FECAPL 	DATE		--Fecha de aplicaci�n del pago 
,	NUMORDEN 	DECIMAL	(3,0)	--N�mero de orden de aplicaci�n 
,	TIPOLINORI 	VARCHAR	(4)	--Tipo de l�nea origen 
,	TIPIMPORI 	DECIMAL	(2,0)	--Tipo de importe origen: 
--01� � Capital 	 	 		
--02� � Comisiones 	 	 		
--03� � Intereses 	 	 		
--04� � Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
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
 @NOMBRE_MALLA = 'MPJA8030'
,@OBJECT_NAME = 'TBINCINT'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = 'ad80167e4747d4f3893275bddf4bd4fd2976bfa2'
,@VERSION_CODE = 'ad80167'
,@VERSION_DATE = 'February 25, 2019 5:51:11 PM'
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
@OBJECT_NAME = 'TBPAGHIS'
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
 @NOMBRE_MALLA = 'MPJA8030'
,@OBJECT_NAME = 'TBINCINT'
,@OBJECT_USER = 'STG_SAT'
,@VERSION_COMMIT = 'ad80167e4747d4f3893275bddf4bd4fd2976bfa2'
,@VERSION_CODE = 'ad80167'
,@VERSION_DATE = 'February 25, 2019 5:51:11 PM'
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
@OBJECT_NAME = 'TBPAGHIS'
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