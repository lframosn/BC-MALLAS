--- creacion de grupo de usuarios SAT
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'SAT')
BEGIN
CREATE USER SAT 
FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

--- creacion de grupo de usuarios STG_SAT
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'STG_SAT')
BEGIN
CREATE USER STG_SAT
FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

------------------------------
-- INTERFAZ  EXTRACTO COMPRA EN CUOTAS
--------------------------------
--'CU' - CUENTA O CONTRATO DE TARJETA 	 	 		- PCEXTCU1_CU
--'LI' - LINEAS DE CREDITO PARALELAS	 	 		- PCEXTCU1_LI
--'FI ' - DATOS COMPRA EN CUOTAS	 	 		- PCEXTCU1_FI
--'CE' - MOVIMIENTO CUOTA 	 	 		- PCEXTCU1_CE
--'CC' - MOVIMIENTO CONCEPTO ECONOMICO	 	 		- PCEXTCU1_CC
--'CL'   - DATOS DE CLIENTE 	 	 		- PCEXTCU1_CL


drop table IF EXISTS SAT.PCEXTCU1_CU;  CREATE TABLE IF NOT EXISTS SAT.PCEXTCU1_CU  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	CENTALTA	VARCHAR	(4)	--CENTRO DE ALTA CUENTA DE TARJETA
,	CUENTA	VARCHAR	(12)	--CUENTA DE TARJETA
,	TIPOREG	VARCHAR	(2)	--TIPO DE REGISTRO 
--'CU' - CUENTA O CONTRATO DE TARJETA 	 	 		
--'LI' - LINEAS DE CREDITO PARALELAS	 	 		
--'FI ' - DATOS COMPRA EN CUOTAS	 	 		
--'CE' - MOVIMIENTO CUOTA 	 	 		
--'CC' - MOVIMIENTO CONCEPTO ECONOMICO	 	 		
--'CL'   - DATOS DE CLIENTE 	 	 		
--	 	 		
,	PRODUCTO	VARCHAR	(2)	--CODIGO DE PRODUCTO
,	SUBPRODU	VARCHAR	(4)	--CODIGO DE SUBPRODUCTO
,	CONPROD	VARCHAR	(3)	--CODIGO DE CONDICION ECONOMICA
,	CALPART	VARCHAR	(2)	--CALIDAD DE PARTICIPACION
,	NUMBEN	DECIMAL	(5,0)	--NUMERO DE BENEFICIARIOS DE LA CUENTA
,	CODREGIMEN	DECIMAL	(4,0)	--CODIGO DE REGIMEN FISCAL
,	CLAMON	DECIMAL	(3,0)	--CLAVE DE MONEDA 
,	LIMCRECTA	DECIMAL	(17,2)	--LIMITE DE CREDITO DE LA CUENTA O CONTRATO DE TARJETA
,	LIMCRECTAC	DECIMAL	(17,2)	--LIMITE DE CREDITO COMPRA EN CUOTAS DE LA CUENTA O CONTRATO DE TARJETA
,	SALDISCRE	DECIMAL	(17,2)	--SALDO DISPUESTO A CREDITO
,	SALDISCREC	DECIMAL	(17,2)	--SALDO DISPUESTO A CREDITO EN COMPRA EN CUOTAS
,	INDMONPRIN	VARCHAR	(1)	--INDICADOR DE MONEDA PRINCIPAL (S/N)
,	CODFORMATO	VARCHAR	(10)	--CODIGO DE FORMATO
,	DISBLECRECTA	VARCHAR	(17)	--DISPONIBLE CREDITO CUENTA
,	DISBLECRECTAC	VARCHAR	(17)	--DISPONIBLE CREDITO CUENTA EN CUOTAS
,	GRUPOLIQ	DECIMAL	(2,0)	--GRUPO DE LIQUIDACION
,	DESPROD	VARCHAR	(30)	--DESCRIPCION DEL PRODUCTO
,	INTERESANUAL	DECIMAL	(5,4)	--INTERES ANUAL
,	NOMBREMP	VARCHAR	(30)	--NOMBRE DE EMPRESA
,	GRUPOEMP	DECIMAL	(4,0)	--GRUPO EMPRESA
,	BALMESACT	DECIMAL	(17,2)	--BALANCE MES ACTUAL
,	BALMESANT	DECIMAL	(17,2)	--BALANCE MES ANTERIOR
,	FILLER1	VARCHAR	(737)	--
); COMMIT;	 	 		
drop table IF EXISTS SAT.PCEXTCU1_LI;  CREATE TABLE IF NOT EXISTS SAT.PCEXTCU1_LI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	CENTALTA	VARCHAR	(4)	--CENTRO DE ALTA CUENTA DE TARJETA
,	CUENTA	VARCHAR	(12)	--CUENTA DE TARJETA
,	TIPOREG	VARCHAR	(2)	--TIPO DE REGISTRO 
--'CU' - CUENTA O CONTRATO DE TARJETA 	 	 		
--'LI' - LINEAS DE CREDITO PARALELAS	 	 		
--'FI ' - DATOS COMPRA EN CUOTAS	 	 		
--'CE' - MOVIMIENTO CUOTA 	 	 		
--'CC' - MOVIMIENTO CONCEPTO ECONOMICO	 	 		
--'CL'   - DATOS DE CLIENTE 	 	 		
--	 	 		
,	LINEA	VARCHAR	(4)	--LINEA ASOCIADA A LA CUENTA
,	CODCAMCOM	VARCHAR	(4)	--CODIGO DE CAMPANA COMERCIAL
,	CLAMON	DECIMAL	(3,0)	--CLAVE DE MONEDA
,	LIMCRELIN	DECIMAL	(17,2)	--LIMITE DE CREDITO CUENTA TARJETA DE LA LINEA
,	SALAUTLIN	DECIMAL	(17,2)	--SALDO DE CREDITO AUTORIZADO DE LA LINEA
,	SALDISLIN	DECIMAL	(17,2)	--SALDO DE CREDITO DISPUESTO DE LA LINEA
,	FECINILIN	DATE		--FECHA DE INICIO DE LA LINEA
,	FECFINLIN	DATE		--FECHA DE FIN DE LA LINEA
,	INDTIPLIN	VARCHAR	(1)	--INDICADOR DE TIPO DE LINEA
---         A: LINEA ADICIONAL (NO DEPENDE DEL DISPONIBLE DEL CONTRATO) 	 	 		
---         S: LINEA SECUNDARIA (DEPENDIENTE DEL CONTRATO)	 	 		
,	INDTIPOPE	VARCHAR	(1)	--INDICADOR DE TIPO DE OPERATIVA DE LA LINEA:
---         R: REVOLVING	 	 		
---         C: COMPRA CUOTAS	 	 		
,	IMPCUOTATOT	DECIMAL	(17,2)	--IIMPORTE TOTAL DE CUOTA
,	IMPCOMPTOT	DECIMAL	(17,2)	--IMPORTE TOTAL COMPRAS
,	BALCUOACT	DECIMAL	(17,2)	--BALANCE ACTUAL CUOTAS
,	BALCUOANT	DECIMAL	(17,2)	--BALANCE ANTERIOR CUOTAS
,	CREDDISP	DECIMAL	(17,2)	--CREDITO DISPONIBLE CUOTAS
,	FILLER1	VARCHAR	(809)	--
); COMMIT;	 	 		
drop table IF EXISTS SAT.PCEXTCU1_FI;  CREATE TABLE IF NOT EXISTS SAT.PCEXTCU1_FI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	CENTALTA	VARCHAR	(4)	--CENTRO DE ALTA CUENTA DE TARJETA
,	CUENTA	VARCHAR	(12)	--CUENTA DE TARJETA
,	TIPOREG	VARCHAR	(2)	--TIPO DE REGISTRO 
--'CU' - CUENTA O CONTRATO DE TARJETA 	 	 		
--'LI' - LINEAS DE CREDITO PARALELAS	 	 		
--'FI ' - DATOS COMPRA EN CUOTAS	 	 		
--'CE' - MOVIMIENTO CUOTA 	 	 		
--'CC' - MOVIMIENTO CONCEPTO ECONOMICO	 	 		
--'CL'   - DATOS DE CLIENTE 	 	 		
--	 	 		
,	PAN	VARCHAR	(22)	--PAN DE LA TARJETA QUE REALIZO LA OPERACION
,	IMPFAC	DECIMAL	(17,2)	--IMPORTE DE LA FACTURA
,	CODCOM	VARCHAR	(15)	--CODIGO DE COMERCIO 
,	NOMCOMRED	VARCHAR	(27)	--NOMBRE COMERCIO REDUCIDO
,	NUMOPECUO	DECIMAL	(6,0)	--NUMERO DE OPERACION CUOTAS
,	CLAMON	DECIMAL	(3,0)	--CLAVE DE MONEDA 
,	NUMFINAN	DECIMAL	(3,0)	--NUMERO DE FINANCIACION ACTUAL
,	TOTCUOTAS	DECIMAL	(9,0)	--NUMERO TOTAL DE CUOTAS
,	IMPCUOTA	DECIMAL	(17,2)	--IMPORTE DE LA CUOTA
,	NUMCUOPAG	DECIMAL	(9,0)	--NUMERO DE CUOTAS PAGADAS
,	IMPTOTAL	DECIMAL	(17,2)	--IMPORTE TOTAL A PAGAR
,	IMPINTTOTAL	DECIMAL	(17,2)	--IMPORTE DE INTERESES TOTAL A PAGAR
,	IMPAMORT	DECIMAL	(17,2)	--IMPORTE DE CAPITAL AMORTIZADO
,	IMPINTAMORT	DECIMAL	(17,2)	--IMPORTE DE INTERESES AMORTIZADO
,	FECULTLIQ	DATE		--FECHA DE ULTIMA LIQUIDACION
,	FECALTA	DATE		--FECHA DE ALTA
,	NUMULTCUO	DECIMAL	(9,0)	--NUMERO DE ULTIMA CUOTA
,	PORINT	DECIMAL	(7,4)	--PORCENTAJE DE INTERES APLICADO
,	FILLER1	VARCHAR	(746)	--
); COMMIT;	 	 		
drop table IF EXISTS SAT.PCEXTCU1_CE;  CREATE TABLE IF NOT EXISTS SAT.PCEXTCU1_CE  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	CENTALTA	VARCHAR	(4)	--CENTRO DE ALTA CUENTA DE TARJETA
,	CUENTA	VARCHAR	(12)	--CUENTA DE TARJETA
,	TIPOREG	VARCHAR	(2)	--TIPO DE REGISTRO 
--'CU' - CUENTA O CONTRATO DE TARJETA 	 	 		
--'LI' - LINEAS DE CREDITO PARALELAS	 	 		
--'FI ' - DATOS COMPRA EN CUOTAS	 	 		
--'CE' - MOVIMIENTO CUOTA 	 	 		
--'CC' - MOVIMIENTO CONCEPTO ECONOMICO	 	 		
--'CL'   - DATOS DE CLIENTE 	 	 		
--	 	 		
,	NUMOPECUO	DECIMAL	(6,0)	--NUMERO DE MOVIMIENTO
,	NUMFINAN	DECIMAL	(3,0)	--NUMERO DE FINANCIACION
,	NUMCUOTA	DECIMAL	(9,0)	--NUMERO DE CUOTA
,	IMPCUOTA	DECIMAL	(17,2)	--IMPORTE DE LA CUOTA
,	IMPCAPITAL	DECIMAL	(17,2)	--IMPORTE CAPITAL
,	IMPINTERESES	DECIMAL	(17,2)	--IMPORTE INTERES
,	IMPIMPTO	DECIMAL	(17,2)	--IMPORTE DE IMPUESTO
,	FECLIQ	DATE		--FECHA DE LIQUIDACION
,	FILLER1	VARCHAR	(882)	--
); COMMIT;	 	 		
drop table IF EXISTS SAT.PCEXTCU1_CC;  CREATE TABLE IF NOT EXISTS SAT.PCEXTCU1_CC  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	CENTALTA	VARCHAR	(4)	--CENTRO DE ALTA CUENTA DE TARJETA
,	CUENTA	VARCHAR	(12)	--CUENTA DE TARJETA
,	TIPOREG	VARCHAR	(2)	--TIPO DE REGISTRO 
--'CU' - CUENTA O CONTRATO DE TARJETA 	 	 		
--'LI' - LINEAS DE CREDITO PARALELAS	 	 		
--'FI ' - DATOS COMPRA EN CUOTAS	 	 		
--'CE' - MOVIMIENTO CUOTA 	 	 		
--'CC' - MOVIMIENTO CONCEPTO ECONOMICO	 	 		
--'CL'   - DATOS DE CLIENTE 	 	 		
--	 	 		
,	NUMOPECUO	DECIMAL	(6,0)	--NUMERO DE MOVIMIENTO
,	NUMFINAN	DECIMAL	(3,0)	--NUMERO DE FINANCIACION
,	NUMCUOTA	DECIMAL	(9,0)	--NUMERO DE CUOTA
,	CODCONECO	DECIMAL	(4,0)	--CODIGO DE CONCEPTO ECONOMICO 
,	TIPIMP	DECIMAL	(2,0)	--TIPO DE IMPORTE
---         02 - COMISIONES	 	 		
---         03 - INTERESES	 	 		
---         04 - IMPUESTOS	 	 		
,	IMPAPLECO	DECIMAL	(17,2)	--IMPORTE SOBRE EL QUE SE APLICA EL CONCEPTO ECONOMICO
,	IMPBRUECO	DECIMAL	(17,2)	--IMPORTE BRUTO CALCULADO POR EL CONCEPTO ECONOMICO
,	IMPBONECO	DECIMAL	(17,2)	--IMPORTE BONIFICADO SOBRE EL CALCULO DEL CONCEPTO ECONOMICO
,	SIGNO	VARCHAR	(1)	--SIGNO DEL CONCEPTO ECONOMICO
,	FILLER1	VARCHAR	(902)	--
); COMMIT;	 	 		
drop table IF EXISTS SAT.PCEXTCU1_CL;  CREATE TABLE IF NOT EXISTS SAT.PCEXTCU1_CL  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	CENTALTA	VARCHAR	(4)	--CENTRO DE ALTA CUENTA DE TARJETA
,	CUENTA	VARCHAR	(12)	--CUENTA DE TARJETA
,	TIPOREG	VARCHAR	(2)	--TIPO DE REGISTRO 
--'CU' - CUENTA O CONTRATO DE TARJETA 	 	 		
--'LI' - LINEAS DE CREDITO PARALELAS	 	 		
--'FI ' - DATOS COMPRA EN CUOTAS	 	 		
--'CE' - MOVIMIENTO CUOTA 	 	 		
--'CC' - MOVIMIENTO CONCEPTO ECONOMICO	 	 		
--'CL'   - DATOS DE CLIENTE 	 	 		
--	 	 		
,	NOMBRE	VARCHAR	(40)	--NOMBRE DE CLIENTE
,	APELLIDO1	VARCHAR	(36)	--APELLIDO 1 DEL CLIENTE 
,	APELLIDO2	VARCHAR	(36)	--APELLIDO 2 DEL CLIENTE 
,	FORMAENVIO	VARCHAR	(2)	--FORMA DE ENVIO DEL EXTRACTO
--'EM' - E-MAIL      'CO' - CORREO	 	 		
,	E_MAIL	VARCHAR	(100)	--E-MAIL DEL CLIENTE
,	CODPAIS	DECIMAL	(3,0)	--CODIGO DE PAIS
,	PAIS	VARCHAR	(20)	--PAIS
,	CODREGION   	VARCHAR	(3)	--CODIGO DE REGION
,	DESCREGION  	VARCHAR	(20)	--REGION
,	CODPROV     	VARCHAR	(2)	--CODIGO DE PROVINCIA
,	DESCPROV    	VARCHAR	(20)	--PROVINCIA
,	CIUDAD      	VARCHAR	(5)	--CODIGO DE CIUDAD
,	DESCCIUDAD  	VARCHAR	(35)	--CIUDAD
,	CODMUNICIP  	VARCHAR	(5)	--CODIGO DE MUNICIPIO
,	MUNICIPIO   	VARCHAR	(40)	--MUNICIPIO
,	CODSECTOR   	VARCHAR	(5)	--CODIGO DE SECTOR
,	SECTOR      	VARCHAR	(40)	--SECTOR
,	CODBARRIO   	VARCHAR	(5)	--CODIGO DE BARRIO
,	BARRIO      	VARCHAR	(40)	--BARRIO
,	TIPVIA      	VARCHAR	(2)	--TIPO DE VIA 
,	NOMVIA      	VARCHAR	(5)	--CODIGO DE VIA
,	DESCNOMVIA  	VARCHAR	(100)	--NOMBRE DE LA VIA
,	NUMVIA      	VARCHAR	(6)	--NUMERO 
,	ESCALERA    	VARCHAR	(4)	--ESCALERA
,	PISO        	VARCHAR	(4)	--PISO
,	PUERTA      	VARCHAR	(4)	--PUERTA
,	MANZANA     	VARCHAR	(10)	--MANZANA
,	EDIFICIO    	VARCHAR	(4)	--EDIFICIO
,	KILOMETRO   	VARCHAR	(7)	--KILOMETRO
,	CODPOSTAL   	VARCHAR	(10)	--ZONA POSTAL
,	CODAPTCOR   	VARCHAR	(10)	--APARTADO DE CORREOS
,	ENTRCALLES1 	VARCHAR	(5)	--CODIGO DE VIA ENTRE QUE CALLES VIVE 1
,	DESENTRCALL1	VARCHAR	(100)	--ENTRE QUE CALLES VIVE 2
,	ENTRCALLES2 	VARCHAR	(5)	--CODIGO DE VIA ENTRE QUE CALLES VIVE 2
,	DESENTRCALL2	VARCHAR	(100)	--ENTRE QUE CALLES VIVE 2
,	RESTODIR	VARCHAR	(40)	--RESTO DE DIRECCION
,	NUMDOC	VARCHAR	(22)	--NUMERO DE DOCUMENTO
,	APELARGO	VARCHAR	(50)	--APELLIDO LARGO
,	FILLER1	VARCHAR	(33)	--
); COMMIT;	 	 		

