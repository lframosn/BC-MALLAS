drop table IF EXISTS STG_SAT.SFCIMPEXT_PTO;  CREATE TABLE IF NOT EXISTS STG_SAT.SFCIMPEXT_PTO  (
	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de total puntos llevará el valor ‘03’
,	TIPOPUNT	VARCHAR	(2)	--Código de Tipo de Puntos. 
,	SALULTEX	DECIMAL	(13,0)	--Saldo anterior, correspondiente al último extracto generado.
,	SALACTUA	DECIMAL	(13,0)	--Saldo actual.
,	FILLER1	VARCHAR	(496)	--Campo libre
); COMMIT;	 	 		