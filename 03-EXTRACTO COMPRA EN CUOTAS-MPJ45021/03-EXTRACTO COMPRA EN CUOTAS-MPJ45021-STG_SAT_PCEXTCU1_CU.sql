DROP TABLE IF EXISTS "DWH_ETLS"."PCEXTCU1_CU";
COMMIT;
DROP TABLE IF EXISTS "STG"."PCEXTCU1_CU";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."PCEXTCU1_CU";
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."PCEXTCU1_CU" (
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
	"PRODUCTO" VARCHAR(2) NULL ,
	"SUBPRODU" VARCHAR(4) NULL ,
	"CONPROD" VARCHAR(3) NULL ,
	"CALPART" VARCHAR(2) NULL ,
	"NUMBEN" DECIMAL(5,0) NULL ,
	"CODREGIMEN" DECIMAL(4,0) NULL ,
	"CLAMON" DECIMAL(3,0) NULL ,
	"LIMCRECTA" DECIMAL(17,2) NULL ,
	"LIMCRECTAC" DECIMAL(17,2) NULL ,
	"SALDISCRE" DECIMAL(17,2) NULL ,
	"SALDISCREC" DECIMAL(17,2) NULL ,
	"INDMONPRIN" VARCHAR(1) NULL ,
	"CODFORMATO" VARCHAR(10) NULL ,
	"DISBLECRECTA" VARCHAR(17) NULL ,
	"DISBLECRECTAC" VARCHAR(17) NULL ,
	"GRUPOLIQ" DECIMAL(2,0) NULL ,
	"DESPROD" VARCHAR(30) NULL ,
	"INTERESANUAL" DECIMAL(9,4) NULL ,
	"NOMBREMP" VARCHAR(30) NULL ,
	"GRUPOEMP" DECIMAL(4,0) NULL ,
	"BALMESANT" DECIMAL(17,2) NULL ,
	"BALMESACT" DECIMAL(17,2) NULL ,
	"FILLER1" VARCHAR(733) NULL 
)  COMMIT;
