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