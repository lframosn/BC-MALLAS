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

drop table IF EXISTS SAT.TBPAGHIS;  CREATE TABLE IF NOT EXISTS SAT.TBPAGHIS  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT125-Historico de Pago	 	 		
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMEXTPG 	DECIMAL	(15,0)	--N�mero de extracto del pago 
--- Se corresponder� con el n�mero de extracto o el n�mero de secuencia del impago en funci�n del tipo de deuda. 	 	 		
,	NUMMOVPG 	DECIMAL	(7,0)	--N�mero de movimiento 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	TIPDEU 	VARCHAR	(2)	--Tipo de deuda 
--EX - Extracto 	 	 		
--IE - Impago reflejado en extracto 	 	 		
--IM - Impago 	 	 		
--OV - Operaciones vivas 	 	 		
--TS - Conversi�n de pago por saldo acreedor en distinta moneda 	 	 		
--AI - Amortizaci�n de abonos en liquidaci�n sobre deuda impagada. 	 	 		
--AO - Amortizaci�n de abonos en liquidaci�n sobre operaciones vivas. 	 	 		
--AE - Amortizaci�n de abonos en liquidaci�n sobre deuda del extracto. 	 	 		
--PA - Traspaso de pago pendiente a saldo acreedor. 	 	 		
--PI - Amortizaci�n de pagos en liquidaci�n sobre deuda impagada. 	 	 		
--PO - Amortizaci�n de pagos en liquidaci�n sobre operaciones vivas. 	 	 		
--PE - Amortizaci�n de pagos en liquidaci�n sobre deuda del extracto. 	 	 		
,	TIPOLIN 	VARCHAR	(4)	--Tipo de l�nea 
,	TIPIMP 	DECIMAL	(2,0)	--Tipo de importe: 
--01� - Capital 	 	 		
--02� - Comisiones 	 	 		
--03� - Intereses 	 	 		
--04� - Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de operaci�n normal o correctora: 
--0� - normal 	 	 		
--1� - correctora 	 	 		
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
--01� - Capital 	 	 		
--02� - Comisiones 	 	 		
--03� - Intereses 	 	 		
--04� - Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
,	FILLER1	VARCHAR	(709)	--FILLER
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.TBPAGHIS;  CREATE TABLE IF NOT EXISTS STG_SAT.TBPAGHIS  (
--MPDT125-Historico de Pago	 	 		
	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMEXTPG 	DECIMAL	(15,0)	--N�mero de extracto del pago 
--- Se corresponder� con el n�mero de extracto o el n�mero de secuencia del impago en funci�n del tipo de deuda. 	 	 		
,	NUMMOVPG 	DECIMAL	(7,0)	--N�mero de movimiento 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	TIPDEU 	VARCHAR	(2)	--Tipo de deuda 
--EX - Extracto 	 	 		
--IE - Impago reflejado en extracto 	 	 		
--IM - Impago 	 	 		
--OV - Operaciones vivas 	 	 		
--TS - Conversi�n de pago por saldo acreedor en distinta moneda 	 	 		
--AI - Amortizaci�n de abonos en liquidaci�n sobre deuda impagada. 	 	 		
--AO - Amortizaci�n de abonos en liquidaci�n sobre operaciones vivas. 	 	 		
--AE - Amortizaci�n de abonos en liquidaci�n sobre deuda del extracto. 	 	 		
--PA - Traspaso de pago pendiente a saldo acreedor. 	 	 		
--PI - Amortizaci�n de pagos en liquidaci�n sobre deuda impagada. 	 	 		
--PO - Amortizaci�n de pagos en liquidaci�n sobre operaciones vivas. 	 	 		
--PE - Amortizaci�n de pagos en liquidaci�n sobre deuda del extracto. 	 	 		
,	TIPOLIN 	VARCHAR	(4)	--Tipo de l�nea 
,	TIPIMP 	DECIMAL	(2,0)	--Tipo de importe: 
--01� - Capital 	 	 		
--02� - Comisiones 	 	 		
--03� - Intereses 	 	 		
--04� - Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de operaci�n normal o correctora: 
--0� - normal 	 	 		
--1� - correctora 	 	 		
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
--01� - Capital 	 	 		
--02� - Comisiones 	 	 		
--03� - Intereses 	 	 		
--04� - Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
,	FILLER1	VARCHAR	(709)	--FILLER
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
 @NOMBRE_MALLA = 'PPJDW09N'
,@OBJECT_NAME = 'TBPAGHIS'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = 'ae072868d6df45750dc8484029094fc50b7f0d6c'
,@VERSION_CODE = 'ae07286'
,@VERSION_DATE = 'March 18, 2019 6:54:38 PM'
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

-- Inserts NUEVAS MALLAS
IF NOT EXISTS(SELECT 1 FROM "CNF"."MALLAS" WHERE "NOMBRE_MALLA" = 'PPJDW09N' )
BEGIN
  INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO","CONTROL_FECHA") VALUES('PPJDW09N','Historico de pagos',1,0);
END
COMMIT;