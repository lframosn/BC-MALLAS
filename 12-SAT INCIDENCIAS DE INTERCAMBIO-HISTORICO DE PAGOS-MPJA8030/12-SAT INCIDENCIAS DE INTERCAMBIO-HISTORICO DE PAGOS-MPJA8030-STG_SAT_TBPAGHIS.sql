drop table IF EXISTS STG_SAT.TBPAGHIS;  CREATE TABLE IF NOT EXISTS STG_SAT.TBPAGHIS  (
--MPDT125-Historico de Pago	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMEXTPG 	DECIMAL	(15,0)	--N�mero de extracto del pago 
--- Se corresponder� con el n�mero de extracto o el n�mero de secuencia del impago en funci�n del tipo de deuda. 	 	 		
,	NUMMOVPG 	DECIMAL	(7,0)	--N�mero de movimiento 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	TIPDEU 	VARCHAR	(2)	--Tipo de deuda 
--EX � Extracto 	 	 		
--IE � Impago reflejado en extracto 	 	 		
--IM � Impago 	 	 		
--OV � Operaciones vivas 	 	 		
--TS � Conversi�n de pago por saldo acreedor en distinta moneda 	 	 		
--AI � Amortizaci�n de abonos en liquidaci�n sobre deuda impagada. 	 	 		
--AO � Amortizaci�n de abonos en liquidaci�n sobre operaciones vivas. 	 	 		
--AE � Amortizaci�n de abonos en liquidaci�n sobre deuda del extracto. 	 	 		
--PA � Traspaso de pago pendiente a saldo acreedor. 	 	 		
--PI � Amortizaci�n de pagos en liquidaci�n sobre deuda impagada. 	 	 		
--PO � Amortizaci�n de pagos en liquidaci�n sobre operaciones vivas. 	 	 		
--PE � Amortizaci�n de pagos en liquidaci�n sobre deuda del extracto. 	 	 		
,	TIPOLIN 	VARCHAR	(4)	--Tipo de l�nea 
,	TIPIMP 	DECIMAL	(2,0)	--Tipo de importe: 
--01� � Capital 	 	 		
--02� � Comisiones 	 	 		
--03� � Intereses 	 	 		
--04� � Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de operaci�n normal o correctora: 
--0� � normal 	 	 		
--1� � correctora 	 	 		
,	NUMREFAPL 	DECIMAL	(15,0)	--Dependiendo del tipo de deuda, se almacena el n�mero de recibo impagado, para IM, o n�mero de movimiento del extracto, para OV, donde se amortiza el pago 
,	IMPSALDIS 	DECIMAL	(17,2)	--Importe aplicado  al saldo dispuesto de cada l�nea por tipo de importe 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado al tipo de importe 
,	IMPRECAPL 	DECIMAL	(17,2)	--Importe aplicado al recibo 
,	NUMSECREC 	DECIMAL	(15,0)	--N�mero de secuencia del recibo 
,	IMPAPLAPL 	DECIMAL	(17,2)	--Importe aplicado al saldo aplazado 
,	FECAPL 	DATE		--Fecha de aplicaci�n del pago 
,	NUMORDEN 	DECIMAL	(3,0)	--N�mero de orden de aplicaci�n 
,	TIPOLINORI 	VARCHAR	(4)	--Tipo de l�nea origen 
,	TIPIMPORI 	DECIMAL	(2,0)	--Tipo de importe origen: 
--01� � Capital 	 	 		
--02� � Comisiones 	 	 		
--03� � Intereses 	 	 		
--04� � Impuestos 	 	 		
--05� - Comisiones morosidad 	 	 		
--06� - Intereses morosidad 	 	 		
--07� - Impuestos morosidad 	 	 		
--08� - Seguros 	 	 		
); COMMIT;	 	 		