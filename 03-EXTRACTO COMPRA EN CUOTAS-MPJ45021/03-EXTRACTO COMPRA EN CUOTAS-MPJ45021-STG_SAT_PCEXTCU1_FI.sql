DROP TABLE IF EXISTS "DWH_ETLS"."PCEXTCU1_FI";
COMMIT;
DROP TABLE IF EXISTS "STG"."PCEXTCU1_FI";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."PCEXTCU1_FI";
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."PCEXTCU1_FI" (
	"CODENT_D" VARCHAR(4) NULL ,
	"NSECFIC_D" DECIMAL(10,0) NULL ,
	"TIPOCINTA_D" DECIMAL(2,0) NULL ,
	"TIPOREG_D" VARCHAR(1) NULL ,
	"FILLER_D" VARCHAR(91) NULL ,
	"NUMREGPROC" DECIMAL(12,0) NULL ,
	"CODENT" VARCHAR(4) NULL ,
	"CENTALTA" VARCHAR(4) NULL ,
	"CUENTA" VARCHAR(12) NULL ,
	"TIPOREG" VARCHAR(2) NULL ,
	"PAN" VARCHAR(22) NULL ,
	"IMPFAC" DECIMAL(17,2) NULL ,
	"CODCOM" VARCHAR(15) NULL ,
	"NOMCOMRED" VARCHAR(27) NULL ,
	"NUMOPECUO" DECIMAL(6,0) NULL ,
	"CLAMON" DECIMAL(3,0) NULL ,
	"NUMFINAN" DECIMAL(3,0) NULL ,
	"TOTCUOTAS" DECIMAL(9,0) NULL ,
	"IMPCUOTA" DECIMAL(17,2) NULL ,
	"NUMCUOPAG" DECIMAL(9,0) NULL ,
	"IMPTOTAL" DECIMAL(17,2) NULL ,
	"IMPINTTOTAL" DECIMAL(17,2) NULL ,
	"IMPAMORT" DECIMAL(17,2) NULL ,
	"IMPINTAMORT" DECIMAL(17,2) NULL ,
	"FECULTLIQ" VARCHAR(10) NULL ,
	"FECALTA" VARCHAR(10) NULL ,
	"NUMULTCUO" DECIMAL(9,0) NULL ,
	"PORINT" DECIMAL(7,4) NULL ,
	"FILLER1" VARCHAR(746) NULL 
)  COMMIT;

