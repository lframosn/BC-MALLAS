drop table IF EXISTS STG_SAT.TBDETCUO;  CREATE TABLE IF NOT EXISTS STG_SAT.TBDETCUO  (
--MPDT207-Detalle de cuotas	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--Código de moneda 
,	NUMOPECUO 	DECIMAL	(6,0)	--Número de operación en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--Número de financiación 
,	NUMCUOTA 	DECIMAL	(9,0)	--Número de cuota 
,	FECPROCUO 	DATE		--Fecha de cobro de la cuota 
,	IMPCUOTA 	DECIMAL	(17,2)	--Importe de la cuota 
,	IMPCAPITAL 	DECIMAL	(17,2)	--Importe capital 
,	IMPINTERESES 	DECIMAL	(17,2)	--Importe interés 
,	IMPIMPTO 	DECIMAL	(17,2)	--Importe del impuesto 
,	ESTCUO 	DECIMAL	(2,0)	--Estado de la cuota: 
--01  – Pendiente 	 	 		
--02  – Liquidada 	 	 		
--03  – Cancelada 	 	 		
--04  – Vencida 	 	 		
--05  – Anticipada	 	 		
,	FECLIQ 	DATE		--Fecha liquidación 
,	FECCONTA 	DATE		--Fecha contable 
,	ESTCONT 	DECIMAL	(1,0)	--Estado contable. 
); COMMIT;	 	 		