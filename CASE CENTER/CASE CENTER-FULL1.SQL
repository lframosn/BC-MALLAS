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

drop table IF EXISTS SAT.CC_SOLICITUDES_BALCON;  CREATE TABLE IF NOT EXISTS SAT.CC_SOLICITUDES_BALCON  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(12)	--estado bandeja
,	FECHA_CREACION_SOLICITUD	TIMESTAMP		--fecha creacion solicitud
,	NUMERO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(6)	--producto colocado
,	TIPO_DE_PRODUCTO	VARCHAR	(2)	--tipo de producto
,	NUMERO_DE_CUENTA	VARCHAR	(30)	--numero de cuenta
,	NOMBRE_COMPLETO	VARCHAR	(35)	--nombre completo
,	TIPO_DOCUMENTO	VARCHAR	(10)	--tipo documento
,	NUMERO_DOCUMENTO	VARCHAR	(30)	--numero documento
,	DIRECCION_CASA	VARCHAR	(255)	--direccion casa
,	TELEFONO_CASA	VARCHAR	(8)	--telefono casa
,	REFERENCIA_CASA	VARCHAR	(255)	--referencia casa
,	DIRECCION_TRABAJO	VARCHAR	(255)	--direccion trabajo
,	TELEFONO_TRABAJO	VARCHAR	(8)	--telefono trabajo
,	REFERENCIA_TRABAJO	VARCHAR	(255)	--referencia trabajo
,	NUMERO_CONTACTO_1	VARCHAR	(8)	--numero contacto 1
,	NUMERO_CONTACTO_2	VARCHAR	(8)	--numero contacto 2
,	BALCON_PARA_TERCERO	VARCHAR	(15)	--balcon para tercero
,	NOMBRE_DE_TERCERO	VARCHAR	(255)	--nombre de tercero
,	MONTO_ESTADO_DE_CUENTA	VARCHAR	(17)	--monto estado de cuenta
,	MONTO_MAXIMO_AUTORIZADO	VARCHAR	(17)	--monto maximo autorizado
,	LIMITE_DE_CREDITO	VARCHAR	(17)	--limite de credito
,	LIMITE_DISPONIBLE	VARCHAR	(17)	--limite disponible
,	SUB_PRODUCTO	VARCHAR	(4)	--sub producto
,	TIPO_CUOTA	VARCHAR	(8)	--tipo cuota
,	CUOTAS	VARCHAR	(3)	--cuotas
,	TASA_PREFERENCIAL	VARCHAR	(7)	--tasa preferencial
,	FECHA_DE_CORTE	DATE		--fecha de corte
,	LUGAR_DE_ENTREGA	VARCHAR	(10)	--lugar de entrega
,	AGENCIA	VARCHAR	(100)	--agencia
,	MONTO_CHEQUES_SOLICITADOS	VARCHAR	(17)	--monto cheques solicitados
,	CANTIDAD_CHEQUES_SOLICITADOS	VARCHAR	(1)	--cantidad cheques solicitados
,	NORMAL_MONTO_ESTCTA	VARCHAR	(17)	--normal monto de estado de cuenta
,	NORMAL_MONTO_MAX_AUTORIZADO	VARCHAR	(17)	--normal monto maximo autorizado
,	NORMAL_BALCON_MAS_ESTCTA	VARCHAR	(17)	--normal balcon 25 mas de estado de cuenta
,	INSTITUTO_1	VARCHAR	(255)	--instituto 1
,	INSTITUTO_2	VARCHAR	(255)	--instituto 2
,	INSTITUTO_3	VARCHAR	(255)	--instituto 3
,	ENDOSO_1	VARCHAR	(30)	--endoso 1
,	ENDOSO_2	VARCHAR	(30)	--endoso 2
,	ENDOSO_3	VARCHAR	(30)	--endoso 3
,	MONTO_A_EMITIR_1	VARCHAR	(17)	--monto a emitir 1
,	MONTO_A_EMITIR_2	VARCHAR	(17)	--monto a emitir 2
,	MONTO_A_EMITIR_3	VARCHAR	(17)	--monto a emitir 3
,	RECORD_ID_CASE_CENTER	VARCHAR	(24)	--record id case center
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	MODIFIED	TIMESTAMP		--modified
,	MODIFIED_BY	VARCHAR	(255)	--modified by
,	FEC_ENVIO_IMPRESION	VARCHAR	(23)	--fecha de envio para impresion
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS SAT.CC_SOLICITUDES_TARJETAS;  CREATE TABLE IF NOT EXISTS SAT.CC_SOLICITUDES_TARJETAS  ( 	NOMBRE_COMPLETO	VARCHAR	(100)	--nombre completo	
,	NIT	VARCHAR	(14)	--nit	
,	INGRESO_MENSUALES	VARCHAR	(17)	--ingreso mensuales	
,	LUGAR_DE_TRABAJO	VARCHAR	(255)	--lugar de trabajo	
,	DIREC_DOMICILIO	VARCHAR	(255)	--direccion de domicilio	
,	PUESTO	VARCHAR	(3)	--puesto	
,	NUMERO_CUENTA	VARCHAR	(30)	--numero de cuenta	
,	NUMERO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta	
,	TIPO_TARJETA	VARCHAR	(2)	--tipo tarjeta	
,	MARCA_COMERCIAL	VARCHAR	(4)	--marca comercial	
,	TYPE	VARCHAR	(2)	--type	
,	LIMITE	VARCHAR	(17)	--limite	
,	TIPO_SOLICITUD	VARCHAR	(1)	--tipo solicitud	
,	TIPO_DE_SOLICITANTE	VARCHAR	(30)	--tipo de solicitante	
,	SOURCED_CODE	VARCHAR	(8)	--sourced code	
,	PRODUCT_ORG	VARCHAR	(4)	--product org	
,	SUPERVISOR	VARCHAR	(50)	--supervisor	
,	VIAJERO_FRECUENTE	VARCHAR	(17)	--viajero frecuente	
,	NACIONALIDAD	VARCHAR	(3)	--nacionalidad	
,	PAIS_DE_NACIMIENTO	VARCHAR	(3)	--pais de nacimiento	
,	FECHA_DE_NACIMIENTO	DATE		--fecha de nacimiento	
,	ESTADO_CIVIL	VARCHAR	(1)	--estado civil	
,	PROFESION	VARCHAR	(3)	--profesion	
,	CARGO	VARCHAR	(50)	--cargo	
,	TIPO_DE_EMPRESA	VARCHAR	(30)	--tipo de empresa	
,	DIRECCION_TRABAJO	VARCHAR	(255)	--direccion (trabajo)	
,	DIRECCION2_TRABAJO	VARCHAR	(255)	--direccion 2 (trabajo)	
,	DIRECCION3_TRABAJO	VARCHAR	(255)	--direccion 3(trabajo)	
,	FUENTE_INGRESOS	VARCHAR	(30)	--fuente de ingresos	
,	OTROS_INGRESOS	VARCHAR	(17)	--otros ingresos	
,	ID2_TYPE	VARCHAR	(1)	--id2 type	
,	ID2	VARCHAR	(10)	--id2	
,	TIPO_DE_RESIDENCIA	VARCHAR	(30)	--tipo de residencia	
,	DIRECCION_CASA	VARCHAR	(255)	--direccion (casa)	
,	DEPARTAMENTO	VARCHAR	(2)	--departamento	
,	MUNICIPIO_EL_SALVADOR	VARCHAR	(50)	--municipio el salvador	
,	COUNTRY_HOME	VARCHAR	(3)	--country (home)	
,	INDICADOR_FIGURA_PUBLICA	VARCHAR	(2)	--indicador figura publica	
,	CARGO_FIGURA_PUBLICA	VARCHAR	(50)	--cargo figura publica	
,	RELACION_PEP	VARCHAR	(50)	--relacion pep	
,	NOMBRE_REFERENCIA	VARCHAR	(255)	--nombre referencia	
,	NO_TELEFONO_REFERENCIA	VARCHAR	(8)	--numero de telefono (referencia)	
,	PARENTESCO	VARCHAR	(2)	--parentesco	
,	NOMBRE_REFERENCIA2	VARCHAR	(255)	--nombre referencia 2	
,	NO_TELEFONO_REFERENCIA2	VARCHAR	(8)	--numero de telefono (referencia 2)	
,	PARENTESCO2	VARCHAR	(2)	--parentesco 2	
,	BALCON_BALANCE_PAYMENT1	VARCHAR	(1)	--balcon balance payment 1	
,	CODIGO_DE_VENDEDOR	VARCHAR	(255)	--codigo de vendedor	
,	TELEFONO_CASA	VARCHAR	(8)	--telefono casa	
,	TELEFONO_TRABAJO	VARCHAR	(8)	--telefono trabajo	
,	NOMBRE_EJECUTIVO	VARCHAR	(50)	--nombre ejecutivo	
,	NUMERO_DE_TEL_MOVIL	VARCHAR	(8)	--numero de tel movil	
,	DIREC_CORRESPONDENCIA	VARCHAR	(20)	--direccion de correspondencia	
,	FECHA_APERTURA	TIMESTAMP		--fecha apertura	
,	TIPO_CLIENTE	VARCHAR	(2)	--tipo cliente	
,	PROGRAMA_DE_VENTAS	VARCHAR	(30)	--programa de ventas	
,	CANAL_DE_VENTAS	VARCHAR	(35)	--canal de ventas	
,	SEXO	VARCHAR	(1)	--sexo	
,	EDAD	VARCHAR	(3)	--edad	
,	CTA_PLANILLERA	VARCHAR	(30)	--cta planillera	
,	FECHA_INGRESO_CASECENTER	TIMESTAMP		--fecha de ingreso casecenter	
,	NOMBRE_EN_PLASTICO	VARCHAR	(35)	--nombre en plastico	
,	NOMBRE_ADIC1	VARCHAR	(100)	--nombre adicional 1	
,	NIT_ADIC1	VARCHAR	(14)	--nit adicional 1	
,	DUI_ADIC1	VARCHAR	(10)	--dui adicional 1	
,	FECHA_NACIM_ADIC1	DATE		--fecha nacimiento adicional 1	
,	PLASTICO_ADIC1	VARCHAR	(22)	--plastico adicional 1	
,	LIMITE_TARJETA_ADIC1	VARCHAR	(17)	--limite tarjeta adicional 1	
,	NOMBRE_ADIC2	VARCHAR	(100)	--nombre adicional 2	
,	NIT_ADIC2	VARCHAR	(14)	--nit adicional 2	
,	DUI_ADIC2	VARCHAR	(10)	--dui adicional 2	
,	FECHA_NACIM_ADIC2	DATE		--fecha nacimiento adicional 2	
,	PLASTICO_ADIC2	VARCHAR	(22)	--plastico adicional 2	
,	LIMITE_TARJETA_ADIC2	VARCHAR	(17)	--limite tarjeta adicional 2	
,	NOMBRE_ADIC3	VARCHAR	(100)	--nombre adicional 3	
,	NIT_ADIC3	VARCHAR	(14)	--nit adicional 3	
,	DUI_ADIC3	VARCHAR	(10)	--dui adicional 3	
,	FECHA_NACIM_ADIC3	DATE		--fecha nacimiento adicional 3	
,	PLASTICO_ADIC3	VARCHAR	(22)	--plastico adicional 3	
,	LIMITE_TARJETA_ADIC3	VARCHAR	(17)	--limite tarjeta adicional 3	
,	NOMBRE_ADIC4	VARCHAR	(100)	--nombre adicional 4	
,	NIT_ADIC4	VARCHAR	(14)	--nit adicional 4	
,	DUI_ADIC4	VARCHAR	(10)	--dui adicional 4	
,	FECHA_NACIM_ADIC4	DATE		--fecha nacimiento adicional 4	
,	PLASTICO_ADIC4	VARCHAR	(22)	--plastico adicional 4	
,	LIMITE_TARJETA_ADIC4	VARCHAR	(17)	--limite tarjeta adicional 4	
,	NOMBRE_ADIC5	VARCHAR	(100)	--nombre adicional 5	
,	NIT_ADIC5	VARCHAR	(14)	--nit adicional 5	
,	DUI_ADIC5	VARCHAR	(10)	--dui adicional 5	
,	FECHA_NACIM_ADIC5	DATE		--fecha nacimiento adicional 5	
,	PLASTICO_ADIC5	VARCHAR	(22)	--plastico adicional 5	
,	LIMITE_TARJETA_ADIC5	VARCHAR	(17)	--limite tarjeta adicional 5	
,	CORREO_ELECTRONICO	VARCHAR	(100)	--correo electronico	
,	NUMERO_UNICO	VARCHAR	(8)	--numero unico	
,	T_INT	VARCHAR	(7)	--t int	
,	T_INT_LETRAS	VARCHAR	(7)	--t int letras	
,	T_INT_ANUAL	VARCHAR	(7)	--t int anual	
,	T_INT_ANUAL_LETRAS	VARCHAR	(7)	--t int anual letras	
,	CARGO_MORA	VARCHAR	(17)	--cargo mora	
,	CARGO_SOBREGIRO	VARCHAR	(17)	--cargo sobregiro	
,	LIMITE_LETRAS	VARCHAR	(17)	--limite letras	
,	COMISION_RETIRO	VARCHAR	(17)	--comision retiro	
,	LIM_MAX_CRED	VARCHAR	(17)	--lim max cred	
,	LIM_MAX_CRED_LETRAS	VARCHAR	(17)	--lim max cred letras	
,	T_INT_COMPRAS	VARCHAR	(7)	--t int compras	
,	T_INT_RETIROS	VARCHAR	(7)	--t int retiros	
,	T_INT_EFECTIVA	VARCHAR	(7)	--t int efectiva	
,	T_INT_EFECTIVA_LETRAS	VARCHAR	(7)	--t int efectiva letras	
,	MEM_TIT_INI	VARCHAR	(100)	--mem tit ini	
,	MEM_ADI_INI	VARCHAR	(100)	--mem adi ini	
,	MEM_TIT_REN	VARCHAR	(100)	--mem tit ren	
,	MEM_ADI_REN	VARCHAR	(100)	--mem adi ren	
,	VALOR_SISTEMA_PROTECCION	VARCHAR	(255)	--valor sistema proteccion	
,	INSTITUCION_COMPRA_CARTERA1	VARCHAR	(255)	--institucion a compra cartera 1	
,	INSTITUCION_COMPRA_CARTERA2	VARCHAR	(255)	--institucion a compra cartera 2	
,	INSTITUCION_COMPRA_CARTERA3	VARCHAR	(255)	--institucion a compra cartera 3	
,	INSTITUCION_COMPRA_CARTERA4	VARCHAR	(255)	--institucion a compra cartera 4	
,	INSTITUCION_COMPRA_CARTERA5	VARCHAR	(255)	--institucion a compra cartera 5	
,	INSTITUCION_COMPRA_CARTERA6	VARCHAR	(255)	--institucion a compra cartera 6	
,	NO_CUENTA_ABONAR_ENDOSO1	VARCHAR	(30)	--no de cuenta a abonar (endoso) 1	
,	NO_CUENTA_ABONAR_ENDOSO2	VARCHAR	(30)	--no de cuenta a abonar (endoso) 2	
,	NO_CUENTA_ABONAR_ENDOSO3	VARCHAR	(30)	--no de cuenta a abonar (endoso) 3	
,	NO_CUENTA_ABONAR_ENDOSO4	VARCHAR	(30)	--no de cuenta a abonar (endoso) 4	
,	NO_CUENTA_ABONAR_ENDOSO5	VARCHAR	(30)	--no de cuenta a abonar (endoso) 5	
,	NO_CUENTA_ABONAR_ENDOSO6	VARCHAR	(30)	--no de cuenta a abonar (endoso) 6	
,	MONTO_EMITIR_CHEQUE1	VARCHAR	(17)	--monto para emitir cheque 1	
,	MONTO_EMITIR_CHEQUE2	VARCHAR	(17)	--monto para emitir cheque 2	
,	MONTO_EMITIR_CHEQUE3	VARCHAR	(17)	--monto para emitir cheque 3	
,	MONTO_EMITIR_CHEQUE4	VARCHAR	(17)	--monto para emitir cheque 4	
,	MONTO_EMITIR_CHEQUE5	VARCHAR	(17)	--monto para emitir cheque 5	
,	MONTO_EMITIR_CHEQUE6	VARCHAR	(17)	--monto para emitir cheque 6	
,	SUMA_MONTOS_CHQ	VARCHAR	(17)	--suma de montos de cheques	
,	TIPO_DE_CONVENIO	VARCHAR	(4)	--tipo de convenio	
,	LOGO_PLAN	VARCHAR	(4)	--logo/ plan	
,	LOGO	VARCHAR	(4)	--logo	
,	SUMA_MONTOS_CHQ_LETRAS	VARCHAR	(17)	--monto en letras - suma de montos de cheques	
,	MONTO_DE_BALCON_A_TITULO	VARCHAR	(17)	--monto de balcon a titulo.	
,	HORARIO_DE_VISITA	VARCHAR	(255)	--horario de visita	
,	RECORD_ID_CASECENTER	VARCHAR	(30)	--record id casecenter	
,	GARANTIA_DEPOSITO	VARCHAR	(17)	--garantia deposito	
,	UNIVERSIDAD	VARCHAR	(50)	--universidad	
,	INGRESO_INFERIDO	VARCHAR	(17)	--ingreso inferido	
,	MIS_DATE	DATE		--fecha de proceso	
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga	
); COMMIT;	 	 			

