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

drop table IF EXISTS SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS SAT.TBMEDENV_ECTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--PCDT420-Medios de envio de estados de cuenta	 	 		
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--Código de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--Número de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de envío
--'EM' - E-Mail	 	 		
--'CO'- Correo	 	 		
--'AM'- Ambos	 	 		
--'NO'- Sin medio de envío	 	 		
,	EMAIL	VARCHAR	(100)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--Código de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripción de la oficina de abogados
,	FECALTAABOG	DATE		--FECHA ALTA OFICINA DE ABOGADOS
,	FECBAJAABOG	DATE		--FECHA BAJA OFICINA DE ABOGADOS
,	CODVIAJFRE	VARCHAR	(25)	--Código de viajero frecuente
,	FECALTAVIAJ	VARCHAR	(10)	--Fecha de alta código de viajero frecuente
,	INDCLICUMM	VARCHAR	(1)	--Indicador cliente cumplido para mora (S/N)
,	INDCLICUMC	VARCHAR	(1)	--Indicador de cliente cumplido para consumos
--N - No Cumple	 	 		
--C - Cliente cumplidor	 	 		
--M - Cliente medio cumplidor	 	 		
,	FECCLICUM	VARCHAR	(10)	--Fecha última actualización cliente cumplido
,	CLASIFRISAT	VARCHAR	(2)	--Clasificación de riesgo SAT
,	CLASIFRIREG	VARCHAR	(2)	--Clasificación de riesgo regulatorios
,	CLASIFRIMDE	DECIMAL	(5,0)	--Clasificación de riesgo motor de decisión
,	TASAEFECMAX	DECIMAL	(7,4)	--Tasa efectiva máxima
,	REFEXTCONTR	VARCHAR	(25)	--Referencia externa de contrato
,	CONPRODT	VARCHAR	(3)	--Condición Económica temporal
,	FECCETINI	DATE		--Fecha inicio Cond. Econ. Temporal
,	FECCETFIN	DATE		--Fecha fin Cond. Econ. Temporal
,	CONPRODO	VARCHAR	(3)	--Condición Económica original del contrato
,	TASAFINAN	DECIMAL	(7,4)	--Tasa de financiamiento
,	FILLER1	VARCHAR	(573)	--FILLER
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS STG_SAT.TBMEDENV_ECTA  ( 
--PCDT420-Medios de envio de estados de cuenta	 	 		
 	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--Código de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--Número de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de envío
--'EM' - E-Mail	 	 		
--'CO'- Correo	 	 		
--'AM'- Ambos	 	 		
--'NO'- Sin medio de envío	 	 		
,	EMAIL	VARCHAR	(100)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--Código de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripción de la oficina de abogados
,	FECALTAABOG	DATE		--FECHA ALTA OFICINA DE ABOGADOS
,	FECBAJAABOG	DATE		--FECHA BAJA OFICINA DE ABOGADOS
,	CODVIAJFRE	VARCHAR	(25)	--Código de viajero frecuente
,	FECALTAVIAJ	VARCHAR	(10)	--Fecha de alta código de viajero frecuente
,	INDCLICUMM	VARCHAR	(1)	--Indicador cliente cumplido para mora (S/N)
,	INDCLICUMC	VARCHAR	(1)	--Indicador de cliente cumplido para consumos
--N - No Cumple	 	 		
--C - Cliente cumplidor	 	 		
--M - Cliente medio cumplidor	 	 		
,	FECCLICUM	VARCHAR	(10)	--Fecha última actualización cliente cumplido
,	CLASIFRISAT	VARCHAR	(2)	--Clasificación de riesgo SAT
,	CLASIFRIREG	VARCHAR	(2)	--Clasificación de riesgo regulatorios
,	CLASIFRIMDE	DECIMAL	(5,0)	--Clasificación de riesgo motor de decisión
,	TASAEFECMAX	DECIMAL	(7,4)	--Tasa efectiva máxima
,	REFEXTCONTR	VARCHAR	(25)	--Referencia externa de contrato
,	CONPRODT	VARCHAR	(3)	--Condición Económica temporal
,	FECCETINI	DATE		--Fecha inicio Cond. Econ. Temporal
,	FECCETFIN	DATE		--Fecha fin Cond. Econ. Temporal
,	CONPRODO	VARCHAR	(3)	--Condición Económica original del contrato
,	TASAFINAN	DECIMAL	(7,4)	--Tasa de financiamiento
,	FILLER1	VARCHAR	(573)	--FILLER
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
 @NOMBRE_MALLA = 'PPJDW01N'
,@OBJECT_NAME = 'TBMEDENV_ECTA'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '3265430b4993eab433b4a16ab918f7d3abb73d87'
,@VERSION_CODE = '3265430'
,@VERSION_DATE = 'April 5, 2019 10:10:41 AM'
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
,@OBJECT_NAME = 'TBMEDENV_ECTA'
,@VERSION_COMMIT = '3265430b4993eab433b4a16ab918f7d3abb73d87'
,@VERSION_CODE = '3265430'
,@VERSION_DATE = 'April 5, 2019 10:10:41 AM'
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

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

COMMIT;

-- Inserts NUEVAS MALLAS
IF NOT EXISTS(SELECT 1 FROM "CNF"."MALLAS" WHERE "NOMBRE_MALLA" = 'PPJDW01N' )
BEGIN
  INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO","CONTROL_FECHA") VALUES('PPJDW01N','Medios de Envio Estados de CTA',1,0);
END
COMMIT;