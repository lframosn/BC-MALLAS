drop table IF EXISTS SAT.PTMOINTR;  CREATE TABLE IF NOT EXISTS SAT.PTMOINTR  ( 	IDW_FECHA	DATE		--FECHA 
--LISTADO MOVIMIENTOS INTERES REF	 	 		
,	OP_CLIENTE	VARCHAR	(24)	--CÓDIGO DEL CLIENTE / NÚMERO ÚNICO DEL BANCO. 
,	NUMREFEREN	VARCHAR	(24)	--NUMERO DE REFERENCIA QUE POSEE EL DEUDOR POR LA DEUDA 
,	INTNVOSRF	DECIMAL	(11,2)	--INTERESES TOTALES DE REFINANCIAMIENTO 
,	PAGINTRF	DECIMAL	(11,2)	--PAGO DE INTERESES DE REFINANCIAMIENTO 
,	MONTO 	DECIMAL	(11,2)	--MONTO ORIGINAL 
,	TOTAL_BALANCE 	DECIMAL	(11,2)	--BALANCE TOTAL 
,	VEHICULO_LEGAL            	VARCHAR	(3)	--VEHICULO_LEGAL 
,	LOAD_DATE	DATE null default getdate()		--FECHA DE CARGA
); COMMIT;	 	 		
