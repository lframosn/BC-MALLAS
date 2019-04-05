drop table IF EXISTS STG_SAT.TBMEDENV_ECTA;  CREATE TABLE IF NOT EXISTS STG_SAT.TBMEDENV_ECTA  ( 
--PCDT420-Medios de envio de estados de cuenta	 	 		
 	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT	VARCHAR	(4)	--Código de entidad
,	CENTALTA	VARCHAR	(4)	--Entidad de alta
,	CUENTA	VARCHAR	(12)	--Número de contrato
,	MEDIOENVIO	VARCHAR	(2)	--Medio de envío
--‘EM’ – E-Mail	 	 		
--‘CO’- Correo	 	 		
--‘AM’- Ambos	 	 		
--‘NO’- Sin medio de envío	 	 		
,	EMAIL	VARCHAR	(100)	--E-mail encriptado
,	FECBAJA	VARCHAR	(10)	--Fecha de baja
,	CODOFIABO	VARCHAR	(4)	--Código de oficina de abogados
,	DESCOFABOG	VARCHAR	(30)	--Descripción de la oficina de abogados
,	FECALTAABOG	DATE		--FECHA ALTA OFICINA DE ABOGADOS
,	FECBAJAABOG	DATE		--FECHA BAJA OFICINA DE ABOGADOS
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
,	FILLER1	VARCHAR	(573)	--FILLER
); COMMIT;	 	 		
