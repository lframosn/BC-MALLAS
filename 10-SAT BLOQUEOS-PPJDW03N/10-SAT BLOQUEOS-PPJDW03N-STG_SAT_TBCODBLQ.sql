drop table IF EXISTS STG_SAT.TBCODBLQ;  CREATE TABLE IF NOT EXISTS STG_SAT.TBCODBLQ  (
--MPDT060 - BLOQUEOS	 	 		
	CODENT_D	VARCHAR	(4)	--CODIGO DE ENTIDAD
,	NSECFIC_D	DECIMAL	(10,0)	--NUMERO DE SECUENCIA DE LA CINTA
,	TIPOCINTA_D	DECIMAL	(2,0)	--TIPO DE LA CINTA
,	TIPOREG_D	VARCHAR	(1)	--TIPO DE REGISTRO D = DETALLE 
,	FILLER_D	VARCHAR	(91)	--FILLER
,	NUMREGPROC	DECIMAL	(12,0)	--NUMERO DE REGISTRO PROCESADO
,	CODENT 	VARCHAR	(4)	--Código de entidad 
,	CODBLQ 	DECIMAL	(2,0)	--Código de bloqueo 
,	DESBLQ 	VARCHAR	(30)	--Descripción del bloqueo 
,	DESBLQRED 	VARCHAR	(10)	--Descripción reducida del bloqueo 
,	INDAPLEMISOR 	VARCHAR	(1)	--Indicador de aplicación en vertiente emisor:
--C – Contrato de tarjeta	 	 		
--T – Tarjeta	 	 		
--A – Ambos	 	 		
,	CODBLQSIA 	VARCHAR	(2)	--Código de bloqueo para el SIA o Switch:
--‘00’ – Tarjeta operativa	 	 		
--‘01’ – Denegar sin retener	 	 		
--‘02’ – Denegar en respaldo	 	 		
--‘03’ – Retener tarjeta	 	 		
--‘06’- Denegar tarjeta robada	 	 		
--‘07’- Denegar tarjeta perdida	 	 		
--‘08’- Sospechoso fraude	 	 		
,	INDBLQOPE 	VARCHAR	(1)	--Bloquea operatividad:
--N: Sin bloqueo	 	 		
--S: Bloqueo de Operaciones	 	 		
--T: Bloqueo de Operaciones y Pagos	 	 		
,	INDNOREN 	DECIMAL	(1,0)	--Indicador de no renovación:
--0 – Sí renovar	 	 		
--1 – No renovar	 	 		
,	INDENVRED 	VARCHAR	(1)	--Indicador de envío a red o franquicia (S/N) 
,	INDGENCUO 	VARCHAR	(1)	--Indicador de generación de cuota 
,	INDBONCUO 	VARCHAR	(1)	--Indicador de bonificación de cuota 
,	INDBLQCON 	VARCHAR	(1)	--Indicador bloqueo consulta (S/N) 
,	INDBLQLIQ 	VARCHAR	(1)	--Indicador de bloqueo de liquidación (S/N) 
,	PESO 	DECIMAL	(2,0)	--Peso del bloqueo 
,	INDREVER 	VARCHAR	(1)	--Indicador de reversibilidad (S/N) 
,	INDREEM 	VARCHAR	(1)	--Indicador de permiso de reemisión para el estado (S/N) 
,	INDCMBPAN 	VARCHAR	(1)	--Indicador de cambio de PAN en la reemisión de la tarjeta (S/N) 
,	INDLIQDEU 	VARCHAR	(1)	--Indicador de aceleración de deuda al extracto pendiente 
,	FILLER1	VARCHAR	(818)	--FILLER
); COMMIT;	 	 		
