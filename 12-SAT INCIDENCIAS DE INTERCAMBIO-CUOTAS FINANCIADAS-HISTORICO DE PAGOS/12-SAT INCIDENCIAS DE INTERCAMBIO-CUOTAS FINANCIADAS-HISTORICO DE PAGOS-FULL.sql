--- creacion de grupo de usuarios SAT
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'SAT')
BEGIN
  CREATE USER SAT 
  FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

--- creacion de grupo de usuarios STG_SAT
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'STG_SAT')
BEGIN
  CREATE USER STG_SAT
  FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

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
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBFINCUO;  CREATE TABLE IF NOT EXISTS SAT.TBFINCUO  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT206-Cuotas Financiadas	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	CODTIPC 	VARCHAR	(4)	--Código de tipo de compra en cuotas 
,	NUMOPECUO 	DECIMAL	(6,0)	--Número de operación en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--Número de financiación 
,	PORINT  	DECIMAL	(7,4)	--Porcentaje de interés aplicado 
,	TOTCUOTAS 	DECIMAL	(9,0)	--Número total de cuotas 
,	IMPCUOTA 	DECIMAL	(17,2)	--Importe de la cuota 
,	NUMCUOPAG 	DECIMAL	(9,0)	--Número de cuotas pagadas 
,	NUMMESFIN 	VARCHAR	(12)	--Meses de financiación 
,	IMPTOTAL 	DECIMAL	(17,2)	--Importe total a pagar 
,	IMPINTTOTAL 	DECIMAL	(17,2)	--Importe de intereses total a pagar 
,	IMPAMORT 	DECIMAL	(17,2)	--Importe de capital amortizado 
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
,	NUMULTCUO  	DECIMAL	(9,0)	--Número de última cuota 
,	INTCARPTE 	DECIMAL	(17,2)	--Intereses de carencia pendientes 
,	ESTCONT 	DECIMAL	(1,0)	--Estado contable.    
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBPAGHIS;  CREATE TABLE IF NOT EXISTS SAT.TBPAGHIS  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT125-Historico de Pago	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMEXTPG 	DECIMAL	(15,0)	--Número de extracto del pago 
--- Se corresponderá con el número de extracto o el número de secuencia del impago en función del tipo de deuda. 	 	 		
,	NUMMOVPG 	DECIMAL	(7,0)	--Número de movimiento 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	TIPDEU 	VARCHAR	(2)	--Tipo de deuda 
--EX – Extracto 	 	 		
--IE – Impago reflejado en extracto 	 	 		
--IM – Impago 	 	 		
--OV – Operaciones vivas 	 	 		
--TS – Conversión de pago por saldo acreedor en distinta moneda 	 	 		
--AI – Amortización de abonos en liquidación sobre deuda impagada. 	 	 		
--AO – Amortización de abonos en liquidación sobre operaciones vivas. 	 	 		
--AE – Amortización de abonos en liquidación sobre deuda del extracto. 	 	 		
--PA – Traspaso de pago pendiente a saldo acreedor. 	 	 		
--PI – Amortización de pagos en liquidación sobre deuda impagada. 	 	 		
--PO – Amortización de pagos en liquidación sobre operaciones vivas. 	 	 		
--PE – Amortización de pagos en liquidación sobre deuda del extracto. 	 	 		
,	TIPOLIN 	VARCHAR	(4)	--Tipo de línea 
,	TIPIMP 	DECIMAL	(2,0)	--Tipo de importe: 
--01  – Capital 	 	 		
--02  – Comisiones 	 	 		
--03  – Intereses 	 	 		
--04  – Impuestos 	 	 		
--05  - Comisiones morosidad 	 	 		
--06  - Intereses morosidad 	 	 		
--07  - Impuestos morosidad 	 	 		
--08  - Seguros 	 	 		
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de operación normal o correctora: 
--0  – normal 	 	 		
--1  – correctora 	 	 		
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
--01  – Capital 	 	 		
--02  – Comisiones 	 	 		
--03  – Intereses 	 	 		
--04  – Impuestos 	 	 		
--05  - Comisiones morosidad 	 	 		
--06  - Intereses morosidad 	 	 		
--07  - Impuestos morosidad 	 	 		
--08  - Seguros 	 	 		
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		


