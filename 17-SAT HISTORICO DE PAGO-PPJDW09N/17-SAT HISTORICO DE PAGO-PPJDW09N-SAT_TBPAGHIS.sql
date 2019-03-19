drop table IF EXISTS SAT.TBPAGHIS;  CREATE TABLE IF NOT EXISTS SAT.TBPAGHIS  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT125-Historico de Pago	 	 		
,	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMEXTPG 	DECIMAL	(15,0)	--Número de extracto del pago 
--- Se corresponderá con el número de extracto o el número de secuencia del impago en función del tipo de deuda. 	 	 		
,	NUMMOVPG 	DECIMAL	(7,0)	--Número de movimiento 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	TIPDEU 	VARCHAR	(2)	--Tipo de deuda 
--EX - Extracto 	 	 		
--IE - Impago reflejado en extracto 	 	 		
--IM - Impago 	 	 		
--OV - Operaciones vivas 	 	 		
--TS - Conversión de pago por saldo acreedor en distinta moneda 	 	 		
--AI - Amortización de abonos en liquidación sobre deuda impagada. 	 	 		
--AO - Amortización de abonos en liquidación sobre operaciones vivas. 	 	 		
--AE - Amortización de abonos en liquidación sobre deuda del extracto. 	 	 		
--PA - Traspaso de pago pendiente a saldo acreedor. 	 	 		
--PI - Amortización de pagos en liquidación sobre deuda impagada. 	 	 		
--PO - Amortización de pagos en liquidación sobre operaciones vivas. 	 	 		
--PE - Amortización de pagos en liquidación sobre deuda del extracto. 	 	 		
,	TIPOLIN 	VARCHAR	(4)	--Tipo de línea 
,	TIPIMP 	DECIMAL	(2,0)	--Tipo de importe: 
--01  - Capital 	 	 		
--02  - Comisiones 	 	 		
--03  - Intereses 	 	 		
--04  - Impuestos 	 	 		
--05  - Comisiones morosidad 	 	 		
--06  - Intereses morosidad 	 	 		
--07  - Impuestos morosidad 	 	 		
--08  - Seguros 	 	 		
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de operación normal o correctora: 
--0  - normal 	 	 		
--1  - correctora 	 	 		
,	NUMREFAPL 	DECIMAL	(15,0)	--Dependiendo del tipo de deuda, se almacena el número de recibo impagado, para IM, o número de movimiento del extracto, para OV, donde se amortiza el pago 
,	IMPSALDIS 	DECIMAL	(17,2)	--Importe aplicado  al saldo dispuesto de cada línea por tipo de importe 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado al tipo de importe 
,	IMPRECAPL 	DECIMAL	(17,2)	--Importe aplicado al recibo 
,	NUMSECREC 	DECIMAL	(15,0)	--Número de secuencia del recibo 
,	IMPAPLAPL 	DECIMAL	(17,2)	--Importe aplicado al saldo aplazado 
,	FECAPL 	DATE		--Fecha de aplicación del pago 
,	NUMORDEN 	DECIMAL	(3,0)	--Número de orden de aplicación 
,	TIPOLINORI 	VARCHAR	(4)	--Tipo de línea origen 
,	TIPIMPORI 	DECIMAL	(2,0)	--Tipo de importe origen: 
--01  - Capital 	 	 		
--02  - Comisiones 	 	 		
--03  - Intereses 	 	 		
--04  - Impuestos 	 	 		
--05  - Comisiones morosidad 	 	 		
--06  - Intereses morosidad 	 	 		
--07  - Impuestos morosidad 	 	 		
--08  - Seguros 	 	 		
,	FILLER1	VARCHAR	(709)	--FILLER
); COMMIT;	 	 		
