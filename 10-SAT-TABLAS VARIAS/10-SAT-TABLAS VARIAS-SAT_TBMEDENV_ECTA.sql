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