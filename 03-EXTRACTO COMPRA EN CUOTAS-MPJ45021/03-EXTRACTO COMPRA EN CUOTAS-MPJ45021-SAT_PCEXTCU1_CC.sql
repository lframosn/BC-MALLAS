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