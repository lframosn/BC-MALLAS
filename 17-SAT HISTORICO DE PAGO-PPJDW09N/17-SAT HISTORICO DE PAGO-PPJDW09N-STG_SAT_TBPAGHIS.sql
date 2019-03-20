drop table IF EXISTS STG_SAT.TBPAGHIS;  
CREATE TABLE IF NOT EXISTS "STG_SAT"."TBPAGHIS" (
	"CODENT_D" VARCHAR(4) NULL ,
	"NSECFIC_D" DECIMAL(10,0) NULL ,
	"TIPOCINTA_D" DECIMAL(2,0) NULL ,
	"TIPOREG_D" VARCHAR(1) NULL ,
	"FILLER_D" VARCHAR(91) NULL ,
	"NUMREGPROC" DECIMAL(12,0) NULL ,
	"CODENT" VARCHAR(4) NULL ,
	"CENTALTA" VARCHAR(4) NULL ,
	"CUENTA" VARCHAR(12) NULL ,
	"NUMEXTPG" DECIMAL(15,0) NULL ,
	"NUMMOVPG" DECIMAL(7,0) NULL ,
	"CLAMON" DECIMAL(3,0) NULL ,
	"TIPDEU" VARCHAR(2) NULL ,
	"TIPOLIN" VARCHAR(4) NULL ,
	"TIPIMP" DECIMAL(2,0) NULL ,
	"INDNORCOR" DECIMAL(1,0) NULL ,
	"NUMREFAPL" DECIMAL(15,0) NULL ,
	"IMPSALDIS" DECIMAL(17,2) NULL ,
	"IMPAPL" DECIMAL(17,2) NULL ,
	"IMPRECAPL" DECIMAL(17,2) NULL ,
	"NUMSECREC" DECIMAL(15,0) NULL ,
	"IMPAPLAPL" DECIMAL(17,2) NULL ,
	"FECAPL" VARCHAR(10) NULL ,
	"NUMORDEN" DECIMAL(3,0) NULL ,
	"TIPOLINORI" VARCHAR(4) NULL ,
	"TIPIMPORI" DECIMAL(2,0) NULL ,
	"FILLER1" VARCHAR(709) NULL 
)COMMIT;


