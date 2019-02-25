drop table IF EXISTS SAT.TBINCINT;  CREATE TABLE IF NOT EXISTS SAT.TBINCINT  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT096-Incidencias	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	NUMINC 	DECIMAL	(9,0)	--Número de incidencia 
,	NUMEXP 	DECIMAL	(9,0)	--Número de expediente 
,	CODREG 	DECIMAL	(2,0)	--Código de registro: 
--1        - Incidencia de incoming e incidencias en estudio (extracto) 	 	 		
--2        - Error de incoming e incidencias de comercio 	 	 		
-- 	 	 		
,	NUMREFREM 	DECIMAL	(10,0)	--Número de referencia de la remesa 
,	NUMREFFACREM 	DECIMAL	(5,0)	--Número de referencia de la factura en la remesa 
,	INDAJENA 	VARCHAR	(1)	--Indicador de tarjeta ajena (S/N) 
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de normal o correctora:  
--0 - Normal    1 – Correctora 	 	 		
,	TIPOFAC 	DECIMAL	(4,0)	--Tipo de factura 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta que realizó la operación. El valor de este campo deberá almacenarse justificado a la izquierda 
,	TIPFRAN 	DECIMAL	(4,0)	--Código de la franquicia 
,	SECOPE 	DECIMAL	(12,0)	--Secuencia de operación 
,	NUMREF 	VARCHAR	(23)	--Número de referencia 
,	FECFAC 	DATE		--Fecha de la factura 
,	NUMAUT 	VARCHAR	(6)	--Número de autorización 
,	NOMCOMRED 	VARCHAR	(27)	--Nombre reducido del comercio 
,	CODCOM 	VARCHAR	(15)	--Código de comercio 
,	CODACT 	DECIMAL	(4,0)	--Código de actividad 
,	INDDEBCRE 	DECIMAL	(1,0)	--Indicador débito/crédito 
,	CLAMONDIV 	DECIMAL	(3,0)	--Código de moneda de la divisa original 
,	FECCMB 	DATE		--Fecha de cambio 
,	CMBAPLI 	DECIMAL	(9,4)	--Factor de cambio aplicado 
,	IMPDIV 	DECIMAL	(17,2)	--Importe en divisa original 
,	IMPLIQ 	DECIMAL	(17,2)	--Importe de liquidación de la operación con el intercambio 
,	CLAMONLIQ 	DECIMAL	(3,0)	--Código de moneda de liquidación con el intercambio 
,	POBCOM 	VARCHAR	(24)	--Población del comercio 
--	 	 		
,	FECALTAINC 	DATE		--Fecha de alta de la incidencia 
,	TIPOINC 	DECIMAL	(3,0)	--Tipo de incidencia 
,	MOTINC 	DECIMAL	(2,0)	--Motivo de la incidencia 
,	INDERROR 	VARCHAR	(16)	--Indicador de error 
,	CODRAZ 	DECIMAL	(4,0)	--Código de razón 
,	CODSOLINC 	DECIMAL	(2,0)	--Código de solución de incidencia 
,	TIPOSOL 	DECIMAL	(2,0)	--Tipo de solución contable de la incidencia 
,	FECSOLINC 	DATE		--Fecha de solución de la incidencia 
,	FECLIQ 	DATE		--Fecha de liquidación a la red o franquicia 
,	CODFUNFRAN 	DECIMAL	(3,0)	--Código de función de la franquicia 
,	INDCHAPAR 	VARCHAR	(1)	--Indicador de chargeback parcial (S/N) 
,	CODACTESP 	DECIMAL	(4,0)	--Código de actividad especial 
,	MODOOBTAUT 	VARCHAR	(2)	--Modo obtención de autorización 
,	TEXTOINICIO 	VARCHAR	(60)	--Texto 
,	NUMCINTA 	DECIMAL	(17,0)	--Secuencia de cinta 
,	INDAPLCOM 	VARCHAR	(1)	--Indicador si la factura se abonó previamente al comercio 
,	INDAPLEXT 	VARCHAR	(1)	--Indicador de aplicación en el extracto del titular 
,	INDORIINC 	VARCHAR	(1)	--Indicador de origen de la incidencia: 
--1  - EXTRACTO         	 	 		
--2  - INCIDENCIAS      	 	 		
--3  - MIGRACION        	 	 		
--4  - COMPRA EN CUOTAS 	 	 		
--5  - COMERCIOS	 	 		
,	INDANUL 	VARCHAR	(1)	--Indicativo de operación anulada 
,	INDRET 	DECIMAL	(1,0)	--Indicador de retención 
,	FECCONTA 	DATE		--Fecha contable 
,	FECCONTASOL 	DATE		--Fecha contable de solución de la incidencia 
,	INDINCPEN 	VARCHAR	(1)	--Indicativo de incidencia pendiente (S/N) 
,	CLAMON 	DECIMAL	(3,0)	--Código de moneda 
,	IMPFAC 	DECIMAL	(17,2)	--Importe de la factura 
,	FECPROCIN 	DATE		--Fecha de proceso de la cinta 
,	CODSUBFRA 	VARCHAR	(1)	--Código de subfunción de la franquicia 
,	CODPAIS 	DECIMAL	(3,0)	--Código del país 
,	CODRAZCHA 	DECIMAL	(4,0)	--Código de razón del chargeback 
,	INDCOMINC 	VARCHAR	(1)	--Indicador de comisión de incidencia 
,	INDCOMPCUO 	VARCHAR	(1)	--Indicador de compra en cuotas 
,	CODTIPC 	VARCHAR	(4)	--Tipo de compra en cuotas 
,	TOTCUOTAS 	DECIMAL	(9,0)	--Numero de cuotas totales 
,	MESCARCUO 	DECIMAL	(2,0)	--Numero de meses de carencia 
,	PORINT 	DECIMAL	(7,4)	--Porcentaje de interés 
,	SIAIDCD 	VARCHAR	(19)	--Código de identificación SIA 
,	NUMOPECUO 	DECIMAL	(6,0)	--Número de operación en compra en cuotas 
,	CODTERM 	VARCHAR	(16)	--Código de Terminal 
,	LINREF 	DECIMAL	(8,0)	--Referencia de la línea 
,	FORPAGO 	DECIMAL	(2,0)	--Forma de pago de la operación en el origen 
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		