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
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo 
,	DESBLQ 	VARCHAR	(30)	--Descripci�n del bloqueo 
,	DESBLQRED 	VARCHAR	(10)	--Descripci�n reducida del bloqueo 
,	INDAPLEMISOR 	VARCHAR	(1)	--Indicador de aplicaci�n en vertiente emisor:
--C � Contrato de tarjeta	 	 		
--T � Tarjeta	 	 		
--A � Ambos	 	 		
,	CODBLQSIA 	VARCHAR	(2)	--C�digo de bloqueo para el SIA o Switch:
--�00� � Tarjeta operativa	 	 		
--�01� � Denegar sin retener	 	 		
--�02� � Denegar en respaldo	 	 		
--�03� � Retener tarjeta	 	 		
--�06�- Denegar tarjeta robada	 	 		
--�07�- Denegar tarjeta perdida	 	 		
--�08�- Sospechoso fraude	 	 		
,	INDBLQOPE 	VARCHAR	(1)	--Bloquea operatividad:
--N: Sin bloqueo	 	 		
--S: Bloqueo de Operaciones	 	 		
--T: Bloqueo de Operaciones y Pagos	 	 		
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovaci�n:
--0 � S� renovar	 	 		
--1 � No renovar	 	 		
,	INDENVRED 	VARCHAR	(1)	--Indicador de env�o a red o franquicia (S/N) 
,	INDGENCUO 	VARCHAR	(1)	--Indicador de generaci�n de cuota 
,	INDBONCUO 	VARCHAR	(1)	--Indicador de bonificaci�n de cuota 
,	INDBLQCON 	VARCHAR	(1)	--Indicador bloqueo consulta (S/N) 
,	INDBLQLIQ 	VARCHAR	(1)	--Indicador de bloqueo de liquidaci�n (S/N) 
,	PESO 	DECIMAL	(2,0)	--Peso del bloqueo 
,	INDREVER 	VARCHAR	(1)	--Indicador de reversibilidad (S/N) 
,	INDREEM 	VARCHAR	(1)	--Indicador de permiso de reemisi�n para el estado (S/N) 
,	INDCMBPAN 	VARCHAR	(1)	--Indicador de cambio de PAN en la reemisi�n de la tarjeta (S/N) 
,	INDLIQDEU 	VARCHAR	(1)	--Indicador de aceleraci�n de deuda al extracto pendiente 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBBLQCTA;  CREATE TABLE IF NOT EXISTS SAT.TBBLQCTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT178 - Bloqueos de Cuenta o Contrato de Tarjeta	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo 
,	FECULTBLQ 	DATE		--Fecha de �ltimo bloqueo 
,	TEXBLQ  	VARCHAR	(30)	--Comentario del bloqueo 
--	 	 		
,	INDBLQEXT 	VARCHAR	(1)	--Indicador de bloqueo:
--E � Externo	 	 		
--M � Manual	 	 		
--A � Autom�tico	 	 		
,	MOTBLQ 	DECIMAL	(2,0)	--Motivo de Bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n  
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n  
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n    
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n    
,	CONTCUR 	TIMESTAMP		--Control de concurrencia  
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBHISMOD;  CREATE TABLE IF NOT EXISTS SAT.TBHISMOD  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT068-Hist�rico de Modificaciones	 	 		
,	CODENT_ENC	VARCHAR	(4)	--C�digo de entidad
,	OFICINA	VARCHAR	(4)	--Oficina Usuario
,	USUARIO	VARCHAR	(8)	--Usuario que realiza la acci�n
,	TIPO_ACCION	VARCHAR	(30)	--Acci�n realizada por el usuario
,	TIPO_REGISTRO	VARCHAR	(1)	--REGISTRO DETALLE (alfanumerico 2300)
--1 - Log Movimientos formato  ATLOGMOV	 	 		
--2 � Hist�rico Modificaciones formato ATHISMOD	 	 		
--DETALLE DE COLUMNAS ATHISMOD	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECHIS 	DECIMAL	(15,0)	--N�mero secuencial del hist�rico 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deber� almacenarse justificado a la izquierda 
,	CODCOM 	VARCHAR	(15)	--C�digo de comercio 
,	FECHAMOD 	DATE		--Fecha de modificaci�n 
,	HORAMOD 	TIME		--Hora de modificaci�n 
,	TIPACCES 	DECIMAL	(1,0)	--Tipo de acceso: 
--0� � Cuenta de tarjeta 	 	 		
--1� � Tarjeta 	 	 		
--2� � Comercio 	 	 		
,	PROCESO 	VARCHAR	(10)	--Nombre del proceso que realiz� la modificaci�n 
,	DESPROCESO 	VARCHAR	(30)	--Descripci�n del proceso o funci�n 
,	DATOMOD 	VARCHAR	(2)	--Dato modificado (bancos, bloqueos, �) 
,	MOTIVO 	VARCHAR	(2)	--Motivo de la modificaci�n 
,	CANALMOD 	VARCHAR	(2)	--Canal de la modificaci�n (en persona, tel�fono �) 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	TABLA 	VARCHAR	(3)	--Nombre de tabla modificada 
,	REGANT 	VARCHAR	(1024)	--Registro anterior 
,	REGACT 	VARCHAR	(1024)	--Registro actual 
,	FILLER1	VARCHAR	(62)	--FILLER
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBINCINT;  CREATE TABLE IF NOT EXISTS SAT.TBINCINT  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT096-Incidencias	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	NUMINC 	DECIMAL	(9,0)	--N�mero de incidencia 
,	NUMEXP 	DECIMAL	(9,0)	--N�mero de expediente 
,	CODREG 	DECIMAL	(2,0)	--C�digo de registro: 
--1������� - Incidencia de incoming e incidencias en estudio (extracto) 	 	 		
--2������� - Error de incoming e incidencias de comercio 	 	 		
-- 	 	 		
,	NUMREFREM 	DECIMAL	(10,0)	--N�mero de referencia de la remesa 
,	NUMREFFACREM 	DECIMAL	(5,0)	--N�mero de referencia de la factura en la remesa 
,	INDAJENA 	VARCHAR	(1)	--Indicador de tarjeta ajena (S/N) 
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de normal o correctora:  
--0 - Normal    1 � Correctora 	 	 		
,	TIPOFAC 	DECIMAL	(4,0)	--Tipo de factura 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta que realiz� la operaci�n. El valor de este campo deber� almacenarse justificado a la izquierda 
,	TIPFRAN 	DECIMAL	(4,0)	--C�digo de la franquicia 
,	SECOPE 	DECIMAL	(12,0)	--Secuencia de operaci�n 
,	NUMREF 	VARCHAR	(23)	--N�mero de referencia 
,	FECFAC 	DATE		--Fecha de la factura 
,	NUMAUT 	VARCHAR	(6)	--N�mero de autorizaci�n 
,	NOMCOMRED 	VARCHAR	(27)	--Nombre reducido del comercio 
,	CODCOM 	VARCHAR	(15)	--C�digo de comercio 
,	CODACT 	DECIMAL	(4,0)	--C�digo de actividad 
,	INDDEBCRE 	DECIMAL	(1,0)	--Indicador d�bito/cr�dito 
,	CLAMONDIV 	DECIMAL	(3,0)	--C�digo de moneda de la divisa original 
,	FECCMB 	DATE		--Fecha de cambio 
,	CMBAPLI 	DECIMAL	(9,4)	--Factor de cambio aplicado 
,	IMPDIV 	DECIMAL	(17,2)	--Importe en divisa original 
,	IMPLIQ 	DECIMAL	(17,2)	--Importe de liquidaci�n de la operaci�n con el intercambio 
,	CLAMONLIQ 	DECIMAL	(3,0)	--C�digo de moneda de liquidaci�n con el intercambio 
,	POBCOM 	VARCHAR	(24)	--Poblaci�n del comercio 
--	 	 		
,	FECALTAINC 	DATE		--Fecha de alta de la incidencia 
,	TIPOINC 	DECIMAL	(3,0)	--Tipo de incidencia 
,	MOTINC 	DECIMAL	(2,0)	--Motivo de la incidencia 
,	INDERROR 	VARCHAR	(16)	--Indicador de error 
,	CODRAZ 	DECIMAL	(4,0)	--C�digo de raz�n 
,	CODSOLINC 	DECIMAL	(2,0)	--C�digo de soluci�n de incidencia 
,	TIPOSOL 	DECIMAL	(2,0)	--Tipo de soluci�n contable de la incidencia 
,	FECSOLINC 	DATE		--Fecha de soluci�n de la incidencia 
,	FECLIQ 	DATE		--Fecha de liquidaci�n a la red o franquicia 
,	CODFUNFRAN 	DECIMAL	(3,0)	--C�digo de funci�n de la franquicia 
,	INDCHAPAR 	VARCHAR	(1)	--Indicador de chargeback parcial (S/N) 
,	CODACTESP 	DECIMAL	(4,0)	--C�digo de actividad especial 
,	MODOOBTAUT 	VARCHAR	(2)	--Modo obtenci�n de autorizaci�n 
,	TEXTOINICIO 	VARCHAR	(60)	--Texto 
,	NUMCINTA 	DECIMAL	(17,0)	--Secuencia de cinta 
,	INDAPLCOM 	VARCHAR	(1)	--Indicador si la factura se abon� previamente al comercio 
,	INDAPLEXT 	VARCHAR	(1)	--Indicador de aplicaci�n en el extracto del titular 
,	INDORIINC 	VARCHAR	(1)	--Indicador de origen de la incidencia: 
--1� - EXTRACTO         	 	 		
--2� - INCIDENCIAS      	 	 		
--3� - MIGRACION        	 	 		
--4� - COMPRA EN CUOTAS 	 	 		
--5� - COMERCIOS	 	 		
,	INDANUL 	VARCHAR	(1)	--Indicativo de operaci�n anulada 
,	INDRET 	DECIMAL	(1,0)	--Indicador de retenci�n 
,	FECCONTA 	DATE		--Fecha contable 
,	FECCONTASOL 	DATE		--Fecha contable de soluci�n de la incidencia 
,	INDINCPEN 	VARCHAR	(1)	--Indicativo de incidencia pendiente (S/N) 
,	CLAMON 	DECIMAL	(3,0)	--C�digo de moneda 
,	IMPFAC 	DECIMAL	(17,2)	--Importe de la factura 
,	FECPROCIN 	DATE		--Fecha de proceso de la cinta 
,	CODSUBFRA 	VARCHAR	(1)	--C�digo de subfunci�n de la franquicia 
,	CODPAIS 	DECIMAL	(3,0)	--C�digo del pa�s 
,	CODRAZCHA 	DECIMAL	(4,0)	--C�digo de raz�n del chargeback 
,	INDCOMINC 	VARCHAR	(1)	--Indicador de comisi�n de incidencia 
,	INDCOMPCUO 	VARCHAR	(1)	--Indicador de compra en cuotas 
,	CODTIPC 	VARCHAR	(4)	--Tipo de compra en cuotas 
,	TOTCUOTAS 	DECIMAL	(9,0)	--Numero de cuotas totales 
,	MESCARCUO 	DECIMAL	(2,0)	--Numero de meses de carencia 
,	PORINT 	DECIMAL	(7,4)	--Porcentaje de inter�s 
,	SIAIDCD 	VARCHAR	(19)	--C�digo de identificaci�n SIA 
,	NUMOPECUO 	DECIMAL	(6,0)	--N�mero de operaci�n en compra en cuotas 
,	CODTERM 	VARCHAR	(16)	--C�digo de Terminal 
,	LINREF 	DECIMAL	(8,0)	--Referencia de la l�nea 
,	FORPAGO 	DECIMAL	(2,0)	--Forma de pago de la operaci�n en el origen 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBFINCUO;  CREATE TABLE IF NOT EXISTS SAT.TBFINCUO  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT206-Cuotas Financiadas	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	CODTIPC 	VARCHAR	(4)	--C�digo de tipo de compra en cuotas 
,	NUMOPECUO 	DECIMAL	(6,0)	--N�mero de operaci�n en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--N�mero de financiaci�n 
,	PORINT  	DECIMAL	(7,4)	--Porcentaje de inter�s aplicado 
,	TOTCUOTAS 	DECIMAL	(9,0)	--N�mero total de cuotas 
,	IMPCUOTA 	DECIMAL	(17,2)	--Importe de la cuota 
,	NUMCUOPAG 	DECIMAL	(9,0)	--N�mero de cuotas pagadas 
,	NUMMESFIN 	VARCHAR	(12)	--Meses de financiaci�n 
,	IMPTOTAL 	DECIMAL	(17,2)	--Importe total a pagar 
,	IMPINTTOTAL 	DECIMAL	(17,2)	--Importe de intereses total a pagar 
,	IMPAMORT 	DECIMAL	(17,2)	--Importe de capital amortizado 
,	IMPINTAMORT 	DECIMAL	(17,2)	--Importe de intereses amortizado 
,	FECULTLIQ 	DATE		--Fecha de �ltima liquidaci�n 
,	FECALTA 	DATE		--Fecha de alta 
,	FECBAJA 	DATE		--Fecha de baja 
,	MOTBAJA  	VARCHAR	(2)	--Motivo de baja del n�mero de financiaci�n: 
--01� - Amortizaci�n anticipada 	 	 		
--02� - Modificaci�n del n�mero de cuotas 	 	 		
--03� - Cancelaci�n de compra en cuotas 	 	 		
--04� - Fusi�n de n compras en cuotas 	 	 		
--05� - Cancelada por cartera-vencida 	 	 		
--06� - Generada Incidencia 	 	 		
--07� � Refinanciada 	 	 		
--08� � Acelerada 	 	 		
--09� � Uso Software Regional. 	 	 		
--10� � Uso Software Regional. 	 	 		
--11� � Anulacion de Compra en cuotas. 	 	 		
--12� - Reversada 	 	 		
--20 a 30 - Reservado para Uso del Clliente.  	 	 		
,	NUMULTCUO  	DECIMAL	(9,0)	--N�mero de �ltima cuota 
,	INTCARPTE 	DECIMAL	(17,2)	--Intereses de carencia pendientes 
,	ESTCONT 	DECIMAL	(1,0)	--Estado contable.    
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBDETCUO;  CREATE TABLE IF NOT EXISTS SAT.TBDETCUO  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT207-Detalle de cuotas	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--C�digo de moneda 
,	NUMOPECUO 	DECIMAL	(6,0)	--N�mero de operaci�n en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--N�mero de financiaci�n 
,	NUMCUOTA 	DECIMAL	(9,0)	--N�mero de cuota 
,	FECPROCUO 	DATE		--Fecha de cobro de la cuota 
,	IMPCUOTA 	DECIMAL	(17,2)	--Importe de la cuota 
,	IMPCAPITAL 	DECIMAL	(17,2)	--Importe capital 
,	IMPINTERESES 	DECIMAL	(17,2)	--Importe inter�s 
,	IMPIMPTO 	DECIMAL	(17,2)	--Importe del impuesto 
,	ESTCUO 	DECIMAL	(2,0)	--Estado de la cuota: 
--01� � Pendiente 	 	 		
--02� � Liquidada 	 	 		
--03� � Cancelada 	 	 		
--04� � Vencida 	 	 		
--05� � Anticipada	 	 		
,	FECLIQ 	DATE		--Fecha liquidaci�n 
,	FECCONTA 	DATE		--Fecha contable 
,	ESTCONT 	DECIMAL	(1,0)	--Estado contable. 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBTARJET;  CREATE TABLE IF NOT EXISTS SAT.TBTARJET  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT009-Tarjetas	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CODMAR 	DECIMAL	(2,0)	--Marca de la tarjeta 
,	INDTIPT 	DECIMAL	(2,0)	--Tipo de la tarjeta 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMBENCTA 	DECIMAL	(5,0)	--N�mero de beneficiario dentro de la cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--N�mero de pl�stico   
,	TIPBON 	VARCHAR	(6)	--Tipo de bonificaci�n 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deber� almacenarse justificado a la izquierda   
,	PANANT 	VARCHAR	(22)	--PAN anterior. El valor de este campo deber� almacenarse justificado a la izquierda        
,	FECALTA 	DATE		--Fecha de alta de la tarjeta 
,	FECULTUSO 	DATE		--Fecha de �ltima utilizaci�n de la tarjeta 
,	INDSITTAR 	DECIMAL	(2,0)	--Indicador de situaci�n (ver tabla) 
,	INDULTTAR 	VARCHAR	(2)	--Indicador de �ltima tarjeta (S/N) 
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovaci�n: 
--0� - S� renovar 	 	 		
--1� - No renovar 	 	 		
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo                 
,	FECULTBLQ 	DATE		--Fecha de �ltimo bloqueo           
,	TEXBLQ 	VARCHAR	(30)	--Comentario de bloqueo             
,	FECBAJA 	DATE		--Fecha de baja                    
,	MOTBAJA 	VARCHAR	(2)	--Motivo de baja                    
,	FECCADTAR 	DECIMAL	(6,0)	--Fecha de caducidad de la tarjeta (AAAAMM) 
,	FECCADTARANT 	DECIMAL	(6,0)	--Fecha de caducidad anterior de la tarjeta (AAAAMM) 
,	FECCOBCUO 	DECIMAL	(6,0)	--Fecha de pr�ximo cobro cuota de tarjeta (AAAAMM) 
,	OFFSET1  	DECIMAL	(4,0)	--Offset 1 del PIN 
,	OFFSET2 	DECIMAL	(4,0)	--Offset 2 del PIN 
,	PVV1 	VARCHAR	(4)	--PVV1 
,	PVV2  	VARCHAR	(4)	--PVV2 
--	 	 		
,	CODCLAVE 	VARCHAR	(3)	--C�digo de grupo criptogr�fico 
,	CODCLVANT 	VARCHAR	(3)	--C�digo de grupo criptogr�fico anterior 
,	NUMACT1 	DECIMAL	(1,0)	--N�mero de orden actual PIN 1 
,	NUMACT2 	DECIMAL	(1,0)	--N�mero de orden actual PIN 2 
,	NUMANT1 	DECIMAL	(1,0)	--N�mero de orden anterior PIN 1 
,	NUMANT2 	DECIMAL	(1,0)	--N�mero de orden anterior PIN 2 
,	INDCAMLIM 	VARCHAR	(1)	--Indicador de si afecta el cambio masivo de l�mites (S/N) 
,	INDACTLIM 	VARCHAR	(1)	--Indicador de ampliaci�n de disponible de tarjeta con saldo acreedor y movimientos de pago:  
--0������������� -El saldo acreedor de contrato y los pagos no afectan al disponible de tarjeta  	 	 		
--1������������� -El saldo acreedor de contrato no afectan al disponible de restricciones de tarjeta, los pagos si afectan al disponible de tarjeta 	 	 		
--2- El saldo acreedor afecta al disponible de restricciones de tarjeta, los pagos no afectan al disponible de tarjeta 	 	 		
--3-Los pagos y el saldo acreedor afectan al disponible de tarjeta.  	 	 		
-- 	 	 		
,	INDRESACT 	VARCHAR	(1)	--Indicador de restricci�n por sector de actividad (S/N) 
,	INDRESCOM 	VARCHAR	(1)	--Indicador de restricci�n por comercio (S/N) 
,	INDLIMFAC 	VARCHAR	(1)	--Indicador de restricci�n por importe de operaci�n (S/N) 
,	VISAPHONE 	DECIMAL	(4,0)	--C�digo VISAPHONE 
,	NUMKPIN 	DECIMAL	(2,0)	--N�mero de intentos de PIN 
,	IDEMPLEADO 	VARCHAR	(20)	--Identificador de empleado. 
,	NOMBENRED 	VARCHAR	(35)	--Nombre de estampaci�n 
,	INDFOTO 	VARCHAR	(1)	--Indicador de foto en pl�stico (S/N) 
,	REFFOTO 	VARCHAR	(30)	--Referencia de la foto, s�lo si el campo anterior est� activo 
,	CODBARR 	DECIMAL	(14,0)	--C�digo de barras  
,	CODPROMO 	VARCHAR	(3)	--C�digo de promoci�n 
,	INDEXECUO 	VARCHAR	(1)	--Indicador de exenci�n de compra en cuotas  
--0-Permite compra en cuotas y l�neas adicionales 	 	 		
--1-No Permite compra en cuotas ni l�neas adicionales 	 	 		
--2-Permite compra en cuotas pero no l�neas adicionales 3-Permite l�neas adicionales pero no compra en cuotas 	 	 		
-- 	 	 		
,	INDTAREME 	VARCHAR	(1)	--Indicador de tarjeta de emergencia (S/N) 
,	INDAPLIREST 	VARCHAR	(1)	--Indicador de aplicaci�n de restricciones de tarjeta en autorizaci�n (S/N) 
,	INDTARPROV  	VARCHAR	(1)	--Indicador de Tarjeta provisional (S/N) 
,	INDTAREMV 	DECIMAL	(1,0)	--Indicador de si la tarjeta es o no EMV: 
--0� - Tarjeta no EMV  	 	 		
--1� - Tarjeta EMV con estampaci�n Interna 	 	 		
--2� - Tarjeta EMV con estampaci�n Externa 	 	 		
,	HORBLQ 	TIME		--Hora de bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBPLASTI;  CREATE TABLE IF NOT EXISTS SAT.TBPLASTI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT008-Plasticos	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--N�mero de pl�stico   
,	FECENVEST 	DATE		--Fecha de env�o a estampaci�n 
,	FECRECEST 	DATE		--Fecha de rechazo de estampaci�n 
,	FECACUSER 	DATE		--Fecha acuse de recibo 
,	FECULTREN 	DATE		--Fecha �ltima renovaci�n 
,	FECRECTAR 	DATE		--Fecha de recuperaci�n pl�stico 
,	FCORETTAR 	DATE		--Fecha de comunicaci�n de retenci�n del pl�stico 
,	HCORETTAR 	TIME		--Hora comunicaci�n de retenci�n del pl�stico 
,	CONDEST 	VARCHAR	(3)	--Condiciones de estampaci�n 
,	ESTPLAS1 	VARCHAR	(40)	--Datos de estampaci�n a voluntad 
,	ESTPLAS2 	VARCHAR	(40)	--Datos de estampaci�n a voluntad 
,	RELTAR 	VARCHAR	(70)	--Relaci�n de tarjetas emitidas en el pl�stico. Ver nota a continuaci�n. 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBPAGHIS;  CREATE TABLE IF NOT EXISTS SAT.TBPAGHIS  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT125-Historico de Pago	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
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
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBCONGEL;  CREATE TABLE IF NOT EXISTS SAT.TBCONGEL  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT250-Cuentas Congeladas	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECIMP	DECIMAL	(15,0)	--N�mero de secuencia del recibo impagado con formato 
--AAAAMMDDNNNNNNN 	 	 		
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	IMPORTE 	DECIMAL	(17,2)	--Importe traspasado a congelaci�n 
,	IMPORTETOT 	DECIMAL	(17,2)	--Importe total congelado. Incluye intereses y comisiones por gesti�n de cobro 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado (cobrado) 
,	FECALTA 	DATE		--Fecha de alta en congelaci�n 
,	FECULTAPL 	DATE		--Fecha de �ltima aplicaci�n pago 
,	FECBAJA 	DATE		--Fecha de baja en congelaci�n 
,	MOTBAJA 	DECIMAL	(2,0)	--C�digo de motivo de baja 
,	NUMULTMOV 	DECIMAL	(7,0)	--N�mero de �ltimo movimiento 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n 
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n 
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n 
,	CONTCUR 	TIMESTAMP		--Control de concurrencia 
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBCUOMEM;  CREATE TABLE IF NOT EXISTS SAT.TBCUOMEM  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--PCDT048-Cuota membresia	 	 		
,	CODENT	VARCHAR	(4)	--C�digo de entidad
,	CENTALTA	VARCHAR	(4)	--Centro de alta cuenta de tarjeta
,	CUENTA	VARCHAR	(12)	--Cuenta de tarjeta
,	NUMBENCTA	DECIMAL	(5,0)	--N�mero de beneficiario dentro de la cuenta de tarjeta
,	FECALTA	DATE		--Fecha de Activaci�n de la Tarjeta
,	CODMAR	DECIMAL	(2,0)	--C�digo de marca de tarjeta
,	INDTIPT	DECIMAL	(2,0)	--Indicador de tipo de tarjeta
,	FECCARGO	DATE		--Fecha de siguiente cargo
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	TIMESTAMP		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS SAT.TBMEDENV_ECTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--PCDT420-Medios de envio de estados de cuenta	 	 		
,	CODENT	VARCHAR	(4)	--C�digo de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--N�mero de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de env�o
--�EM� � E-Mail	 	 		
--�CO�- Correo	 	 		
--�AM�- Ambos	 	 		
--�NO�- Sin medio de env�o	 	 		
,	EMAIL	VARCHAR	(30)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--C�digo de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripci�n de la oficina de abogados
,	CODVIAJFRE	VARCHAR	(25)	--C�digo de viajero frecuente
,	FECALTAVIAJ	VARCHAR	(10)	--Fecha de alta c�digo de viajero frecuente
,	INDCLICUMM	VARCHAR	(1)	--Indicador cliente cumplido para mora (S/N)
,	INDCLICUMC	VARCHAR	(1)	--Indicador de cliente cumplido para consumos
--N � No Cumple	 	 		
--C � Cliente cumplidor	 	 		
--M � Cliente medio cumplidor	 	 		
,	FECCLICUM	VARCHAR	(10)	--Fecha �ltima actualizaci�n cliente cumplido
,	CLASIFRISAT	VARCHAR	(2)	--Clasificaci�n de riesgo SAT
,	CLASIFRIREG	VARCHAR	(2)	--Clasificaci�n de riesgo regulatorios
,	CLASIFRIMDE	DECIMAL	(5,0)	--Clasificaci�n de riesgo motor de decisi�n
,	TASAEFECMAX	DECIMAL	(7,4)	--Tasa efectiva m�xima
,	REFEXTCONTR	VARCHAR	(25)	--Referencia externa de contrato
,	CONPRODT	VARCHAR	(3)	--Condici�n Econ�mica temporal
,	FECCETINI	DATE		--Fecha inicio Cond. Econ. Temporal
,	FECCETFIN	DATE		--Fecha fin Cond. Econ. Temporal
,	CONPRODO	VARCHAR	(3)	--Condici�n Econ�mica original del contrato
,	TASAFINAN	DECIMAL	(7,4)	--Tasa de financiamiento
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	Timestamp		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
drop table IF EXISTS SAT.TBCONBUS;  CREATE TABLE IF NOT EXISTS SAT.TBCONBUS  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--MPDT142-Relacion de contratos de tarjeta con estructura business	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBUS 	DECIMAL	(8,0)	--C�digo de Estructura Business 
,	CODELEMENTO 	DECIMAL	(4,0)	--C�digo de Elemento dentro de la Estructura Business 
,	TIPROLCUENTA 	VARCHAR	(1)	--Tipo de rol de la cuenta en la estructura business:
--U = Cuenta de control de cuotas o actividad (�nica)	 	 		
--E = Cuenta de empleado	 	 		
,	FECALTA 	DATE		--Fecha de alta 
,	FECBAJA 	DATE		--Fecha de baja 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		


