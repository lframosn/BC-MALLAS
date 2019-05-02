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
,	TIPO_IDENTIFICACION	VARCHAR	(3)	--tipo identificacion
,	NUMERO_IDENTIFICACION	VARCHAR	(18)	--numero identificacion
,	NUMERO_TARJETA	VARCHAR	(22)	--numero tarjeta
,	NOMBRE1	VARCHAR	(40)	--nombre1
,	NOMBRE2	VARCHAR	(40)	--nombre2
,	APELLIDO1	VARCHAR	(36)	--apellido1
,	APELLIDO2	VARCHAR	(36)	--apellido2
,	APELLIDO_CASADA	VARCHAR	(36)	--apellido casada
,	RAZON_SOCIAL	VARCHAR	(100)	--razon social
,	TELEFONO	VARCHAR	(9)	--telefono
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
,	ARN1	VARCHAR	(23)	--arn1
,	MOV_AMT1	DECIMAL	(17,2)	--mov amt1
,	MOV_CLASS	VARCHAR	(10)	--mov class
,	CENTALTA2	VARCHAR	(4)	--centalta2
,	CUENTA2	VARCHAR	(30)	--cuenta2
,	NUMEXTCTA2	VARCHAR	(3)	--numextcta2
,	CLAMON2	VARCHAR	(3)	--clamon2
,	ARN2	VARCHAR	(23)	--arn2
,	MOV_AMT2	DECIMAL	(17,2)	--mov amt2
,	MOV_CLASS2	VARCHAR	(10)	--mov class2
,	CENTALTA3	VARCHAR	(4)	--centalta3
,	CUENTA3	VARCHAR	(30)	--cuenta3
,	NUMEXTCTA3	VARCHAR	(3)	--numextcta3
,	CLAMON3	VARCHAR	(3)	--clamon3
,	ARN3	VARCHAR	(23)	--arn3
,	MOV_AMT3	DECIMAL	(17,2)	--mov amt3
,	MOV_CLASS3	VARCHAR	(10)	--mov class3
,	CENTALTA4	VARCHAR	(4)	--centalta4
,	CUENTA4	VARCHAR	(30)	--cuenta4
,	NUMEXTCTA4	VARCHAR	(3)	--numextcta4
,	CLAMON4	VARCHAR	(3)	--clamon4
,	ARN4	VARCHAR	(23)	--arn4
,	MOV_AMT4	DECIMAL	(17,2)	--mov amt4
,	MOV_CLASS4	VARCHAR	(10)	--mov class4
,	CENTALTA5	VARCHAR	(4)	--centalta5
,	CUENTA5	VARCHAR	(30)	--cuenta5
,	NUMEXTCTA5	VARCHAR	(3)	--numextcta5
,	CLAMON5	VARCHAR	(3)	--clamon5
,	ARN5	VARCHAR	(23)	--arn5
,	MOV_AMT5	DECIMAL	(17,2)	--mov amt5
,	MOV_CLASS5	VARCHAR	(10)	--mov class5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	ID_REGISTRO	VARCHAR	(30)	--id registro
,	ID_CLIENTE	VARCHAR	(8)	--id cliente
,	ESTADO	VARCHAR	(50)	--estado
,	FECHA_ULTIMA_MODIFICACION	TIMESTAMP		--fecha ultima modificacion
,	CREATED_BY	VARCHAR	(255)	--created by
,	CODIGO_DE_LA_AUTORIZACION	VARCHAR	(8)	--Codigo de la autorizacion
,	NOMBRE_DEL_COMERCIO	VARCHAR	(255)	--Nombre del comercio
,	CODIGO_DE_COMERCIO_MCC	DECIMAL	(4,0)	--Codigo de Comercio MCC
,	FECHA_Y_HORA_DE_LA_TRANSACCION	TIMESTAMP		--fecha y hora de la transaccion
,	PAIS_DE_LA_TRANSACCION	DECIMAL	(3,0)	--pais de la transaccion
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
,	TIPO_IDENTIF_1_ADIC1	VARCHAR	(3)	--tipo identificacion 1 adicional 1
,	NUMERO_IDENTIF_1_ADIC1	VARCHAR	(14)	--numero identificacion 1 adicional 1
,	TIPO_IDENTIF_2_ADIC1	VARCHAR	(3)	--tipo identificacion 2 adicional 1
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
,	LIMITE_ADIC2	DECIMAL	(17,2)	--limite adicional 2
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
,	LIMITE_ADIC3	DECIMAL	(17,2)	--limite adicional 3
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
,	LIMITE_ADIC4	DECIMAL	(17,2)	--limite adicional 4
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
,	LIMITE_ADIC5	DECIMAL	(17,2)	--limite adicional 5
,	INDIC_EXENCION_CUOTAS_ADIC5	VARCHAR	(1)	--indicador exención de cuotas adicional 5
,	INDIC_TJ_EMV_ADIC5	VARCHAR	(1)	--indicador tarjeta emv adicional 5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	FECHA_INGRESO	DATE		--fecha ingreso
,	FECHA_MODIFICACION	TIMESTAMP		--fecha modificacion
,	FECHA_APROBACION	VARCHAR	(10)	--fecha aprobacion
,	ESTADO	VARCHAR	(50)	--estado
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS SAT.CC_SOLICITUDES_BALCON;  CREATE TABLE IF NOT EXISTS SAT.CC_SOLICITUDES_BALCON  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(30)	--estado bandeja
,	FECHA_CREACION_SOLICITUD	TIMESTAMP		--fecha creacion solicitud
,	NUMERO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(6)	--producto colocado
,	TIPO_DE_PRODUCTO	VARCHAR	(50)	--tipo de producto
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
,	MONTO_ESTADO_DE_CUENTA	DECIMAL	(17,2)	--monto estado de cuenta
,	MONTO_MAXIMO_AUTORIZADO	DECIMAL	(17,2)	--monto maximo autorizado
,	LIMITE_DE_CREDITO	DECIMAL	(17,2)	--limite de credito
,	LIMITE_DISPONIBLE	DECIMAL	(17,2)	--limite disponible
,	SUB_PRODUCTO	VARCHAR	(4)	--sub producto
,	TIPO_CUOTA	VARCHAR	(8)	--tipo cuota
,	CUOTAS	DECIMAL	(3,0)	--cuotas
,	TASA_PREFERENCIAL	DECIMAL	(7,2)	--tasa preferencial
,	FECHA_DE_CORTE	DATE		--fecha de corte
,	LUGAR_DE_ENTREGA	VARCHAR	(10)	--lugar de entrega
,	AGENCIA	VARCHAR	(100)	--agencia
,	MONTO_CHEQUES_SOLICITADOS	DECIMAL	(17,0)	--monto cheques solicitados
,	CANTIDAD_CHEQUES_SOLICITADOS	DECIMAL	(1,0)	--cantidad cheques solicitados
,	NORMAL_MONTO_DE_ESTADO_CUENTA	DECIMAL	(17,2)	--normal monto de estado de cuenta
,	NORMAL_MONTO_MAXIMO_AUTORIZADO	DECIMAL	(17,2)	--normal monto maximo autorizado
,	NORMAL_BALCON_25MAS_ESTADO_CTA	DECIMAL	(17,2)	--normal balcon 25 mas de estado de cuenta
,	INSTITUTO_1	VARCHAR	(255)	--instituto 1
,	INSTITUTO_2	VARCHAR	(255)	--instituto 2
,	INSTITUTO_3	VARCHAR	(255)	--instituto 3
,	ENDOSO_1	VARCHAR	(30)	--endoso 1
,	ENDOSO_2	VARCHAR	(30)	--endoso 2
,	ENDOSO_3	VARCHAR	(30)	--endoso 3
,	MONTO_A_EMITIR_1	DECIMAL	(17,2)	--monto a emitir 1
,	MONTO_A_EMITIR_2	DECIMAL	(17,2)	--monto a emitir 2
,	MONTO_A_EMITIR_3	DECIMAL	(17,2)	--monto a emitir 3
,	RECORD_ID_CASE_CENTER	VARCHAR	(24)	--record id case center
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	MODIFIED	TIMESTAMP		--modified
,	MODIFIED_BY	VARCHAR	(255)	--modified by
,	FECHA_DE_ENVIO_PARA_IMPRESION	TIMESTAMP		--fecha de envio para impresion
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS SAT.CC_SOLICITUDES_EXTRAFINA;  CREATE TABLE IF NOT EXISTS SAT.CC_SOLICITUDES_EXTRAFINA  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(30)	--estado bandeja
,	FECHA_DE_CREACION	TIMESTAMP		--fecha de creacion
,	NUMERO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(6)	--producto colocado
,	TIPO_PRODUCTO	VARCHAR	(50)	--tipo producto
,	NUMERO_DE_CUENTA	VARCHAR	(30)	--numero de cuenta
,	NOMBRE_COMPLETO	VARCHAR	(100)	--nombre completo
,	TIPO_DOCUMENTO	VARCHAR	(10)	--tipo documento
,	NUMERO_DOCUMENTO	VARCHAR	(30)	--numero documento
,	PROFESION	VARCHAR	(35)	--profesion
,	DEPARTAMENTO_CASA	VARCHAR	(30)	--departamento casa
,	MUNICIPIO_CASA	VARCHAR	(50)	--municipio casa
,	DIRECCION_CASA	VARCHAR	(255)	--direccion casa
,	TELEFONO_CASA	VARCHAR	(8)	--telefono casa
,	REFERENCIA_CASA	VARCHAR	(255)	--referencia casa
,	OTRO_CONTACTO	VARCHAR	(8)	--otro contacto
,	NIT	VARCHAR	(14)	--nit
,	FECHA_NACIMIENTO	DATE		--fecha nacimiento
,	ESTADO_CIVIL	VARCHAR	(11)	--estado civil
,	SEXO	VARCHAR	(9)	--sexo
,	LUGAR_DE_TRABAJO	VARCHAR	(255)	--lugar de trabajo
,	DEPARTAMENTO_OFICINA	VARCHAR	(30)	--departamento oficina
,	MUNICIPIO_OFICINA	VARCHAR	(50)	--municipio oficina
,	DIRECCION_OFICINA	VARCHAR	(255)	--direccion oficina
,	TELEFONO_OFICINA	VARCHAR	(8)	--telefono oficina
,	REFERENCIA_OFICINA	VARCHAR	(255)	--referencia oficina
,	PROCEDENCIA_DE_FONDOS	VARCHAR	(255)	--procedencia de fondos
,	LUGAR_DE_PROCEDENCIA	VARCHAR	(255)	--lugar de procedencia
,	PAGOS_ADICIONALES_PROYECTADOS	VARCHAR	(255)	--pagos adicionales proyectados
,	COMO_REALIZARA_PAGOS_ADICIONAL	VARCHAR	(255)	--como realizara pagos adicionales
,	REL_NUMBER	VARCHAR	(255)	--rel number
,	FECHA_CORTE_TARJETA	DATE		--fecha corte tarjeta
,	SUB_PRODUCTO	VARCHAR	(4)	--sub producto
,	TIPO_CUOTA	VARCHAR	(8)	--tipo cuota
,	PLAZO	DECIMAL	(3,0)	--plazo
,	PRESTAMO	DECIMAL	(17,2)	--prestamo
,	INTERES_NOMINAL	DECIMAL	(7,2)	--interes nominal
,	COMISION_DE_DESEMBOLSO	DECIMAL	(17,2)	--comision de desembolso
,	ORIGEN	VARCHAR	(255)	--origen
,	LUGAR_DE_ENTREGA	VARCHAR	(255)	--lugar de entrega
,	AGENCIA	VARCHAR	(100)	--agencia
,	DEPARTAMENTO_DE_CONTRATO	VARCHAR	(30)	--departamento de contrato
,	MUNICIPIO_DE_CONTRATO	VARCHAR	(50)	--municipio de contrato
,	NORMAL_MONTO_EN_EFECTIVO	DECIMAL	(17,2)	--normal monto en efectivo
,	NORMAL_MONTO_EN_CHEQUE	DECIMAL	(17,2)	--normal monto en cheque
,	CANTIDAD_CHEQUES	DECIMAL	(3,0)	--cantidad cheques
,	TOP_UP_MONTO_CHEQUES	DECIMAL	(17,2)	--top up monto cheques
,	CUENTA_BANCARIA_AHORRO_1	VARCHAR	(30)	--cuenta bancaria ahorro 1
,	CUENTA_BANCARIA_AHORRO_2	VARCHAR	(30)	--cuenta bancaria ahorro 2
,	CUENTA_BANCARIA_AHORRO_3	VARCHAR	(30)	--cuenta bancaria ahorro 3
,	NUMERO_CUENTA_BANCARIA_AHORRO1	VARCHAR	(30)	--numero cuenta bancaria ahorro 1
,	NUMERO_CUENTA_BANCARIA_AHORRO2	VARCHAR	(30)	--numero cuenta bancaria ahorro 2
,	NUMERO_CUENTA_BANCARIA_AHORRO3	VARCHAR	(30)	--numero cuenta bancaria ahorro 3
,	MONTO_CUENTA_BANCARIA_AHORRO_1	DECIMAL	(17,2)	--monto cuenta bancaria ahorro 1
,	MONTO_CUENTA_BANCARIA_AHORRO_2	DECIMAL	(17,2)	--monto cuenta bancaria ahorro 2
,	MONTO_CUENTA_BANCARIA_AHORRO_3	DECIMAL	(17,2)	--monto cuenta bancaria ahorro 3
,	NUMERO_DE_TARJETA_1	VARCHAR	(22)	--numero de tarjeta 1
,	NUMERO_DE_TARJETA_2	VARCHAR	(22)	--numero de tarjeta 2
,	NUMERO_DE_TARJETA_3	VARCHAR	(22)	--numero de tarjeta 3
,	NUMERO_DE_TARJETA_4	VARCHAR	(22)	--numero de tarjeta 4
,	TARJETA_DE_CREDITO_MONTO_1	DECIMAL	(17,2)	--tarjeta de credito monto 1
,	TARJETA_DE_CREDITO_MONTO_2	DECIMAL	(17,2)	--tarjeta de credito monto 2
,	TARJETA_DE_CREDITO_MONTO_3	DECIMAL	(17,2)	--tarjeta de credito monto 3
,	TARJETA_DE_CREDITO_MONTO_4	DECIMAL	(17,2)	--tarjeta de credito monto 4
,	NUMERO_DE_REFERENCIA_1	VARCHAR	(22)	--numero de referencia 1
,	NUMERO_DE_REFERENCIA_2	VARCHAR	(22)	--numero de referencia 2
,	NUMERO_DE_REFERENCIA_3	VARCHAR	(22)	--numero de referencia 3
,	NUMERO_DE_REFERENCIA_4	VARCHAR	(22)	--numero de referencia 4
,	TARJETA_DE_CREDITO_MONTO_INT_1	DECIMAL	(7,2)	--tarjeta de credito monto int 1
,	TARJETA_DE_CREDITO_MONTO_INT_2	DECIMAL	(7,2)	--tarjeta de credito monto int 2
,	TARJETA_DE_CREDITO_MONTO_INT_3	DECIMAL	(7,2)	--tarjeta de credito monto int 3
,	TARJETA_DE_CREDITO_MONTO_INT_4	DECIMAL	(7,2)	--tarjeta de credito monto int 4
,	CUENTA_A_ABONAR_ENDOSO_1	VARCHAR	(30)	--cuenta a abonar endoso 1
,	CUENTA_A_ABONAR_ENDOSO_2	VARCHAR	(30)	--cuenta a abonar endoso 2
,	CUENTA_A_ABONAR_ENDOSO_3	VARCHAR	(30)	--cuenta a abonar endoso 3
,	INSTITUTO_A_COMPRAR_CARTERA_1	VARCHAR	(255)	--instituto a comprar cartera 1
,	INSTITUTO_A_COMPRAR_CARTERA_2	VARCHAR	(255)	--instituto a comprar cartera 2
,	INSTITUTO_A_COMPRAR_CARTERA_3	VARCHAR	(255)	--instituto a comprar cartera 3
,	MONTO_DE_CHEQUE_1	DECIMAL	(17,2)	--monto de cheque 1
,	MONTO_DE_CHEQUE_2	DECIMAL	(17,2)	--monto de cheque 2
,	MONTO_DE_CHEQUE_3	DECIMAL	(17,2)	--monto de cheque 3
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	MODIFIED_BY	VARCHAR	(255)	--modified by
,	MODIFIED	TIMESTAMP		--modified
,	FECHA_DE_ENVIO_PARA_IMPRESION	TIMESTAMP		--fecha de envio para impresion
,	RECORD_ID_CASE_CENTER	VARCHAR	(24)	--record id case center
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

