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