﻿drop table IF EXISTS "CNF"."MALLAS";
COMMIT;

CREATE TABLE "CNF"."MALLAS" (
	"IDENTIFICADOR_MALLA" INTEGER NULL  DEFAULT AUTOINCREMENT,
	"NOMBRE_MALLA" VARCHAR(100) NULL ,
	"DESCRIPCION" VARCHAR(500) NULL ,
	"ENCABEZADO" BIT NULL 
);
COMMIT;