drop table IF EXISTS STG_SAT.TBINCINT;  CREATE TABLE IF NOT EXISTS STG_SAT.TBINCINT  (
--MPDT096-Incidencias	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
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
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBFINCUO;  CREATE TABLE IF NOT EXISTS STG_SAT.TBFINCUO  (
--MPDT206-Cuotas Financiadas	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	CODTIPC 	VARCHAR	(4)	--Código de tipo de compra en cuotas 
,	NUMOPECUO 	DECIMAL	(6,0)	--Número de operación en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--Número de financiación 
,	PORINT  	DECIMAL	(7,4)	--Porcentaje de interés aplicado 
,	TOTCUOTAS 	DECIMAL	(9,0)	--Número total de cuotas 
,	IMPCUOTA 	DECIMAL	(17,2)	--Importe de la cuota 
,	NUMCUOPAG 	DECIMAL	(9,0)	--Número de cuotas pagadas 
,	NUMMESFIN 	VARCHAR	(12)	--Meses de financiación 
,	IMPTOTAL 	DECIMAL	(17,2)	--Importe total a pagar 
,	IMPINTTOTAL 	DECIMAL	(17,2)	--Importe de intereses total a pagar 
,	IMPAMORT 	DECIMAL	(17,2)	--Importe de capital amortizado 
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
,	NUMULTCUO  	DECIMAL	(9,0)	--Número de última cuota 
,	INTCARPTE 	DECIMAL	(17,2)	--Intereses de carencia pendientes 
,	ESTCONT 	DECIMAL	(1,0)	--Estado contable.    
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBPAGHIS;  CREATE TABLE IF NOT EXISTS STG_SAT.TBPAGHIS  (
--MPDT125-Historico de Pago	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMEXTPG 	DECIMAL	(15,0)	--Número de extracto del pago 
--- Se corresponderá con el número de extracto o el número de secuencia del impago en función del tipo de deuda. 	 	 		
,	NUMMOVPG 	DECIMAL	(7,0)	--Número de movimiento 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	TIPDEU 	VARCHAR	(2)	--Tipo de deuda 
--EX – Extracto 	 	 		
--IE – Impago reflejado en extracto 	 	 		
--IM – Impago 	 	 		
--OV – Operaciones vivas 	 	 		
--TS – Conversión de pago por saldo acreedor en distinta moneda 	 	 		
--AI – Amortización de abonos en liquidación sobre deuda impagada. 	 	 		
--AO – Amortización de abonos en liquidación sobre operaciones vivas. 	 	 		
--AE – Amortización de abonos en liquidación sobre deuda del extracto. 	 	 		
--PA – Traspaso de pago pendiente a saldo acreedor. 	 	 		
--PI – Amortización de pagos en liquidación sobre deuda impagada. 	 	 		
--PO – Amortización de pagos en liquidación sobre operaciones vivas. 	 	 		
--PE – Amortización de pagos en liquidación sobre deuda del extracto. 	 	 		
,	TIPOLIN 	VARCHAR	(4)	--Tipo de línea 
,	TIPIMP 	DECIMAL	(2,0)	--Tipo de importe: 
--01  – Capital 	 	 		
--02  – Comisiones 	 	 		
--03  – Intereses 	 	 		
--04  – Impuestos 	 	 		
--05  - Comisiones morosidad 	 	 		
--06  - Intereses morosidad 	 	 		
--07  - Impuestos morosidad 	 	 		
--08  - Seguros 	 	 		
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de operación normal o correctora: 
--0  – normal 	 	 		
--1  – correctora 	 	 		
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
--01  – Capital 	 	 		
--02  – Comisiones 	 	 		
--03  – Intereses 	 	 		
--04  – Impuestos 	 	 		
--05  - Comisiones morosidad 	 	 		
--06  - Intereses morosidad 	 	 		
--07  - Impuestos morosidad 	 	 		
--08  - Seguros 	 	 		
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		


------------------------------------------------
---- CONTROL DE VERSION ------------------------
------------------------------------------------
create table IF NOT EXISTS CNF.VERSION_OBJETOS (
 NOMBRE_MALLA varchar(100)
,OBJECT_NAME varchar(100)
,OBJECT_USER varchar(20)
,VERSION_COMMIT VARCHAR(100)
,VERSION_CODE VARCHAR(20)
,VERSION_DATE DATETIME
,CRDATE DATETIME null default getdate()
,CRUSER varchar(20) null default user_name()
)
;
COMMIT;

declare 
 @NOMBRE_MALLA varchar(100)
,@OBJECT_NAME varchar(100)
,@OBJECT_USER varchar(20)
,@VERSION_COMMIT VARCHAR(100)
,@VERSION_CODE VARCHAR(20)
,@VERSION_DATE DATETIME 
,@CRDATE DATETIME

select 
 @NOMBRE_MALLA = 'N/A.SAT-TABLAS VARIAS'
,@OBJECT_NAME = 'TBINCINT'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '1ed3eb78899734e14d597abf39d2c6dfb77470d0'
,@VERSION_CODE = '1ed3eb7'
,@VERSION_DATE = 'February 5, 2019 9:00:43 AM'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
@OBJECT_NAME = 'TBFINCUO'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
@OBJECT_NAME = 'TBPAGHIS'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @NOMBRE_MALLA = 'N/A.SAT-TABLAS VARIAS'
,@OBJECT_NAME = 'TBINCINT'
,@OBJECT_USER = 'STG_SAT'
,@VERSION_COMMIT = '1ed3eb78899734e14d597abf39d2c6dfb77470d0'
,@VERSION_CODE = '1ed3eb7'
,@VERSION_DATE = 'February 5, 2019 9:00:43 AM'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
@OBJECT_NAME = 'TBFINCUO'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
@OBJECT_NAME = 'TBPAGHIS'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

COMMIT;