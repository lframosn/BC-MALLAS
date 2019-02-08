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

drop table IF EXISTS SAT.SFCIMPEXT_CTA;  CREATE TABLE IF NOT EXISTS SAT.SFCIMPEXT_CTA  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento.
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de Cuenta llevará el valor ‘01’
,	CODAPLRE	VARCHAR	(8)	--Código de aplicación receptora.
,	CODPROGR	VARCHAR	(8)	--Código de Programa de Fidelización. 
,	DESCCPRO	VARCHAR	(20)	--Descripción Corta de Programa.
--Esta breve descripción permitirá identificar, más claramente, el código de Programa en cualquier punto del sistema en el que aparezca.	 	 		
,	NUMEXTRA	DECIMAL	(6,0)	--Código (Nº) de  Extracto.
,	FECHPENV	VARCHAR	(8)	--Fecha de Apertura. Formato AAAAMMDD
,	FECHPROC	VARCHAR	(8)	--Fecha de Proceso. Formato AAAAMMDD
,	TIPIDCLI	VARCHAR	(2)	--Código del tipo identificador de cliente.  
,	DESCTIDC	VARCHAR	(30)	--Descripción del identificador.  (ejemplo tipo ‘01’ ‘DNI’)
,	IDCLIENT	VARCHAR	(20)	--Cliente titular de la Cuenta. 
,	CODCUENT	VARCHAR	(20)	--Código (Nº) de Cuenta. Identificador de la Cuenta de la que se obtiene el Extracto de puntos.
,	FECHALTA	VARCHAR	(8)	--Fecha de Alta. Formato AAAAMMDD
,	INDBLQAC	VARCHAR	(1)	--Indicador de bloqueo para acumular puntos en la Cuenta. Con los siguientes valores admitidos.
--‘0’ Desbloqueado	 	 		
--‘1’ Bloqueado 	 	 		
,	FECBLQAC	VARCHAR	(8)	--Fecha de bloqueo para acumulación. Formato AAAAMMDD
,	TEXBLQAC	VARCHAR	(120)	--Texto de bloqueo para acumulación
,	INDBLQRD	VARCHAR	(1)	--Indicador de bloqueo para redención de los Puntos de la Cuenta. Con los siguientes valores admitidos.
--‘0’ Desbloqueado	 	 		
--‘1’ Bloqueado	 	 		
,	FECBLQRD	VARCHAR	(8)	--Fecha de bloqueo por redención. Formato AAAAMMDD
,	TEXBLOQRD	VARCHAR	(120)	--Texto de bloqueo por redención. Formato AAAAMMDD
,	CODCATAL	VARCHAR	(8)	--Código de Catálogo
,	DESCATAL	VARCHAR	(120)	--Descripción de Catálogo
); COMMIT;	 	 		
drop table IF EXISTS SAT.SFCIMPEXT_MOV;  CREATE TABLE IF NOT EXISTS SAT.SFCIMPEXT_MOV  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de movimientos llevará el valor ‘02’
,	FECALTMV	VARCHAR	(8)	--Fecha de entrada del movimiento. Formato AAAAMMDD
,	TEXEXTRA	VARCHAR	(120)	--Texto del Movimiento para el extracto.
,	PUNOBTEN	DECIMAL	(13,0)	--Puntos generados.
,	FILLER1	VARCHAR	(383)	--Campo libre
); COMMIT;	 	 		
drop table IF EXISTS SAT.SFCIMPEXT_PTO;  CREATE TABLE IF NOT EXISTS SAT.SFCIMPEXT_PTO  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
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
drop table IF EXISTS SAT.SFCIMPEXT_CAD;  CREATE TABLE IF NOT EXISTS SAT.SFCIMPEXT_CAD  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de puntos próximos a caducar  llevará el valor ‘06’
,	PUNTCADU	DECIMAL	(13,0)	--Puntos próximos a caducar.
,	FECHPROR	VARCHAR	(8)	--Fecha máxima a caducar. Formato AAAAMMDD
,	FILLER1	VARCHAR	(503)	--Campo libre.
); COMMIT;	 	 		
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