--------------------------------------
--- TABLAS STG_SAT DE INTERFAZ IMPRESION EXTRACTO COMPRA EN CUOTAS
---------------------------------------

DROP TABLE IF EXISTS "DWH_ETLS"."PCEXTCU1_CL";
COMMIT;
DROP TABLE IF EXISTS "STG"."PCEXTCU1_CL";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."PCEXTCU1_CL";
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."PCEXTCU1_CL" (
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
	"NOMBRE" VARCHAR(40) NULL ,
	"APELLIDO1" VARCHAR(36) NULL ,
	"APELLIDO2" VARCHAR(36) NULL ,
	"FORMAENVIO" VARCHAR(2) NULL ,
	"E_MAIL" VARCHAR(100) NULL ,
	"CODPAIS" DECIMAL(3,0) NULL ,
	"PAIS" VARCHAR(20) NULL ,
	"CODREGION" VARCHAR(3) NULL ,
	"DESCREGION" VARCHAR(20) NULL ,
	"CODPROV" VARCHAR(2) NULL ,
	"DESCPROV" VARCHAR(20) NULL ,
	"CIUDAD" VARCHAR(5) NULL ,
	"DESCCIUDAD" VARCHAR(35) NULL ,
	"CODMUNICIP" VARCHAR(5) NULL ,
	"MUNICIPIO" VARCHAR(40) NULL ,
	"CODSECTOR" VARCHAR(5) NULL ,
	"SECTOR" VARCHAR(40) NULL ,
	"CODBARRIO" VARCHAR(5) NULL ,
	"BARRIO" VARCHAR(40) NULL ,
	"TIPVIA" VARCHAR(2) NULL ,
	"NOMVIA" VARCHAR(5) NULL ,
	"DESCNOMVIA" VARCHAR(100) NULL ,
	"NUMVIA" VARCHAR(6) NULL ,
	"ESCALERA" VARCHAR(4) NULL ,
	"PISO" VARCHAR(4) NULL ,
	"PUERTA" VARCHAR(4) NULL ,
	"MANZANA" VARCHAR(10) NULL ,
	"EDIFICIO" VARCHAR(4) NULL ,
	"KILOMETRO" VARCHAR(7) NULL ,
	"CODPOSTAL" VARCHAR(10) NULL ,
	"CODAPTCOR" VARCHAR(10) NULL ,
	"ENTRCALLES1" VARCHAR(5) NULL ,
	"DESENTRCALL1" VARCHAR(100) NULL ,
	"ENTRCALLES2" VARCHAR(5) NULL ,
	"DESENTRCALL2" VARCHAR(100) NULL ,
	"RESTODIR" VARCHAR(40) NULL ,
	"NUMDOC" VARCHAR(22) NULL ,
	"APELARGO" VARCHAR(50) NULL ,
	"FILLER1" VARCHAR(33) NULL 
)  COMMIT;

