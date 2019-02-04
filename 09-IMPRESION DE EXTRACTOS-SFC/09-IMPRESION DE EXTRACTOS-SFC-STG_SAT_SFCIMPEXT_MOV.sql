drop table IF EXISTS STG_SAT.SFCIMPEXT_MOV;  CREATE TABLE IF NOT EXISTS STG_SAT.SFCIMPEXT_MOV  ( 
	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevar� el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--C�digo de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--C�digo de Cinta.  C�digo reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevar� el valor fijo �02�	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--N�mero de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de movimientos llevar� el valor �02�
,	FECALTMV	VARCHAR	(8)	--Fecha de entrada del movimiento. Formato AAAAMMDD
,	TEXEXTRA	VARCHAR	(120)	--Texto del Movimiento para el extracto.
,	PUNOBTEN	DECIMAL	(13,0)	--Puntos generados.
,	FILLER1	VARCHAR	(383)	--Campo libre
); COMMIT;	 	 		