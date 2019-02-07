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

drop table IF EXISTS SAT.TBCODBLQ;  CREATE TABLE IF NOT EXISTS SAT.TBCODBLQ  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT060 - BLOQUEOS	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo 
,	DESBLQ 	VARCHAR	(30)	--Descripción del bloqueo 
,	DESBLQRED 	VARCHAR	(10)	--Descripción reducida del bloqueo 
,	INDAPLEMISOR 	VARCHAR	(1)	--Indicador de aplicación en vertiente emisor:
--C – Contrato de tarjeta	 	 		
--T – Tarjeta	 	 		
--A – Ambos	 	 		
,	CODBLQSIA 	VARCHAR	(2)	--Código de bloqueo para el SIA o Switch:
--‘00’ – Tarjeta operativa	 	 		
--‘01’ – Denegar sin retener	 	 		
--‘02’ – Denegar en respaldo	 	 		
--‘03’ – Retener tarjeta	 	 		
--‘06’- Denegar tarjeta robada	 	 		
--‘07’- Denegar tarjeta perdida	 	 		
--‘08’- Sospechoso fraude	 	 		
,	INDBLQOPE 	VARCHAR	(1)	--Bloquea operatividad:
--N: Sin bloqueo	 	 		
--S: Bloqueo de Operaciones	 	 		
--T: Bloqueo de Operaciones y Pagos	 	 		
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovación:
--0 – Sí renovar	 	 		
--1 – No renovar	 	 		
,	INDENVRED 	VARCHAR	(1)	--Indicador de envío a red o franquicia (S/N) 
,	INDGENCUO 	VARCHAR	(1)	--Indicador de generación de cuota 
,	INDBONCUO 	VARCHAR	(1)	--Indicador de bonificación de cuota 
,	INDBLQCON 	VARCHAR	(1)	--Indicador bloqueo consulta (S/N) 
,	INDBLQLIQ 	VARCHAR	(1)	--Indicador de bloqueo de liquidación (S/N) 
,	PESO 	DECIMAL	(2,0)	--Peso del bloqueo 
,	INDREVER 	VARCHAR	(1)	--Indicador de reversibilidad (S/N) 
,	INDREEM 	VARCHAR	(1)	--Indicador de permiso de reemisión para el estado (S/N) 
,	INDCMBPAN 	VARCHAR	(1)	--Indicador de cambio de PAN en la reemisión de la tarjeta (S/N) 
,	INDLIQDEU 	VARCHAR	(1)	--Indicador de aceleración de deuda al extracto pendiente 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBBLQCTA;  CREATE TABLE IF NOT EXISTS SAT.TBBLQCTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT178 - Bloqueos de Cuenta o Contrato de Tarjeta	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo 
,	FECULTBLQ 	DATE		--Fecha de último bloqueo 
,	TEXBLQ  	VARCHAR	(30)	--Comentario del bloqueo 
--	 	 		
,	INDBLQEXT 	VARCHAR	(1)	--Indicador de bloqueo:
--E – Externo	 	 		
--M – Manual	 	 		
--A – Automático	 	 		
,	MOTBLQ 	DECIMAL	(2,0)	--Motivo de Bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación  
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación  
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación    
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación    
,	CONTCUR 	TIMESTAMP		--Control de concurrencia  
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBHISMOD;  CREATE TABLE IF NOT EXISTS SAT.TBHISMOD  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT068-Histórico de Modificaciones	 	 		
,	CODENT_ENC	VARCHAR	(4)	--Código de entidad
,	OFICINA	VARCHAR	(4)	--Oficina Usuario
,	USUARIO	VARCHAR	(8)	--Usuario que realiza la acción
,	TIPO_ACCION	VARCHAR	(30)	--Acción realizada por el usuario
,	TIPO_REGISTRO	VARCHAR	(1)	--REGISTRO DETALLE (alfanumerico 2300)
--1 - Log Movimientos formato  ATLOGMOV	 	 		
--2 – Histórico Modificaciones formato ATHISMOD	 	 		
--DETALLE DE COLUMNAS ATHISMOD	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECHIS 	DECIMAL	(15,0)	--Número secuencial del histórico 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deberá almacenarse justificado a la izquierda 
,	CODCOM 	VARCHAR	(15)	--Código de comercio 
,	FECHAMOD 	DATE		--Fecha de modificación 
,	HORAMOD 	TIME		--Hora de modificación 
,	TIPACCES 	DECIMAL	(1,0)	--Tipo de acceso: 
--0  – Cuenta de tarjeta 	 	 		
--1  – Tarjeta 	 	 		
--2  – Comercio 	 	 		
,	PROCESO 	VARCHAR	(10)	--Nombre del proceso que realizó la modificación 
,	DESPROCESO 	VARCHAR	(30)	--Descripción del proceso o función 
,	DATOMOD 	VARCHAR	(2)	--Dato modificado (bancos, bloqueos, …) 
,	MOTIVO 	VARCHAR	(2)	--Motivo de la modificación 
,	CANALMOD 	VARCHAR	(2)	--Canal de la modificación (en persona, teléfono …) 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	TABLA 	VARCHAR	(3)	--Nombre de tabla modificada 
,	REGANT 	VARCHAR	(1024)	--Registro anterior 
,	REGACT 	VARCHAR	(1024)	--Registro actual 
,	FILLER1	VARCHAR	(62)	--FILLER
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
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
drop table IF EXISTS SAT.TBDETCUO;  CREATE TABLE IF NOT EXISTS SAT.TBDETCUO  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT207-Detalle de cuotas	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
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
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBTARJET;  CREATE TABLE IF NOT EXISTS SAT.TBTARJET  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT009-Tarjetas	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CODMAR 	DECIMAL	(2,0)	--Marca de la tarjeta 
,	INDTIPT 	DECIMAL	(2,0)	--Tipo de la tarjeta 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMBENCTA 	DECIMAL	(5,0)	--Número de beneficiario dentro de la cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--Número de plástico   
,	TIPBON 	VARCHAR	(6)	--Tipo de bonificación 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deberá almacenarse justificado a la izquierda   
,	PANANT 	VARCHAR	(22)	--PAN anterior. El valor de este campo deberá almacenarse justificado a la izquierda        
,	FECALTA 	DATE		--Fecha de alta de la tarjeta 
,	FECULTUSO 	DATE		--Fecha de última utilización de la tarjeta 
,	INDSITTAR 	DECIMAL	(2,0)	--Indicador de situación (ver tabla) 
,	INDULTTAR 	VARCHAR	(2)	--Indicador de última tarjeta (S/N) 
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovación: 
--0  - Sí renovar 	 	 		
--1  - No renovar 	 	 		
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo                 
,	FECULTBLQ 	DATE		--Fecha de último bloqueo           
,	TEXBLQ 	VARCHAR	(30)	--Comentario de bloqueo             
,	FECBAJA 	DATE		--Fecha de baja                    
,	MOTBAJA 	VARCHAR	(2)	--Motivo de baja                    
,	FECCADTAR 	DECIMAL	(6,0)	--Fecha de caducidad de la tarjeta (AAAAMM) 
,	FECCADTARANT 	DECIMAL	(6,0)	--Fecha de caducidad anterior de la tarjeta (AAAAMM) 
,	FECCOBCUO 	DECIMAL	(6,0)	--Fecha de próximo cobro cuota de tarjeta (AAAAMM) 
,	OFFSET1  	DECIMAL	(4,0)	--Offset 1 del PIN 
,	OFFSET2 	DECIMAL	(4,0)	--Offset 2 del PIN 
,	PVV1 	VARCHAR	(4)	--PVV1 
,	PVV2  	VARCHAR	(4)	--PVV2 
--	 	 		
,	CODCLAVE 	VARCHAR	(3)	--Código de grupo criptográfico 
,	CODCLVANT 	VARCHAR	(3)	--Código de grupo criptográfico anterior 
,	NUMACT1 	DECIMAL	(1,0)	--Número de orden actual PIN 1 
,	NUMACT2 	DECIMAL	(1,0)	--Número de orden actual PIN 2 
,	NUMANT1 	DECIMAL	(1,0)	--Número de orden anterior PIN 1 
,	NUMANT2 	DECIMAL	(1,0)	--Número de orden anterior PIN 2 
,	INDCAMLIM 	VARCHAR	(1)	--Indicador de si afecta el cambio masivo de límites (S/N) 
,	INDACTLIM 	VARCHAR	(1)	--Indicador de ampliación de disponible de tarjeta con saldo acreedor y movimientos de pago:  
--0              -El saldo acreedor de contrato y los pagos no afectan al disponible de tarjeta  	 	 		
--1              -El saldo acreedor de contrato no afectan al disponible de restricciones de tarjeta, los pagos si afectan al disponible de tarjeta 	 	 		
--2- El saldo acreedor afecta al disponible de restricciones de tarjeta, los pagos no afectan al disponible de tarjeta 	 	 		
--3-Los pagos y el saldo acreedor afectan al disponible de tarjeta.  	 	 		
-- 	 	 		
,	INDRESACT 	VARCHAR	(1)	--Indicador de restricción por sector de actividad (S/N) 
,	INDRESCOM 	VARCHAR	(1)	--Indicador de restricción por comercio (S/N) 
,	INDLIMFAC 	VARCHAR	(1)	--Indicador de restricción por importe de operación (S/N) 
,	VISAPHONE 	DECIMAL	(4,0)	--Código VISAPHONE 
,	NUMKPIN 	DECIMAL	(2,0)	--Número de intentos de PIN 
,	IDEMPLEADO 	VARCHAR	(20)	--Identificador de empleado. 
,	NOMBENRED 	VARCHAR	(35)	--Nombre de estampación 
,	INDFOTO 	VARCHAR	(1)	--Indicador de foto en plástico (S/N) 
,	REFFOTO 	VARCHAR	(30)	--Referencia de la foto, sólo si el campo anterior está activo 
,	CODBARR 	DECIMAL	(14,0)	--Código de barras  
,	CODPROMO 	VARCHAR	(3)	--Código de promoción 
,	INDEXECUO 	VARCHAR	(1)	--Indicador de exención de compra en cuotas  
--0-Permite compra en cuotas y líneas adicionales 	 	 		
--1-No Permite compra en cuotas ni líneas adicionales 	 	 		
--2-Permite compra en cuotas pero no líneas adicionales 3-Permite líneas adicionales pero no compra en cuotas 	 	 		
-- 	 	 		
,	INDTAREME 	VARCHAR	(1)	--Indicador de tarjeta de emergencia (S/N) 
,	INDAPLIREST 	VARCHAR	(1)	--Indicador de aplicación de restricciones de tarjeta en autorización (S/N) 
,	INDTARPROV  	VARCHAR	(1)	--Indicador de Tarjeta provisional (S/N) 
,	INDTAREMV 	DECIMAL	(1,0)	--Indicador de si la tarjeta es o no EMV: 
--0  - Tarjeta no EMV  	 	 		
--1  - Tarjeta EMV con estampación Interna 	 	 		
--2  - Tarjeta EMV con estampación Externa 	 	 		
,	HORBLQ 	TIME		--Hora de bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBPLASTI;  CREATE TABLE IF NOT EXISTS SAT.TBPLASTI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT008-Plasticos	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--Número de plástico   
,	FECENVEST 	DATE		--Fecha de envío a estampación 
,	FECRECEST 	DATE		--Fecha de rechazo de estampación 
,	FECACUSER 	DATE		--Fecha acuse de recibo 
,	FECULTREN 	DATE		--Fecha última renovación 
,	FECRECTAR 	DATE		--Fecha de recuperación plástico 
,	FCORETTAR 	DATE		--Fecha de comunicación de retención del plástico 
,	HCORETTAR 	TIME		--Hora comunicación de retención del plástico 
,	CONDEST 	VARCHAR	(3)	--Condiciones de estampación 
,	ESTPLAS1 	VARCHAR	(40)	--Datos de estampación a voluntad 
,	ESTPLAS2 	VARCHAR	(40)	--Datos de estampación a voluntad 
,	RELTAR 	VARCHAR	(70)	--Relación de tarjetas emitidas en el plástico. Ver nota a continuación. 
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
drop table IF EXISTS SAT.TBCONGEL;  CREATE TABLE IF NOT EXISTS SAT.TBCONGEL  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT250-Cuentas Congeladas	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECIMP	DECIMAL	(15,0)	--Número de secuencia del recibo impagado con formato 
--AAAAMMDDNNNNNNN 	 	 		
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	IMPORTE 	DECIMAL	(17,2)	--Importe traspasado a congelación 
,	IMPORTETOT 	DECIMAL	(17,2)	--Importe total congelado. Incluye intereses y comisiones por gestión de cobro 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado (cobrado) 
,	FECALTA 	DATE		--Fecha de alta en congelación 
,	FECULTAPL 	DATE		--Fecha de última aplicación pago 
,	FECBAJA 	DATE		--Fecha de baja en congelación 
,	MOTBAJA 	DECIMAL	(2,0)	--Código de motivo de baja 
,	NUMULTMOV 	DECIMAL	(7,0)	--Número de último movimiento 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación 
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación 
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación 
,	CONTCUR 	TIMESTAMP		--Control de concurrencia 
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBCUOMEM;  CREATE TABLE IF NOT EXISTS SAT.TBCUOMEM  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--PCDT048-Cuota membresia	 	 		
,	CODENT	VARCHAR	(4)	--Código de entidad
,	CENTALTA	VARCHAR	(4)	--Centro de alta cuenta de tarjeta
,	CUENTA	VARCHAR	(12)	--Cuenta de tarjeta
,	NUMBENCTA	DECIMAL	(5,0)	--Número de beneficiario dentro de la cuenta de tarjeta
,	FECALTA	DATE		--Fecha de Activación de la Tarjeta
,	CODMAR	DECIMAL	(2,0)	--Código de marca de tarjeta
,	INDTIPT	DECIMAL	(2,0)	--Indicador de tipo de tarjeta
,	FECCARGO	DATE		--Fecha de siguiente cargo
,	CODENTUMO	VARCHAR	(4)	--Entidad última modificación
,	CODOFIUMO	VARCHAR	(4)	--Oficina última modificación
,	USUARIOUMO	VARCHAR	(8)	--Usuario última modificación
,	CODTERMUMO	VARCHAR	(8)	--Terminal última modificación
,	CONTCUR	TIMESTAMP		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS SAT.TBMEDENV_ECTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--PCDT420-Medios de envio de estados de cuenta	 	 		
,	CODENT	VARCHAR	(4)	--Código de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--Número de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de envío
--‘EM’ – E-Mail	 	 		
--‘CO’- Correo	 	 		
--‘AM’- Ambos	 	 		
--‘NO’- Sin medio de envío	 	 		
,	EMAIL	VARCHAR	(30)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--Código de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripción de la oficina de abogados
,	CODVIAJFRE	VARCHAR	(25)	--Código de viajero frecuente
,	FECALTAVIAJ	VARCHAR	(10)	--Fecha de alta código de viajero frecuente
,	INDCLICUMM	VARCHAR	(1)	--Indicador cliente cumplido para mora (S/N)
,	INDCLICUMC	VARCHAR	(1)	--Indicador de cliente cumplido para consumos
--N – No Cumple	 	 		
--C – Cliente cumplidor	 	 		
--M – Cliente medio cumplidor	 	 		
,	FECCLICUM	VARCHAR	(10)	--Fecha última actualización cliente cumplido
,	CLASIFRISAT	VARCHAR	(2)	--Clasificación de riesgo SAT
,	CLASIFRIREG	VARCHAR	(2)	--Clasificación de riesgo regulatorios
,	CLASIFRIMDE	DECIMAL	(5,0)	--Clasificación de riesgo motor de decisión
,	TASAEFECMAX	DECIMAL	(7,4)	--Tasa efectiva máxima
,	REFEXTCONTR	VARCHAR	(25)	--Referencia externa de contrato
,	CONPRODT	VARCHAR	(3)	--Condición Económica temporal
,	FECCETINI	DATE		--Fecha inicio Cond. Econ. Temporal
,	FECCETFIN	DATE		--Fecha fin Cond. Econ. Temporal
,	CONPRODO	VARCHAR	(3)	--Condición Económica original del contrato
,	TASAFINAN	DECIMAL	(7,4)	--Tasa de financiamiento
,	CODENTUMO	VARCHAR	(4)	--Entidad última modificación
,	CODOFIUMO	VARCHAR	(4)	--Oficina última modificación
,	USUARIOUMO	VARCHAR	(8)	--Usuario última modificación
,	CODTERMUMO	VARCHAR	(8)	--Terminal última modificación
,	CONTCUR	Timestamp		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBCONBUS;  CREATE TABLE IF NOT EXISTS SAT.TBCONBUS  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT142-Relacion de contratos de tarjeta con estructura business	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBUS 	DECIMAL	(8,0)	--Código de Estructura Business 
,	CODELEMENTO 	DECIMAL	(4,0)	--Código de Elemento dentro de la Estructura Business 
,	TIPROLCUENTA 	VARCHAR	(1)	--Tipo de rol de la cuenta en la estructura business:
--U = Cuenta de control de cuotas o actividad (única)	 	 		
--E = Cuenta de empleado	 	 		
,	FECALTA 	DATE		--Fecha de alta 
,	FECBAJA 	DATE		--Fecha de baja 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		