DROP TABLE IF EXISTS "DWH_ETLS"."PCEXTCU1_CC";
COMMIT;
DROP TABLE IF EXISTS "STG"."PCEXTCU1_CC";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."PCEXTCU1_CC";
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."PCEXTCU1_CC" (
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
	"NUMOPECUO" DECIMAL(6,0) NULL ,
	"NUMFINAN" DECIMAL(3,0) NULL ,
	"NUMCUOTA" DECIMAL(9,0) NULL ,
	"CODCONECO" DECIMAL(4,0) NULL ,
	"TIPIMP" DECIMAL(2,0) NULL ,
	"IMPAPLECO" DECIMAL(17,2) NULL ,
	"IMPBRUECO" DECIMAL(17,2) NULL ,
	"IMPBONECO" DECIMAL(17,2) NULL ,
	"SIGNO" VARCHAR(1) NULL ,
	"FILLER1" VARCHAR(902) NULL 
)  COMMIT;

DROP TABLE IF EXISTS "DWH_ETLS"."PCEXTCU1_LI";
COMMIT;
DROP TABLE IF EXISTS "STG"."PCEXTCU1_LI";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."PCEXTCU1_LI";
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."PCEXTCU1_LI" (
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
	"LINEA" VARCHAR(4) NULL ,
	"CODCAMCOM" VARCHAR(4) NULL ,
	"CLAMON" DECIMAL(3,0) NULL ,
	"LIMCRELIN" DECIMAL(17,2) NULL ,
	"SALAUTLIN" DECIMAL(17,2) NULL ,
	"SALDISLIN" DECIMAL(17,2) NULL ,
	"FECINILIN" VARCHAR(10) NULL ,
	"FECFINLIN" VARCHAR(10) NULL ,
	"INDTIPLIN" VARCHAR(1) NULL ,
	"INDTIPOPE" VARCHAR(1) NULL ,
	"IMPCUOTATOT" DECIMAL(17,2) NULL ,
	"IMPCOMPTOT" DECIMAL(17,2) NULL ,
	"BALCUOACT" DECIMAL(17,2) NULL ,
	"BALCUOANT" DECIMAL(17,2) NULL ,
	"CREDDISP" DECIMAL(17,2) NULL ,
	"FILLER1" VARCHAR(809) NULL 
)  COMMIT;

