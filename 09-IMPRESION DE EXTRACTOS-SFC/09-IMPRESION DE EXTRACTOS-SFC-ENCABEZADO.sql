--- creacion de grupo de usuarios SAT
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'SAT')
BEGIN
  CREATE USER SAT 
  FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

--- creacion de grupo de usuarios STG_SAT
IF NOT EXISTS (SELECT 1 FROM DBO.SYSUSERS WHERE name = 'STG_SAT')
BEGIN
  CREATE USER STG_SAT
  FORCE PASSWORD CHANGE OFF;
END;
COMMIT;

drop table IF EXISTS SAT.IMPEXTENC;  CREATE TABLE IF NOT EXISTS SAT.IMPEXTENC  ( 	IDENTIFICADOR_EJECUCION	INTEGER IDENTITY		--IDENTIFICADOR UNICO DE CARGA
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo C. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
--Debe existir en la Tabla de Entidades de SFC.	 	 		
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias.
,	NUMTOTRE	DECIMAL	(9,0)	--Número total de registros de detalle enviados.
,	FECENVIO	VARCHAR	(8)	--Fecha de Envío de la cinta. Formato AAAAMMDD
,	HORAENVI	VARCHAR	(8)	--Hora envío de la cinta. Formato hh:mm:ss
); COMMIT;	 	 		