drop table IF EXISTS STG_SAT.TBCODBLQ;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCODBLQ  (
--MPDT060 - BLOQUEOS	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo 
,	DESBLQ 	VARCHAR	(30)	--Descripción del bloqueo 
,	DESBLQRED 	VARCHAR	(10)	--Descripción reducida del bloqueo 
,	INDAPLEMISOR 	VARCHAR	(1)	--Indicador de aplicación en vertiente emisor:
--C – Contrato de tarjeta	 	 		
--T – Tarjeta	 	 		
--A – Ambos	 	 		
,	CODBLQSIA 	VARCHAR	(2)	--Código de bloqueo para el SIA o Switch:
--‘00’ – Tarjeta operativa	 	 		
--‘01’ – Denegar sin retener	 	 		
--‘02’ – Denegar en respaldo	 	 		
--‘03’ – Retener tarjeta	 	 		
--‘06’- Denegar tarjeta robada	 	 		
--‘07’- Denegar tarjeta perdida	 	 		
--‘08’- Sospechoso fraude	 	 		
,	INDBLQOPE 	VARCHAR	(1)	--Bloquea operatividad:
--N: Sin bloqueo	 	 		
--S: Bloqueo de Operaciones	 	 		
--T: Bloqueo de Operaciones y Pagos	 	 		
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovación:
--0 – Sí renovar	 	 		
--1 – No renovar	 	 		
,	INDENVRED 	VARCHAR	(1)	--Indicador de envío a red o franquicia (S/N) 
,	INDGENCUO 	VARCHAR	(1)	--Indicador de generación de cuota 
,	INDBONCUO 	VARCHAR	(1)	--Indicador de bonificación de cuota 
,	INDBLQCON 	VARCHAR	(1)	--Indicador bloqueo consulta (S/N) 
,	INDBLQLIQ 	VARCHAR	(1)	--Indicador de bloqueo de liquidación (S/N) 
,	PESO 	DECIMAL	(2,0)	--Peso del bloqueo 
,	INDREVER 	VARCHAR	(1)	--Indicador de reversibilidad (S/N) 
,	INDREEM 	VARCHAR	(1)	--Indicador de permiso de reemisión para el estado (S/N) 
,	INDCMBPAN 	VARCHAR	(1)	--Indicador de cambio de PAN en la reemisión de la tarjeta (S/N) 
,	INDLIQDEU 	VARCHAR	(1)	--Indicador de aceleración de deuda al extracto pendiente 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBBLQCTA;  CREATE TABLE IF NOT EXISTS STG_SAT.TBBLQCTA  (
--MPDT178 - Bloqueos de Cuenta o Contrato de Tarjeta	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo 
,	FECULTBLQ 	DATE		--Fecha de último bloqueo 
,	TEXBLQ  	VARCHAR	(30)	--Comentario del bloqueo 
--	 	 		
,	INDBLQEXT 	VARCHAR	(1)	--Indicador de bloqueo:
--E – Externo	 	 		
--M – Manual	 	 		
--A – Automático	 	 		
,	MOTBLQ 	DECIMAL	(2,0)	--Motivo de Bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación  
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación  
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación    
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación    
,	CONTCUR 	TIMESTAMP		--Control de concurrencia  
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBHISMOD;  CREATE TABLE IF NOT EXISTS STG_SAT.TBHISMOD  (
--MPDT068-Histórico de Modificaciones	 	 		
	CODENT_ENC	VARCHAR	(4)	--Código de entidad
,	OFICINA	VARCHAR	(4)	--Oficina Usuario
,	USUARIO	VARCHAR	(8)	--Usuario que realiza la acción
,	TIPO_ACCION	VARCHAR	(30)	--Acción realizada por el usuario
,	TIPO_REGISTRO	VARCHAR	(1)	--REGISTRO DETALLE (alfanumerico 2300)
--1 - Log Movimientos formato  ATLOGMOV	 	 		
--2 – Histórico Modificaciones formato ATHISMOD	 	 		
--DETALLE DE COLUMNAS ATHISMOD	 	 		
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECHIS 	DECIMAL	(15,0)	--Número secuencial del histórico 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deberá almacenarse justificado a la izquierda 
,	CODCOM 	VARCHAR	(15)	--Código de comercio 
,	FECHAMOD 	DATE		--Fecha de modificación 
,	HORAMOD 	TIME		--Hora de modificación 
,	TIPACCES 	DECIMAL	(1,0)	--Tipo de acceso: 
--0  – Cuenta de tarjeta 	 	 		
--1  – Tarjeta 	 	 		
--2  – Comercio 	 	 		
,	PROCESO 	VARCHAR	(10)	--Nombre del proceso que realizó la modificación 
,	DESPROCESO 	VARCHAR	(30)	--Descripción del proceso o función 
,	DATOMOD 	VARCHAR	(2)	--Dato modificado (bancos, bloqueos, …) 
,	MOTIVO 	VARCHAR	(2)	--Motivo de la modificación 
,	CANALMOD 	VARCHAR	(2)	--Canal de la modificación (en persona, teléfono …) 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	TABLA 	VARCHAR	(3)	--Nombre de tabla modificada 
,	REGANT 	VARCHAR	(1024)	--Registro anterior 
,	REGACT 	VARCHAR	(1024)	--Registro actual 
,	FILLER1	VARCHAR	(62)	--FILLER
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
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBTARJET;  CREATE TABLE IF NOT EXISTS STG_SAT.TBTARJET  (
--MPDT009-Tarjetas	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CODMAR 	DECIMAL	(2,0)	--Marca de la tarjeta 
,	INDTIPT 	DECIMAL	(2,0)	--Tipo de la tarjeta 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMBENCTA 	DECIMAL	(5,0)	--Número de beneficiario dentro de la cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--Número de plástico   
,	TIPBON 	VARCHAR	(6)	--Tipo de bonificación 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deberá almacenarse justificado a la izquierda   
,	PANANT 	VARCHAR	(22)	--PAN anterior. El valor de este campo deberá almacenarse justificado a la izquierda        
,	FECALTA 	DATE		--Fecha de alta de la tarjeta 
,	FECULTUSO 	DATE		--Fecha de última utilización de la tarjeta 
,	INDSITTAR 	DECIMAL	(2,0)	--Indicador de situación (ver tabla) 
,	INDULTTAR 	VARCHAR	(2)	--Indicador de última tarjeta (S/N) 
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovación: 
--0  - Sí renovar 	 	 		
--1  - No renovar 	 	 		
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo                 
,	FECULTBLQ 	DATE		--Fecha de último bloqueo           
,	TEXBLQ 	VARCHAR	(30)	--Comentario de bloqueo             
,	FECBAJA 	DATE		--Fecha de baja                    
,	MOTBAJA 	VARCHAR	(2)	--Motivo de baja                    
,	FECCADTAR 	DECIMAL	(6,0)	--Fecha de caducidad de la tarjeta (AAAAMM) 
,	FECCADTARANT 	DECIMAL	(6,0)	--Fecha de caducidad anterior de la tarjeta (AAAAMM) 
,	FECCOBCUO 	DECIMAL	(6,0)	--Fecha de próximo cobro cuota de tarjeta (AAAAMM) 
,	OFFSET1  	DECIMAL	(4,0)	--Offset 1 del PIN 
,	OFFSET2 	DECIMAL	(4,0)	--Offset 2 del PIN 
,	PVV1 	VARCHAR	(4)	--PVV1 
,	PVV2  	VARCHAR	(4)	--PVV2 
--	 	 		
,	CODCLAVE 	VARCHAR	(3)	--Código de grupo criptográfico 
,	CODCLVANT 	VARCHAR	(3)	--Código de grupo criptográfico anterior 
,	NUMACT1 	DECIMAL	(1,0)	--Número de orden actual PIN 1 
,	NUMACT2 	DECIMAL	(1,0)	--Número de orden actual PIN 2 
,	NUMANT1 	DECIMAL	(1,0)	--Número de orden anterior PIN 1 
,	NUMANT2 	DECIMAL	(1,0)	--Número de orden anterior PIN 2 
,	INDCAMLIM 	VARCHAR	(1)	--Indicador de si afecta el cambio masivo de límites (S/N) 
,	INDACTLIM 	VARCHAR	(1)	--Indicador de ampliación de disponible de tarjeta con saldo acreedor y movimientos de pago:  
--0              -El saldo acreedor de contrato y los pagos no afectan al disponible de tarjeta  	 	 		
--1              -El saldo acreedor de contrato no afectan al disponible de restricciones de tarjeta, los pagos si afectan al disponible de tarjeta 	 	 		
--2- El saldo acreedor afecta al disponible de restricciones de tarjeta, los pagos no afectan al disponible de tarjeta 	 	 		
--3-Los pagos y el saldo acreedor afectan al disponible de tarjeta.  	 	 		
-- 	 	 		
,	INDRESACT 	VARCHAR	(1)	--Indicador de restricción por sector de actividad (S/N) 
,	INDRESCOM 	VARCHAR	(1)	--Indicador de restricción por comercio (S/N) 
,	INDLIMFAC 	VARCHAR	(1)	--Indicador de restricción por importe de operación (S/N) 
,	VISAPHONE 	DECIMAL	(4,0)	--Código VISAPHONE 
,	NUMKPIN 	DECIMAL	(2,0)	--Número de intentos de PIN 
,	IDEMPLEADO 	VARCHAR	(20)	--Identificador de empleado. 
,	NOMBENRED 	VARCHAR	(35)	--Nombre de estampación 
,	INDFOTO 	VARCHAR	(1)	--Indicador de foto en plástico (S/N) 
,	REFFOTO 	VARCHAR	(30)	--Referencia de la foto, sólo si el campo anterior está activo 
,	CODBARR 	DECIMAL	(14,0)	--Código de barras  
,	CODPROMO 	VARCHAR	(3)	--Código de promoción 
,	INDEXECUO 	VARCHAR	(1)	--Indicador de exención de compra en cuotas  
--0-Permite compra en cuotas y líneas adicionales 	 	 		
--1-No Permite compra en cuotas ni líneas adicionales 	 	 		
--2-Permite compra en cuotas pero no líneas adicionales 3-Permite líneas adicionales pero no compra en cuotas 	 	 		
-- 	 	 		
,	INDTAREME 	VARCHAR	(1)	--Indicador de tarjeta de emergencia (S/N) 
,	INDAPLIREST 	VARCHAR	(1)	--Indicador de aplicación de restricciones de tarjeta en autorización (S/N) 
,	INDTARPROV  	VARCHAR	(1)	--Indicador de Tarjeta provisional (S/N) 
,	INDTAREMV 	DECIMAL	(1,0)	--Indicador de si la tarjeta es o no EMV: 
--0  - Tarjeta no EMV  	 	 		
--1  - Tarjeta EMV con estampación Interna 	 	 		
--2  - Tarjeta EMV con estampación Externa 	 	 		
,	HORBLQ 	TIME		--Hora de bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBPLASTI;  CREATE TABLE IF NOT EXISTS STG_SAT.TBPLASTI  (
--MPDT008-Plasticos	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--Número de plástico   
,	FECENVEST 	DATE		--Fecha de envío a estampación 
,	FECRECEST 	DATE		--Fecha de rechazo de estampación 
,	FECACUSER 	DATE		--Fecha acuse de recibo 
,	FECULTREN 	DATE		--Fecha última renovación 
,	FECRECTAR 	DATE		--Fecha de recuperación plástico 
,	FCORETTAR 	DATE		--Fecha de comunicación de retención del plástico 
,	HCORETTAR 	TIME		--Hora comunicación de retención del plástico 
,	CONDEST 	VARCHAR	(3)	--Condiciones de estampación 
,	ESTPLAS1 	VARCHAR	(40)	--Datos de estampación a voluntad 
,	ESTPLAS2 	VARCHAR	(40)	--Datos de estampación a voluntad 
,	RELTAR 	VARCHAR	(70)	--Relación de tarjetas emitidas en el plástico. Ver nota a continuación. 
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
drop table IF EXISTS STG_SAT.TBCONGEL;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCONGEL  (
--MPDT250-Cuentas Congeladas	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECIMP	DECIMAL	(15,0)	--Número de secuencia del recibo impagado con formato 
--AAAAMMDDNNNNNNN 	 	 		
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	IMPORTE 	DECIMAL	(17,2)	--Importe traspasado a congelación 
,	IMPORTETOT 	DECIMAL	(17,2)	--Importe total congelado. Incluye intereses y comisiones por gestión de cobro 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado (cobrado) 
,	FECALTA 	DATE		--Fecha de alta en congelación 
,	FECULTAPL 	DATE		--Fecha de última aplicación pago 
,	FECBAJA 	DATE		--Fecha de baja en congelación 
,	MOTBAJA 	DECIMAL	(2,0)	--Código de motivo de baja 
,	NUMULTMOV 	DECIMAL	(7,0)	--Número de último movimiento 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación 
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación 
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación 
,	CONTCUR 	TIMESTAMP		--Control de concurrencia 
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBCUOMEM;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCUOMEM  (
--PCDT048-Cuota membresia	 	 		
	CODENT	VARCHAR	(4)	--Código de entidad
,	CENTALTA	VARCHAR	(4)	--Centro de alta cuenta de tarjeta
,	CUENTA	VARCHAR	(12)	--Cuenta de tarjeta
,	NUMBENCTA	DECIMAL	(5,0)	--Número de beneficiario dentro de la cuenta de tarjeta
,	FECALTA	DATE		--Fecha de Activación de la Tarjeta
,	CODMAR	DECIMAL	(2,0)	--Código de marca de tarjeta
,	INDTIPT	DECIMAL	(2,0)	--Indicador de tipo de tarjeta
,	FECCARGO	DATE		--Fecha de siguiente cargo
,	CODENTUMO	VARCHAR	(4)	--Entidad última modificación
,	CODOFIUMO	VARCHAR	(4)	--Oficina última modificación
,	USUARIOUMO	VARCHAR	(8)	--Usuario última modificación
,	CODTERMUMO	VARCHAR	(8)	--Terminal última modificación
,	CONTCUR	TIMESTAMP		--Control de concurrencia
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS STG_SAT.TBMEDENV_ECTA  (
--PCDT420-Medios de envio de estados de cuenta	 	 		
	CODENT	VARCHAR	(4)	--Código de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--Número de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de envío
--‘EM’ – E-Mail	 	 		
--‘CO’- Correo	 	 		
--‘AM’- Ambos	 	 		
--‘NO’- Sin medio de envío	 	 		
,	EMAIL	VARCHAR	(30)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--Código de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripción de la oficina de abogados
,	CODVIAJFRE	VARCHAR	(25)	--Código de viajero frecuente
,	FECALTAVIAJ	VARCHAR	(10)	--Fecha de alta código de viajero frecuente
,	INDCLICUMM	VARCHAR	(1)	--Indicador cliente cumplido para mora (S/N)
,	INDCLICUMC	VARCHAR	(1)	--Indicador de cliente cumplido para consumos
--N – No Cumple	 	 		
--C – Cliente cumplidor	 	 		
--M – Cliente medio cumplidor	 	 		
,	FECCLICUM	VARCHAR	(10)	--Fecha última actualización cliente cumplido
,	CLASIFRISAT	VARCHAR	(2)	--Clasificación de riesgo SAT
,	CLASIFRIREG	VARCHAR	(2)	--Clasificación de riesgo regulatorios
,	CLASIFRIMDE	DECIMAL	(5,0)	--Clasificación de riesgo motor de decisión
,	TASAEFECMAX	DECIMAL	(7,4)	--Tasa efectiva máxima
,	REFEXTCONTR	VARCHAR	(25)	--Referencia externa de contrato
,	CONPRODT	VARCHAR	(3)	--Condición Económica temporal
,	FECCETINI	DATE		--Fecha inicio Cond. Econ. Temporal
,	FECCETFIN	DATE		--Fecha fin Cond. Econ. Temporal
,	CONPRODO	VARCHAR	(3)	--Condición Económica original del contrato
,	TASAFINAN	DECIMAL	(7,4)	--Tasa de financiamiento
,	CODENTUMO	VARCHAR	(4)	--Entidad última modificación
,	CODOFIUMO	VARCHAR	(4)	--Oficina última modificación
,	USUARIOUMO	VARCHAR	(8)	--Usuario última modificación
,	CODTERMUMO	VARCHAR	(8)	--Terminal última modificación
,	CONTCUR	Timestamp		--Control de concurrencia
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBCONBUS;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCONBUS  (
--MPDT142-Relacion de contratos de tarjeta con estructura business	 	 		
	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBUS 	DECIMAL	(8,0)	--Código de Estructura Business 
,	CODELEMENTO 	DECIMAL	(4,0)	--Código de Elemento dentro de la Estructura Business 
,	TIPROLCUENTA 	VARCHAR	(1)	--Tipo de rol de la cuenta en la estructura business:
--U = Cuenta de control de cuotas o actividad (única)	 	 		
--E = Cuenta de empleado	 	 		
,	FECALTA 	DATE		--Fecha de alta 
,	FECBAJA 	DATE		--Fecha de baja 
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
,@OBJECT_NAME = 'TBCODBLQ'
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
@OBJECT_NAME = 'TBBLQCTA'
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
@OBJECT_NAME = 'TBHISMOD'
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
@OBJECT_NAME = 'TBINCINT'
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
@OBJECT_NAME = 'TBDETCUO'
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
@OBJECT_NAME = 'TBTARJET'
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
@OBJECT_NAME = 'TBPLASTI'
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
@OBJECT_NAME = 'TBCONGEL'
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
@OBJECT_NAME = 'TBCUOMEM'
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
@OBJECT_NAME = 'TBMEDENV_ECTA'
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
@OBJECT_NAME = 'TBCONBUS'
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
,@OBJECT_NAME = 'TBCODBLQ'
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
@OBJECT_NAME = 'TBBLQCTA'
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
@OBJECT_NAME = 'TBHISMOD'
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
@OBJECT_NAME = 'TBINCINT'
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
@OBJECT_NAME = 'TBDETCUO'
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
@OBJECT_NAME = 'TBTARJET'
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
@OBJECT_NAME = 'TBPLASTI'
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
@OBJECT_NAME = 'TBCONGEL'
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
@OBJECT_NAME = 'TBCUOMEM'
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
@OBJECT_NAME = 'TBMEDENV_ECTA'
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
@OBJECT_NAME = 'TBCONBUS'
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