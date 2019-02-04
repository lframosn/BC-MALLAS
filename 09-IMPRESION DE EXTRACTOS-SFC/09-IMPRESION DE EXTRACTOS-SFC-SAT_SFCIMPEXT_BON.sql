drop table IF EXISTS SAT.SFCIMPEXT_BON;  CREATE TABLE IF NOT EXISTS SAT.SFCIMPEXT_BON  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de puntos bonificados llevará el valor ‘07’
,	PUNTBONI	DECIMAL	(13,0)	--Puntos bonificados
,	FILLER1	VARCHAR	(511)	--Campo libre
); COMMIT;	 	 		