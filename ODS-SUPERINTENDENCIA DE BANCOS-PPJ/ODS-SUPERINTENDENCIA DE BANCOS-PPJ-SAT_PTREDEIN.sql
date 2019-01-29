DROP TABLE IF EXISTS "SAT"."PTREDEIN";

CREATE TABLE IF NOT EXISTS "SAT"."PTREDEIN" (
	"FEC_MOV" DATE NULL ,
	"SDO_ANT_DIF" DECIMAL(9,2) NULL ,
	"NUEVOS_INT_DIF" DECIMAL(9,2) NULL ,
	"PAGOS_INT_DIF" DECIMAL(9,2) NULL ,
	"SDO_ACT_INT_DIF" DECIMAL(9,2) NULL ,
	"VEHICULO_LEGAL" VARCHAR(3) NULL ,
	"MIS_DATE" DATE NULL ,
	"I_FILE_ORD" INTEGER NULL ,
	"LOAD_DATE" "datetime" NULL  DEFAULT "getdate"()
)  COMMIT;
