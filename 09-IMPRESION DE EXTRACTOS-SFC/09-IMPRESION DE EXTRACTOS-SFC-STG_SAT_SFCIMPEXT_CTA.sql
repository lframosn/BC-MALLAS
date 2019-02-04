drop table IF EXISTS STG_SAT.SFCIMPEXT_CTA;  CREATE TABLE IF NOT EXISTS STG_SAT.SFCIMPEXT_CTA  ( 	
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevar� el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--C�digo de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento.
,	CODCINTA	VARCHAR	(2)	--C�digo de Cinta.  C�digo reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevar� el valor fijo �02�	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--N�mero de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de Cuenta llevar� el valor �01�
,	CODAPLRE	VARCHAR	(8)	--C�digo de aplicaci�n receptora.
,	CODPROGR	VARCHAR	(8)	--C�digo de Programa de Fidelizaci�n. 
,	DESCCPRO	VARCHAR	(20)	--Descripci�n Corta de Programa.
--Esta breve descripci�n permitir� identificar, m�s claramente, el c�digo de Programa en cualquier punto del sistema en el que aparezca.	 	 		
,	NUMEXTRA	DECIMAL	(6,0)	--C�digo (N�) de  Extracto.
,	FECHPENV	VARCHAR	(8)	--Fecha de Apertura. Formato AAAAMMDD
,	FECHPROC	VARCHAR	(8)	--Fecha de Proceso. Formato AAAAMMDD
,	TIPIDCLI	VARCHAR	(2)	--C�digo del tipo identificador de cliente.  
,	DESCTIDC	VARCHAR	(30)	--Descripci�n del identificador.  (ejemplo tipo �01� �DNI�)
,	IDCLIENT	VARCHAR	(20)	--Cliente titular de la Cuenta. 
,	CODCUENT	VARCHAR	(20)	--C�digo (N�) de Cuenta. Identificador de la Cuenta de la que se obtiene el Extracto de puntos.
,	FECHALTA	VARCHAR	(8)	--Fecha de Alta. Formato AAAAMMDD
,	INDBLQAC	VARCHAR	(1)	--Indicador de bloqueo para acumular puntos en la Cuenta. Con los siguientes valores admitidos.
--�0� Desbloqueado	 	 		
--�1� Bloqueado 	 	 		
,	FECBLQAC	VARCHAR	(8)	--Fecha de bloqueo para acumulaci�n. Formato AAAAMMDD
,	TEXBLQAC	VARCHAR	(120)	--Texto de bloqueo para acumulaci�n
,	INDBLQRD	VARCHAR	(1)	--Indicador de bloqueo para redenci�n de los Puntos de la Cuenta. Con los siguientes valores admitidos.
--�0� Desbloqueado	 	 		
--�1� Bloqueado	 	 		
,	FECBLQRD	VARCHAR	(8)	--Fecha de bloqueo por redenci�n. Formato AAAAMMDD
,	TEXBLOQRD	VARCHAR	(120)	--Texto de bloqueo por redenci�n. Formato AAAAMMDD
,	CODCATAL	VARCHAR	(8)	--C�digo de Cat�logo
,	DESCATAL	VARCHAR	(120)	--Descripci�n de Cat�logo
); COMMIT;	 	 		
drop table IF EXISTS SAT.SFCIMPEXT_MOV;  CREATE TABLE IF NOT EXISTS SAT.SFCIMPEXT_MOV  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
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
drop table IF EXISTS SAT.SFCIMPEXT_PTO;  CREATE TABLE IF NOT EXISTS SAT.SFCIMPEXT_PTO  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
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
drop table IF EXISTS SAT.SFCIMPEXT_CAD;  CREATE TABLE IF NOT EXISTS SAT.SFCIMPEXT_CAD  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevar� el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--C�digo de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--C�digo de Cinta.  C�digo reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevar� el valor fijo �02�	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--N�mero de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de puntos pr�ximos a caducar  llevar� el valor �06�
,	PUNTCADU	DECIMAL	(13,0)	--Puntos pr�ximos a caducar.
,	FECHPROR	VARCHAR	(8)	--Fecha m�xima a caducar. Formato AAAAMMDD
,	FILLER1	VARCHAR	(503)	--Campo libre.
); COMMIT;	 	 		
drop table IF EXISTS SAT.SFCIMPEXT_BON;  CREATE TABLE IF NOT EXISTS SAT.SFCIMPEXT_BON  ( 	IDENTIFICADOR_EJECUCION	INTEGER		--IDENTIFICADOR UNICO DE EJECUCION
,	TIPOREGI	VARCHAR	(1)	--Identifica el tipo de registro para que sea tratado por los procesos. 
--En este caso llevar� el valor fijo D. (C=Cabecera y D=Detalle)	 	 		
,	CODENTID	VARCHAR	(8)	--C�digo de Entidad. Identifica la entidad fidelizadora que ha generado las acciones del Evento. 
,	CODCINTA	VARCHAR	(2)	--C�digo de Cinta.  C�digo reservado que identifica la cinta relacionada con el proceso que la trata o genera.
--En este caso llevar� el valor fijo �02�	 	 		
,	NUMSECUE	DECIMAL	(8,0)	--N�mero de secuencia de cinta. Identificador secuencial utilizado para detectar incoherencias. 
,	TIPODATO	VARCHAR	(2)	--Tipo de dato. En el caso de registro de puntos bonificados llevar� el valor �07�
,	PUNTBONI	DECIMAL	(13,0)	--Puntos bonificados
,	FILLER1	VARCHAR	(511)	--Campo libre
); COMMIT;	 	 		
