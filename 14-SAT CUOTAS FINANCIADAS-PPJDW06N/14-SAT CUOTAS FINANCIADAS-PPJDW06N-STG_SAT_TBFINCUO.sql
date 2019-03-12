drop table IF EXISTS STG_SAT.TBFINCUO;  CREATE TABLE IF NOT EXISTS STG_SAT.TBFINCUO  (
--MPDT206-Cuotas Financiadas	 	 		
	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	CODTIPC 	VARCHAR	(4)	--Código de tipo de compra en cuotas 
,	NUMOPECUO 	DECIMAL	(6,0)	--Número de operación en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--Número de financiación 
,	PORINT	DECIMAL	(7,4)	--Porcentaje de interés aplicado 
,	TOTCUOTAS	DECIMAL	(9,0)	--Número total de cuotas 
,	IMPCUOTA	DECIMAL	(17,2)	--Importe de la cuota 
,	NUMCUOPAG	DECIMAL	(9,0)	--Número de cuotas pagadas 
,	NUMMESFIN	VARCHAR	(12)	--Meses de financiación 
,	IMPTOTAL	DECIMAL	(17,2)	--Importe total a pagar 
,	IMPINTTOTAL	DECIMAL	(17,2)	--Importe de intereses total a pagar 
,	IMPAMORT	DECIMAL	(17,2)	--Importe de capital amortizado 
,	IMPINTAMORT 	DECIMAL	(17,2)	--Importe de intereses amortizado 
,	FECULTLIQ 	DATE		--Fecha de última liquidación 
,	FECALTA 	DATE		--Fecha de alta 
,	FECBAJA 	DATE		--Fecha de baja 
,	MOTBAJA  	VARCHAR	(2)	--Motivo de baja del número de financiación: 
--01  - Amortización anticipada 	 	 		
--02  - Modificación del número de cuotas 	 	 		
--03  - Cancelación de compra en cuotas 	 	 		
--04  - Fusión de n compras en cuotas 	 	 		
--05  - Cancelada por cartera-vencida 	 	 		
--06  - Generada Incidencia 	 	 		
--07  – Refinanciada 	 	 		
--08  – Acelerada 	 	 		
--09  – Uso Software Regional. 	 	 		
--10  – Uso Software Regional. 	 	 		
--11  – Anulacion de Compra en cuotas. 	 	 		
--12  - Reversada 	 	 		
--20 a 30 - Reservado para Uso del Clliente.  	 	 		
,	NUMULTCUO	DECIMAL	(9,0)	--Número de última cuota 
,	INTCARPTE	DECIMAL	(17,2)	--Intereses de carencia pendientes 
,	ESTCONT	DECIMAL	(1,0)	--Estado contable.    
,	FILLER1	VARCHAR	(663)	--FILLER
); COMMIT;	 	 		
