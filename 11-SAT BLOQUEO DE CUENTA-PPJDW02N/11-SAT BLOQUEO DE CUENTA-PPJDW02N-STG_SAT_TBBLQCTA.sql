drop table IF EXISTS STG_SAT.TBBLQCTA;  

CREATE TABLE IF NOT EXISTS "STG_SAT"."TBBLQCTA" (
	"CODENT_D" VARCHAR(4) NULL ,
	"NSECFIC_D" DECIMAL(10,0) NULL ,
	"TIPOCINTA_D" DECIMAL(2,0) NULL ,
	"TIPOREG_D" VARCHAR(1) NULL ,
	"FILLER_D" VARCHAR(91) NULL ,
	"NUMREGPROC" DECIMAL(12,0) NULL ,
	"CODENT" VARCHAR(4) NULL ,
	"CENTALTA" VARCHAR(4) NULL ,
	"CUENTA" VARCHAR(12) NULL ,
	"CODBLQ" DECIMAL(2,0) NULL ,
	"FECULTBLQ" VARCHAR(10) NULL ,
	"TEXBLQ" VARCHAR(30) NULL ,
	"INDBLQEXT" VARCHAR(1) NULL ,
	"MOTBLQ" DECIMAL(2,0) NULL ,
	"FILLER1" VARCHAR(815) NULL 
); COMMIT;
