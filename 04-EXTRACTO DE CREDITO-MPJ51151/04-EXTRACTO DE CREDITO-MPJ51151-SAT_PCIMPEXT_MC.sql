drop table IF EXISTS SAT.PCIMPEXT_MC;  CREATE TABLE IF NOT EXISTS SAT.PCIMPEXT_MC  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
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
,	NUMEXTCTA	DECIMAL	(3,0)	--NUMERO DE EXTRACTO
,	CLAMON	DECIMAL	(3,0)	--CLAVE DE MONEDA
,	NUMMOVEXT	DECIMAL	(7,0)	--NUMERO DE MOVIMIENTO EN EL EXTRACTO
,	CODCONECO	DECIMAL	(4,0)	--CODIGO DE CONCEPTO ECONOMICO 
,	TIPIMP	DECIMAL	(2,0)	--TIPO DE IMPORTE:
---         02 - COMISIONES	 	 		
---         03 - INTERESES	 	 		
---         04 - IMPUESTOS	 	 		
---         05 - COMISIONES MOROSIDAD	 	 		
---         06 - INTERESES MOROSIDAD	 	 		
---         07 - IMPUESTOS MOROSIDAD	 	 		
---         08- SEGURO	 	 		
,	DESCONECO	VARCHAR	(30)	--DESCRIPCION DE CONCEPTO ECONOMICO
,	IMPAPLECO	DECIMAL	(17,2)	--IMPORTE SOBRE EL QUE SE APLICA EL CONCEPTO ECONOMICO
,	IMPBRUECO	DECIMAL	(17,2)	--IMPORTE BRUTO CALCULADO POR EL CONCEPTO ECONOMICO
,	IMPBONECO	DECIMAL	(17,2)	--IMPORTE DE BONIFICACION CALCULADO POR EL CONCEPTO ECONOMICO
,	IMPIMPTO	DECIMAL	(17,2)	--IMPORTE DEL IMPUESTO
,	SIGNO	VARCHAR	(1)	--SIGNO DEL CONCEPTO
,	TIPOLIN	VARCHAR	(4)	--TIPO DE LINEA
,	FILLER1	VARCHAR	(822)	--FILLER
); COMMIT;	 	 		