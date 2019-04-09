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

drop table IF EXISTS SAT.CC_CASOS_ATC;  CREATE TABLE IF NOT EXISTS SAT.CC_CASOS_ATC  ( 	NUMERO_DE_CASO	VARCHAR	(21)	--numero de caso
,	CODIGO_GESTION	VARCHAR	(10)	--codigo gestion
,	GESTION_DESCRIPCION	VARCHAR	(100)	--gestion descripcion
,	FECHA_APERTURA	TIMESTAMP		--fecha apertura
,	FECHA_MODIFICACION	TIMESTAMP		--fecha modificacion
,	DESCRIPCION_DEL_CASO	VARCHAR	(6000)	--descripcion del caso
,	PAN	VARCHAR	(22)	--pan
,	NUMERO_DE_CONTRATO	VARCHAR	(12)	--numero de contrato
,	NOMBRE_1	VARCHAR	(40)	--nombre 1
,	APELLIDO_1	VARCHAR	(36)	--apellido 1
,	APELLIDO_2	VARCHAR	(36)	--apellido 2
,	RECORD_ID_CASECENTER	VARCHAR	(30)	--record id casecenter
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	CREATED_BY	VARCHAR	(255)	--created by
,	ESTADO	VARCHAR	(50)	--estado
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS SAT.CC_CONTROVERSIAS;  CREATE TABLE IF NOT EXISTS SAT.CC_CONTROVERSIAS  ( 	FECHA_CREACION	TIMESTAMP		--fecha creacion
,	TIPO_IDENTIFICACION	VARCHAR	(1)	--tipo identificacion
,	NUMERO_IDENTIFICACION	VARCHAR	(14)	--numero identificacion
,	NUMERO_TARJETA	VARCHAR	(22)	--numero tarjeta
,	NOMBRE1	VARCHAR	(40)	--nombre1
,	NOMBRE2	VARCHAR	(40)	--nombre2
,	APELLIDO1	VARCHAR	(36)	--apellido1
,	APELLIDO2	VARCHAR	(36)	--apellido2
,	APELLIDO_CASADA	VARCHAR	(36)	--apellido casada
,	RAZON_SOCIAL	VARCHAR	(100)	--razon social
,	TELEFONO	VARCHAR	(8)	--telefono
,	TIPO_VIA	VARCHAR	(2)	--tipo via
,	NOMBRE_VIA	VARCHAR	(40)	--nombre via
,	NUMERO_VIA	VARCHAR	(5)	--numero via
,	CODIGO_POSTAL	VARCHAR	(10)	--codigo postal
,	PROVINCIA	VARCHAR	(2)	--provincia
,	COMENTARIOS	VARCHAR	(6000)	--comentarios
,	CTA_CENTRO_ALTA	VARCHAR	(30)	--cta centro alta
,	CUENTA	VARCHAR	(30)	--cuenta
,	PAN	VARCHAR	(22)	--pan
,	CENTALTA1	VARCHAR	(4)	--centalta1
,	CUENTA1	VARCHAR	(30)	--cuenta1
,	NUMEXTCTA1	VARCHAR	(3)	--numextcta1
,	CLAMON1	VARCHAR	(3)	--clamon1
,	ARN1	VARCHAR	(7)	--arn1
,	MOV_AMT1	VARCHAR	(17)	--mov amt1
,	MOV_CLASS	VARCHAR	(10)	--mov class
,	CENTALTA2	VARCHAR	(4)	--centalta2
,	CUENTA2	VARCHAR	(30)	--cuenta2
,	NUMEXTCTA2	VARCHAR	(3)	--numextcta2
,	CLAMON2	VARCHAR	(3)	--clamon2
,	ARN2	VARCHAR	(7)	--arn2
,	MOV_AMT2	VARCHAR	(17)	--mov amt2
,	MOV_CLASS2	VARCHAR	(10)	--mov class2
,	CENTALTA3	VARCHAR	(4)	--centalta3
,	CUENTA3	VARCHAR	(30)	--cuenta3
,	NUMEXTCTA3	VARCHAR	(3)	--numextcta3
,	CLAMON3	VARCHAR	(3)	--clamon3
,	ARN3	VARCHAR	(7)	--arn3
,	MOV_AMT3	VARCHAR	(17)	--mov amt3
,	MOV_CLASS3	VARCHAR	(10)	--mov class3
,	CENTALTA4	VARCHAR	(4)	--centalta4
,	CUENTA4	VARCHAR	(30)	--cuenta4
,	NUMEXTCTA4	VARCHAR	(3)	--numextcta4
,	CLAMON4	VARCHAR	(3)	--clamon4
,	ARN4	VARCHAR	(7)	--arn4
,	MOV_AMT4	VARCHAR	(17)	--mov amt4
,	MOV_CLASS4	VARCHAR	(10)	--mov class4
,	CENTALTA5	VARCHAR	(4)	--centalta5
,	CUENTA5	VARCHAR	(30)	--cuenta5
,	NUMEXTCTA5	VARCHAR	(3)	--numextcta5
,	CLAMON5	VARCHAR	(3)	--clamon5
,	ARN5	VARCHAR	(7)	--arn5
,	MOV_AMT5	VARCHAR	(17)	--mov amt5
,	MOV_CLASS5	VARCHAR	(10)	--mov class5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	ID_REGISTRO	VARCHAR	(30)	--id registro
,	ID_CLIENTE	VARCHAR	(8)	--id cliente
,	ESTADO	VARCHAR	(50)	--estado
,	FECHA_ULTIMA_MODIFICACION	TIMESTAMP		--fecha ultima modificacion
,	CREATED_BY	VARCHAR	(255)	--created by
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		


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


drop table IF EXISTS SAT.CC_TARJETAS_ADICIONALES;  CREATE TABLE IF NOT EXISTS SAT.CC_TARJETAS_ADICIONALES  ( 	PAN	VARCHAR	(22)	--pan
,	SOLICITUD	VARCHAR	(21)	--solicitud
,	NUMERO_CLIENTE	VARCHAR	(8)	--numero de cliente
,	NOMBRE_CLIENTE	VARCHAR	(100)	--nombre de cliente
,	NRO_TJS_ADICIONALES	VARCHAR	(1)	--nro tarjetas adicionales
,	CALPARTICIP_BENEFTJADIC1_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 1 en contrato
,	CODIGO_TIPO_TJADIC1	VARCHAR	(2)	--codigo tipo de tarjeta adicional 1
,	CODIGO_MARCA_TJADIC1	VARCHAR	(2)	--codigo marca de tarjeta adicional 1
,	TIPO_IDENTIF_1_ADIC1	VARCHAR	(1)	--tipo identificacion 1 adicional 1
,	NUMERO_IDENTIF_1_ADIC1	VARCHAR	(14)	--numero identificacion 1 adicional 1
,	TIPO_IDENTIF_2_ADIC1	VARCHAR	(1)	--tipo identificacion 2 adicional 1
,	NUMERO_IDENTIF_2_ADIC1	VARCHAR	(10)	--numero identificacion 2 adicional 1
,	PRIMER_NOMBRE_ADIC1	VARCHAR	(40)	--primer nombre adicional 1
,	SEGUNDO_NOMBRE_ADIC1	VARCHAR	(40)	--segundo nombre adicional 1
,	PRIMER_APELLIDO_ADIC1	VARCHAR	(36)	--primer apellido adicional 1
,	SEGUNDO_APELLIDO_ADIC1	VARCHAR	(36)	--segundo apellido adicional 1
,	NOMBRE_COMPLETO_ADIC1	VARCHAR	(100)	--nombre completo adicional 1
,	INDIC_ESTAMP_TJADIC1	VARCHAR	(1)	--indicador estampacion tarjeta adicional 1
,	CONDIC_ESTAMP_TJADIC1	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 1
,	NOMBRE_ESTAMP_TJADIC1	VARCHAR	(35)	--nombre estampacion tarjeta adicional 1
,	TELEFONO_CASA_ADIC1	VARCHAR	(8)	--telefono casa adicional 1
,	TELEFONO_TRABAJO_ADIC1	VARCHAR	(8)	--telefono trabajo adicional 1
,	CALPARTICIP_BENEFTJADIC2_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 2 en contrato
,	CODIGO_TIPO_TJADIC2	VARCHAR	(2)	--codigo tipo de tarjeta adicional 2
,	CODIGO_MARCA_TJADIC2	VARCHAR	(2)	--codigo marca de tarjeta adicional 2
,	NUMERO_IDENTIF_1_ADIC2	VARCHAR	(14)	--numero identificacion 1 adicional 2
,	NUMERO_IDENTIF_2_ADIC2	VARCHAR	(10)	--numero identificacion 2 adicional 2
,	NOMBRE_COMPLETO_ADIC2	VARCHAR	(100)	--nombre completo adicional 2
,	INDIC_ESTAMP_TJADIC2	VARCHAR	(1)	--indicador estampacion tarjeta adicional 2
,	CONDIC_ESTAMP_TJADIC2	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 2
,	PRIMER_NOMBRE_ADIC2	VARCHAR	(40)	--primer nombre adicional 2
,	SEGUNDO_NOMBRE_ADIC2	VARCHAR	(40)	--segundo nombre adicional 2
,	PRIMER_APELLIDO_ADIC2	VARCHAR	(36)	--primer apellido adicional 2
,	SEGUNDO_APELLIDO_ADIC2	VARCHAR	(36)	--segundo apellido adicional 2
,	NOMBRE_ESTAMP_TJADIC2	VARCHAR	(35)	--nombre estampacion tarjeta adicional 2
,	TELEFONO_CASA_ADIC2	VARCHAR	(8)	--telefono casa adicional 2
,	TELEFONO_TRABAJO_ADIC2	VARCHAR	(8)	--telefono trabajo adicional 2
,	CELULAR_ADIC2	VARCHAR	(8)	--celular adicional 2
,	LIMITE_ADIC2	VARCHAR	(17)	--limite adicional 2
,	INDIC_EXENCION_CUOTAS_ADIC2	VARCHAR	(1)	--indicador exención de cuotas adicional 2
,	INDIC_TJ_EMV_ADIC2	VARCHAR	(1)	--indicador tarjeta emv adicional 2
,	CALPARTICIP_BENEFTJADIC3_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 3 en contrato
,	CODIGO_TIPO_TJADIC3	VARCHAR	(2)	--codigo tipo de tarjeta adicional 3
,	CODIGO_MARCA_TJADIC3	VARCHAR	(2)	--codigo marca de tarjeta adicional 3
,	NUMERO_IDENTIF_1_ADIC3	VARCHAR	(14)	--numero identificacion 1 adicional 3
,	NUMERO_IDENTIF_2_ADIC3	VARCHAR	(10)	--numero identificacion 2 adicional 3
,	NOMBRE_COMPLETO_ADIC3	VARCHAR	(100)	--nombre completo adicional 3
,	INDIC_ESTAMP_TJADIC3	VARCHAR	(1)	--indicador estampacion tarjeta adicional 3
,	CONDIC_ESTAMP_TJADIC3	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 3
,	PRIMER_NOMBRE_ADIC3	VARCHAR	(40)	--primer nombre adicional 3
,	SEGUNDO_NOMBRE_ADIC3	VARCHAR	(40)	--segundo nombre adicional 3
,	PRIMER_APELLIDO_ADIC3	VARCHAR	(36)	--primer apellido adicional 3
,	SEGUNDO_APELLIDO_ADIC3	VARCHAR	(36)	--segundo apellido adicional 3
,	NOMBRE_ESTAMP_TJADIC3	VARCHAR	(35)	--nombre estampacion tarjeta adicional 3
,	TELEFONO_CASA_ADIC3	VARCHAR	(8)	--telefono casa adicional 3
,	TELEFONO_TRABAJO_ADIC3	VARCHAR	(8)	--telefono trabajo adicional 3
,	CELULAR_ADIC3	VARCHAR	(8)	--celular adicional 3
,	LIMITE_ADIC3	VARCHAR	(17)	--limite adicional 3
,	INDIC_EXENCION_CUOTAS_ADIC3	VARCHAR	(1)	--indicador exención de cuotas adicional 3
,	INDIC_TJ_EMV_ADIC3	VARCHAR	(1)	--indicador tarjeta emv adicional 3
,	CALPARTICIP_BENEFTJADIC4_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 4 en contrato
,	CODIGO_TIPO_TJADIC4	VARCHAR	(10)	--codigo tipo de tarjeta adicional 4
,	CODIGO_MARCA_TJADIC4	VARCHAR	(2)	--codigo marca de tarjeta adicional 4
,	NUMERO_IDENTIF_1_ADIC4	VARCHAR	(14)	--numero identificacion 1 adicional 4
,	NUMERO_IDENTIF_2_ADIC4	VARCHAR	(10)	--numero identificacion 2 adicional 4
,	NOMBRE_COMPLETO_ADIC4	VARCHAR	(100)	--nombre completo adicional 4
,	INDIC_ESTAMP_TJADIC4	VARCHAR	(1)	--indicador estampacion tarjeta adicional 4
,	CONDIC_ESTAMP_TJADIC4	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 4
,	PRIMER_NOMBRE_ADIC4	VARCHAR	(40)	--primer nombre adicional 4
,	SEGUNDO_NOMBRE_ADIC4	VARCHAR	(40)	--segundo nombre adicional 4
,	PRIMER_APELLIDO_ADIC4	VARCHAR	(36)	--primer apellido adicional 4
,	SEGUNDO_APELLIDO_ADIC4	VARCHAR	(36)	--segundo apellido adicional 4
,	NOMBRE_ESTAMP_TJADIC4	VARCHAR	(35)	--nombre estampacion tarjeta adicional 4
,	TELEFONO_CASA_ADIC4	VARCHAR	(8)	--telefono casa adicional 4
,	TELEFONO_TRABAJO_ADIC4	VARCHAR	(8)	--telefono trabajo adicional 4
,	CELULAR_ADIC4	VARCHAR	(8)	--celular adicional 4
,	LIMITE_ADIC4	VARCHAR	(17)	--limite adicional 4
,	INDIC_EXENCION_CUOTAS_ADIC4	VARCHAR	(1)	--indicador exención de cuotas adicional 4
,	INDIC_TJ_EMV_ADIC4	VARCHAR	(1)	--indicador tarjeta emv adicional 4
,	CALPARTICIP_BENEFTJADIC5_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 5 en contrato
,	CODIGO_TIPO_TJADIC5	VARCHAR	(2)	--codigo tipo de tarjeta adicional 5
,	CODIGO_MARCA_TJADIC5	VARCHAR	(2)	--codigo marca de tarjeta adicional 5
,	NUMERO_IDENTIF_1_ADIC5	VARCHAR	(14)	--numero identificacion 1 adicional 5
,	NUMERO_IDENTIF_2_ADIC5	VARCHAR	(10)	--numero identificacion 2 adicional 5
,	NOMBRE_COMPLETO_ADIC5	VARCHAR	(100)	--nombre completo adicional 5
,	PRIMER_NOMBRE_ADIC5	VARCHAR	(40)	--primer nombre adicional 5
,	SEGUNDO_NOMBRE_ADIC5	VARCHAR	(40)	--segundo nombre adicional 5
,	PRIMER_APELLIDO_ADIC5	VARCHAR	(36)	--primer apellido adicional 5
,	SEGUNDO_APELLIDO_ADIC5	VARCHAR	(36)	--segundo apellido adicional 5
,	INDIC_ESTAMP_TJADIC5	VARCHAR	(1)	--indicador estampacion tarjeta adicional 5
,	CONDIC_ESTAMP_TJADIC5	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 5
,	NOMBRE_ESTAMP_TJADIC5	VARCHAR	(35)	--nombre estampacion tarjeta adicional 5
,	TELEFONO_CASA_ADIC5	VARCHAR	(8)	--telefono casa adicional 5
,	TELEFONO_TRABAJO_ADIC5	VARCHAR	(8)	--telefono trabajo adicional 5
,	CELULAR_ADIC5	VARCHAR	(8)	--celular adicional 5
,	LIMITE_ADIC5	VARCHAR	(17)	--limite adicional 5
,	INDIC_EXENCION_CUOTAS_ADIC5	VARCHAR	(1)	--indicador exención de cuotas adicional 5
,	INDIC_TJ_EMV_ADIC5	VARCHAR	(1)	--indicador tarjeta emv adicional 5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	FECHA_INGRESO	TIMESTAMP		--fecha ingreso
,	FECHA_MODIFICACION	TIMESTAMP		--fecha modificacion
,	FECHA_APROBACION	VARCHAR	(10)	--fecha aprobacion
,	ESTADO	VARCHAR	(50)	--estado
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.CC_CASOS_ATC;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_CASOS_ATC  ( 	NUMERO_DE_CASO	VARCHAR	(21)	--numero de caso
,	CODIGO_GESTION	VARCHAR	(10)	--codigo gestion
,	GESTION_DESCRIPCION	VARCHAR	(100)	--gestion descripcion
,	FECHA_APERTURA	VARCHAR(23)		--fecha apertura
,	FECHA_MODIFICACION	VARCHAR(23)		--fecha modificacion
,	DESCRIPCION_DEL_CASO	VARCHAR	(6000)	--descripcion del caso
,	PAN	VARCHAR	(22)	--pan
,	NUMERO_DE_CONTRATO	VARCHAR	(12)	--numero de contrato
,	NOMBRE_1	VARCHAR	(40)	--nombre 1
,	APELLIDO_1	VARCHAR	(36)	--apellido 1
,	APELLIDO_2	VARCHAR	(36)	--apellido 2
,	RECORD_ID_CASECENTER	VARCHAR	(30)	--record id casecenter
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	CREATED_BY	VARCHAR	(255)	--created by
,	ESTADO	VARCHAR	(50)	--estado
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.CC_REFINANCIAMIENTOS;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_REFINANCIAMIENTOS  ( 	ID_SOLICITUD	VARCHAR	(21)	--id solicitud
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
,	FECHA_DE_NACIMIENTO	VARCHAR(23)		--fecha de nacimiento
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
,	FECHA_CREACION	VARCHAR(23)		--fecha creacion
,	FECHA_ETAPA	VARCHAR(23)		--fecha etapa
,	FECHA_APROBACION	VARCHAR(23) --fecha aprobacion
,	ESTADO	VARCHAR	(50)	--estado
,	PAN	VARCHAR	(22)	--pan
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.CC_CONTROVERSIAS;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_CONTROVERSIAS  ( 	FECHA_CREACION	VARCHAR(23)		--fecha creacion
,	TIPO_IDENTIFICACION	VARCHAR	(1)	--tipo identificacion
,	NUMERO_IDENTIFICACION	VARCHAR	(14)	--numero identificacion
,	NUMERO_TARJETA	VARCHAR	(22)	--numero tarjeta
,	NOMBRE1	VARCHAR	(40)	--nombre1
,	NOMBRE2	VARCHAR	(40)	--nombre2
,	APELLIDO1	VARCHAR	(36)	--apellido1
,	APELLIDO2	VARCHAR	(36)	--apellido2
,	APELLIDO_CASADA	VARCHAR	(36)	--apellido casada
,	RAZON_SOCIAL	VARCHAR	(100)	--razon social
,	TELEFONO	VARCHAR	(8)	--telefono
,	TIPO_VIA	VARCHAR	(2)	--tipo via
,	NOMBRE_VIA	VARCHAR	(40)	--nombre via
,	NUMERO_VIA	VARCHAR	(5)	--numero via
,	CODIGO_POSTAL	VARCHAR	(10)	--codigo postal
,	PROVINCIA	VARCHAR	(2)	--provincia
,	COMENTARIOS	VARCHAR	(6000)	--comentarios
,	CTA_CENTRO_ALTA	VARCHAR	(30)	--cta centro alta
,	CUENTA	VARCHAR	(30)	--cuenta
,	PAN	VARCHAR	(22)	--pan
,	CENTALTA1	VARCHAR	(4)	--centalta1
,	CUENTA1	VARCHAR	(30)	--cuenta1
,	NUMEXTCTA1	VARCHAR	(3)	--numextcta1
,	CLAMON1	VARCHAR	(3)	--clamon1
,	ARN1	VARCHAR	(7)	--arn1
,	MOV_AMT1	VARCHAR	(17)	--mov amt1
,	MOV_CLASS	VARCHAR	(10)	--mov class
,	CENTALTA2	VARCHAR	(4)	--centalta2
,	CUENTA2	VARCHAR	(30)	--cuenta2
,	NUMEXTCTA2	VARCHAR	(3)	--numextcta2
,	CLAMON2	VARCHAR	(3)	--clamon2
,	ARN2	VARCHAR	(7)	--arn2
,	MOV_AMT2	VARCHAR	(17)	--mov amt2
,	MOV_CLASS2	VARCHAR	(10)	--mov class2
,	CENTALTA3	VARCHAR	(4)	--centalta3
,	CUENTA3	VARCHAR	(30)	--cuenta3
,	NUMEXTCTA3	VARCHAR	(3)	--numextcta3
,	CLAMON3	VARCHAR	(3)	--clamon3
,	ARN3	VARCHAR	(7)	--arn3
,	MOV_AMT3	VARCHAR	(17)	--mov amt3
,	MOV_CLASS3	VARCHAR	(10)	--mov class3
,	CENTALTA4	VARCHAR	(4)	--centalta4
,	CUENTA4	VARCHAR	(30)	--cuenta4
,	NUMEXTCTA4	VARCHAR	(3)	--numextcta4
,	CLAMON4	VARCHAR	(3)	--clamon4
,	ARN4	VARCHAR	(7)	--arn4
,	MOV_AMT4	VARCHAR	(17)	--mov amt4
,	MOV_CLASS4	VARCHAR	(10)	--mov class4
,	CENTALTA5	VARCHAR	(4)	--centalta5
,	CUENTA5	VARCHAR	(30)	--cuenta5
,	NUMEXTCTA5	VARCHAR	(3)	--numextcta5
,	CLAMON5	VARCHAR	(3)	--clamon5
,	ARN5	VARCHAR	(7)	--arn5
,	MOV_AMT5	VARCHAR	(17)	--mov amt5
,	MOV_CLASS5	VARCHAR	(10)	--mov class5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	ID_REGISTRO	VARCHAR	(30)	--id registro
,	ID_CLIENTE	VARCHAR	(8)	--id cliente
,	ESTADO	VARCHAR	(50)	--estado
,	FECHA_ULTIMA_MODIFICACION	VARCHAR(23)		--fecha ultima modificacion
,	CREATED_BY	VARCHAR	(255)	--created by
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.CC_TARJETAS_ADICIONALES;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_TARJETAS_ADICIONALES  ( 	PAN	VARCHAR	(22)	--pan
,	SOLICITUD	VARCHAR	(21)	--solicitud
,	NUMERO_CLIENTE	VARCHAR	(8)	--numero de cliente
,	NOMBRE_CLIENTE	VARCHAR	(100)	--nombre de cliente
,	NRO_TJS_ADICIONALES	VARCHAR	(1)	--nro tarjetas adicionales
,	CALPARTICIP_BENEFTJADIC1_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 1 en contrato
,	CODIGO_TIPO_TJADIC1	VARCHAR	(2)	--codigo tipo de tarjeta adicional 1
,	CODIGO_MARCA_TJADIC1	VARCHAR	(2)	--codigo marca de tarjeta adicional 1
,	TIPO_IDENTIF_1_ADIC1	VARCHAR	(1)	--tipo identificacion 1 adicional 1
,	NUMERO_IDENTIF_1_ADIC1	VARCHAR	(14)	--numero identificacion 1 adicional 1
,	TIPO_IDENTIF_2_ADIC1	VARCHAR	(1)	--tipo identificacion 2 adicional 1
,	NUMERO_IDENTIF_2_ADIC1	VARCHAR	(10)	--numero identificacion 2 adicional 1
,	PRIMER_NOMBRE_ADIC1	VARCHAR	(40)	--primer nombre adicional 1
,	SEGUNDO_NOMBRE_ADIC1	VARCHAR	(40)	--segundo nombre adicional 1
,	PRIMER_APELLIDO_ADIC1	VARCHAR	(36)	--primer apellido adicional 1
,	SEGUNDO_APELLIDO_ADIC1	VARCHAR	(36)	--segundo apellido adicional 1
,	NOMBRE_COMPLETO_ADIC1	VARCHAR	(100)	--nombre completo adicional 1
,	INDIC_ESTAMP_TJADIC1	VARCHAR	(1)	--indicador estampacion tarjeta adicional 1
,	CONDIC_ESTAMP_TJADIC1	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 1
,	NOMBRE_ESTAMP_TJADIC1	VARCHAR	(35)	--nombre estampacion tarjeta adicional 1
,	TELEFONO_CASA_ADIC1	VARCHAR	(8)	--telefono casa adicional 1
,	TELEFONO_TRABAJO_ADIC1	VARCHAR	(8)	--telefono trabajo adicional 1
,	CALPARTICIP_BENEFTJADIC2_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 2 en contrato
,	CODIGO_TIPO_TJADIC2	VARCHAR	(2)	--codigo tipo de tarjeta adicional 2
,	CODIGO_MARCA_TJADIC2	VARCHAR	(2)	--codigo marca de tarjeta adicional 2
,	NUMERO_IDENTIF_1_ADIC2	VARCHAR	(14)	--numero identificacion 1 adicional 2
,	NUMERO_IDENTIF_2_ADIC2	VARCHAR	(10)	--numero identificacion 2 adicional 2
,	NOMBRE_COMPLETO_ADIC2	VARCHAR	(100)	--nombre completo adicional 2
,	INDIC_ESTAMP_TJADIC2	VARCHAR	(1)	--indicador estampacion tarjeta adicional 2
,	CONDIC_ESTAMP_TJADIC2	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 2
,	PRIMER_NOMBRE_ADIC2	VARCHAR	(40)	--primer nombre adicional 2
,	SEGUNDO_NOMBRE_ADIC2	VARCHAR	(40)	--segundo nombre adicional 2
,	PRIMER_APELLIDO_ADIC2	VARCHAR	(36)	--primer apellido adicional 2
,	SEGUNDO_APELLIDO_ADIC2	VARCHAR	(36)	--segundo apellido adicional 2
,	NOMBRE_ESTAMP_TJADIC2	VARCHAR	(35)	--nombre estampacion tarjeta adicional 2
,	TELEFONO_CASA_ADIC2	VARCHAR	(8)	--telefono casa adicional 2
,	TELEFONO_TRABAJO_ADIC2	VARCHAR	(8)	--telefono trabajo adicional 2
,	CELULAR_ADIC2	VARCHAR	(8)	--celular adicional 2
,	LIMITE_ADIC2	VARCHAR	(17)	--limite adicional 2
,	INDIC_EXENCION_CUOTAS_ADIC2	VARCHAR	(1)	--indicador exención de cuotas adicional 2
,	INDIC_TJ_EMV_ADIC2	VARCHAR	(1)	--indicador tarjeta emv adicional 2
,	CALPARTICIP_BENEFTJADIC3_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 3 en contrato
,	CODIGO_TIPO_TJADIC3	VARCHAR	(2)	--codigo tipo de tarjeta adicional 3
,	CODIGO_MARCA_TJADIC3	VARCHAR	(2)	--codigo marca de tarjeta adicional 3
,	NUMERO_IDENTIF_1_ADIC3	VARCHAR	(14)	--numero identificacion 1 adicional 3
,	NUMERO_IDENTIF_2_ADIC3	VARCHAR	(10)	--numero identificacion 2 adicional 3
,	NOMBRE_COMPLETO_ADIC3	VARCHAR	(100)	--nombre completo adicional 3
,	INDIC_ESTAMP_TJADIC3	VARCHAR	(1)	--indicador estampacion tarjeta adicional 3
,	CONDIC_ESTAMP_TJADIC3	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 3
,	PRIMER_NOMBRE_ADIC3	VARCHAR	(40)	--primer nombre adicional 3
,	SEGUNDO_NOMBRE_ADIC3	VARCHAR	(40)	--segundo nombre adicional 3
,	PRIMER_APELLIDO_ADIC3	VARCHAR	(36)	--primer apellido adicional 3
,	SEGUNDO_APELLIDO_ADIC3	VARCHAR	(36)	--segundo apellido adicional 3
,	NOMBRE_ESTAMP_TJADIC3	VARCHAR	(35)	--nombre estampacion tarjeta adicional 3
,	TELEFONO_CASA_ADIC3	VARCHAR	(8)	--telefono casa adicional 3
,	TELEFONO_TRABAJO_ADIC3	VARCHAR	(8)	--telefono trabajo adicional 3
,	CELULAR_ADIC3	VARCHAR	(8)	--celular adicional 3
,	LIMITE_ADIC3	VARCHAR	(17)	--limite adicional 3
,	INDIC_EXENCION_CUOTAS_ADIC3	VARCHAR	(1)	--indicador exención de cuotas adicional 3
,	INDIC_TJ_EMV_ADIC3	VARCHAR	(1)	--indicador tarjeta emv adicional 3
,	CALPARTICIP_BENEFTJADIC4_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 4 en contrato
,	CODIGO_TIPO_TJADIC4	VARCHAR	(10)	--codigo tipo de tarjeta adicional 4
,	CODIGO_MARCA_TJADIC4	VARCHAR	(2)	--codigo marca de tarjeta adicional 4
,	NUMERO_IDENTIF_1_ADIC4	VARCHAR	(14)	--numero identificacion 1 adicional 4
,	NUMERO_IDENTIF_2_ADIC4	VARCHAR	(10)	--numero identificacion 2 adicional 4
,	NOMBRE_COMPLETO_ADIC4	VARCHAR	(100)	--nombre completo adicional 4
,	INDIC_ESTAMP_TJADIC4	VARCHAR	(1)	--indicador estampacion tarjeta adicional 4
,	CONDIC_ESTAMP_TJADIC4	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 4
,	PRIMER_NOMBRE_ADIC4	VARCHAR	(40)	--primer nombre adicional 4
,	SEGUNDO_NOMBRE_ADIC4	VARCHAR	(40)	--segundo nombre adicional 4
,	PRIMER_APELLIDO_ADIC4	VARCHAR	(36)	--primer apellido adicional 4
,	SEGUNDO_APELLIDO_ADIC4	VARCHAR	(36)	--segundo apellido adicional 4
,	NOMBRE_ESTAMP_TJADIC4	VARCHAR	(35)	--nombre estampacion tarjeta adicional 4
,	TELEFONO_CASA_ADIC4	VARCHAR	(8)	--telefono casa adicional 4
,	TELEFONO_TRABAJO_ADIC4	VARCHAR	(8)	--telefono trabajo adicional 4
,	CELULAR_ADIC4	VARCHAR	(8)	--celular adicional 4
,	LIMITE_ADIC4	VARCHAR	(17)	--limite adicional 4
,	INDIC_EXENCION_CUOTAS_ADIC4	VARCHAR	(1)	--indicador exención de cuotas adicional 4
,	INDIC_TJ_EMV_ADIC4	VARCHAR	(1)	--indicador tarjeta emv adicional 4
,	CALPARTICIP_BENEFTJADIC5_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 5 en contrato
,	CODIGO_TIPO_TJADIC5	VARCHAR	(2)	--codigo tipo de tarjeta adicional 5
,	CODIGO_MARCA_TJADIC5	VARCHAR	(2)	--codigo marca de tarjeta adicional 5
,	NUMERO_IDENTIF_1_ADIC5	VARCHAR	(14)	--numero identificacion 1 adicional 5
,	NUMERO_IDENTIF_2_ADIC5	VARCHAR	(10)	--numero identificacion 2 adicional 5
,	NOMBRE_COMPLETO_ADIC5	VARCHAR	(100)	--nombre completo adicional 5
,	PRIMER_NOMBRE_ADIC5	VARCHAR	(40)	--primer nombre adicional 5
,	SEGUNDO_NOMBRE_ADIC5	VARCHAR	(40)	--segundo nombre adicional 5
,	PRIMER_APELLIDO_ADIC5	VARCHAR	(36)	--primer apellido adicional 5
,	SEGUNDO_APELLIDO_ADIC5	VARCHAR	(36)	--segundo apellido adicional 5
,	INDIC_ESTAMP_TJADIC5	VARCHAR	(1)	--indicador estampacion tarjeta adicional 5
,	CONDIC_ESTAMP_TJADIC5	VARCHAR	(3)	--condiciones estampacion tarjeta adicional 5
,	NOMBRE_ESTAMP_TJADIC5	VARCHAR	(35)	--nombre estampacion tarjeta adicional 5
,	TELEFONO_CASA_ADIC5	VARCHAR	(8)	--telefono casa adicional 5
,	TELEFONO_TRABAJO_ADIC5	VARCHAR	(8)	--telefono trabajo adicional 5
,	CELULAR_ADIC5	VARCHAR	(8)	--celular adicional 5
,	LIMITE_ADIC5	VARCHAR	(17)	--limite adicional 5
,	INDIC_EXENCION_CUOTAS_ADIC5	VARCHAR	(1)	--indicador exención de cuotas adicional 5
,	INDIC_TJ_EMV_ADIC5	VARCHAR	(1)	--indicador tarjeta emv adicional 5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	FECHA_INGRESO	VARCHAR(23)		--fecha ingreso
,	FECHA_MODIFICACION	VARCHAR(23)		--fecha modificacion
,	FECHA_APROBACION	VARCHAR	(10)	--fecha aprobacion
,	ESTADO	VARCHAR	(50)	--estado
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
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
 @NOMBRE_MALLA = 'CASE_CENTER'
,@OBJECT_NAME = 'CC_CASOS_ATC'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '58ff4e10d8d48e3219bf4ddc3adb4feb80b755cc'
,@VERSION_CODE = '58ff4e1'
,@VERSION_DATE = 'April 9, 2019 11:53:30 AM'
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
 @OBJECT_NAME = 'CC_CONTROVERSIAS'
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
 @OBJECT_NAME = 'CC_REFINANCIAMIENTOS'
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
 @OBJECT_NAME = 'CC_TARJETAS_ADICIONALES'
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
 @OBJECT_USER = 'STG_SAT'
,@OBJECT_NAME = 'CC_CASOS_ATC'
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
 @OBJECT_NAME = 'CC_CONTROVERSIAS'
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
 @OBJECT_NAME = 'CC_REFINANCIAMIENTOS'
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
 @OBJECT_NAME = 'CC_TARJETAS_ADICIONALES'
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