drop table IF EXISTS STG_SAT.TBCODBLQ;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCODBLQ  (
--MPDT060 - BLOQUEOS	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo 
,	DESBLQ 	VARCHAR	(30)	--Descripci�n del bloqueo 
,	DESBLQRED 	VARCHAR	(10)	--Descripci�n reducida del bloqueo 
,	INDAPLEMISOR 	VARCHAR	(1)	--Indicador de aplicaci�n en vertiente emisor:
--C � Contrato de tarjeta	 	 		
--T � Tarjeta	 	 		
--A � Ambos	 	 		
,	CODBLQSIA 	VARCHAR	(2)	--C�digo de bloqueo para el SIA o Switch:
--�00� � Tarjeta operativa	 	 		
--�01� � Denegar sin retener	 	 		
--�02� � Denegar en respaldo	 	 		
--�03� � Retener tarjeta	 	 		
--�06�- Denegar tarjeta robada	 	 		
--�07�- Denegar tarjeta perdida	 	 		
--�08�- Sospechoso fraude	 	 		
,	INDBLQOPE 	VARCHAR	(1)	--Bloquea operatividad:
--N: Sin bloqueo	 	 		
--S: Bloqueo de Operaciones	 	 		
--T: Bloqueo de Operaciones y Pagos	 	 		
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovaci�n:
--0 � S� renovar	 	 		
--1 � No renovar	 	 		
,	INDENVRED 	VARCHAR	(1)	--Indicador de env�o a red o franquicia (S/N) 
,	INDGENCUO 	VARCHAR	(1)	--Indicador de generaci�n de cuota 
,	INDBONCUO 	VARCHAR	(1)	--Indicador de bonificaci�n de cuota 
,	INDBLQCON 	VARCHAR	(1)	--Indicador bloqueo consulta (S/N) 
,	INDBLQLIQ 	VARCHAR	(1)	--Indicador de bloqueo de liquidaci�n (S/N) 
,	PESO 	DECIMAL	(2,0)	--Peso del bloqueo 
,	INDREVER 	VARCHAR	(1)	--Indicador de reversibilidad (S/N) 
,	INDREEM 	VARCHAR	(1)	--Indicador de permiso de reemisi�n para el estado (S/N) 
,	INDCMBPAN 	VARCHAR	(1)	--Indicador de cambio de PAN en la reemisi�n de la tarjeta (S/N) 
,	INDLIQDEU 	VARCHAR	(1)	--Indicador de aceleraci�n de deuda al extracto pendiente 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBBLQCTA;  CREATE TABLE IF NOT EXISTS STG_SAT.TBBLQCTA  (
--MPDT178 - Bloqueos de Cuenta o Contrato de Tarjeta	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo 
,	FECULTBLQ 	DATE		--Fecha de �ltimo bloqueo 
,	TEXBLQ  	VARCHAR	(30)	--Comentario del bloqueo 
--	 	 		
,	INDBLQEXT 	VARCHAR	(1)	--Indicador de bloqueo:
--E � Externo	 	 		
--M � Manual	 	 		
--A � Autom�tico	 	 		
,	MOTBLQ 	DECIMAL	(2,0)	--Motivo de Bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n  
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n  
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n    
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n    
,	CONTCUR 	TIMESTAMP		--Control de concurrencia  
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBHISMOD;  CREATE TABLE IF NOT EXISTS STG_SAT.TBHISMOD  (
--MPDT068-Hist�rico de Modificaciones	 	 		
	CODENT_ENC	VARCHAR	(4)	--C�digo de entidad
,	OFICINA	VARCHAR	(4)	--Oficina Usuario
,	USUARIO	VARCHAR	(8)	--Usuario que realiza la acci�n
,	TIPO_ACCION	VARCHAR	(30)	--Acci�n realizada por el usuario
,	TIPO_REGISTRO	VARCHAR	(1)	--REGISTRO DETALLE (alfanumerico 2300)
--1 - Log Movimientos formato  ATLOGMOV	 	 		
--2 � Hist�rico Modificaciones formato ATHISMOD	 	 		
--DETALLE DE COLUMNAS ATHISMOD	 	 		
,	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECHIS 	DECIMAL	(15,0)	--N�mero secuencial del hist�rico 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deber� almacenarse justificado a la izquierda 
,	CODCOM 	VARCHAR	(15)	--C�digo de comercio 
,	FECHAMOD 	DATE		--Fecha de modificaci�n 
,	HORAMOD 	TIME		--Hora de modificaci�n 
,	TIPACCES 	DECIMAL	(1,0)	--Tipo de acceso: 
--0� � Cuenta de tarjeta 	 	 		
--1� � Tarjeta 	 	 		
--2� � Comercio 	 	 		
,	PROCESO 	VARCHAR	(10)	--Nombre del proceso que realiz� la modificaci�n 
,	DESPROCESO 	VARCHAR	(30)	--Descripci�n del proceso o funci�n 
,	DATOMOD 	VARCHAR	(2)	--Dato modificado (bancos, bloqueos, �) 
,	MOTIVO 	VARCHAR	(2)	--Motivo de la modificaci�n 
,	CANALMOD 	VARCHAR	(2)	--Canal de la modificaci�n (en persona, tel�fono �) 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	TABLA 	VARCHAR	(3)	--Nombre de tabla modificada 
,	REGANT 	VARCHAR	(1024)	--Registro anterior 
,	REGACT 	VARCHAR	(1024)	--Registro actual 
,	FILLER1	VARCHAR	(62)	--FILLER
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBINCINT;  CREATE TABLE IF NOT EXISTS STG_SAT.TBINCINT  (
--MPDT096-Incidencias	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	NUMINC 	DECIMAL	(9,0)	--N�mero de incidencia 
,	NUMEXP 	DECIMAL	(9,0)	--N�mero de expediente 
,	CODREG 	DECIMAL	(2,0)	--C�digo de registro: 
--1������� - Incidencia de incoming e incidencias en estudio (extracto) 	 	 		
--2������� - Error de incoming e incidencias de comercio 	 	 		
-- 	 	 		
,	NUMREFREM 	DECIMAL	(10,0)	--N�mero de referencia de la remesa 
,	NUMREFFACREM 	DECIMAL	(5,0)	--N�mero de referencia de la factura en la remesa 
,	INDAJENA 	VARCHAR	(1)	--Indicador de tarjeta ajena (S/N) 
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de normal o correctora:  
--0 - Normal    1 � Correctora 	 	 		
,	TIPOFAC 	DECIMAL	(4,0)	--Tipo de factura 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta que realiz� la operaci�n. El valor de este campo deber� almacenarse justificado a la izquierda 
,	TIPFRAN 	DECIMAL	(4,0)	--C�digo de la franquicia 
,	SECOPE 	DECIMAL	(12,0)	--Secuencia de operaci�n 
,	NUMREF 	VARCHAR	(23)	--N�mero de referencia 
,	FECFAC 	DATE		--Fecha de la factura 
,	NUMAUT 	VARCHAR	(6)	--N�mero de autorizaci�n 
,	NOMCOMRED 	VARCHAR	(27)	--Nombre reducido del comercio 
,	CODCOM 	VARCHAR	(15)	--C�digo de comercio 
,	CODACT 	DECIMAL	(4,0)	--C�digo de actividad 
,	INDDEBCRE 	DECIMAL	(1,0)	--Indicador d�bito/cr�dito 
,	CLAMONDIV 	DECIMAL	(3,0)	--C�digo de moneda de la divisa original 
,	FECCMB 	DATE		--Fecha de cambio 
,	CMBAPLI 	DECIMAL	(9,4)	--Factor de cambio aplicado 
,	IMPDIV 	DECIMAL	(17,2)	--Importe en divisa original 
,	IMPLIQ 	DECIMAL	(17,2)	--Importe de liquidaci�n de la operaci�n con el intercambio 
,	CLAMONLIQ 	DECIMAL	(3,0)	--C�digo de moneda de liquidaci�n con el intercambio 
,	POBCOM 	VARCHAR	(24)	--Poblaci�n del comercio 
--	 	 		
,	FECALTAINC 	DATE		--Fecha de alta de la incidencia 
,	TIPOINC 	DECIMAL	(3,0)	--Tipo de incidencia 
,	MOTINC 	DECIMAL	(2,0)	--Motivo de la incidencia 
,	INDERROR 	VARCHAR	(16)	--Indicador de error 
,	CODRAZ 	DECIMAL	(4,0)	--C�digo de raz�n 
,	CODSOLINC 	DECIMAL	(2,0)	--C�digo de soluci�n de incidencia 
,	TIPOSOL 	DECIMAL	(2,0)	--Tipo de soluci�n contable de la incidencia 
,	FECSOLINC 	DATE		--Fecha de soluci�n de la incidencia 
,	FECLIQ 	DATE		--Fecha de liquidaci�n a la red o franquicia 
,	CODFUNFRAN 	DECIMAL	(3,0)	--C�digo de funci�n de la franquicia 
,	INDCHAPAR 	VARCHAR	(1)	--Indicador de chargeback parcial (S/N) 
,	CODACTESP 	DECIMAL	(4,0)	--C�digo de actividad especial 
,	MODOOBTAUT 	VARCHAR	(2)	--Modo obtenci�n de autorizaci�n 
,	TEXTOINICIO 	VARCHAR	(60)	--Texto 
,	NUMCINTA 	DECIMAL	(17,0)	--Secuencia de cinta 
,	INDAPLCOM 	VARCHAR	(1)	--Indicador si la factura se abon� previamente al comercio 
,	INDAPLEXT 	VARCHAR	(1)	--Indicador de aplicaci�n en el extracto del titular 
,	INDORIINC 	VARCHAR	(1)	--Indicador de origen de la incidencia: 
--1� - EXTRACTO         	 	 		
--2� - INCIDENCIAS      	 	 		
--3� - MIGRACION        	 	 		
--4� - COMPRA EN CUOTAS 	 	 		
--5� - COMERCIOS	 	 		
,	INDANUL 	VARCHAR	(1)	--Indicativo de operaci�n anulada 
,	INDRET 	DECIMAL	(1,0)	--Indicador de retenci�n 
,	FECCONTA 	DATE		--Fecha contable 
,	FECCONTASOL 	DATE		--Fecha contable de soluci�n de la incidencia 
,	INDINCPEN 	VARCHAR	(1)	--Indicativo de incidencia pendiente (S/N) 
,	CLAMON 	DECIMAL	(3,0)	--C�digo de moneda 
,	IMPFAC 	DECIMAL	(17,2)	--Importe de la factura 
,	FECPROCIN 	DATE		--Fecha de proceso de la cinta 
,	CODSUBFRA 	VARCHAR	(1)	--C�digo de subfunci�n de la franquicia 
,	CODPAIS 	DECIMAL	(3,0)	--C�digo del pa�s 
,	CODRAZCHA 	DECIMAL	(4,0)	--C�digo de raz�n del chargeback 
,	INDCOMINC 	VARCHAR	(1)	--Indicador de comisi�n de incidencia 
,	INDCOMPCUO 	VARCHAR	(1)	--Indicador de compra en cuotas 
,	CODTIPC 	VARCHAR	(4)	--Tipo de compra en cuotas 
,	TOTCUOTAS 	DECIMAL	(9,0)	--Numero de cuotas totales 
,	MESCARCUO 	DECIMAL	(2,0)	--Numero de meses de carencia 
,	PORINT 	DECIMAL	(7,4)	--Porcentaje de inter�s 
,	SIAIDCD 	VARCHAR	(19)	--C�digo de identificaci�n SIA 
,	NUMOPECUO 	DECIMAL	(6,0)	--N�mero de operaci�n en compra en cuotas 
,	CODTERM 	VARCHAR	(16)	--C�digo de Terminal 
,	LINREF 	DECIMAL	(8,0)	--Referencia de la l�nea 
,	FORPAGO 	DECIMAL	(2,0)	--Forma de pago de la operaci�n en el origen 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBFINCUO;  CREATE TABLE IF NOT EXISTS STG_SAT.TBFINCUO  (
--MPDT206-Cuotas Financiadas	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	CODTIPC 	VARCHAR	(4)	--C�digo de tipo de compra en cuotas 
,	NUMOPECUO 	DECIMAL	(6,0)	--N�mero de operaci�n en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--N�mero de financiaci�n 
,	PORINT  	DECIMAL	(7,4)	--Porcentaje de inter�s aplicado 
,	TOTCUOTAS 	DECIMAL	(9,0)	--N�mero total de cuotas 
,	IMPCUOTA 	DECIMAL	(17,2)	--Importe de la cuota 
,	NUMCUOPAG 	DECIMAL	(9,0)	--N�mero de cuotas pagadas 
,	NUMMESFIN 	VARCHAR	(12)	--Meses de financiaci�n 
,	IMPTOTAL 	DECIMAL	(17,2)	--Importe total a pagar 
,	IMPINTTOTAL 	DECIMAL	(17,2)	--Importe de intereses total a pagar 
,	IMPAMORT 	DECIMAL	(17,2)	--Importe de capital amortizado 
,	IMPINTAMORT 	DECIMAL	(17,2)	--Importe de intereses amortizado 
,	FECULTLIQ 	DATE		--Fecha de �ltima liquidaci�n 
,	FECALTA 	DATE		--Fecha de alta 
,	FECBAJA 	DATE		--Fecha de baja 
,	MOTBAJA  	VARCHAR	(2)	--Motivo de baja del n�mero de financiaci�n: 
--01� - Amortizaci�n anticipada 	 	 		
--02� - Modificaci�n del n�mero de cuotas 	 	 		
--03� - Cancelaci�n de compra en cuotas 	 	 		
--04� - Fusi�n de n compras en cuotas 	 	 		
--05� - Cancelada por cartera-vencida 	 	 		
--06� - Generada Incidencia 	 	 		
--07� � Refinanciada 	 	 		
--08� � Acelerada 	 	 		
--09� � Uso Software Regional. 	 	 		
--10� � Uso Software Regional. 	 	 		
--11� � Anulacion de Compra en cuotas. 	 	 		
--12� - Reversada 	 	 		
--20 a 30 - Reservado para Uso del Clliente.  	 	 		
,	NUMULTCUO  	DECIMAL	(9,0)	--N�mero de �ltima cuota 
,	INTCARPTE 	DECIMAL	(17,2)	--Intereses de carencia pendientes 
,	ESTCONT 	DECIMAL	(1,0)	--Estado contable.    
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBDETCUO;  CREATE TABLE IF NOT EXISTS STG_SAT.TBDETCUO  (
--MPDT207-Detalle de cuotas	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CLAMON 	DECIMAL	(3,0)	--C�digo de moneda 
,	NUMOPECUO 	DECIMAL	(6,0)	--N�mero de operaci�n en compra en cuotas 
,	NUMFINAN 	DECIMAL	(3,0)	--N�mero de financiaci�n 
,	NUMCUOTA 	DECIMAL	(9,0)	--N�mero de cuota 
,	FECPROCUO 	DATE		--Fecha de cobro de la cuota 
,	IMPCUOTA 	DECIMAL	(17,2)	--Importe de la cuota 
,	IMPCAPITAL 	DECIMAL	(17,2)	--Importe capital 
,	IMPINTERESES 	DECIMAL	(17,2)	--Importe inter�s 
,	IMPIMPTO 	DECIMAL	(17,2)	--Importe del impuesto 
,	ESTCUO 	DECIMAL	(2,0)	--Estado de la cuota: 
--01� � Pendiente 	 	 		
--02� � Liquidada 	 	 		
--03� � Cancelada 	 	 		
--04� � Vencida 	 	 		
--05� � Anticipada	 	 		
,	FECLIQ 	DATE		--Fecha liquidaci�n 
,	FECCONTA 	DATE		--Fecha contable 
,	ESTCONT 	DECIMAL	(1,0)	--Estado contable. 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBTARJET;  CREATE TABLE IF NOT EXISTS STG_SAT.TBTARJET  (
--MPDT009-Tarjetas	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CODMAR 	DECIMAL	(2,0)	--Marca de la tarjeta 
,	INDTIPT 	DECIMAL	(2,0)	--Tipo de la tarjeta 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMBENCTA 	DECIMAL	(5,0)	--N�mero de beneficiario dentro de la cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--N�mero de pl�stico   
,	TIPBON 	VARCHAR	(6)	--Tipo de bonificaci�n 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta. El valor de este campo deber� almacenarse justificado a la izquierda   
,	PANANT 	VARCHAR	(22)	--PAN anterior. El valor de este campo deber� almacenarse justificado a la izquierda        
,	FECALTA 	DATE		--Fecha de alta de la tarjeta 
,	FECULTUSO 	DATE		--Fecha de �ltima utilizaci�n de la tarjeta 
,	INDSITTAR 	DECIMAL	(2,0)	--Indicador de situaci�n (ver tabla) 
,	INDULTTAR 	VARCHAR	(2)	--Indicador de �ltima tarjeta (S/N) 
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovaci�n: 
--0� - S� renovar 	 	 		
--1� - No renovar 	 	 		
,	CODBLQ 	DECIMAL	(2,0)	--C�digo de bloqueo                 
,	FECULTBLQ 	DATE		--Fecha de �ltimo bloqueo           
,	TEXBLQ 	VARCHAR	(30)	--Comentario de bloqueo             
,	FECBAJA 	DATE		--Fecha de baja                    
,	MOTBAJA 	VARCHAR	(2)	--Motivo de baja                    
,	FECCADTAR 	DECIMAL	(6,0)	--Fecha de caducidad de la tarjeta (AAAAMM) 
,	FECCADTARANT 	DECIMAL	(6,0)	--Fecha de caducidad anterior de la tarjeta (AAAAMM) 
,	FECCOBCUO 	DECIMAL	(6,0)	--Fecha de pr�ximo cobro cuota de tarjeta (AAAAMM) 
,	OFFSET1  	DECIMAL	(4,0)	--Offset 1 del PIN 
,	OFFSET2 	DECIMAL	(4,0)	--Offset 2 del PIN 
,	PVV1 	VARCHAR	(4)	--PVV1 
,	PVV2  	VARCHAR	(4)	--PVV2 
--	 	 		
,	CODCLAVE 	VARCHAR	(3)	--C�digo de grupo criptogr�fico 
,	CODCLVANT 	VARCHAR	(3)	--C�digo de grupo criptogr�fico anterior 
,	NUMACT1 	DECIMAL	(1,0)	--N�mero de orden actual PIN 1 
,	NUMACT2 	DECIMAL	(1,0)	--N�mero de orden actual PIN 2 
,	NUMANT1 	DECIMAL	(1,0)	--N�mero de orden anterior PIN 1 
,	NUMANT2 	DECIMAL	(1,0)	--N�mero de orden anterior PIN 2 
,	INDCAMLIM 	VARCHAR	(1)	--Indicador de si afecta el cambio masivo de l�mites (S/N) 
,	INDACTLIM 	VARCHAR	(1)	--Indicador de ampliaci�n de disponible de tarjeta con saldo acreedor y movimientos de pago:  
--0������������� -El saldo acreedor de contrato y los pagos no afectan al disponible de tarjeta  	 	 		
--1������������� -El saldo acreedor de contrato no afectan al disponible de restricciones de tarjeta, los pagos si afectan al disponible de tarjeta 	 	 		
--2- El saldo acreedor afecta al disponible de restricciones de tarjeta, los pagos no afectan al disponible de tarjeta 	 	 		
--3-Los pagos y el saldo acreedor afectan al disponible de tarjeta.  	 	 		
-- 	 	 		
,	INDRESACT 	VARCHAR	(1)	--Indicador de restricci�n por sector de actividad (S/N) 
,	INDRESCOM 	VARCHAR	(1)	--Indicador de restricci�n por comercio (S/N) 
,	INDLIMFAC 	VARCHAR	(1)	--Indicador de restricci�n por importe de operaci�n (S/N) 
,	VISAPHONE 	DECIMAL	(4,0)	--C�digo VISAPHONE 
,	NUMKPIN 	DECIMAL	(2,0)	--N�mero de intentos de PIN 
,	IDEMPLEADO 	VARCHAR	(20)	--Identificador de empleado. 
,	NOMBENRED 	VARCHAR	(35)	--Nombre de estampaci�n 
,	INDFOTO 	VARCHAR	(1)	--Indicador de foto en pl�stico (S/N) 
,	REFFOTO 	VARCHAR	(30)	--Referencia de la foto, s�lo si el campo anterior est� activo 
,	CODBARR 	DECIMAL	(14,0)	--C�digo de barras  
,	CODPROMO 	VARCHAR	(3)	--C�digo de promoci�n 
,	INDEXECUO 	VARCHAR	(1)	--Indicador de exenci�n de compra en cuotas  
--0-Permite compra en cuotas y l�neas adicionales 	 	 		
--1-No Permite compra en cuotas ni l�neas adicionales 	 	 		
--2-Permite compra en cuotas pero no l�neas adicionales 3-Permite l�neas adicionales pero no compra en cuotas 	 	 		
-- 	 	 		
,	INDTAREME 	VARCHAR	(1)	--Indicador de tarjeta de emergencia (S/N) 
,	INDAPLIREST 	VARCHAR	(1)	--Indicador de aplicaci�n de restricciones de tarjeta en autorizaci�n (S/N) 
,	INDTARPROV  	VARCHAR	(1)	--Indicador de Tarjeta provisional (S/N) 
,	INDTAREMV 	DECIMAL	(1,0)	--Indicador de si la tarjeta es o no EMV: 
--0� - Tarjeta no EMV  	 	 		
--1� - Tarjeta EMV con estampaci�n Interna 	 	 		
--2� - Tarjeta EMV con estampaci�n Externa 	 	 		
,	HORBLQ 	TIME		--Hora de bloqueo 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBPLASTI;  CREATE TABLE IF NOT EXISTS STG_SAT.TBPLASTI  (
--MPDT008-Plasticos	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMPLASTICO  	DECIMAL	(12,0)	--N�mero de pl�stico   
,	FECENVEST 	DATE		--Fecha de env�o a estampaci�n 
,	FECRECEST 	DATE		--Fecha de rechazo de estampaci�n 
,	FECACUSER 	DATE		--Fecha acuse de recibo 
,	FECULTREN 	DATE		--Fecha �ltima renovaci�n 
,	FECRECTAR 	DATE		--Fecha de recuperaci�n pl�stico 
,	FCORETTAR 	DATE		--Fecha de comunicaci�n de retenci�n del pl�stico 
,	HCORETTAR 	TIME		--Hora comunicaci�n de retenci�n del pl�stico 
,	CONDEST 	VARCHAR	(3)	--Condiciones de estampaci�n 
,	ESTPLAS1 	VARCHAR	(40)	--Datos de estampaci�n a voluntad 
,	ESTPLAS2 	VARCHAR	(40)	--Datos de estampaci�n a voluntad 
,	RELTAR 	VARCHAR	(70)	--Relaci�n de tarjetas emitidas en el pl�stico. Ver nota a continuaci�n. 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
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
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBCONGEL;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCONGEL  (
--MPDT250-Cuentas Congeladas	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	NUMSECIMP	DECIMAL	(15,0)	--N�mero de secuencia del recibo impagado con formato 
--AAAAMMDDNNNNNNN 	 	 		
,	CLAMON 	DECIMAL	(3,0)	--Clave de moneda 
,	IMPORTE 	DECIMAL	(17,2)	--Importe traspasado a congelaci�n 
,	IMPORTETOT 	DECIMAL	(17,2)	--Importe total congelado. Incluye intereses y comisiones por gesti�n de cobro 
,	IMPAPL 	DECIMAL	(17,2)	--Importe aplicado (cobrado) 
,	FECALTA 	DATE		--Fecha de alta en congelaci�n 
,	FECULTAPL 	DATE		--Fecha de �ltima aplicaci�n pago 
,	FECBAJA 	DATE		--Fecha de baja en congelaci�n 
,	MOTBAJA 	DECIMAL	(2,0)	--C�digo de motivo de baja 
,	NUMULTMOV 	DECIMAL	(7,0)	--N�mero de �ltimo movimiento 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n 
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n 
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n 
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n 
,	CONTCUR 	TIMESTAMP		--Control de concurrencia 
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBCUOMEM;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCUOMEM  (
--PCDT048-Cuota membresia	 	 		
	CODENT	VARCHAR	(4)	--C�digo de entidad
,	CENTALTA	VARCHAR	(4)	--Centro de alta cuenta de tarjeta
,	CUENTA	VARCHAR	(12)	--Cuenta de tarjeta
,	NUMBENCTA	DECIMAL	(5,0)	--N�mero de beneficiario dentro de la cuenta de tarjeta
,	FECALTA	DATE		--Fecha de Activaci�n de la Tarjeta
,	CODMAR	DECIMAL	(2,0)	--C�digo de marca de tarjeta
,	INDTIPT	DECIMAL	(2,0)	--Indicador de tipo de tarjeta
,	FECCARGO	DATE		--Fecha de siguiente cargo
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	TIMESTAMP		--Control de concurrencia
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS STG_SAT.TBMEDENV_ECTA  (
--PCDT420-Medios de envio de estados de cuenta	 	 		
	CODENT	VARCHAR	(4)	--C�digo de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--N�mero de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de env�o
--�EM� � E-Mail	 	 		
--�CO�- Correo	 	 		
--�AM�- Ambos	 	 		
--�NO�- Sin medio de env�o	 	 		
,	EMAIL	VARCHAR	(30)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--C�digo de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripci�n de la oficina de abogados
,	CODVIAJFRE	VARCHAR	(25)	--C�digo de viajero frecuente
,	FECALTAVIAJ	VARCHAR	(10)	--Fecha de alta c�digo de viajero frecuente
,	INDCLICUMM	VARCHAR	(1)	--Indicador cliente cumplido para mora (S/N)
,	INDCLICUMC	VARCHAR	(1)	--Indicador de cliente cumplido para consumos
--N � No Cumple	 	 		
--C � Cliente cumplidor	 	 		
--M � Cliente medio cumplidor	 	 		
,	FECCLICUM	VARCHAR	(10)	--Fecha �ltima actualizaci�n cliente cumplido
,	CLASIFRISAT	VARCHAR	(2)	--Clasificaci�n de riesgo SAT
,	CLASIFRIREG	VARCHAR	(2)	--Clasificaci�n de riesgo regulatorios
,	CLASIFRIMDE	DECIMAL	(5,0)	--Clasificaci�n de riesgo motor de decisi�n
,	TASAEFECMAX	DECIMAL	(7,4)	--Tasa efectiva m�xima
,	REFEXTCONTR	VARCHAR	(25)	--Referencia externa de contrato
,	CONPRODT	VARCHAR	(3)	--Condici�n Econ�mica temporal
,	FECCETINI	DATE		--Fecha inicio Cond. Econ. Temporal
,	FECCETFIN	DATE		--Fecha fin Cond. Econ. Temporal
,	CONPRODO	VARCHAR	(3)	--Condici�n Econ�mica original del contrato
,	TASAFINAN	DECIMAL	(7,4)	--Tasa de financiamiento
,	CODENTUMO	VARCHAR	(4)	--Entidad �ltima modificaci�n
,	CODOFIUMO	VARCHAR	(4)	--Oficina �ltima modificaci�n
,	USUARIOUMO	VARCHAR	(8)	--Usuario �ltima modificaci�n
,	CODTERMUMO	VARCHAR	(8)	--Terminal �ltima modificaci�n
,	CONTCUR	Timestamp		--Control de concurrencia
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.TBCONBUS;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCONBUS  (
--MPDT142-Relacion de contratos de tarjeta con estructura business	 	 		
	CODENT 	VARCHAR	(4)	--C�digo de entidad 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	CODBUS 	DECIMAL	(8,0)	--C�digo de Estructura Business 
,	CODELEMENTO 	DECIMAL	(4,0)	--C�digo de Elemento dentro de la Estructura Business 
,	TIPROLCUENTA 	VARCHAR	(1)	--Tipo de rol de la cuenta en la estructura business:
--U = Cuenta de control de cuotas o actividad (�nica)	 	 		
--E = Cuenta de empleado	 	 		
,	FECALTA 	DATE		--Fecha de alta 
,	FECBAJA 	DATE		--Fecha de baja 
,	CODENTUMO 	VARCHAR	(4)	--Entidad �ltima modificaci�n                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina �ltima modificaci�n                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario �ltima modificaci�n                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal �ltima modificaci�n                          
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