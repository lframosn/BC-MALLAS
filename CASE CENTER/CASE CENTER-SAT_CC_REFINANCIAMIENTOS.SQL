drop table IF EXISTS SAT.CC_REFINANCIAMIENTOS;  CREATE TABLE IF NOT EXISTS SAT.CC_REFINANCIAMIENTOS  ( 	ID_SOLICITUD	VARCHAR	(21)	--id solicitud
,	TIPO_SOLICITUD	VARCHAR	(1)	--tipo solicitud
,	TIPO_SOLICITANTE	VARCHAR	(1)	--tipo solicitante
,	SOURCE_CODE	VARCHAR	(8)	--source code
,	INDICADOR_EMPLEADO	VARCHAR	(2)	--indicador empleado
,	SUBPRODUCTO	VARCHAR	(4)	--subproducto
,	LINEA_SUGERIDA_1	VARCHAR	(17)	--linea sugerida 1
,	USER_ACCOUNT_NUMBER_1	VARCHAR	(30)	--user account number 1
,	PRIMER_NOMBRE	VARCHAR	(40)	--primer nombre
,	SEGUNDO_NOMBRE	VARCHAR	(40)	--segundo nombre
,	APELLIDO	VARCHAR	(36)	--apellido
,	SEGUNDO_APELLIDO	VARCHAR	(36)	--segundo apellido
,	APELLIDO_CASADA	VARCHAR	(36)	--apellido casada
,	FECHA_DE_NACIMIENTO	TIMESTAMP		--fecha de nacimiento
,	SEXO	VARCHAR	(1)	--sexo
,	ESTADO_CIVIL	VARCHAR	(1)	--estado civil
,	TIPO_IDENTIFICACION_1	VARCHAR	(1)	--tipo identificacion 1
,	NUMERO_IDENTIFICACION_1	VARCHAR	(14)	--numero identificacion 1
,	PAIS_EMISION_ID_1	VARCHAR	(3)	--pais emision id 1
,	TIPO_IDENITFICACION_2	VARCHAR	(1)	--tipo idenitficacion 2
,	NUMERO_IDENTIFICACION_2	VARCHAR	(10)	--numero identificacion 2
,	PAIS_EMISION_ID_2	VARCHAR	(3)	--pais emision id 2
,	NACIONALIDAD	VARCHAR	(3)	--nacionalidad
,	PAIS_DE_NACIMIENTO	VARCHAR	(3)	--pais de nacimiento
,	FIGURA_PUBLICA	VARCHAR	(2)	--figura publica
,	EMAIL	VARCHAR	(100)	--email
,	DIRECCION_CORRESPONDENCIA	VARCHAR	(255)	--direccion correspondencia
,	DIRECCION_CASA	VARCHAR	(255)	--direccion casa
,	CODIGO_DE_AREA_CASA	VARCHAR	(3)	--codigo de area casa
,	NUMERO_DE_TELEFONO_CASA	VARCHAR	(8)	--numero de telefono casa
,	CODIGO_DE_AREA_MOVIL	VARCHAR	(3)	--codigo de area movil
,	NUMERO_DE_TELEFONO_MOVIL	VARCHAR	(8)	--numero de telefono movil
,	CODIGO_DE_AREA_OTRO	VARCHAR	(3)	--codigo de area otro
,	NUMERO_DE_TELEFONO_OTRO	VARCHAR	(8)	--numero de telefono otro
,	LUGAR_DE_TRABAJO	VARCHAR	(255)	--lugar de trabajo
,	INGRESOS	VARCHAR	(255)	--ingresos
,	DIRECCION_TRABAJO	VARCHAR	(255)	--direccion trabajo
,	CODIGO_DE_AREA_TRABAJO	VARCHAR	(3)	--codigo de area trabajo
,	NUMERO_DE_TELEFONO_TRABAJO	VARCHAR	(8)	--numero de telefono trabajo
,	NOMBRE_REFERENCIA_1	VARCHAR	(255)	--nombre referencia 1
,	NUMERO_DE_TELEFONO_REFERENCIA_1	VARCHAR	(8)	--numero de telefono referencia 1
,	TIPO_REFERENCIA_1	VARCHAR	(2)	--tipo referencia 1
,	NOMBRE_REFERENCIA_2	VARCHAR	(255)	--nombre referencia 2
,	NUMERO_DE_TELEFONO_REFERENCIA_2	VARCHAR	(8)	--numero de telefono referencia 2
,	TIPO_DE_REFERENCIA_2	VARCHAR	(2)	--tipo de referencia 2
,	NOMBRE_REFERENCIA_3	VARCHAR	(255)	--nombre referencia 3
,	NUMERO_DE_TELEFONO_REFERENCIA_3	VARCHAR	(8)	--numero de telefono referencia 3
,	TIPO_REFERENCIA_3	VARCHAR	(2)	--tipo referencia 3
,	NOMBRE_REFERENCIA_4	VARCHAR	(255)	--nombre referencia 4
,	NUMERO_DE_TELEFONO_REFERENCIA_4	VARCHAR	(8)	--numero de telefono referencia 4
,	TIPO_REFERENCIA_4	VARCHAR	(2)	--tipo referencia 4
,	RECORD_ID_CASE_CENTER	VARCHAR	(24)	--record id case center
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	FECHA_CREACION	TIMESTAMP		--fecha creacion
,	FECHA_ETAPA	TIMESTAMP		--fecha etapa
,	FECHA_APROBACION	TIMESTAMP		--fecha aprobacion
,	ESTADO	VARCHAR	(50)	--estado
,	PAN	VARCHAR	(22)	--pan
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		
