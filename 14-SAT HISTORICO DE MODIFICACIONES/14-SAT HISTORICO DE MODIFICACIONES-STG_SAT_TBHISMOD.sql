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