drop table IF EXISTS STG_SAT.SFCIMPEXT_CTA;  CREATE TABLE IF NOT EXISTS STG_SAT.SFCIMPEXT_CTA  (
	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento.
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de Cuenta llevará el valor ‘01’
,	CODAPLRE	VARCHAR	(8)	--Código de aplicación receptora.
,	CODPROGR	VARCHAR	(8)	--Código de Programa de Fidelización. 
,	DESCCPRO	VARCHAR	(20)	--Descripción Corta de Programa.
--Esta breve descripción permitirá identificar, más claramente, el código de Programa en cualquier punto del sistema en el que aparezca.	 	 		
,	NUMEXTRA	DECIMAL	(6,0)	--Código (Nº) de  Extracto.
,	FECHPENV	VARCHAR	(8)	--Fecha de Apertura. Formato AAAAMMDD
,	FECHPROC	VARCHAR	(8)	--Fecha de Proceso. Formato AAAAMMDD
,	TIPIDCLI	VARCHAR	(2)	--Código del tipo identificador de cliente.  
,	DESCTIDC	VARCHAR	(30)	--Descripción del identificador.  (ejemplo tipo ‘01’ ‘DNI’)
,	IDCLIENT	VARCHAR	(20)	--Cliente titular de la Cuenta. 
,	CODCUENT	VARCHAR	(20)	--Código (Nº) de Cuenta. Identificador de la Cuenta de la que se obtiene el Extracto de puntos.
,	FECHALTA	VARCHAR	(8)	--Fecha de Alta. Formato AAAAMMDD
,	INDBLQAC	VARCHAR	(1)	--Indicador de bloqueo para acumular puntos en la Cuenta. Con los siguientes valores admitidos.
--‘0’ Desbloqueado	 	 		
--‘1’ Bloqueado 	 	 		
,	FECBLQAC	VARCHAR	(8)	--Fecha de bloqueo para acumulación. Formato AAAAMMDD
,	TEXBLQAC	VARCHAR	(120)	--Texto de bloqueo para acumulación
,	INDBLQRD	VARCHAR	(1)	--Indicador de bloqueo para redención de los Puntos de la Cuenta. Con los siguientes valores admitidos.
--‘0’ Desbloqueado	 	 		
--‘1’ Bloqueado	 	 		
,	FECBLQRD	VARCHAR	(8)	--Fecha de bloqueo por redención. Formato AAAAMMDD
,	TEXBLOQRD	VARCHAR	(120)	--Texto de bloqueo por redención. Formato AAAAMMDD
,	CODCATAL	VARCHAR	(8)	--Código de Catálogo
,	DESCATAL	VARCHAR	(120)	--Descripción de Catálogo
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.SFCIMPEXT_MOV;  CREATE TABLE IF NOT EXISTS STG_SAT.SFCIMPEXT_MOV  (
	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de movimientos llevará el valor ‘02’
,	FECALTMV	VARCHAR	(8)	--Fecha de entrada del movimiento. Formato AAAAMMDD
,	TEXEXTRA	VARCHAR	(120)	--Texto del Movimiento para el extracto.
,	PUNOBTEN	DECIMAL	(13,0)	--Puntos generados.
,	FILLER1	VARCHAR	(383)	--Campo libre
); COMMIT;	 	 		
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
drop table IF EXISTS STG_SAT.SFCIMPEXT_CAD;  CREATE TABLE IF NOT EXISTS STG_SAT.SFCIMPEXT_CAD  (
	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de puntos próximos a caducar  llevará el valor ‘06’
,	PUNTCADU	DECIMAL	(13,0)	--Puntos próximos a caducar.
,	FECHPROR	VARCHAR	(8)	--Fecha máxima a caducar. Formato AAAAMMDD
,	FILLER1	VARCHAR	(503)	--Campo libre.
); COMMIT;	 	 		
drop table IF EXISTS STG_SAT.SFCIMPEXT_BON;  CREATE TABLE IF NOT EXISTS STG_SAT.SFCIMPEXT_BON  (
	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevará el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--Código de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--Código de Cinta.  Código reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevará el valor fijo ‘02’	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--Número de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de puntos bonificados llevará el valor ‘07’
,	PUNTBONI	DECIMAL	(13,0)	--Puntos bonificados
,	FILLER1	VARCHAR	(511)	--Campo libre
); COMMIT;	 	 		


------------------------------------------------
---- CONTROL DE VERSION ------------------------
------------------------------------------------
create table IF NOT EXISTS CNF.VERSION_OBJETOS (
 NOMBRE_MALLA varchar(100)
,OBJECT_NAME varchar(100)
,OBJECT_USER varchar(20)
,VERSION_COMMIT VARCHAR(100)
,VERSION_CODE VARCHAR(20)
,VERSION_DATE DATETIME
,CRDATE DATETIME null default getdate()
,CRUSER varchar(20) null default user_name()
)
;
COMMIT;

declare 
 @NOMBRE_MALLA varchar(100)
,@OBJECT_NAME varchar(100)
,@OBJECT_USER varchar(20)
,@VERSION_COMMIT VARCHAR(100)
,@VERSION_CODE VARCHAR(20)
,@VERSION_DATE DATETIME 
,@CRDATE DATETIME

select 
 @NOMBRE_MALLA = 'SFC'
,@OBJECT_NAME = 'SFCIMPEXT_BON'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '4ebb46a78c8d7cf2902e27f124d4095a9b57aeb7'
,@VERSION_CODE = '4ebb46a'
,@VERSION_DATE = 'February 4, 2019 3:38:11 PM'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'SFCIMPEXT_CAD'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'SFCIMPEXT_CTA'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'SFCIMPEXT_MOV'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'SFCIMPEXT_PTO'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'SFCIMPEXT_BON'
,@OBJECT_USER = 'STG_SAT'
,@VERSION_COMMIT = 'bf181cb485b50365ec2361aea73de7151a4c45cb'
,@VERSION_CODE = 'bf181cb'
,@VERSION_DATE = 'February 4, 2019 3:46:45 PM'

,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'SFCIMPEXT_CAD'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'SFCIMPEXT_CTA'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'SFCIMPEXT_MOV'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

select 
 @OBJECT_NAME = 'SFCIMPEXT_PTO'
,@CRDATE = NULL

SELECT @CRDATE = create_time 
FROM SYSUSERS U, SYSTABLE T, SYSIQTABLE S
where T.table_name = @OBJECT_NAME
  and T.creator = U.uid
  and U.name = @OBJECT_USER
  and T.table_id = S.table_id
if @CRDATE IS NULL SELECT @CRDATE = getdate()

IF EXISTS(SELECT 1 from CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE)
  DELETE CNF.VERSION_OBJETOS where OBJECT_NAME = @OBJECT_NAME AND OBJECT_USER = @OBJECT_USER AND VERSION_CODE = @VERSION_CODE
insert CNF.VERSION_OBJETOS (
 NOMBRE_MALLA, OBJECT_NAME ,OBJECT_USER ,VERSION_COMMIT ,VERSION_CODE ,VERSION_DATE ,CRDATE
)
select 
 @NOMBRE_MALLA, @OBJECT_NAME ,@OBJECT_USER ,@VERSION_COMMIT,@VERSION_CODE ,@VERSION_DATE ,@CRDATE 

COMMIT;