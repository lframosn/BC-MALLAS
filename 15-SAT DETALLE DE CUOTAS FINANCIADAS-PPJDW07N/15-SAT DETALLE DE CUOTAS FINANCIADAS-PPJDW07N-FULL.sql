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

drop table IF EXISTS SAT.TBDETCUO;  CREATE TABLE IF NOT EXISTS SAT.TBDETCUO  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT207-Detalle de cuotas	 	 		
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--C�digo de moneda 
,	NUMOPECUO 	DECIMAL	(6,0)	--N�mero de operaci�n en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--N�mero de financiaci�n 
,	NUMCUOTA 	DECIMAL	(9,0)	--N�mero de cuota 
,	FECPROCUO 	DATE		--Fecha de cobro de la cuota 
,	IMPCUOTA 	DECIMAL	(17,2)	--Importe de la cuota 
,	IMPCAPITAL 	DECIMAL	(17,2)	--Importe capital 
,	IMPINTERESES 	DECIMAL	(17,2)	--Importe inter�s 
,	IMPIMPTO 	DECIMAL	(17,2)	--Importe del impuesto 
,	ESTCUO 	DECIMAL	(2,0)	--Estado de la cuota: 
--01� - Pendiente 	 	 		
--02� - Liquidada 	 	 		
--03� - Cancelada 	 	 		
--04� - Vencida 	 	 		
--05� - Anticipada	 	 		
,	FECLIQ 	DATE		--Fecha liquidaci�n 
,	FECCONTA 	DATE		--Fecha contable 
,	ESTCONT 	DECIMAL	(1,0)	--Estado contable. 
,	FILLER	VARCHAR	(738)	--Filler
); COMMIT;	 	 		

drop table IF EXISTS "STG_SAT"."TBDETCUO";  

CREATE TABLE IF NOT EXISTS "STG_SAT"."TBDETCUO" (
	"CODENT_D" VARCHAR(4) NULL,
	"NSECFIC_D" DECIMAL(10,0) NULL,
	"TIPOCINTA_D" DECIMAL(2,0) NULL,
	"TIPOREG_D" VARCHAR(1) NULL,
	"FILLER_D" VARCHAR(91) NULL,
	"NUMREGPROC" DECIMAL(12,0) NULL,
	"CODENT" VARCHAR(4) NULL,
	"CENTALTA" VARCHAR(4) NULL,
	"CUENTA" VARCHAR(12) NULL,
	"CLAMON" DECIMAL(3,0) NULL,
	"NUMOPECUO" DECIMAL(6,0) NULL,
	"NUMFINAN" DECIMAL(3,0) NULL,
	"NUMCUOTA" DECIMAL(9,0) NULL,
	"FECPROCUO" VARCHAR(10) NULL,
	"IMPCUOTA" DECIMAL(17,2) NULL,
	"IMPCAPITAL" DECIMAL(17,2) NULL,
	"IMPINTERESES" DECIMAL(17,2) NULL,
	"IMPIMPTO" DECIMAL(17,2) NULL,
	"ESTCUO" DECIMAL(2,0) NULL,
	"FECLIQ" VARCHAR(10) NULL,
	"FECCONTA" VARCHAR(10) NULL,
	"ESTCONT" DECIMAL(1,0) NULL,
	"FILLER_0001" VARCHAR(738) NULL 
) COMMIT;


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
 @NOMBRE_MALLA = 'PPJDW07N'
,@OBJECT_NAME = 'TBDETCUO'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '3265bef4429c7a87c524f52143b1fc7e04d065be'
,@VERSION_CODE = '3265bef'
,@VERSION_DATE = 'March 12, 2019 2:55:32 PM'
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
,@VERSION_COMMIT = 'a4e0e49dff6ec76dd6fe81fe73a37d26925809c9'
,@VERSION_CODE = 'a4e0e49'
,@VERSION_DATE = 'March 14, 2019 3:43:42 PM'
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
IF NOT EXISTS(SELECT 1 FROM "CNF"."MALLAS" WHERE "NOMBRE_MALLA" = 'PPJDW07N' )
BEGIN
  INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO","CONTROL_FECHA") VALUES('PPJDW07N','Detalle de Cuotas Financiadas',1,0);
END
COMMIT;