-------------------- TABLAS STAGE ------------------

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

drop table IF EXISTS STG_SAT.CC_SOLICITUDES_TARJETAS;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_SOLICITUDES_TARJETAS  ( 	NOMBRE_COMPLETO	VARCHAR	(100)	--nombre completo	
,	NIT	VARCHAR	(14)	--nit	
,	INGRESO_MENSUALES	VARCHAR	(17)	--ingreso mensuales	
,	LUGAR_DE_TRABAJO	VARCHAR	(255)	--lugar de trabajo	
,	DIREC_DOMICILIO	VARCHAR	(255)	--direccion de domicilio	
,	PUESTO	VARCHAR	(3)	--puesto	
,	NUMERO_CUENTA	VARCHAR	(30)	--numero de cuenta	
,	NUMERO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta	
,	TIPO_TARJETA	VARCHAR	(2)	--tipo tarjeta	
,	MARCA_COMERCIAL	VARCHAR	(4)	--marca comercial	
,	TYPE	VARCHAR	(2)	--type	
,	LIMITE	VARCHAR	(17)	--limite	
,	TIPO_SOLICITUD	VARCHAR	(1)	--tipo solicitud	
,	TIPO_DE_SOLICITANTE	VARCHAR	(30)	--tipo de solicitante	
,	SOURCED_CODE	VARCHAR	(8)	--sourced code	
,	PRODUCT_ORG	VARCHAR	(4)	--product org	
,	SUPERVISOR	VARCHAR	(50)	--supervisor	
,	VIAJERO_FRECUENTE	VARCHAR	(17)	--viajero frecuente	
,	NACIONALIDAD	VARCHAR	(3)	--nacionalidad	
,	PAIS_DE_NACIMIENTO	VARCHAR	(3)	--pais de nacimiento	
,	FECHA_DE_NACIMIENTO	DATE		--fecha de nacimiento	
,	ESTADO_CIVIL	VARCHAR	(1)	--estado civil	
,	PROFESION	VARCHAR	(3)	--profesion	
,	CARGO	VARCHAR	(50)	--cargo	
,	TIPO_DE_EMPRESA	VARCHAR	(30)	--tipo de empresa	
,	DIRECCION_TRABAJO	VARCHAR	(255)	--direccion (trabajo)	
,	DIRECCION2_TRABAJO	VARCHAR	(255)	--direccion 2 (trabajo)	
,	DIRECCION3_TRABAJO	VARCHAR	(255)	--direccion 3(trabajo)	
,	FUENTE_INGRESOS	VARCHAR	(30)	--fuente de ingresos	
,	OTROS_INGRESOS	VARCHAR	(17)	--otros ingresos	
,	ID2_TYPE	VARCHAR	(1)	--id2 type	
,	ID2	VARCHAR	(10)	--id2	
,	TIPO_DE_RESIDENCIA	VARCHAR	(30)	--tipo de residencia	
,	DIRECCION_CASA	VARCHAR	(255)	--direccion (casa)	
,	DEPARTAMENTO	VARCHAR	(2)	--departamento	
,	MUNICIPIO_EL_SALVADOR	VARCHAR	(50)	--municipio el salvador	
,	COUNTRY_HOME	VARCHAR	(3)	--country (home)	
,	INDICADOR_FIGURA_PUBLICA	VARCHAR	(2)	--indicador figura publica	
,	CARGO_FIGURA_PUBLICA	VARCHAR	(50)	--cargo figura publica	
,	RELACION_PEP	VARCHAR	(50)	--relacion pep	
,	NOMBRE_REFERENCIA	VARCHAR	(255)	--nombre referencia	
,	NO_TELEFONO_REFERENCIA	VARCHAR	(8)	--numero de telefono (referencia)	
,	PARENTESCO	VARCHAR	(2)	--parentesco	
,	NOMBRE_REFERENCIA2	VARCHAR	(255)	--nombre referencia 2	
,	NO_TELEFONO_REFERENCIA2	VARCHAR	(8)	--numero de telefono (referencia 2)	
,	PARENTESCO2	VARCHAR	(2)	--parentesco 2	
,	BALCON_BALANCE_PAYMENT1	VARCHAR	(1)	--balcon balance payment 1	
,	CODIGO_DE_VENDEDOR	VARCHAR	(255)	--codigo de vendedor	
,	TELEFONO_CASA	VARCHAR	(8)	--telefono casa	
,	TELEFONO_TRABAJO	VARCHAR	(8)	--telefono trabajo	
,	NOMBRE_EJECUTIVO	VARCHAR	(50)	--nombre ejecutivo	
,	NUMERO_DE_TEL_MOVIL	VARCHAR	(8)	--numero de tel movil	
,	DIREC_CORRESPONDENCIA	VARCHAR	(20)	--direccion de correspondencia	
,	FECHA_APERTURA	VARCHAR(23)		--fecha apertura	
,	TIPO_CLIENTE	VARCHAR	(2)	--tipo cliente	
,	PROGRAMA_DE_VENTAS	VARCHAR	(30)	--programa de ventas	
,	CANAL_DE_VENTAS	VARCHAR	(35)	--canal de ventas	
,	SEXO	VARCHAR	(1)	--sexo	
,	EDAD	VARCHAR	(3)	--edad	
,	CTA_PLANILLERA	VARCHAR	(30)	--cta planillera	
,	FECHA_INGRESO_CASECENTER	VARCHAR(23)		--fecha de ingreso casecenter	
,	NOMBRE_EN_PLASTICO	VARCHAR	(35)	--nombre en plastico	
,	NOMBRE_ADIC1	VARCHAR	(100)	--nombre adicional 1	
,	NIT_ADIC1	VARCHAR	(14)	--nit adicional 1	
,	DUI_ADIC1	VARCHAR	(10)	--dui adicional 1	
,	FECHA_NACIM_ADIC1	DATE		--fecha nacimiento adicional 1	
,	PLASTICO_ADIC1	VARCHAR	(22)	--plastico adicional 1	
,	LIMITE_TARJETA_ADIC1	VARCHAR	(17)	--limite tarjeta adicional 1	
,	NOMBRE_ADIC2	VARCHAR	(100)	--nombre adicional 2	
,	NIT_ADIC2	VARCHAR	(14)	--nit adicional 2	
,	DUI_ADIC2	VARCHAR	(10)	--dui adicional 2	
,	FECHA_NACIM_ADIC2	DATE		--fecha nacimiento adicional 2	
,	PLASTICO_ADIC2	VARCHAR	(22)	--plastico adicional 2	
,	LIMITE_TARJETA_ADIC2	VARCHAR	(17)	--limite tarjeta adicional 2	
,	NOMBRE_ADIC3	VARCHAR	(100)	--nombre adicional 3	
,	NIT_ADIC3	VARCHAR	(14)	--nit adicional 3	
,	DUI_ADIC3	VARCHAR	(10)	--dui adicional 3	
,	FECHA_NACIM_ADIC3	DATE		--fecha nacimiento adicional 3	
,	PLASTICO_ADIC3	VARCHAR	(22)	--plastico adicional 3	
,	LIMITE_TARJETA_ADIC3	VARCHAR	(17)	--limite tarjeta adicional 3	
,	NOMBRE_ADIC4	VARCHAR	(100)	--nombre adicional 4	
,	NIT_ADIC4	VARCHAR	(14)	--nit adicional 4	
,	DUI_ADIC4	VARCHAR	(10)	--dui adicional 4	
,	FECHA_NACIM_ADIC4	DATE		--fecha nacimiento adicional 4	
,	PLASTICO_ADIC4	VARCHAR	(22)	--plastico adicional 4	
,	LIMITE_TARJETA_ADIC4	VARCHAR	(17)	--limite tarjeta adicional 4	
,	NOMBRE_ADIC5	VARCHAR	(100)	--nombre adicional 5	
,	NIT_ADIC5	VARCHAR	(14)	--nit adicional 5	
,	DUI_ADIC5	VARCHAR	(10)	--dui adicional 5	
,	FECHA_NACIM_ADIC5	DATE		--fecha nacimiento adicional 5	
,	PLASTICO_ADIC5	VARCHAR	(22)	--plastico adicional 5	
,	LIMITE_TARJETA_ADIC5	VARCHAR	(17)	--limite tarjeta adicional 5	
,	CORREO_ELECTRONICO	VARCHAR	(100)	--correo electronico	
,	NUMERO_UNICO	VARCHAR	(8)	--numero unico	
,	T_INT	VARCHAR	(7)	--t int	
,	T_INT_LETRAS	VARCHAR	(7)	--t int letras	
,	T_INT_ANUAL	VARCHAR	(7)	--t int anual	
,	T_INT_ANUAL_LETRAS	VARCHAR	(7)	--t int anual letras	
,	CARGO_MORA	VARCHAR	(17)	--cargo mora	
,	CARGO_SOBREGIRO	VARCHAR	(17)	--cargo sobregiro	
,	LIMITE_LETRAS	VARCHAR	(17)	--limite letras	
,	COMISION_RETIRO	VARCHAR	(17)	--comision retiro	
,	LIM_MAX_CRED	VARCHAR	(17)	--lim max cred	
,	LIM_MAX_CRED_LETRAS	VARCHAR	(17)	--lim max cred letras	
,	T_INT_COMPRAS	VARCHAR	(7)	--t int compras	
,	T_INT_RETIROS	VARCHAR	(7)	--t int retiros	
,	T_INT_EFECTIVA	VARCHAR	(7)	--t int efectiva	
,	T_INT_EFECTIVA_LETRAS	VARCHAR	(7)	--t int efectiva letras	
,	MEM_TIT_INI	VARCHAR	(100)	--mem tit ini	
,	MEM_ADI_INI	VARCHAR	(100)	--mem adi ini	
,	MEM_TIT_REN	VARCHAR	(100)	--mem tit ren	
,	MEM_ADI_REN	VARCHAR	(100)	--mem adi ren	
,	VALOR_SISTEMA_PROTECCION	VARCHAR	(255)	--valor sistema proteccion	
,	INSTITUCION_COMPRA_CARTERA1	VARCHAR	(255)	--institucion a compra cartera 1	
,	INSTITUCION_COMPRA_CARTERA2	VARCHAR	(255)	--institucion a compra cartera 2	
,	INSTITUCION_COMPRA_CARTERA3	VARCHAR	(255)	--institucion a compra cartera 3	
,	INSTITUCION_COMPRA_CARTERA4	VARCHAR	(255)	--institucion a compra cartera 4	
,	INSTITUCION_COMPRA_CARTERA5	VARCHAR	(255)	--institucion a compra cartera 5	
,	INSTITUCION_COMPRA_CARTERA6	VARCHAR	(255)	--institucion a compra cartera 6	
,	NO_CUENTA_ABONAR_ENDOSO1	VARCHAR	(30)	--no de cuenta a abonar (endoso) 1	
,	NO_CUENTA_ABONAR_ENDOSO2	VARCHAR	(30)	--no de cuenta a abonar (endoso) 2	
,	NO_CUENTA_ABONAR_ENDOSO3	VARCHAR	(30)	--no de cuenta a abonar (endoso) 3	
,	NO_CUENTA_ABONAR_ENDOSO4	VARCHAR	(30)	--no de cuenta a abonar (endoso) 4	
,	NO_CUENTA_ABONAR_ENDOSO5	VARCHAR	(30)	--no de cuenta a abonar (endoso) 5	
,	NO_CUENTA_ABONAR_ENDOSO6	VARCHAR	(30)	--no de cuenta a abonar (endoso) 6	
,	MONTO_EMITIR_CHEQUE1	VARCHAR	(17)	--monto para emitir cheque 1	
,	MONTO_EMITIR_CHEQUE2	VARCHAR	(17)	--monto para emitir cheque 2	
,	MONTO_EMITIR_CHEQUE3	VARCHAR	(17)	--monto para emitir cheque 3	
,	MONTO_EMITIR_CHEQUE4	VARCHAR	(17)	--monto para emitir cheque 4	
,	MONTO_EMITIR_CHEQUE5	VARCHAR	(17)	--monto para emitir cheque 5	
,	MONTO_EMITIR_CHEQUE6	VARCHAR	(17)	--monto para emitir cheque 6	
,	SUMA_MONTOS_CHQ	VARCHAR	(17)	--suma de montos de cheques	
,	TIPO_DE_CONVENIO	VARCHAR	(4)	--tipo de convenio	
,	LOGO_PLAN	VARCHAR	(4)	--logo/ plan	
,	LOGO	VARCHAR	(4)	--logo	
,	SUMA_MONTOS_CHQ_LETRAS	VARCHAR	(17)	--monto en letras - suma de montos de cheques	
,	MONTO_DE_BALCON_A_TITULO	VARCHAR	(17)	--monto de balcon a titulo.	
,	HORARIO_DE_VISITA	VARCHAR	(255)	--horario de visita	
,	RECORD_ID_CASECENTER	VARCHAR	(30)	--record id casecenter	
,	GARANTIA_DEPOSITO	VARCHAR	(17)	--garantia deposito	
,	UNIVERSIDAD	VARCHAR	(50)	--universidad	
,	INGRESO_INFERIDO	VARCHAR	(17)	--ingreso inferido	
,	MIS_DATE	DATE		--fecha de proceso	
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga	
); COMMIT;	 	 			

