DROP TABLE IF EXISTS "DWH_ETLS"."PCIMPEXT_CU";
COMMIT;
DROP TABLE IF EXISTS "STG"."PCIMPEXT_CU";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."PCIMPEXT_CU";
COMMIT;
CREATE TABLE IF NOT EXISTS "STG_SAT"."PCIMPEXT_CU" (
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
	"PRODUCTO" VARCHAR(2) NULL ,
	"SUBPRODU" VARCHAR(4) NULL ,
	"CONPROD" VARCHAR(3) NULL ,
	"CALPART" VARCHAR(2) NULL ,
	"NUMBEN" DECIMAL(5,0) NULL ,
	"CODREGIMEN" DECIMAL(4,0) NULL ,
	"CLAMON" DECIMAL(3,0) NULL ,
	"LIMCRECTA" DECIMAL(17,2) NULL ,
	"SALDISCRE" DECIMAL(17,2) NULL ,
	"LIMCRECTAC" DECIMAL(17,2) NULL ,
	"SALDISCREC" DECIMAL(17,2) NULL ,
	"INDMONPRIN" VARCHAR(1) NULL ,
	"CODFORMATO" VARCHAR(10) NULL ,
	"IDENTCLI" VARCHAR(8) NULL ,
	"INDDOMCARCRE" VARCHAR(1) NULL ,
	"INDCTAEMP" DECIMAL(1,0) NULL ,
	"CLASEG" VARCHAR(3) NULL ,
	"IBAN" VARCHAR(4) NULL ,
	"CTACARGO" VARCHAR(30) NULL ,
	"CODIDIOMA" VARCHAR(2) NULL ,
	"CODBLQ" DECIMAL(2,0) NULL ,
	"DISBLECRECTA" DECIMAL(17,2) NULL ,
	"DISBLECRECTAC" DECIMAL(17,2) NULL ,
	"GRUPOLIQ" DECIMAL(2,0) NULL ,
	"DESPROD" VARCHAR(30) NULL ,
	"INTERESANUAL1" DECIMAL(7,4) NULL ,
	"INTERESANUAL2" DECIMAL(7,4) NULL ,
	"BALANPAGO" DECIMAL(17,2) NULL ,
	"NOMBREMP" VARCHAR(30) NULL ,
	"GRUPOEMP" DECIMAL(4,0) NULL ,
	"PORMOPPAL" DECIMAL(7,4) NULL ,
	"TRAMOPPAL" DECIMAL(17,2) NULL ,
	"PORMOSEC" DECIMAL(7,4) NULL ,
	"TRAMOSEC" DECIMAL(17,2) NULL ,
	"INTANUALPPAL" DECIMAL(7,4) NULL ,
	"INTANUALSEC" DECIMAL(7,4) NULL ,
	"LIMCRECTAPPAL" DECIMAL(17,2) NULL ,
	"LIMCRECTASEC" DECIMAL(17,2) NULL ,
	"MOTBLQ" DECIMAL(2,0) NULL ,
	"FILLER1" VARCHAR(574) NULL ,
	"FILLER2" VARCHAR(9) NULL 
); COMMIT;