drop table IF EXISTS SAT.PCIMPEXT_RZ;  CREATE TABLE IF NOT EXISTS SAT.PCIMPEXT_RZ  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
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
,	TIPLINEA	VARCHAR	(3)	--TIPO DE LINEA
---       REV: REVOLVING.	 	 		
---       INT: INTRAFINANCIAMIENTO	 	 		
---       EXT:  EXTRAFINANCIAMIENTO	 	 		
,	CAPACT	DECIMAL	(17,2)	--IMPORTE CAPITAL ACTUAL
,	INTACT	DECIMAL	(17,2)	--IMPORTE INTERES ACTUAL
,	RECACT	DECIMAL	(17,2)	--IMPORTE RECARGO ACTUAL
,	COMACT	DECIMAL	(17,2)	--IMPORTE COMISION ACTUAL
,	PAGACT	DECIMAL	(17,2)	--IMPORTE PAGOS ACTUAL
,	CORACT	DECIMAL	(17,2)	--IMPORTE DE COMPRAS Y RETIROS ACTUAL
,	CREACT	DECIMAL	(17,2)	--IMPORTE DE CREDITOS ACTUAL
,	DEBACT	DECIMAL	(17,2)	--IMPORTE DE DEBITOS ACTUAL
,	FILLER1	VARCHAR	(799)	--FILLER
); COMMIT;	 	 		
