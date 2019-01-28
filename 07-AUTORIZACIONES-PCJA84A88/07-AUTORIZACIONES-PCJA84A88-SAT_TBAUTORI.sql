drop table IF EXISTS SAT.TBAUTORI;  CREATE TABLE IF NOT EXISTS SAT.TBAUTORI  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	TIPOMSGON 	VARCHAR	(4)	--Código de mensaje on-line 
,	CODPROON 	DECIMAL	(6,0)	--Código de proceso on-line 
,	SIAIDCD 	VARCHAR	(19)	--Código de identificación SIA. Está compuesto de la sesión de SIA y del identificador del mensaje. 
,	PAN 	VARCHAR	(22)	--PAN de la tarjeta que realizó la operación. El valor de este campo deberá almacenarse justificado a la izquierda 
,	CODMAR 	DECIMAL	(2,0)	--Código de marca de tarjeta 
,	INDTIPT 	DECIMAL	(2,0)	--Indicador de tipo de tarjeta 
,	INDDEBCRE 	DECIMAL	(1,0)	--Indicador de operatividad de la operación: 
--1  – Crédito  	 	 		
--2  – Débito 	 	 		
--5  – Prepago Regalo 	 	 		
--6  – Prepago  	 	 		
,	IMPTRN 	DECIMAL	(17,2)	--Importe de la transacción 
,	CLAMONTRN 	DECIMAL	(3,0)	--Código de moneda de la transacción 
,	IMPCCA 	DECIMAL	(17,2)	--Importe de conciliación 
,	CLAMONCCA 	DECIMAL	(3,0)	--Código de moneda de conciliación 
,	IMPDIV 	DECIMAL	(17,2)	--Importe en divisa original 
,	CLAMONDIV 	DECIMAL	(3,0)	--Código de moneda de la divisa original 
,	FECTRN 	DATE		--Fecha de la transacción 
,	HORTRN 	TIME		--Hora de la transacción 
,	CMBAPLI 	DECIMAL	(9,4)	--Factor de cambio aplicado (sólo tiene sentido para operaciones en el extranjero) 
,	CODACT 	DECIMAL	(4,0)	--Código de actividad 
,	CODPAIS 	DECIMAL	(3,0)	--Código del país 
,	MODENTDAT 	VARCHAR	(12)	--Modo de entrada de datos 
,	SESIONORI 	VARCHAR	(12)	--Sesión origen 
,	SESIONSIA 	VARCHAR	(7)	--Sesión establecida entre SIA y SAT 
,	IMPTASAS 	DECIMAL	(17,2)	--Importe de las tasas 
,	IDADQUIR 	VARCHAR	(11)	--Identificador de adquirente 
,	CODRED 	VARCHAR	(11)	--Código de la red o elemento SIA que envío el mensaje 
,	NUMREFOPE 	DECIMAL	(12,0)	--Número operación original 
,	IDTERM 	VARCHAR	(16)	--Identificador del terminal 
,	CODCOM 	VARCHAR	(15)	--Código de comercio 
,	NOMCOM 	VARCHAR	(15)	--Nombre del establecimiento 
,	LOCALIDAD 	VARCHAR	(15)	--Localidad del comercio 
,	RTSITD 	VARCHAR	(40)	--Clave de franquicia 
,	DATORI 	VARCHAR	(30)	--Datos del origen. Podrá venir la clave de franquicia de la operación original 
,	NUMAUT 	VARCHAR	(6)	--Número de autorización 
,	CODRESPU 	VARCHAR	(3)	--Código respuesta 
,	CODACCRED 	DECIMAL	(3,0)	--Código de acción de red 
,	TIPFRAN 	DECIMAL	(4,0)	--Código de la franquicia 
,	INDNORCOR 	DECIMAL	(1,0)	--Indicador de normal o correctora:  
--0 - Normal	 	 		
--1 – Correctora 	 	 		
,	TIPOFAC 	DECIMAL	(4,0)	--Tipo de factura 
,	INDPREAUT 	DECIMAL	(1,0)	--Indicador de preautorización: 
--0  - Normal 	 	 		
--1  - Preautorización 	 	 		
--2  - Preautorización confirmada 	 	 		
--3  - Confirmación de la preautorización 	 	 		
,	INDCRUCE 	DECIMAL	(1,0)	--Indicativo de cruce: 
--0  – No cruzada 	 	 		
--1  – Cruzada 	 	 		
--2  – Expirada 	 	 		
--3  – Cruzada manual 	 	 		
--4  – Cruzada manual y cruzada 	 	 		
--5  – Cruzada manual y expirada 	 	 		
--8  – Contable 	 	 		
--9  – Comunicación contable errónea 	 	 		
,	INDANUL 	DECIMAL	(1,0)	--Indicativo de anulación 
,	INDRETSAL 	VARCHAR	(1)	--Indicador de retención de saldo 
,	IMPTRNCON 	DECIMAL	(17,2)	--Importe transacción en moneda del contrato 
,	IMPAUTCON 	DECIMAL	(17,2)	--Importe total autorizado en moneda del contrato 
,	CLAMONCON 	DECIMAL	(3,0)	--Clave de moneda del contrato 
,	FECCONTA 	DATE		--Fecha contable 
,	NUMRETSAL 	DECIMAL	(10,0)	--Número de retención en saldo 
,	IMPRETSAL 	DECIMAL	(17,2)	--Importe de retención de saldo 
,	CLAMONRET 	DECIMAL	(3,0)	--Clave de moneda de la retención de saldo 
,	CENTALTA 	VARCHAR	(4)	--Centro de alta cuenta de tarjeta 
,	CUENTA 	VARCHAR	(12)	--Cuenta de tarjeta 
,	IMPPROP 	DECIMAL	(17,2)	--Importe de la propina                    
,	ACCEMICRE 	VARCHAR	(1)	--Acción de evento emisor crédito: 
--0     – No acción 	 	 		
--1     – Actualizar saldo autorizado  	 	 		
--2     – Actualizar saldo dispuesto (single message) 	 	 		
--3     – No acción con cálculo de comisión  	 	 		
--4     – Actualización de saldo autorizado con cálculo de comisión  	 	 		
,	ACCEMIDEB 	VARCHAR	(1)	--Acción de evento emisor débito: 
--0      – No acción 	 	 		
--1      – Retener (el movimiento y conceptos se incluirá con la operación en batch) 	 	 		
--2      – Pasivo (el movimiento y conceptos se incluirá con la operación en batch) 	 	 		
--3      – Pasivo con comisión (se incluye movimiento en tiempo de autorización, aunque posteriormente llegue operación) 	 	 		
--4      – Pasivo sin comisión (single message) 	 	 		
--5      – Pasivo con comisión (single message) 	 	 		
--6      – Retener con comisión (el movimiento y conceptos se incluirá con la operación en batch) 	 	 		
--7  – No acción con cálculo de comisión  	 	 		
--8  – Pasivo con cálculo de comisión  	 	 		
,	ACCMERCH 	VARCHAR	(1)	--Acción de evento merchant: 
---            0 - No acción 	 	 		
---            1 - Grabar operación en remesas+actualización saldos 	 	 		
---            2 – Actualización de saldos del comercio 	 	 		
,	INDPROINC 	VARCHAR	(1)	--Indicador de si se ha abonado al cliente en la en la expiración (S/N) 
,	FECCADTAR 	DECIMAL	(6,0)	--Fecha de caducidad de la tarjeta 
,	CALFRAUDE 	VARCHAR	(3)	--Calificación de fraude 
,	NUMPASIVO 	VARCHAR	(24)	--Número interno de operación asignado por pasivo 
,	CODBLQFRA 	VARCHAR	(2)	--Código de bloqueo de la franquicia 
,	TIPOLIN  	VARCHAR	(4)	--Tipo de línea 
,	LINREF  	DECIMAL	(8,0)	--Referencia del tipo de línea 
,	TIPOLIM  	VARCHAR	(1)	--Indicador de tipo de límite de la línea: 
--A: Límite adicional (no depende del disponible del contrato)  	 	 		
--C: Límite compartido (dependiente del contrato)  	 	 		
,	FORPAGO  	DECIMAL	(2,0)	--Forma de pago de la operación en el origen 
,	RESOLUTOR  	VARCHAR	(11)	--Identificador de la red o elemento SWITCH que autorizó la operación. 
,	COMISION 	DECIMAL	(17,2)	--Comisión de la operación 
,	IMPUESTO 	DECIMAL	(17,2)	--Impuesto de la operación 
,	CODENTUMO 	VARCHAR	(4)	--Entidad última modificación                           
,	CODOFIUMO 	VARCHAR	(4)	--Oficina última modificación                           
,	USUARIOUMO 	VARCHAR	(8)	--Usuario última modificación                           
,	CODTERMUMO 	VARCHAR	(8)	--Terminal última modificación                          
,	CONTCUR 	TIMESTAMP		--Control de concurrencia                               
,	DATADI 	VARCHAR	(650)	--Datos adicionales 
--	 	 		
); COMMIT;	 	 		
