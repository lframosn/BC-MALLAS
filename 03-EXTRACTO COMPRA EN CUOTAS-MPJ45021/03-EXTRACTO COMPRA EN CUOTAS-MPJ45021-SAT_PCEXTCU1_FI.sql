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
,	INTANUAL	DECIMAL	(9,4)	--INTERES ANUAL
,	FILLER1	VARCHAR	(737)	--
); COMMIT;	 	 		
