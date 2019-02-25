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
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		