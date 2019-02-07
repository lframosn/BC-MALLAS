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