-------------------- TABLAS STAGE ------------------

drop table IF EXISTS STG_SAT.CC_CASOS_ATC;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_CASOS_ATC  ( 	NUMERO_DE_CASO	VARCHAR	(21)	--numero de caso
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

drop table IF EXISTS STG_SAT.CC_CONTROVERSIAS;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_CONTROVERSIAS  ( 	FECHA_CREACION	TIMESTAMP		--fecha creacion
,	TIPO_IDENTIFICACION	VARCHAR	(3)	--tipo identificacion
,	NUMERO_IDENTIFICACION	VARCHAR	(18)	--numero identificacion
,	NUMERO_TARJETA	VARCHAR	(22)	--numero tarjeta
,	NOMBRE1	VARCHAR	(40)	--nombre1
,	NOMBRE2	VARCHAR	(40)	--nombre2
,	APELLIDO1	VARCHAR	(36)	--apellido1
,	APELLIDO2	VARCHAR	(36)	--apellido2
,	APELLIDO_CASADA	VARCHAR	(36)	--apellido casada
,	RAZON_SOCIAL	VARCHAR	(100)	--razon social
,	TELEFONO	VARCHAR	(9)	--telefono
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
,	ARN1	VARCHAR	(23)	--arn1
,	MOV_AMT1	DECIMAL	(17,2)	--mov amt1
,	MOV_CLASS	VARCHAR	(10)	--mov class
,	CENTALTA2	VARCHAR	(4)	--centalta2
,	CUENTA2	VARCHAR	(30)	--cuenta2
,	NUMEXTCTA2	VARCHAR	(3)	--numextcta2
,	CLAMON2	VARCHAR	(3)	--clamon2
,	ARN2	VARCHAR	(23)	--arn2
,	MOV_AMT2	DECIMAL	(17,2)	--mov amt2
,	MOV_CLASS2	VARCHAR	(10)	--mov class2
,	CENTALTA3	VARCHAR	(4)	--centalta3
,	CUENTA3	VARCHAR	(30)	--cuenta3
,	NUMEXTCTA3	VARCHAR	(3)	--numextcta3
,	CLAMON3	VARCHAR	(3)	--clamon3
,	ARN3	VARCHAR	(23)	--arn3
,	MOV_AMT3	DECIMAL	(17,2)	--mov amt3
,	MOV_CLASS3	VARCHAR	(10)	--mov class3
,	CENTALTA4	VARCHAR	(4)	--centalta4
,	CUENTA4	VARCHAR	(30)	--cuenta4
,	NUMEXTCTA4	VARCHAR	(3)	--numextcta4
,	CLAMON4	VARCHAR	(3)	--clamon4
,	ARN4	VARCHAR	(23)	--arn4
,	MOV_AMT4	DECIMAL	(17,2)	--mov amt4
,	MOV_CLASS4	VARCHAR	(10)	--mov class4
,	CENTALTA5	VARCHAR	(4)	--centalta5
,	CUENTA5	VARCHAR	(30)	--cuenta5
,	NUMEXTCTA5	VARCHAR	(3)	--numextcta5
,	CLAMON5	VARCHAR	(3)	--clamon5
,	ARN5	VARCHAR	(23)	--arn5
,	MOV_AMT5	DECIMAL	(17,2)	--mov amt5
,	MOV_CLASS5	VARCHAR	(10)	--mov class5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	ID_REGISTRO	VARCHAR	(30)	--id registro
,	ID_CLIENTE	VARCHAR	(8)	--id cliente
,	ESTADO	VARCHAR	(50)	--estado
,	FECHA_ULTIMA_MODIFICACION	TIMESTAMP		--fecha ultima modificacion
,	CREATED_BY	VARCHAR	(255)	--created by
,	CODIGO_DE_LA_AUTORIZACION	VARCHAR	(8)	--Codigo de la autorizacion
,	NOMBRE_DEL_COMERCIO	VARCHAR	(255)	--Nombre del comercio
,	CODIGO_DE_COMERCIO_MCC	DECIMAL	(4,0)	--Codigo de Comercio MCC
,	FECHA_Y_HORA_DE_LA_TRANSACCION	TIMESTAMP		--fecha y hora de la transaccion
,	PAIS_DE_LA_TRANSACCION	DECIMAL	(3,0)	--pais de la transaccion
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
,	TIPO_IDENTIF_1_ADIC1	VARCHAR	(3)	--tipo identificacion 1 adicional 1
,	NUMERO_IDENTIF_1_ADIC1	VARCHAR	(14)	--numero identificacion 1 adicional 1
,	TIPO_IDENTIF_2_ADIC1	VARCHAR	(3)	--tipo identificacion 2 adicional 1
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
,	LIMITE_ADIC2	DECIMAL	(17,2)	--limite adicional 2
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
,	LIMITE_ADIC3	DECIMAL	(17,2)	--limite adicional 3
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
,	LIMITE_ADIC4	DECIMAL	(17,2)	--limite adicional 4
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
,	LIMITE_ADIC5	DECIMAL	(17,2)	--limite adicional 5
,	INDIC_EXENCION_CUOTAS_ADIC5	VARCHAR	(1)	--indicador exención de cuotas adicional 5
,	INDIC_TJ_EMV_ADIC5	VARCHAR	(1)	--indicador tarjeta emv adicional 5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	FECHA_INGRESO	DATE		--fecha ingreso
,	FECHA_MODIFICACION	TIMESTAMP		--fecha modificacion
,	FECHA_APROBACION	VARCHAR	(10)	--fecha aprobacion
,	ESTADO	VARCHAR	(50)	--estado
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.CC_SOLICITUDES_BALCON;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_SOLICITUDES_BALCON  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(30)	--estado bandeja
,	FECHA_CREACION_SOLICITUD	TIMESTAMP		--fecha creacion solicitud
,	NUMERO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(6)	--producto colocado
,	TIPO_DE_PRODUCTO	VARCHAR	(50)	--tipo de producto
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
,	MONTO_ESTADO_DE_CUENTA	DECIMAL	(17,2)	--monto estado de cuenta
,	MONTO_MAXIMO_AUTORIZADO	DECIMAL	(17,2)	--monto maximo autorizado
,	LIMITE_DE_CREDITO	DECIMAL	(17,2)	--limite de credito
,	LIMITE_DISPONIBLE	DECIMAL	(17,2)	--limite disponible
,	SUB_PRODUCTO	VARCHAR	(4)	--sub producto
,	TIPO_CUOTA	VARCHAR	(8)	--tipo cuota
,	CUOTAS	DECIMAL	(3,0)	--cuotas
,	TASA_PREFERENCIAL	DECIMAL	(7,2)	--tasa preferencial
,	FECHA_DE_CORTE	DATE		--fecha de corte
,	LUGAR_DE_ENTREGA	VARCHAR	(10)	--lugar de entrega
,	AGENCIA	VARCHAR	(100)	--agencia
,	MONTO_CHEQUES_SOLICITADOS	DECIMAL	(17,0)	--monto cheques solicitados
,	CANTIDAD_CHEQUES_SOLICITADOS	DECIMAL	(1,0)	--cantidad cheques solicitados
,	NORMAL_MONTO_DE_ESTADO_CUENTA	DECIMAL	(17,2)	--normal monto de estado de cuenta
,	NORMAL_MONTO_MAXIMO_AUTORIZADO	DECIMAL	(17,2)	--normal monto maximo autorizado
,	NORMAL_BALCON_25MAS_ESTADO_CTA	DECIMAL	(17,2)	--normal balcon 25 mas de estado de cuenta
,	INSTITUTO_1	VARCHAR	(255)	--instituto 1
,	INSTITUTO_2	VARCHAR	(255)	--instituto 2
,	INSTITUTO_3	VARCHAR	(255)	--instituto 3
,	ENDOSO_1	VARCHAR	(30)	--endoso 1
,	ENDOSO_2	VARCHAR	(30)	--endoso 2
,	ENDOSO_3	VARCHAR	(30)	--endoso 3
,	MONTO_A_EMITIR_1	DECIMAL	(17,2)	--monto a emitir 1
,	MONTO_A_EMITIR_2	DECIMAL	(17,2)	--monto a emitir 2
,	MONTO_A_EMITIR_3	DECIMAL	(17,2)	--monto a emitir 3
,	RECORD_ID_CASE_CENTER	VARCHAR	(24)	--record id case center
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	MODIFIED	TIMESTAMP		--modified
,	MODIFIED_BY	VARCHAR	(255)	--modified by
,	FECHA_DE_ENVIO_PARA_IMPRESION	TIMESTAMP		--fecha de envio para impresion
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

drop table IF EXISTS STG_SAT.CC_SOLICITUDES_EXTRAFINA;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_SOLICITUDES_EXTRAFINA  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(30)	--estado bandeja
,	FECHA_DE_CREACION	TIMESTAMP		--fecha de creacion
,	NUMERO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(6)	--producto colocado
,	TIPO_PRODUCTO	VARCHAR	(50)	--tipo producto
,	NUMERO_DE_CUENTA	VARCHAR	(30)	--numero de cuenta
,	NOMBRE_COMPLETO	VARCHAR	(100)	--nombre completo
,	TIPO_DOCUMENTO	VARCHAR	(10)	--tipo documento
,	NUMERO_DOCUMENTO	VARCHAR	(30)	--numero documento
,	PROFESION	VARCHAR	(35)	--profesion
,	DEPARTAMENTO_CASA	VARCHAR	(30)	--departamento casa
,	MUNICIPIO_CASA	VARCHAR	(50)	--municipio casa
,	DIRECCION_CASA	VARCHAR	(255)	--direccion casa
,	TELEFONO_CASA	VARCHAR	(8)	--telefono casa
,	REFERENCIA_CASA	VARCHAR	(255)	--referencia casa
,	OTRO_CONTACTO	VARCHAR	(8)	--otro contacto
,	NIT	VARCHAR	(14)	--nit
,	FECHA_NACIMIENTO	DATE		--fecha nacimiento
,	ESTADO_CIVIL	VARCHAR	(11)	--estado civil
,	SEXO	VARCHAR	(9)	--sexo
,	LUGAR_DE_TRABAJO	VARCHAR	(255)	--lugar de trabajo
,	DEPARTAMENTO_OFICINA	VARCHAR	(30)	--departamento oficina
,	MUNICIPIO_OFICINA	VARCHAR	(50)	--municipio oficina
,	DIRECCION_OFICINA	VARCHAR	(255)	--direccion oficina
,	TELEFONO_OFICINA	VARCHAR	(8)	--telefono oficina
,	REFERENCIA_OFICINA	VARCHAR	(255)	--referencia oficina
,	PROCEDENCIA_DE_FONDOS	VARCHAR	(255)	--procedencia de fondos
,	LUGAR_DE_PROCEDENCIA	VARCHAR	(255)	--lugar de procedencia
,	PAGOS_ADICIONALES_PROYECTADOS	VARCHAR	(255)	--pagos adicionales proyectados
,	COMO_REALIZARA_PAGOS_ADICIONAL	VARCHAR	(255)	--como realizara pagos adicionales
,	REL_NUMBER	VARCHAR	(255)	--rel number
,	FECHA_CORTE_TARJETA	DATE		--fecha corte tarjeta
,	SUB_PRODUCTO	VARCHAR	(4)	--sub producto
,	TIPO_CUOTA	VARCHAR	(8)	--tipo cuota
,	PLAZO	DECIMAL	(3,0)	--plazo
,	PRESTAMO	DECIMAL	(17,2)	--prestamo
,	INTERES_NOMINAL	DECIMAL	(7,2)	--interes nominal
,	COMISION_DE_DESEMBOLSO	DECIMAL	(17,2)	--comision de desembolso
,	ORIGEN	VARCHAR	(255)	--origen
,	LUGAR_DE_ENTREGA	VARCHAR	(255)	--lugar de entrega
,	AGENCIA	VARCHAR	(100)	--agencia
,	DEPARTAMENTO_DE_CONTRATO	VARCHAR	(30)	--departamento de contrato
,	MUNICIPIO_DE_CONTRATO	VARCHAR	(50)	--municipio de contrato
,	NORMAL_MONTO_EN_EFECTIVO	DECIMAL	(17,2)	--normal monto en efectivo
,	NORMAL_MONTO_EN_CHEQUE	DECIMAL	(17,2)	--normal monto en cheque
,	CANTIDAD_CHEQUES	DECIMAL	(3,0)	--cantidad cheques
,	TOP_UP_MONTO_CHEQUES	DECIMAL	(17,2)	--top up monto cheques
,	CUENTA_BANCARIA_AHORRO_1	VARCHAR	(30)	--cuenta bancaria ahorro 1
,	CUENTA_BANCARIA_AHORRO_2	VARCHAR	(30)	--cuenta bancaria ahorro 2
,	CUENTA_BANCARIA_AHORRO_3	VARCHAR	(30)	--cuenta bancaria ahorro 3
,	NUMERO_CUENTA_BANCARIA_AHORRO1	VARCHAR	(30)	--numero cuenta bancaria ahorro 1
,	NUMERO_CUENTA_BANCARIA_AHORRO2	VARCHAR	(30)	--numero cuenta bancaria ahorro 2
,	NUMERO_CUENTA_BANCARIA_AHORRO3	VARCHAR	(30)	--numero cuenta bancaria ahorro 3
,	MONTO_CUENTA_BANCARIA_AHORRO_1	DECIMAL	(17,2)	--monto cuenta bancaria ahorro 1
,	MONTO_CUENTA_BANCARIA_AHORRO_2	DECIMAL	(17,2)	--monto cuenta bancaria ahorro 2
,	MONTO_CUENTA_BANCARIA_AHORRO_3	DECIMAL	(17,2)	--monto cuenta bancaria ahorro 3
,	NUMERO_DE_TARJETA_1	VARCHAR	(22)	--numero de tarjeta 1
,	NUMERO_DE_TARJETA_2	VARCHAR	(22)	--numero de tarjeta 2
,	NUMERO_DE_TARJETA_3	VARCHAR	(22)	--numero de tarjeta 3
,	NUMERO_DE_TARJETA_4	VARCHAR	(22)	--numero de tarjeta 4
,	TARJETA_DE_CREDITO_MONTO_1	DECIMAL	(17,2)	--tarjeta de credito monto 1
,	TARJETA_DE_CREDITO_MONTO_2	DECIMAL	(17,2)	--tarjeta de credito monto 2
,	TARJETA_DE_CREDITO_MONTO_3	DECIMAL	(17,2)	--tarjeta de credito monto 3
,	TARJETA_DE_CREDITO_MONTO_4	DECIMAL	(17,2)	--tarjeta de credito monto 4
,	NUMERO_DE_REFERENCIA_1	VARCHAR	(22)	--numero de referencia 1
,	NUMERO_DE_REFERENCIA_2	VARCHAR	(22)	--numero de referencia 2
,	NUMERO_DE_REFERENCIA_3	VARCHAR	(22)	--numero de referencia 3
,	NUMERO_DE_REFERENCIA_4	VARCHAR	(22)	--numero de referencia 4
,	TARJETA_DE_CREDITO_MONTO_INT_1	DECIMAL	(7,2)	--tarjeta de credito monto int 1
,	TARJETA_DE_CREDITO_MONTO_INT_2	DECIMAL	(7,2)	--tarjeta de credito monto int 2
,	TARJETA_DE_CREDITO_MONTO_INT_3	DECIMAL	(7,2)	--tarjeta de credito monto int 3
,	TARJETA_DE_CREDITO_MONTO_INT_4	DECIMAL	(7,2)	--tarjeta de credito monto int 4
,	CUENTA_A_ABONAR_ENDOSO_1	VARCHAR	(30)	--cuenta a abonar endoso 1
,	CUENTA_A_ABONAR_ENDOSO_2	VARCHAR	(30)	--cuenta a abonar endoso 2
,	CUENTA_A_ABONAR_ENDOSO_3	VARCHAR	(30)	--cuenta a abonar endoso 3
,	INSTITUTO_A_COMPRAR_CARTERA_1	VARCHAR	(255)	--instituto a comprar cartera 1
,	INSTITUTO_A_COMPRAR_CARTERA_2	VARCHAR	(255)	--instituto a comprar cartera 2
,	INSTITUTO_A_COMPRAR_CARTERA_3	VARCHAR	(255)	--instituto a comprar cartera 3
,	MONTO_DE_CHEQUE_1	DECIMAL	(17,2)	--monto de cheque 1
,	MONTO_DE_CHEQUE_2	DECIMAL	(17,2)	--monto de cheque 2
,	MONTO_DE_CHEQUE_3	DECIMAL	(17,2)	--monto de cheque 3
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	MODIFIED_BY	VARCHAR	(255)	--modified by
,	MODIFIED	TIMESTAMP		--modified
,	FECHA_DE_ENVIO_PARA_IMPRESION	TIMESTAMP		--fecha de envio para impresion
,	RECORD_ID_CASE_CENTER	VARCHAR	(24)	--record id case center
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
,@OBJECT_NAME = 'CC_REFINANCIAMIENTOS'
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
 @OBJECT_USER = 'STG_SAT'
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
 @OBJECT_NAME = 'CC_CASOS_ATC'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = 'f9e938ca69cd4833e315c43496bfe57824dbef0a'
,@VERSION_CODE = 'f9e938c'
,@VERSION_DATE = 'April 29, 2019 10:45:23 AM'
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
 @OBJECT_NAME = 'CC_SOLICITUDES_EXTRAFINA'
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
 @OBJECT_NAME = 'CC_CASOS_ATC'
,@OBJECT_USER = 'STG_SAT'
,@VERSION_COMMIT = 'fb37c12cce269d32970b88e158b4107cadb7aed0 '
,@VERSION_CODE = 'fb37c12'
,@VERSION_DATE = 'April 29, 2019 11:00:25 AM'
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
 @OBJECT_NAME = 'CC_SOLICITUDES_EXTRAFINA'
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
