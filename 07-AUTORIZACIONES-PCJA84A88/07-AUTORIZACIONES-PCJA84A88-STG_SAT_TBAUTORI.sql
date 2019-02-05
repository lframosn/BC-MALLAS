DROP TABLE IF EXISTS "DWH_ETLS"."TBAUTORI";
COMMIT;
DROP TABLE IF EXISTS "STG"."TBAUTORI";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."TBAUTORI";
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."TBAUTORI" (
	"CODENT" VARCHAR(4) NULL ,
	"TIPOMSGON" VARCHAR(4) NULL ,
	"CODPROON" DECIMAL(6,0) NULL ,
	"SIAIDCD" VARCHAR(19) NULL ,
	"PAN" VARCHAR(22) NULL ,
	"CODMAR" DECIMAL(2,0) NULL ,
	"INDTIPT" DECIMAL(2,0) NULL ,
	"INDDEBCRE" DECIMAL(1,0) NULL ,
	"IMPTRN" DECIMAL(17,2) NULL ,
	"CLAMONTRN" DECIMAL(3,0) NULL ,
	"IMPCCA" DECIMAL(17,2) NULL ,
	"CLAMONCCA" DECIMAL(3,0) NULL ,
	"IMPDIV" DECIMAL(17,2) NULL ,
	"CLAMONDIV" DECIMAL(3,0) NULL ,
	"FECTRN" DATE NULL ,
	"HORTRN" TIME NULL ,
	"CMBAPLI" DECIMAL(9,4) NULL ,
	"CODACT" DECIMAL(4,0) NULL ,
	"CODPAIS" DECIMAL(3,0) NULL ,
	"MODENTDAT" VARCHAR(12) NULL ,
	"SESIONORI" VARCHAR(12) NULL ,
	"SESIONSIA" VARCHAR(7) NULL ,
	"IMPTASAS" DECIMAL(17,2) NULL ,
	"IDADQUIR" VARCHAR(11) NULL ,
	"CODRED" VARCHAR(11) NULL ,
	"NUMREFOPE" DECIMAL(12,0) NULL ,
	"IDTERM" VARCHAR(16) NULL ,
	"CODCOM" VARCHAR(15) NULL ,
	"NOMCOM" VARCHAR(15) NULL ,
	"LOCALIDAD" VARCHAR(15) NULL ,
	"RTSITD" VARCHAR(40) NULL ,
	"DATORI" VARCHAR(30) NULL ,
	"NUMAUT" VARCHAR(6) NULL ,
	"CODRESPU" VARCHAR(3) NULL ,
	"CODACCRED" DECIMAL(3,0) NULL ,
	"TIPFRAN" DECIMAL(4,0) NULL ,
	"INDNORCOR" DECIMAL(1,0) NULL ,
	"TIPOFAC" DECIMAL(4,0) NULL ,
	"INDPREAUT" DECIMAL(1,0) NULL ,
	"INDCRUCE" DECIMAL(1,0) NULL ,
	"INDANUL" DECIMAL(1,0) NULL ,
	"INDRETSAL" VARCHAR(1) NULL ,
	"IMPTRNCON" DECIMAL(17,2) NULL ,
	"IMPAUTCON" DECIMAL(17,2) NULL ,
	"CLAMONCON" DECIMAL(3,0) NULL ,
	"FECCONTA" DATE NULL ,
	"NUMRETSAL" DECIMAL(10,0) NULL ,
	"IMPRETSAL" DECIMAL(17,2) NULL ,
	"CLAMONRET" DECIMAL(3,0) NULL ,
	"CENTALTA" VARCHAR(4) NULL ,
	"CUENTA" VARCHAR(12) NULL ,
	"IMPPROP" DECIMAL(17,2) NULL ,
	"ACCEMICRE" VARCHAR(1) NULL ,
	"ACCEMIDEB" VARCHAR(1) NULL ,
	"ACCMERCH" VARCHAR(1) NULL ,
	"INDPROINC" VARCHAR(1) NULL ,
	"FECCADTAR" DECIMAL(6,0) NULL ,
	"CALFRAUDE" VARCHAR(3) NULL ,
	"NUMPASIVO" VARCHAR(24) NULL ,
	"CODBLQFRA" VARCHAR(2) NULL ,
	"TIPOLIN" VARCHAR(4) NULL ,
	"LINREF" DECIMAL(8,0) NULL ,
	"TIPOLIM" VARCHAR(1) NULL ,
	"FORPAGO" DECIMAL(2,0) NULL ,
	"RESOLUTOR" VARCHAR(11) NULL ,
	"COMISION" DECIMAL(17,2) NULL ,
	"IMPUESTO" DECIMAL(17,2) NULL ,
	"CODENTUMO" VARCHAR(4) NULL ,
	"CODOFIUMO" VARCHAR(4) NULL ,
	"USUARIOUMO" VARCHAR(8) NULL ,
	"CODTERMUMO" VARCHAR(8) NULL ,
	"CONTCUR" TIMESTAMP NULL ,
	"DATADI" VARCHAR(650) NULL ,
	"MIS_DATE" DATE NULL 
)  COMMIT;

