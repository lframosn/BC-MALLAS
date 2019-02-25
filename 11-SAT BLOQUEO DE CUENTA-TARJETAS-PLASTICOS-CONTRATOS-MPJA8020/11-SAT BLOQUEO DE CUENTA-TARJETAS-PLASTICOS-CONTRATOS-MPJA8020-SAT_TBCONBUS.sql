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
,	MIS_DATE	DATE		--Fecha de generaci�n de informacion
); COMMIT;	 	 		
