DROP TABLE IF EXISTS "DWH_ETLS"."PCIMPEXT_RI";
COMMIT;
DROP TABLE IF EXISTS "STG"."PCIMPEXT_RI";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."PCIMPEXT_RI";
COMMIT;
CREATE TABLE IF NOT EXISTS "STG_SAT"."PCIMPEXT_RI" (
	"CODENT_D" VARCHAR(4) NULL ,
	"NSECFIC_D" DECIMAL(10,0) NULL ,
	"TIPOCINTA_D" DECIMAL(2,0) NULL ,
	"TIPOREG_D" VARCHAR(1) NULL ,
	"FILLER_D" VARCHAR(91) NULL ,
	"NUMREGPROC" DECIMAL(12,0) NULL ,
	"CODENT" VARCHAR(4) NULL ,
	"CENTALTA" VARCHAR(4) NULL ,
	"CUENTA" VARCHAR(12) NULL ,
	"PAN" VARCHAR(22) NULL ,
	"TIPOREG" VARCHAR(2) NULL ,
	"NUMORDEN" DECIMAL(12,0) NULL ,
	"CLAMON" DECIMAL(3,0) NULL ,
	"NUMSECIMP" DECIMAL(15,0) NULL ,
	"NUMSECREC" DECIMAL(15,0) NULL ,
	"FECALTA" VARCHAR(10) NULL ,
	"FECEMIMOV" VARCHAR(10) NULL ,
	"FECVENMOV" VARCHAR(10) NULL ,
	"IMPREC" DECIMAL(17,2) NULL ,
	"IMPAGO" DECIMAL(17,2) NULL ,
	"IMPAPL" DECIMAL(17,2) NULL ,
	"FECULTAPL" VARCHAR(10) NULL ,
	"FECENVCOB" VARCHAR(10) NULL ,
	"FILLER1" VARCHAR(810) NULL 
)  COMMIT;
