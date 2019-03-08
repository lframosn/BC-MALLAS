DROP TABLE IF EXISTS "STG"."PCENVPO1_DC";
DROP TABLE IF EXISTS "STG_SAT"."PCENVPO1_DC";
DROP TABLE IF EXISTS "DWH_ETLS"."PCENVPO1_DC";
COMMIT;

CREATE TABLE IF NOT EXISTS  STG_SAT.PCENVPO1_DC  ( 
	CODENT_D    	varchar(4) NULL,
	NSECFIC_D   	decimal(10,0) NULL,
	TIPOCINTA_D 	decimal(2,0) NULL,
	TIPOREG_D   	varchar(1) NULL,
	FILLER_D    	varchar(91) NULL,
	NUMREGPROC  	decimal(12,0) NULL,
	CODENT      	varchar(4) NULL,
	CENTALTA    	varchar(4) NULL,
	CUENTA      	varchar(12) NULL,
	TIPOREG     	varchar(2) NULL,
	NUMORDEN    	decimal(12,0) NULL,
	CLAMON      	decimal(3,0) NULL,
	TIPODEUDA   	varchar(1) NULL,
	TIPIMP      	decimal(2,0) NULL,
	IMPORTE     	decimal(17,2) NULL,
	SIGNOIMPORTE	varchar(1) NULL,
	ESTADO      	decimal(2,0) NULL,
	FILLER      	varchar(820) NULL 
	) 
	COMMIT;