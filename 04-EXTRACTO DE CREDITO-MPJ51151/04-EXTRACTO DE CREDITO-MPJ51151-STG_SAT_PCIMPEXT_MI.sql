DROP TABLE IF EXISTS "DWH_ETLS"."PCIMPEXT_MI";
COMMIT;
DROP TABLE IF EXISTS "STG"."PCIMPEXT_MI";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."PCIMPEXT_MI";
COMMIT;
CREATE TABLE "STG_SAT"."PCIMPEXT_MI" (
	"CODENT_D" VARCHAR(4) NULL ",
	"NSECFIC_D" DECIMAL(10,0) NULL ",
	"TIPOCINTA_D" DECIMAL(2,0) NULL ",
	"TIPOREG_D" VARCHAR(1) NULL ",
	"FILLER_D" VARCHAR(91) NULL ",
	"NUMREGPROC" DECIMAL(12,0) NULL ",
	"CODENT" VARCHAR(4) NULL ",
	"CENTALTA" VARCHAR(4) NULL ",
	"CUENTA" VARCHAR(12) NULL ",
	"PAN" VARCHAR(22) NULL ",
	"TIPOREG" VARCHAR(2) NULL ",
	"NUMORDEN" DECIMAL(12,0) NULL ",
	"NUMSECIMP" DECIMAL(15,0) NULL ",
	"NUMMOVIMP" DECIMAL(7,0) NULL ",
	"CLAMON" DECIMAL(3,0) NULL ",
	"TIPOLIN" VARCHAR(4) NULL ",
	"INDNORCOR" DECIMAL(1,0) NULL ",
	"TIPOFAC" DECIMAL(4,0) NULL ",
	"FECFAC" VARCHAR(10) NULL ",
	"IMPORTE" DECIMAL(17,2) NULL ",
	"FECPROCES" VARCHAR(10) NULL ",
	"FECCONTA" VARCHAR(10) NULL ",
	"ORIGENOPE" VARCHAR(4) NULL ",
	"TIPDOCPAG" DECIMAL(2,0) NULL ",
	"REFDOCPAG" VARCHAR(20) NULL ",
	"IMPAMORT" DECIMAL(17,2) NULL ",
	"TIPDEVOL" DECIMAL(2,0) NULL ",
	"FEC2PRES" VARCHAR(10) NULL ",
	"IMPIMPTO" DECIMAL(17,2) NULL ",
	"FILLER1" VARCHAR(791) NULL "
); COMMIT;