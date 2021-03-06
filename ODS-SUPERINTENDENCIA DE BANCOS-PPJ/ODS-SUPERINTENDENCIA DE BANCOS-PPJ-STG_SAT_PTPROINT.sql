DROP TABLE IF EXISTS "STG_SAT"."PTPROINT";
DROP TABLE IF EXISTS "STG"."PTPROINT";

drop table IF EXISTS STG_SAT.PTPROINT;  CREATE TABLE IF NOT EXISTS STG_SAT.PTPROINT  ( 	PV_FECHA_CORTE    	DATE		--TIPO OPERACIÓN SSF 
--LISTADO INTEREST PROVISION	 	 		
,	PV_NUM_OP_IFI     	VARCHAR	(20)	--NUMERO DE REFERENCIA 
,	PV_CLIENTE        	VARCHAR	(24)	--CÓDIGO DEL CLIENTE / NÚMERO ÚNICO DEL BANCO. 
,	PV_TIPO_OPER      	VARCHAR	(2)	--TIPO OPERACIÓN 
,	PV_BALANCE_INT    	DECIMAL	(11,2)	--BALANCE INTERES  
,	PV_ACUMU_INT      	DECIMAL	(11,2)	--INTERESES DEL PERIODO 
,	PV_TOTAL_INT      	DECIMAL	(11,2)	--BALANCE TOTAL INTERÉS 
,	PV_CLABAS	VARCHAR	(10)	--CLASIFICACION BASICA DEL PRESTAMO
,	PV_TASA_ORIG      	DECIMAL	(6,4)	--TASA ORIGINAL 
,	PV_BILLING_CYCLE  	VARCHAR	(2)	--CICLO FACTURACIÓN 
,	PV_BALANCE_PRINC  	DECIMAL	(11,2)	--BALANCE CAPITAL 
,	PV_BRAND          	VARCHAR	(1)	--BRAND 
,	PV_VEHICULO_LEGAL 	VARCHAR	(3)	--VEHICULO LEGAL 
,	LOAD_DATE	DATE null default getdate()		--FECHA DE CARGA
); COMMIT;	 	 		