DROP TABLE IF EXISTS "STG"."PTOCOPS";

CREATE TABLE IF NOT EXISTS "STG"."PTOCOPS" (
	"FECHA" DATE NULL ,
	"OP_TIPO_OPER_SSF" VARCHAR(10) NULL ,
	"OP_TIPO_OPER" VARCHAR(2) NULL ,
	"OP_CLABAS" VARCHAR(10) NULL ,
	"OP_COSTUMER_TYPE" VARCHAR(10) NULL ,
	"CAPITAL_VIGENTE" DECIMAL(9,2) NULL ,
	"CAPITAL_VENCIDO" DECIMAL(9,2) NULL ,
	"INTERES_VIGENTE" DECIMAL(9,2) NULL ,
	"INTERES_VENCIDO" DECIMAL(9,2) NULL ,
	"TOTAL" DECIMAL(9,2) NULL ,
	"BRAND" VARCHAR(1) NULL ,
	"LEGAL_VEHICLE" VARCHAR(3) NULL ,
	"MIS_DATE" DATE NULL ,
	"I_FILE_ORD" INTEGER NULL ,
	"LOAD_DATE" "datetime" NULL  DEFAULT "getdate"()
)  COMMIT;
