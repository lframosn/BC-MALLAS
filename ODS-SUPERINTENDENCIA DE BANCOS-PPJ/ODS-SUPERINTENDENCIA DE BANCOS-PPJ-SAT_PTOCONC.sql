drop table IF EXISTS SAT.PTOCONC;  CREATE TABLE IF NOT EXISTS SAT.PTOCONC  ( 	OP_FECHA_CORTE  	DATE		--FECHA DE CORTE DE LA INFORMACIÓN 
--LISTADO CONCILIATION	 	 		
,	OP_TIPO_OPER_SSF 	VARCHAR	(10)	--TIPO OPERACIÓN SSF 
,	OP_TIPO_OPER 	VARCHAR	(2)	--ID TIPO DE OPERACIÓN 
,	OP_CLABAS 	VARCHAR	(10)	--CLASIFICACIÓN BÁSICA 
,	OP_COSTUMER_TYPE 	VARCHAR	(10)	--SECTOR ECONÓMICO CONTABLE 
,	OP_CAPITAL_VIG 	DECIMAL	(11,2)	--BALANCE PRINCIPAL  
,	OP_CAPITAL_VEN 	DECIMAL	(11,2)	--CAPITAL VENCIDO 
,	OP_INTERES_VIG 	DECIMAL	(11,2)	--BALANCE INTERÉS 
,	OP_INTERES_VEN 	DECIMAL	(11,2)	--INTERÉS VENCIDO 
,	TOTAL 	DECIMAL	(11,2)	--CAPITAL VIGENTE + CAPITAL VENCIDO + INTERES VIGENTE + INTERÉS VENCIDO 
,	VEHICULO_LEGAL 	VARCHAR	(3)	--VEHICULO LEGAL 
,	LOAD_DATE	DATE null default getdate()		--FECHA DE CARGA
); COMMIT;	 	 		