DROP TABLE IF EXISTS "DWH_ETLS"."PCEXTCU1_CE";
COMMIT;
DROP TABLE IF EXISTS "STG"."PCEXTCU1_CE";
COMMIT;
DROP TABLE IF EXISTS "STG_SAT"."PCEXTCU1_CE";
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."PCEXTCU1_CE" (
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
	"NUMOPECUO" DECIMAL(6,0) NULL ,
	"NUMFINAN" DECIMAL(3,0) NULL ,
	"NUMCUOTA" DECIMAL(9,0) NULL ,
	"IMPCUOTA" DECIMAL(17,2) NULL ,
	"IMPCAPITAL" DECIMAL(17,2) NULL ,
	"IMPINTERESES" DECIMAL(17,2) NULL ,
	"IMPIMPTO" DECIMAL(17,2) NULL ,
	"FECLIQ" VARCHAR(10) NULL ,
	"FILLER1" VARCHAR(882) NULL 
)  COMMIT;

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
	"INTERESANUAL" DECIMAL(5,4) NULL ,
	"NOMBREMP" VARCHAR(30) NULL ,
	"GRUPOEMP" DECIMAL(4,0) NULL ,
	"BALMESACT" DECIMAL(17,2) NULL ,
	"BALMESANT" DECIMAL(17,2) NULL ,
	"FILLER1" VARCHAR(737) NULL 
)  COMMIT;

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


