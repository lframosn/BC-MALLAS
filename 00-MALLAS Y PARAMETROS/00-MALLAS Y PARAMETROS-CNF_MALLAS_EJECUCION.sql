﻿drop table IF EXISTS "CNF"."MALLAS_EJECUCION";
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
