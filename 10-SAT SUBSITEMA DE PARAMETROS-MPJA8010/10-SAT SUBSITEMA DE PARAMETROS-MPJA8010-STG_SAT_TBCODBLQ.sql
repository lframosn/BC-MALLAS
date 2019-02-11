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