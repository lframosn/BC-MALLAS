drop table IF EXISTS STG_SAT.SFCIMPEXT_CTA;  CREATE TABLE IF NOT EXISTS STG_SAT.SFCIMPEXT_CTA  ( 	
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
