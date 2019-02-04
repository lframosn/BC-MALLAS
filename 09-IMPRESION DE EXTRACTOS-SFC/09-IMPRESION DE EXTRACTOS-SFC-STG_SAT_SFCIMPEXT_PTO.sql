drop table IF EXISTS STG_SAT.SFCIMPEXT_PTO;  CREATE TABLE IF NOT EXISTS STG_SAT.SFCIMPEXT_PTO  (
	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevar� el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--C�digo de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--C�digo de Cinta.  C�digo reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevar� el valor fijo �02�	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--N�mero de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de total puntos llevar� el valor �03�
,	TIPOPUNT	VARCHAR	(2)	--C�digo de Tipo de Puntos. 
,	SALULTEX	DECIMAL	(13,0)	--Saldo anterior, correspondiente al �ltimo extracto generado.
,	SALACTUA	DECIMAL	(13,0)	--Saldo actual.
,	FILLER1	VARCHAR	(496)	--Campo libre
); COMMIT;	 	 		