DROP TABLE IF EXISTS "STG_SAT"."PTPROINT";

CREATE TABLE IF NOT EXISTS "STG_SAT"."PTPROINT" (
	"PV_FECHA_CORTE" DATE NULL ,
	"PV_NUM_OP_IFI" VARCHAR(24) NULL ,
	"PV_CLIENTE" VARCHAR(24) NULL ,
	"PV_TIPO_OPER" VARCHAR(2) NULL ,
	"PV_BALANCE_INT" DECIMAL(9,2) NULL ,
	"PV_ACUMU_INT" DECIMAL(9,2) NULL ,
	"PV_TOTAL_INT" DECIMAL(9,2) NULL ,
	"PV_OP_CLABAS" VARCHAR(10) NULL ,
	"PV_TASA_ORIG" DECIMAL(7,4) NULL ,
	"PV_BILLING_CYCLE" VARCHAR(2) NULL ,
	"PV_BALANCE_PRINC" DECIMAL(9,2) NULL ,
	"PV_BRAND" VARCHAR(1) NULL ,
	"PV_VEHICULO_LEGAL" VARCHAR(3) NULL ,
	"MIS_DATE" DATE NULL ,
	"I_FILE_ORD" INTEGER NULL ,
	"LOAD_DATE" "datetime" NULL  DEFAULT "getdate"()
)  COMMIT;
