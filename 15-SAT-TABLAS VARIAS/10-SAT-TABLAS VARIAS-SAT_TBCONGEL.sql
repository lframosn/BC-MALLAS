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