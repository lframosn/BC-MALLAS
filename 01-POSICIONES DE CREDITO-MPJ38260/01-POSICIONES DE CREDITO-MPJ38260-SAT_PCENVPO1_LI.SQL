drop table IF EXISTS SAT.PCENVPO1_LI;  CREATE TABLE IF NOT EXISTS SAT.PCENVPO1_LI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
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
--'CU' - CUENTA DE MEDIOS DE PAGO 	 	 		
--'LI' - LINEAS ASOCIADAS A LA CUENTA	 	 		
--'MP' - MEDIO DE PAGO (TARJETA)	 	 		
--'IC' - CONTRATO IMPAGADO	 	 		
--'IL' - DESGLOSE CONTRATO IMPAGADO	 	 		
--'RI' - RECIBO IMPAGADO	 	 		
--'RL' - DESGLOSE RECIBO IMPAGADO	 	 		
--'MI' - MOVIMIENTO RECIBO IMPAGADO	 	 		
--'CI' - CONCEPTO ECONOMICO DE MOVIMIENTO RECIBO IMPAGADO	 	 		
,	NUMORDEN	DECIMAL	(12,0)	--NUMERO DE ORDEN 
,	LINREF	DECIMAL	(8,0)	--REFERENCIA DE LINEA ASOCIADA A LA CUENTA
,	TIPOLIN	VARCHAR	(4)	--TIPO DE LINEA 
,	CODCAMCOM	VARCHAR	(4)	--CODIGO DE CAMPANA A LA CUAL ESTA ASOCIADA LA LINEA
,	CLAMON	DECIMAL	(3,0)	--MONEDA DE LA LINEA
,	LIMCRELIN	DECIMAL	(17,2)	--LIMITE DE LA LINEA
,	SALAUTLIN	DECIMAL	(17,2)	--SALDO AUTORIZADO DE LA LINEA
,	SALDISLIN	DECIMAL	(17,2)	--SALDO DISPUESTO DE LA LINEA
,	FILLER1	VARCHAR	(776)	--ESPACIO DISPONIBLE DEL REGISTRO
); COMMIT;	 	 		
