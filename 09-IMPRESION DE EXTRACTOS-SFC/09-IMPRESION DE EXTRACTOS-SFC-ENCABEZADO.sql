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
--En este caso llevar� el valor fijo C. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--C�digo de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
--Debe existir en la Tabla de Entidades de SFC.	 	 		
,	CODCINTA	VARCHAR	(2)	--C�digo de Cinta.  C�digo reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevar� el valor fijo �02�	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--N�mero de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias.
,	NUMTOTRE	DECIMAL	(9,0)	--N�mero total de registros de detalle enviados.
,	FECENVIO	VARCHAR	(8)	--Fecha de Env�o de la cinta. Formato AAAAMMDD
,	HORAENVI	VARCHAR	(8)	--Hora env�o de la cinta. Formato hh:mm:ss
); COMMIT;	 	 		
