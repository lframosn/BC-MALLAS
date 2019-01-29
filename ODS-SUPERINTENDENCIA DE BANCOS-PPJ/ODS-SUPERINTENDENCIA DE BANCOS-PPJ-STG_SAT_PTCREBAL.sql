DROP TABLE IF EXISTS "STG_SAT"."PTCREBAL";

CREATE TABLE IF NOT EXISTS "STG_SAT"."PTCREBAL" (
	"NITPERSONA" VARCHAR(24) NULL ,
	"PRIMAPELL" VARCHAR(20) NULL ,
	"SEGUAPELL" VARCHAR(20) NULL ,
	"APECASADA" VARCHAR(20) NULL ,
	"PRIMNOMB" VARCHAR(22) NULL ,
	"SEGUNOMB" VARCHAR(20) NULL ,
	"NOMSOCIE" VARCHAR(100) NULL ,
	"NUMREFEREN" VARCHAR(20) NULL ,
	"MONTOREFER" DECIMAL(9,2) NULL ,
	"SALDO" DECIMAL(9,2) NULL ,
	"FECOTOGAM" DATE NULL ,
	"FECVENCIMI" DATE NULL ,
	"TASAINTE" DECIMAL(7,4) NULL ,
	"ESTADO_OPER" VARCHAR(10) NULL ,
	"VEHICULO_LEGAL" VARCHAR(3) NULL ,
	"MIS_DATE" DATE NULL ,
	"I_FILE_ORD" INTEGER NULL ,
	"LOAD_DATE" "datetime" NULL  DEFAULT "getdate"()
)  COMMIT;
