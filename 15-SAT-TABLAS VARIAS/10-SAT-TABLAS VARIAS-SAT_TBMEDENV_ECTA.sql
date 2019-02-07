drop table IF EXISTS SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS SAT.TBMEDENV_ECTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
--PCDT420-Medios de envio de estados de cuenta	 	 		
,	CODENT	VARCHAR	(4)	--Código de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--Número de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de envío
--‘EM’ – E-Mail	 	 		
--‘CO’- Correo	 	 		
--‘AM’- Ambos	 	 		
--‘NO’- Sin medio de envío	 	 		
,	EMAIL	VARCHAR	(30)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--Código de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripción de la oficina de abogados
,	CODVIAJFRE	VARCHAR	(25)	--Código de viajero frecuente
,	FECALTAVIAJ	VARCHAR	(10)	--Fecha de alta código de viajero frecuente
,	INDCLICUMM	VARCHAR	(1)	--Indicador cliente cumplido para mora (S/N)
,	INDCLICUMC	VARCHAR	(1)	--Indicador de cliente cumplido para consumos
--N – No Cumple	 	 		
--C – Cliente cumplidor	 	 		
--M – Cliente medio cumplidor	 	 		
,	FECCLICUM	VARCHAR	(10)	--Fecha última actualización cliente cumplido
,	CLASIFRISAT	VARCHAR	(2)	--Clasificación de riesgo SAT
,	CLASIFRIREG	VARCHAR	(2)	--Clasificación de riesgo regulatorios
,	CLASIFRIMDE	DECIMAL	(5,0)	--Clasificación de riesgo motor de decisión
,	TASAEFECMAX	DECIMAL	(7,4)	--Tasa efectiva máxima
,	REFEXTCONTR	VARCHAR	(25)	--Referencia externa de contrato
,	CONPRODT	VARCHAR	(3)	--Condición Económica temporal
,	FECCETINI	DATE		--Fecha inicio Cond. Econ. Temporal
,	FECCETFIN	DATE		--Fecha fin Cond. Econ. Temporal
,	CONPRODO	VARCHAR	(3)	--Condición Económica original del contrato
,	TASAFINAN	DECIMAL	(7,4)	--Tasa de financiamiento
,	CODENTUMO	VARCHAR	(4)	--Entidad última modificación
,	CODOFIUMO	VARCHAR	(4)	--Oficina última modificación
,	USUARIOUMO	VARCHAR	(8)	--Usuario última modificación
,	CODTERMUMO	VARCHAR	(8)	--Terminal última modificación
,	CONTCUR	Timestamp		--Control de concurrencia
,	MIS_DATE	DATE		--Fecha de generación de informacion
); COMMIT;	 	 		