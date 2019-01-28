drop table IF EXISTS SAT.PCIMPEXT_MI;  CREATE TABLE IF NOT EXISTS SAT.PCIMPEXT_MI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	CENTALTA	VARCHAR	(4)	--CENTRO DE ALTA CUENTA DE TARJETA
,	CUENTA	VARCHAR	(12)	--CUENTA DE TARJETA
,	PAN	VARCHAR	(22)	--NUMERO DE TARJETA (PRIMERA TARJETA DEL CONTRATO)
,	TIPOREG	VARCHAR	(2)	--TIPO DE REGISTRO 
--'CL' - DATOS DE CLIENTE 	 	 		
--'CU' - CUENTA O CONTRATO DE TARJETA 	 	 		
--'LI' - LINEAS DE CREDITO PARALELAS	 	 		
--'EX' - EXTRACTO 	 	 		
--'TX' - EXTRACTO - TIPO DE LINEA - TIPO IMPORTE	 	 		
--'MX' - MOVIMIENTO EXTRACTO	 	 		
--'MC' - MOVIMIENTO CONCEPTO ECONOMICO	 	 		
--'IC' - CONTRATO IMPAGADO	 	 		
--'IL' - DESGLOSE CONTRATO IMPAGADO	 	 		
--'RI' - RECIBO IMPAGADO	 	 		
--'RL' - DESGLOSE RECIBO IMPAGADO	 	 		
--'MI' - MOVIMIENTO RECIBO IMPAGADO	 	 		
--'CI' - CONCEPTO ECONOMICO DE MOVIMIENTO RECIBO       IMPAGADO	 	 		
--'PU'    - PUNTOS DE FIDELIZACION SFC O B.LEON'	 	 		
--?ML'    - LINEAS DE MENSAJERIA PARA EXTRACTOS	 	 		
--'MS'    - MANEJO DE MENSAJES PROMOCIONALES	 	 		
--'MZ'    - BONIFICACION ONLINE DE CAMPANAS	 	 		
,	NUMORDEN	DECIMAL	(12,0)	--NUMERO DE ORDEN 
,	NUMSECIMP	DECIMAL	(15,0)	--NUMERO SECUENCIA RECIBO IMPAGADO
,	NUMMOVIMP	DECIMAL	(7,0)	--NUMERO DE MOVIMIENTO DEL RECIBO IMPAGADO
,	CLAMON	DECIMAL	(3,0)	--MONEDA
,	TIPOLIN	VARCHAR	(4)	--TIPO DE LINEA
,	INDNORCOR	DECIMAL	(1,0)	--INDICADOR DE NORMAL O CORRECTORA
,	TIPOFAC	DECIMAL	(4,0)	--TIPO DE FACTURA
,	FECFAC	DATE		--FECHA DEL MOVIMIENTO
,	IMPORTE	DECIMAL	(17,2)	--IMPORTE DEL MOVIMIENTO
,	FECPROCES	DATE		--FECHA DE PROCESO DEL MOVIMIENTO
,	FECCONTA	DATE		--FECHA CONTABLE DEL MOVIMIENTO
,	ORIGENOPE	VARCHAR	(4)	--ORIGEN OPERACION
,	TIPDOCPAG	DECIMAL	(2,0)	--TIPO DE DOCUMENTO DE PAGO (SOLO PARA PAGOS)
,	REFDOCPAG	VARCHAR	(20)	--REFERENCIA DEL TIPO DE DOCUMENTO (SOLO PAGOS)
,	IMPAMORT	DECIMAL	(17,2)	--IMPORTE AMORTIZADO (SOLO PARA PAGOS)
,	TIPDEVOL	DECIMAL	(2,0)	--TIPOS DE IMPAGO
,	FEC2PRES	DATE		--FECHA VENCIMIENTO DE 2a PRESENTACION
,	IMPIMPTO	DECIMAL	(17,2)	--IMPORTE DEL IMPUESTO
,	FILLER1	VARCHAR	(791)	--FILLER
); COMMIT;	 	 		