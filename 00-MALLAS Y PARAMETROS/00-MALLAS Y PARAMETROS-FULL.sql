﻿--- creacion de grupo de usuarios SAT
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'SAT')
BEGIN
CREATE USER SAT 
FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

--- creacion de grupo de usuarios CNF
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'CNF')
BEGIN
CREATE USER CNF
FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

drop table IF EXISTS "CNF"."MALLAS";
COMMIT;

CREATE TABLE "CNF"."MALLAS" (
	"IDENTIFICADOR_MALLA" INTEGER NULL  DEFAULT AUTOINCREMENT,
	"NOMBRE_MALLA" VARCHAR(100) NULL ,
	"DESCRIPCION" VARCHAR(500) NULL ,
	"ENCABEZADO" BIT NULL 
);
COMMIT;

drop table IF EXISTS "CNF"."MALLAS_EJECUCION";
COMMIT;
CREATE TABLE "CNF"."MALLAS_EJECUCION" (
	"IDENTIFICADOR_MALLA" INTEGER NULL ,
	"IDENTIFICADOR_EJECUCION" INTEGER NULL  DEFAULT AUTOINCREMENT,
	"NOMBRE_ARCHIVO" VARCHAR(100) NULL ,
	"ESTADO" VARCHAR(20) NULL ,
	"REPROCESO" BIT NOT NULL ,
	"NUM_FILAS_INS" DECIMAL(15,0) NULL ,
	"FECHA_CARGA" "datetime" NULL 
) 
COMMIT;

drop table IF EXISTS CNF.VERSION_OBJETOS;  
create table IF NOT EXISTS CNF.VERSION_OBJETOS (
 OBJECT_NAME varchar(100)
,OBJECT_USER varchar(20)
,VERSION_COMMIT VARCHAR(100)
,VERSION_CODE VARCHAR(20)
,VERSION_DATE DATETIME
,CRDATE DATETIME null default getdate()
,CRUSER varchar(20) null default user_name()
)
;
COMMIT;

drop table IF EXISTS "SAT"."ATINTCAB";
COMMIT;
CREATE TABLE "SAT"."ATINTCAB" (
	"IDENTIFICADOR_MALLA" INTEGER NULL ,
	"IDENTIFICADOR_EJECUCION" INTEGER NULL ,
	"CODENT" VARCHAR(4) NULL ,
	"NSECFIC" VARCHAR(10) NULL ,
	"TIPOCINTA" VARCHAR(2) NULL ,
	"TIPOREG" VARCHAR(1) NULL ,
	"FECENVIO" VARCHAR(10) NULL ,
	"HORAENVIO" VARCHAR(8) NULL ,
	"NUMREGTOT" DECIMAL(12,0) NULL ,
	"FILLER_TMP" VARCHAR(61) NULL ,
	"NUMREGPROC" DECIMAL(12,0) NULL ,
	"CODENT1" VARCHAR(4) NULL ,
	"CENTALTA" VARCHAR(4) NULL ,
	"CUENTA" VARCHAR(12) NULL ,
	"TIPOREG1" VARCHAR(2) NULL ,
	"OTROSDATOSCAB" VARCHAR(857) NULL ,
	"ESTADOCINTA" VARCHAR(1) NULL ,
	"VALIDACION" VARCHAR(1) NULL 
);
COMMIT;

-- Inserts
INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO") VALUES('MPJ38260','Posiciones credito',1);
INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO") VALUES('MPJ45021','Impresión Extracto Compra en Cuotas',1);
INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO") VALUES('MPJ51151','Impresiones Extracto de Credito',1);
INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO") VALUES('PPJ6110N','Nuevas Operaciones Diarias',1);
INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO") VALUES('PCJA84A88','Autorizaciones',0);
INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO") VALUES('MPJC8010','Documentos Identificativos de una Persona (titulares)',0);
INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO") VALUES('MPJ58091','Envío de tarjetas próximas a vencer',1);
INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO") VALUES('MPJ15005','Subsistema Contable Conceptos Contables',0);
INSERT INTO "CNF"."MALLAS" ("NOMBRE_MALLA","DESCRIPCION","ENCABEZADO") VALUES('PCJ15015','Subsistema Contable Apuntes',0)
 
 