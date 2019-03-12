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

drop table IF EXISTS SAT.TBFINCUO;  CREATE TABLE IF NOT EXISTS SAT.TBFINCUO  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT206-Cuotas Financiadas	 	 		
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	CODTIPC 	VARCHAR	(4)	--Código de tipo de compra en cuotas 
,	NUMOPECUO 	DECIMAL	(6,0)	--Número de operación en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--Número de financiación 
,	PORINT	DECIMAL	(7,4)	--Porcentaje de interés aplicado 
,	TOTCUOTAS	DECIMAL	(9,0)	--Número total de cuotas 
,	IMPCUOTA	DECIMAL	(17,2)	--Importe de la cuota 
,	NUMCUOPAG	DECIMAL	(9,0)	--Número de cuotas pagadas 
,	NUMMESFIN	VARCHAR	(12)	--Meses de financiación 
,	IMPTOTAL	DECIMAL	(17,2)	--Importe total a pagar 
,	IMPINTTOTAL	DECIMAL	(17,2)	--Importe de intereses total a pagar 
,	IMPAMORT	DECIMAL	(17,2)	--Importe de capital amortizado 
,	IMPINTAMORT 	DECIMAL	(17,2)	--Importe de intereses amortizado 
,	FECULTLIQ 	DATE		--Fecha de última liquidación 
,	FECALTA 	DATE		--Fecha de alta 
,	FECBAJA 	DATE		--Fecha de baja 
,	MOTBAJA  	VARCHAR	(2)	--Motivo de baja del número de financiación: 
--01  - Amortización anticipada 	 	 		
--02  - Modificación del número de cuotas 	 	 		
--03  - Cancelación de compra en cuotas 	 	 		
--04  - Fusión de n compras en cuotas 	 	 		
--05  - Cancelada por cartera-vencida 	 	 		
--06  - Generada Incidencia 	 	 		
--07  - Refinanciada 	 	 		
--08  - Acelerada 	 	 		
--09  - Uso Software Regional. 	 	 		
--10  - Uso Software Regional. 	 	 		
--11  - Anulacion de Compra en cuotas. 	 	 		
--12  - Reversada 	 	 		
--20 a 30 - Reservado para Uso del Clliente.  	 	 		
,	NUMULTCUO	DECIMAL	(9,0)	--Número de última cuota 
,	INTCARPTE	DECIMAL	(17,2)	--Intereses de carencia pendientes 
,	ESTCONT	DECIMAL	(1,0)	--Estado contable.    
,	FILLER1	VARCHAR	(663)	--FILLER
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.TBFINCUO;  CREATE TABLE IF NOT EXISTS STG_SAT.TBFINCUO  (
--MPDT206-Cuotas Financiadas	 	 		
	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	CODTIPC 	VARCHAR	(4)	--Código de tipo de compra en cuotas 
,	NUMOPECUO 	DECIMAL	(6,0)	--Número de operación en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--Número de financiación 
,	PORINT	DECIMAL	(7,4)	--Porcentaje de interés aplicado 
,	TOTCUOTAS	DECIMAL	(9,0)	--Número total de cuotas 
,	IMPCUOTA	DECIMAL	(17,2)	--Importe de la cuota 
,	NUMCUOPAG	DECIMAL	(9,0)	--Número de cuotas pagadas 
,	NUMMESFIN	VARCHAR	(12)	--Meses de financiación 
,	IMPTOTAL	DECIMAL	(17,2)	--Importe total a pagar 
,	IMPINTTOTAL	DECIMAL	(17,2)	--Importe de intereses total a pagar 
,	IMPAMORT	DECIMAL	(17,2)	--Importe de capital amortizado 
,	IMPINTAMORT 	DECIMAL	(17,2)	--Importe de intereses amortizado 
,	FECULTLIQ 	DATE		--Fecha de última liquidación 
,	FECALTA 	DATE		--Fecha de alta 
,	FECBAJA 	DATE		--Fecha de baja 
,	MOTBAJA  	VARCHAR	(2)	--Motivo de baja del número de financiación: 
--01  - Amortización anticipada 	 	 		
--02  - Modificación del número de cuotas 	 	 		
--03  - Cancelación de compra en cuotas 	 	 		
--04  - Fusión de n compras en cuotas 	 	 		
--05  - Cancelada por cartera-vencida 	 	 		
--06  - Generada Incidencia 	 	 		
--07  - Refinanciada 	 	 		
--08  - Acelerada 	 	 		
--09  - Uso Software Regional. 	 	 		
--10  - Uso Software Regional. 	 	 		
--11  - Anulacion de Compra en cuotas. 	 	 		
--12  - Reversada 	 	 		
--20 a 30 - Reservado para Uso del Clliente.  	 	 		
,	NUMULTCUO	DECIMAL	(9,0)	--Número de última cuota 
,	INTCARPTE	DECIMAL	(17,2)	--Intereses de carencia pendientes 
,	ESTCONT	DECIMAL	(1,0)	--Estado contable.    
,	FILLER1	VARCHAR	(663)	--FILLER
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
 @NOMBRE_MALLA = 'PPJDW06N'
,@OBJECT_NAME = 'TBFINCUO'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '6e44a00bb08524667a1b4ebc4be8dccc6b33210c'
,@VERSION_CODE = '6e44a00'
,@VERSION_DATE = 'March 12, 2019 2:46:33 PM'
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
IF NOT EXISTS(SELECT 1 FROM "CNF"."MALLAS" WHERE "NOMBRE_MALLA" = 'PPJDW06N' )
BEGIN
  INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO","CONTROL_FECHA") VALUES('PPJDW06N','Cuotas Financiadas',1,0);
END
COMMIT;