drop table IF EXISTS STG_SAT.CC_SOLICITUDES_BALCON;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_SOLICITUDES_BALCON  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(12)	--estado bandeja
,	FECHA_CREACION_SOLICITUD	VARCHAR(23)		--fecha creacion solicitud
,	NUMERO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(6)	--producto colocado
,	TIPO_DE_PRODUCTO	VARCHAR	(2)	--tipo de producto
,	NUMERO_DE_CUENTA	VARCHAR	(30)	--numero de cuenta
,	NOMBRE_COMPLETO	VARCHAR	(35)	--nombre completo
,	TIPO_DOCUMENTO	VARCHAR	(10)	--tipo documento
,	NUMERO_DOCUMENTO	VARCHAR	(30)	--numero documento
,	DIRECCION_CASA	VARCHAR	(255)	--direccion casa
,	TELEFONO_CASA	VARCHAR	(8)	--telefono casa
,	REFERENCIA_CASA	VARCHAR	(255)	--referencia casa
,	DIRECCION_TRABAJO	VARCHAR	(255)	--direccion trabajo
,	TELEFONO_TRABAJO	VARCHAR	(8)	--telefono trabajo
,	REFERENCIA_TRABAJO	VARCHAR	(255)	--referencia trabajo
,	NUMERO_CONTACTO_1	VARCHAR	(8)	--numero contacto 1
,	NUMERO_CONTACTO_2	VARCHAR	(8)	--numero contacto 2
,	BALCON_PARA_TERCERO	VARCHAR	(15)	--balcon para tercero
,	NOMBRE_DE_TERCERO	VARCHAR	(255)	--nombre de tercero
,	MONTO_ESTADO_DE_CUENTA	VARCHAR	(17)	--monto estado de cuenta
,	MONTO_MAXIMO_AUTORIZADO	VARCHAR	(17)	--monto maximo autorizado
,	LIMITE_DE_CREDITO	VARCHAR	(17)	--limite de credito
,	LIMITE_DISPONIBLE	VARCHAR	(17)	--limite disponible
,	SUB_PRODUCTO	VARCHAR	(4)	--sub producto
,	TIPO_CUOTA	VARCHAR	(8)	--tipo cuota
,	CUOTAS	VARCHAR	(3)	--cuotas
,	TASA_PREFERENCIAL	VARCHAR	(7)	--tasa preferencial
,	FECHA_DE_CORTE	DATE		--fecha de corte
,	LUGAR_DE_ENTREGA	VARCHAR	(10)	--lugar de entrega
,	AGENCIA	VARCHAR	(100)	--agencia
,	MONTO_CHEQUES_SOLICITADOS	VARCHAR	(17)	--monto cheques solicitados
,	CANTIDAD_CHEQUES_SOLICITADOS	VARCHAR	(1)	--cantidad cheques solicitados
,	NORMAL_MONTO_ESTCTA	VARCHAR	(17)	--normal monto de estado de cuenta
,	NORMAL_MONTO_MAX_AUTORIZADO	VARCHAR	(17)	--normal monto maximo autorizado
,	NORMAL_BALCON_MAS_ESTCTA	VARCHAR	(17)	--normal balcon 25 mas de estado de cuenta
,	INSTITUTO_1	VARCHAR	(255)	--instituto 1
,	INSTITUTO_2	VARCHAR	(255)	--instituto 2
,	INSTITUTO_3	VARCHAR	(255)	--instituto 3
,	ENDOSO_1	VARCHAR	(30)	--endoso 1
,	ENDOSO_2	VARCHAR	(30)	--endoso 2
,	ENDOSO_3	VARCHAR	(30)	--endoso 3
,	MONTO_A_EMITIR_1	VARCHAR	(17)	--monto a emitir 1
,	MONTO_A_EMITIR_2	VARCHAR	(17)	--monto a emitir 2
,	MONTO_A_EMITIR_3	VARCHAR	(17)	--monto a emitir 3
,	RECORD_ID_CASE_CENTER	VARCHAR	(24)	--record id case center
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	MODIFIED	VARCHAR(23)		--modified
,	MODIFIED_BY	VARCHAR	(255)	--modified by
,	FEC_ENVIO_IMPRESION	VARCHAR	(23)	--fecha de envio para impresion
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
 @OBJECT_NAME = 'CC_SOLICITUDES_BALCON'
,@VERSION_COMMIT = 'b8f14e46ec907d931cf32dd3ee6488604d9aff2d'
,@VERSION_CODE = 'b8f14e4'
,@VERSION_DATE = 'April 10, 2019 3:15:30 PM'
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
 @OBJECT_NAME = 'CC_SOLICITUDES_TARJETAS'
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
 @OBJECT_NAME = 'CC_SOLICITUDES_BALCON'
,@VERSION_COMMIT = 'b8f14e46ec907d931cf32dd3ee6488604d9aff2d'
,@VERSION_CODE = 'b8f14e4'
,@VERSION_DATE = 'April 10, 2019 3:15:30 PM'
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
 @OBJECT_NAME = 'CC_SOLICITUDES_TARJETAS'
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
