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

drop table IF EXISTS SAT.CC_SOLICITUDES_TARJETAS;  CREATE TABLE IF NOT EXISTS SAT.CC_SOLICITUDES_TARJETAS  ( 	SOLICITUD	VARCHAR	(255)	--Solicitud
,	IDENTIFICADOR_DE_CLIENTE	VARCHAR	(255)	--Identificador de Cliente
,	CODIGO_RAIZ	VARCHAR	(255)	--Código Raíz
,	CODIGO_EMPLEADO	VARCHAR	(255)	--Código de Empleado
,	TIPO_DE_VENTAS	VARCHAR	(255)	--Tipo de Ventas
,	SUBTIPO_DE_VENTAS	VARCHAR	(255)	--SubTipo  de Ventas
,	SUBPRODUCTO_1	VARCHAR	(255)	--Subproducto 1
,	SUBPRODUCTO2	VARCHAR	(255)	--Subproducto2
,	PERFIL_CLIENTE	VARCHAR	(255)	--Perfil Cliente
,	TIPO_DE_EMPLEO	VARCHAR	(255)	--Tipo de Empleo
,	SALES_CHANNEL	VARCHAR	(255)	--Sales Channel
,	PEPS	VARCHAR	(255)	--PEPS
,	RISK_SEGMENT_MEMBERSHIP	VARCHAR	(255)	--Risk Segment-Membership
,	RISK_SEGMENT_PRICING	VARCHAR	(255)	--Risk Segment -Pricing
,	SALES_PROMOTION	VARCHAR	(255)	--Sales Promotion
,	CLIENTE	VARCHAR	(255)	--Cliente
,	TIPO_IDENTIF_1	VARCHAR	(255)	--Tipo Identificación 1
,	NUMERO_IDENTIF	VARCHAR	(255)	--Número de Identificación
,	TIPO_DE_IDENTIF_2	VARCHAR	(255)	--Tipo de identificación 2
,	NUMERO_IDENTIF_2	VARCHAR	(255)	--Número Identificación 2
,	PRIMER_NOMBRE	VARCHAR	(255)	--Primer Nombre
,	SEGUNDO_NOMBRE	VARCHAR	(255)	--Segundo Nombre
,	PRIMER_APELLIDO	VARCHAR	(255)	--Primer Apellido
,	SEGUNDO_APELLIDO	VARCHAR	(255)	--Segundo Apellido
,	APELLIDO_DE_CASADA	VARCHAR	(255)	--Apellido de casada
,	FECHA_NACIMIENTO	TIMESTAMP		--Fecha de nacimiento
,	SEXO	VARCHAR	(255)	--Sexo
,	ESTADO_CIVIL	VARCHAR	(255)	--Estado Civil
,	EMAIL	VARCHAR	(255)	--Email
,	PAIS_RESIDENCIA	VARCHAR	(255)	--Pais Residencia
,	PAIS_NACIMIENTO	VARCHAR	(255)	--País de Nacimiento
,	DEPARTAMENTO_PROVINCIA	VARCHAR	(255)	--Departamento (Provincia)
,	MUNICIPIO_POBLACION	VARCHAR	(255)	--Municipio (Población)
,	TIPO_RESIDENCIA	VARCHAR	(255)	--Tipo de Residencia
,	DIRECCION_1_CASA	VARCHAR	(255)	--Dirección 1 (casa)
,	CODIGO_AREA_TELEFONO_CASA	VARCHAR	(255)	--Código de Área (Teléfono Casa)
,	NUMERO_TELEFONO_CASA	VARCHAR	(255)	--Número de teléfono (Casa)
,	EXTENSION_TELEFONO_CASA	VARCHAR	(255)	--Extensión (Teléfono Casa)
,	TELEFONO_CELULAR	VARCHAR	(255)	--Teléfono Celular
,	TIPO_LOC_DIR_PPAL	VARCHAR	(255)	--Tipo Localización de la dirección Principal
,	MEDIO_DE_ENVIO	VARCHAR	(255)	--MEDIO DE ENVIO
,	NIVEL_DE_ESTUDIOS	VARCHAR	(255)	--Nivel de Estudios
,	NUMERO_DEPENDIENTES	VARCHAR	(255)	--Número de Dependientes
,	INDICADOR_VIP	VARCHAR	(255)	--Indicador VIP
,	LUGAR_TRABAJO	VARCHAR	(255)	--Lugar de trabajo
,	LOCALIDAD_TRABAJO	VARCHAR	(255)	--Localidad (Trabajo)
,	FECHA_INICIO_TRABAJO	TIMESTAMP		--Fecha de Inicio (Trabajo)
,	DIRECCION_TRABAJO	VARCHAR	(255)	--Dirección (trabajo)
,	HR_CONTACTO_LLAMADAS_VISITAS	VARCHAR	(255)	--Horario de Contacto para llamadas y visitas
,	CODIGO_AREA_TELEFONO_TRABAJO	VARCHAR	(255)	--Código de Área (Teléfono Trabajo)
,	NUMERO_TELEFONO_TRABAJO	VARCHAR	(255)	--Número de teléfono (trabajo)
,	EXTENSION_TELEFONO_TRABAJO	VARCHAR	(255)	--Extensión (Teléfono Trabajo)
,	TIEMPO_EMPLEO_ACTUAL_MESES	VARCHAR	(255)	--Tiempo en empleo actual (meses)
,	EMAIL_EMPRESA	VARCHAR	(255)	--Email Empresa
,	PROFESION	VARCHAR	(255)	--Profesión
,	INGRESOS_MENSUALES	VARCHAR	(255)	--Ingresos Mensuales
,	CARGO	VARCHAR	(255)	--Cargo
,	NUMERO_UNICO_DE_EMPRESA	VARCHAR	(255)	--Número Único de Empresa
,	TIPO_DE_EMPRESA	VARCHAR	(255)	--Tipo de Empresa
,	NUMERO_VIAJERO_FRECUENTE	VARCHAR	(255)	--Número de Viajero Frecuente
,	FUENTE_DE_INGRESOS	VARCHAR	(255)	--Fuente de Ingresos
,	NOMBRE_REFERENCIA	VARCHAR	(255)	--Nombre referencia
,	NUMERO_TELEFONO_REFERENCIA	VARCHAR	(255)	--Número de teléfono (referencia)
,	PARENTESCO	VARCHAR	(255)	--Parentesco
,	NOMBRE_REFERENCIA_2	VARCHAR	(255)	--Nombre referencia 2
,	NUMERO_TELEFONO_REFERENCIA_2	VARCHAR	(255)	--Número de teléfono (referencia 2)
,	PARENTECO_2	VARCHAR	(255)	--Parenteco 2
,	DESEA_AGREGAR_UN_CODEUDOR	VARCHAR	(255)	--Desea agregar un codeudor ?
,	TIPO_IDENTIF_1_CODEUDOR	VARCHAR	(255)	--Tipo Identificación 1 Codeudor
,	NUMERO_IDENTIF_1_CODEUDOR	VARCHAR	(255)	--Número de Identificacion 1  Codeudor
,	TIPO_IDENTIF_2_CODEUDOR	VARCHAR	(255)	--Tipo Identificacion 2  Codeudor
,	NUMERO_IDENTIF_2_CODEUDOR	VARCHAR	(255)	--Número de Identificacion 2  Codeudor
,	PRIMER_NOMBRE_CODEUDOR	VARCHAR	(255)	--Primer Nombre Codeudor
,	SEGUNDO_NOMBRE_CODEUDOR	VARCHAR	(255)	--Segundo Nombre Codeudor
,	PRIMER_APELLIDO_CODEUDOR	VARCHAR	(255)	--Primer Apellido Codeudor
,	SEGUNDO_APELLIDO_CODEUDOR	VARCHAR	(255)	--Segundo Apellido Codeudor
,	APELLIDO_DE_CASADA_CODEUDOR	VARCHAR	(255)	--Apellido de Casada Codeudor
,	FECHA_NACIMIENTO_CODEUDOR	TIMESTAMP		--Fecha de nacimiento Codeudor
,	SEXO_CODEUDOR	VARCHAR	(255)	--Sexo Codeudor
,	ESTADO_CIVIL_CODEUDOR	VARCHAR	(255)	--Estado Civil Codeudor
,	EMAIL_CODEUDOR	VARCHAR	(255)	--Email Codeudor
,	PAIS_RESIDENCIA_CODEUDOR	VARCHAR	(255)	--Pais Residencia Codeudor
,	PAIS_NACIMIENTO_CODEUDOR	VARCHAR	(255)	--Pais Nacimiento Codeudor
,	DPTO_PROVINCIA_CODEU	VARCHAR	(255)	--Departamento (Provincia) Codeudor
,	MUNICIPIO_POBLACION_CODEUDOR	VARCHAR	(255)	--Municipio (Poblacion) Codeudor
,	DIRECCION_1_CASA_CODEUDOR	VARCHAR	(255)	--Dirección 1 (casa) Codeudor
,	CODAREA_TEL_CASA_CODEU	VARCHAR	(255)	--Código de Área (Telefono Casa) Codeudor
,	NUMERO_TELEFONO_CASA_CODEUDOR	VARCHAR	(255)	--Número de Teléfono (Casa) Codeudor
,	EXT_TEL_CASA_CODEUDOR	VARCHAR	(255)	--Extensión (Teléfono Casa) Codeudor
,	TELEFONO_CELULAR_CODEUDOR	VARCHAR	(255)	--Teléfono Celular Codeudor
,	LUGAR_TRABAJO_CODEUDOR	VARCHAR	(255)	--Lugar de trabajo Codeudor
,	FECHA_INICIO_TRABAJO_CODEUDOR	TIMESTAMP		--Fecha de Inicio (Trabajo) Codeudor
,	DIRECCION_TRABAJO_CODEUDOR	VARCHAR	(255)	--Dirección (Trabajo) Codeudor
,	HORA_CONTAC_LLAMA_VISITA_CODEU	VARCHAR	(255)	--Horario de Contacto para llamadas y visitas Codeudor
,	CODAREA_TEL_TRABAJO_CODEU	VARCHAR	(255)	--Código de Área (Telefono Trabajo) Codeudor
,	NUM_TEL_TRABAJO_CODEUDOR	VARCHAR	(255)	--Número de Teléfono (trabajo) Codeudor
,	EXT_TEL_TRABAJO_CODEU	VARCHAR	(255)	--Extensión (Teléfono Trabajo) Codeudor
,	TIEMPO_EMPL_ACTUAL_MESES_CODEU	VARCHAR	(255)	--Tiempo en empleo actual (en meses) Codeudor
,	EMAIL_EMPRESA_CODEUDOR	VARCHAR	(255)	--Email Empresa Codeudor
,	PROFESION_CODEUDOR	VARCHAR	(255)	--Profesión Codeudor
,	CARGO_CODEUDOR	VARCHAR	(255)	--Cargo Codeudor
,	INGRESOS_MENSUALES_CODEUDOR	VARCHAR	(255)	--Ingresos Mensuales Codeudor
,	FUENTE_DE_INGRESOS_CODEUDOR	VARCHAR	(255)	--Fuente de Ingresos Codeudor
,	TIPO_DE_EMPRESA_CODEUDOR	VARCHAR	(255)	--Tipo de Empresa Codeudor
,	GARANTIA_DEPOSITO	VARCHAR	(255)	--Garantía Deposito
,	NOMBRE_DE_UNIVERSIDAD	VARCHAR	(255)	--Nombre de Universidad
,	CARGO_DE_FIGURA_PUBLICA	VARCHAR	(255)	--Cargo de Figura Pública
,	RELACION_FIGURA_PUBLICA	VARCHAR	(255)	--Relación Figura Pública
,	DEPARTAMENTO_TRABAJO	VARCHAR	(255)	--Departamento (trabajo) 
,	MUNICIPIO_TRABAJO_	VARCHAR	(255)	--Municipio (trabajo) 
,	NUMERO_UNICO_EMPRESA_CODEUDOR	VARCHAR	(255)	--Número Único de Empresa Codeudor
,	NOMBRE_ESTAMP_TARJETA	VARCHAR	(255)	--Nombre de Estampación de la tarjeta
,	ENVIO_DE_CORRESPONDENCIA	VARCHAR	(255)	--Envio de Correspondencia 
,	FORMA_DE_PAGO	VARCHAR	(255)	--Forma de pago
,	INDICADOR_DE_LIMITE_UNICO	VARCHAR	(255)	--INDICADOR DE LÍMITE ÚNICO
,	LINEA_SUGERIDA	VARCHAR	(255)	--Línea Sugerida
,	REQUIERE_PIN	VARCHAR	(255)	--Requiere PIN
,	NUMERO_CUENTA_PASIVA_A_CARGAR	VARCHAR	(255)	--Número de Cuenta pasiva a Cargar 
,	TIPO_DE_CUENTA	VARCHAR	(255)	--Tipo de cuenta
,	TIPO_DE_PAGO_	VARCHAR	(255)	--Tipo de pago 
,	NO_TARJETAS_ADICES_A_INCLUIR	VARCHAR	(255)	--¿Cuantas tarjetas Adicionales desea añadir?
,	CALIPARTIPBENE_TJCONTRATOADIC1	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 1
,	TIPO_IDENTIF_1_ADIC_1	VARCHAR	(255)	--Tipo Identificación 1 Adicional 1
,	NUMERO_IDENTIF_1_ADIC_1	VARCHAR	(255)	--Número de Identificación 1 Adicional 1
,	TIPO_DE_IDENTIF_2_ADIC_1	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 1
,	NUMERO_IDENTIF_2_ADIC_1	VARCHAR	(255)	--Número de Identificación 2 Adicional 1
,	PRIMER_NOMBRE_ADIC_1	VARCHAR	(255)	--Primer Nombre Adicional 1
,	SEGUNDO_NOMBRE_ADIC_1	VARCHAR	(255)	--Segundo Nombre Adicional 1
,	PRIMER_APELLIDO_ADIC_1	VARCHAR	(255)	--Primer Apellido Adicional 1
,	SEGUNDO_APELLIDO_ADIC_1	VARCHAR	(255)	--Segundo Apellido Adicional 1
,	NOMBRE_ESTAMP_TJADIC_1	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta  Adicional 1
,	TELEFONO_CASA_ADIC_1	VARCHAR	(255)	--Telefono Casa Adicional 1
,	TELEFONO_TRABAJO_ADIC_1	VARCHAR	(255)	--Teléfono Trabajo Adicional 1
,	CELULAR_ADIC_1	VARCHAR	(255)	--Celular Adicional 1
,	LIMITE_ADIC_1	DECIMAL	(17,2)	--Limite Adicional 1
,	REQUIERE_PIN_ADIC_1	VARCHAR	(255)	--Requiere PIN Adicional 1
,	CALIPARTIPBENE_TJCONTRATOADIC2	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 2
,	TIPO_IDENTIF_1_ADIC_2	VARCHAR	(255)	--Tipo Identificación 1 Adicional 2
,	NUMERO_IDENTIF_1_ADIC_2	VARCHAR	(255)	--Número de Identificación 1 Adicional 2
,	TIPO_DE_IDENTIF_2_ADIC_2	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 2
,	NUMERO_IDENTIF_2_ADIC_2	VARCHAR	(255)	--Número de Identificación 2 Adicional 2
,	PRIMER_NOMBRE_ADIC_2	VARCHAR	(255)	--Primer Nombre Adicional 2
,	SEGUNDO_NOMBRE_ADIC_2	VARCHAR	(255)	--Segundo Nombre Adicional 2
,	PRIMER_APELLIDO_ADIC_2	VARCHAR	(255)	--Primer Apellido Adicional 2
,	SEGUNDO_APELLIDO_ADIC_2	VARCHAR	(255)	--Segundo Apellido Adicional 2
,	NOMBRE_ESTAMP_TJADIC_2	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta  Adicional 2
,	TELEFONO_CASA_ADIC_2	VARCHAR	(255)	--Telefono Casa Adicional 2
,	TELEFONO_TRABAJO_ADIC_2	VARCHAR	(255)	--Teléfono Trabajo Adicional 2
,	CELULAR_ADIC_2	VARCHAR	(255)	--Celular Adicional 2
,	LIMITE_ADIC_2	DECIMAL	(17,2)	--Limite Adicional 2
,	REQUIERE_PIN_ADIC_2	VARCHAR	(255)	--Requiere PIN Adicional 2
,	CALIPARTIPBENE_TJCONTRATOADIC3	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 3
,	TIPO_IDENTIF_1_ADIC_3	VARCHAR	(255)	--Tipo Identificación 1 Adicional 3
,	NUMERO_IDENTIF_1_ADIC_3	VARCHAR	(255)	--Número de Identificación 1 Adicional 3
,	TIPO_DE_IDENTIF_2_ADIC_3	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 3
,	NUMERO_IDENTIF_2_ADIC_3	VARCHAR	(255)	--Número de Identificación 2 Adicional 3
,	PRIMER_NOMBRE_ADIC_3	VARCHAR	(255)	--Primer Nombre Adicional 3
,	SEGUNDO_NOMBRE_ADIC_3	VARCHAR	(255)	--Segundo Nombre Adicional 3
,	PRIMER_APELLIDO_ADIC_3	VARCHAR	(255)	--Primer Apellido Adicional 3
,	SEGUNDO_APELLIDO_ADIC_3	VARCHAR	(255)	--Segundo Apellido Adicional 3
,	NOMBRE_ESTAMP_TJADIC_3	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta Adicional 3
,	TELEFONO_CASA_ADIC_3	VARCHAR	(255)	--Telefono Casa Adicional 3
,	TELEFONO_TRABAJO_ADIC_3	VARCHAR	(255)	--Teléfono Trabajo Adicional 3
,	CELULAR_ADIC_3	VARCHAR	(255)	--Celular Adicional 3
,	LIMITE_ADIC_3	DECIMAL	(17,2)	--Limite Adicional 3
,	REQUIERE_PIN_ADIC_3	VARCHAR	(255)	--Requiere PIN Adicional 3
,	CALIPARTIPBENE_TJCONTRATOADIC4	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 4
,	TIPO_IDENTIF_1_ADIC_4	VARCHAR	(255)	--Tipo Identificación 1 Adicional 4
,	NUMERO_IDENTIF_1_ADIC_4	VARCHAR	(255)	--Número de Identificación 1 Adicional 4
,	TIPO_DE_IDENTIF_2_ADIC_4	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 4
,	NUMERO_IDENTIF_2_ADIC_4	VARCHAR	(255)	--Número de Identificación 2 Adicional 4
,	PRIMER_NOMBRE_ADIC_4	VARCHAR	(255)	--Primer Nombre Adicional 4
,	SEGUNDO_NOMBRE_ADIC_4	VARCHAR	(255)	--Segundo Nombre Adicional 4
,	PRIMER_APELLIDO_ADIC_4	VARCHAR	(255)	--Primer Apellido Adicional 4
,	SEGUNDO_APELLIDO_ADIC_4	VARCHAR	(255)	--Segundo Apellido Adicional 4
,	NOMBRE_ESTAMP_TJADIC_4	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta Adicional 4
,	TELEFONO_CASA_ADIC_4	VARCHAR	(255)	--Telefono Casa Adicional 4
,	TELEFONO_TRABAJO_ADIC_4	VARCHAR	(255)	--Teléfono Trabajo Adicional 4
,	CELULAR_ADIC_4	VARCHAR	(255)	--Celular Adicional 4
,	LIMITE_ADIC_4	DECIMAL	(17,2)	--Limite Adicional 4
,	REQUIERE_PIN_ADIC_4	VARCHAR	(255)	--Requiere PIN Adicional 4
,	CALIPARTIPBENE_TJCONTRATOADIC5	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 5
,	TIPO_IDENTIF_1_ADIC_5	VARCHAR	(255)	--Tipo Identificación 1 Adicional 5
,	NUMERO_IDENTIF_1_ADIC_5	VARCHAR	(255)	--Número de Identificación 1 Adicional 5
,	TIPO_DE_IDENTIF_2_ADIC_5	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 5
,	NUMERO_IDENTIF_2_ADIC_5	VARCHAR	(255)	--Número de Identificación 2 Adicional 5
,	PRIMER_NOMBRE_ADIC_5	VARCHAR	(255)	--Primer Nombre Adicional 5
,	SEGUNDO_NOMBRE_ADIC_5	VARCHAR	(255)	--Segundo Nombre Adicional 5
,	PRIMER_APELLIDO_ADIC_5	VARCHAR	(255)	--Primer Apellido Adicional 5
,	SEGUNDO_APELLIDO_ADIC_5	VARCHAR	(255)	--Segundo Apellido Adicional 5
,	NOMBRE_ESTAMP_TJADIC_5	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta Adicional 5
,	TELEFONO_CASA_ADIC_5	VARCHAR	(255)	--Telefono Casa Adicional 5
,	TELEFONO_TRABAJO_ADIC_5	VARCHAR	(255)	--Teléfono Trabajo Adicional 5
,	CELULAR_ADIC_5	VARCHAR	(255)	--Celular Adicional 5
,	LIMITE_ADIC_5	DECIMAL	(17,2)	--Limite Adicional 5
,	REQUIERE_PIN_ADIC_5	VARCHAR	(255)	--Requiere PIN Adicional 5
,	DESEA_BALCON	VARCHAR	(255)	--¿Desea Balcon?
,	MONTO_CHEQUES_SOLICITADOS	DECIMAL	(22,2)	--Monto de Cheques Solicitados
,	CANTIDAD_DE_CHEQUES	VARCHAR	(255)	--Cantidad de Cheques
,	INSTCOMPRACARTERA_NOM_TITULAR1	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-1
,	CUENTA_A_ABONAR_ENDOSO_1	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-1
,	MONTO_CHEQUE_1	DECIMAL	(22,2)	--Monto de Cheque-1
,	INSTCOMPRACARTERA_NOM_TITULAR2	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-2
,	CUENTA_A_ABONAR_ENDOSO_2	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-2
,	MONTO_CHEQUE_2	DECIMAL	(22,2)	--Monto de Cheque-2
,	INSTCOMPRACARTERA_NOM_TITULAR3	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-3
,	CUENTA_A_ABONAR_ENDOSO_3	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-3
,	MONTO_CHEQUE_3	DECIMAL	(22,2)	--Monto de Cheque-3
,	INSTCOMPRACARTERA_NOM_TITULAR4	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-4
,	CUENTA_A_ABONAR_ENDOSO_4	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-4
,	MONTO_CHEQUE_4	DECIMAL	(22,2)	--Monto de Cheque-4
,	INSTCOMPRACARTERA_NOM_TITULAR5	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-5
,	CUENTA_A_ABONAR_ENDOSO_5	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-5
,	MONTO_CHEQUE_5	DECIMAL	(22,2)	--Monto de Cheque-5
,	INSTCOMPRACARTERA_NOM_TITULAR6	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-6
,	CUENTA_A_ABONAR_ENDOSO_6	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-6
,	MONTO_CHEQUE_6	DECIMAL	(22,2)	--Monto de Cheque-6
,	LISTADO_DOCUMENTOS_ADJUNTAR	VARCHAR	(255)	--Listado de Documentos a adjuntar
,	NOTAS_COMENT_DOCUMENTACION	VARCHAR	(255)	--Notas/Comentario Documentación
,	NOTAS_COMENT_VALIDACION	VARCHAR	(255)	--Notas/Comentarios Validación
,	BITACOMENT_VISIBLEACREDITVALID	VARCHAR	(255)	--Bitácora de comentarios (Solo visible para créditos) Validación
,	BITACOMENT_EJECUT_VENTAS_VALID	VARCHAR	(255)	--Bitácora de comentarios para el Ejecutivo de Ventas Validación
,	ESTADO_VALIDACION	VARCHAR	(255)	--Estado Validación
,	NOTAS_COMENT_AUTENTICACION	VARCHAR	(255)	--Notas/Comentarios Autenticación
,	ESTADO_AUTENTICACION	VARCHAR	(255)	--Estado Autenticación
,	NOTAS_COMENT_ANALISIS	VARCHAR	(255)	--Notas/Comentarios Análisis
,	ESTADO_ANALISIS	VARCHAR	(255)	--Estado  Análisis
,	BITACOMENT_CREDITOS_ANALISIS	VARCHAR	(255)	--Bitácora de comentarios (Solo visible para créditos)  Análisis
,	BITACOMENT_EJEC_VENTA_ANALISIS	VARCHAR	(255)	--Bitácora de comentarios para el Ejecutivo de Ventas  Análisis
,	BITACOMENT_ANALISTA_AUTEN	VARCHAR	(255)	--Bitácora de comentarios (Para analista de Autenticación)  Análisis
,	ESTADSOLIC_APROBDENEG_EN_CURSO	VARCHAR	(255)	--Estado de la Solicitud (Aprogada, Denegada, En Curso etc)
,	FASE_VALID_AUTEN_FINAL	VARCHAR	(255)	--Fase (ETAPA EN LA QUE SE ENCUENTRA  VALIDACION, AUTENTICACION, ANALISIS FINAL
,	FECHA_CREACION_SOLICITUD	TIMESTAMP		--Fecha y Hora de creación de la solicitud
,	FECRESOL_DATOS_AUTEN_FINAL	TIMESTAMP		--Fecha y Hora de resolución en cada etapa (Datos Básicos, Validación, Autenticación, Analisis Final ETC..)
,	FECING_DATOS_VALID_AUTEN_FINAL	TIMESTAMP		--Fecha y Hora de ingresó en cada etapa (Datos Básicos, Validación, Autenticación, Analisis Final ETC..)
,	USUARIORESOL_DATOS_AUTEN_FINAL	VARCHAR	(255)	--Usuario que resolvío en cada etapa (Datos Básicos, Validación, Autenticación, Analisis Final ETC..)
,	NO_TARJETA_GENERADA	VARCHAR	(255)	--No. de Tarjeta generada
,	NO_CONTRATO	VARCHAR	(255)	--N° de contrato
,	REASONCODES	VARCHAR	(255)	--ReasonCodes
,	OTROS_INGRESOS	VARCHAR	(255)	--Otros ingresos 
,	FUENTE_OTROS_INGRESOS	VARCHAR	(255)	--Fuente de otros ingresos
,	NUMERO_INTENTOS_DE_LLAMADA	VARCHAR	(255)	--Numero Intentos de Llamada
,	NUMERO_VALIDADOR	VARCHAR	(255)	--Numero de validador
,	FECHA_VALIDADOR	TIMESTAMP		--Fecha de validador
,	LIMITE_SUPERIOR_EQFX	DECIMAL	(22,2)	--Limite_Superior_EQFX
,	LIMITE_INFERIOR_EQFX	DECIMAL	(22,2)	--Limite_Inferior_EQFX
,	CUARTIL_EQFX	DECIMAL	(22,2)	--Cuartil_EQFX
,	INGRESO_BASE	DECIMAL	(22,2)	--Ingreso_Base
,	MISMA_EMPRESA	VARCHAR	(255)	--Misma_Empresa  
,	MARCACION_RECONDUCIBLE	VARCHAR	(255)	--Marcación de reconducible
,	TIPO_DE_RECONDUCCION	VARCHAR	(255)	--Tipo de reconduccion
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

-------------------- TABLAS STAGE ------------------

drop table IF EXISTS STG_SAT.CC_SOLICITUDES_TARJETAS;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_SOLICITUDES_TARJETAS  ( 	SOLICITUD	VARCHAR	(255)	--Solicitud
,	IDENTIFICADOR_DE_CLIENTE	VARCHAR	(255)	--Identificador de Cliente
,	CODIGO_RAIZ	VARCHAR	(255)	--Código Raíz
,	CODIGO_EMPLEADO	VARCHAR	(255)	--Código de Empleado
,	TIPO_DE_VENTAS	VARCHAR	(255)	--Tipo de Ventas
,	SUBTIPO_DE_VENTAS	VARCHAR	(255)	--SubTipo  de Ventas
,	SUBPRODUCTO_1	VARCHAR	(255)	--Subproducto 1
,	SUBPRODUCTO2	VARCHAR	(255)	--Subproducto2
,	PERFIL_CLIENTE	VARCHAR	(255)	--Perfil Cliente
,	TIPO_DE_EMPLEO	VARCHAR	(255)	--Tipo de Empleo
,	SALES_CHANNEL	VARCHAR	(255)	--Sales Channel
,	PEPS	VARCHAR	(255)	--PEPS
,	RISK_SEGMENT_MEMBERSHIP	VARCHAR	(255)	--Risk Segment-Membership
,	RISK_SEGMENT_PRICING	VARCHAR	(255)	--Risk Segment -Pricing
,	SALES_PROMOTION	VARCHAR	(255)	--Sales Promotion
,	CLIENTE	VARCHAR	(255)	--Cliente
,	TIPO_IDENTIF_1	VARCHAR	(255)	--Tipo Identificación 1
,	NUMERO_IDENTIF	VARCHAR	(255)	--Número de Identificación
,	TIPO_DE_IDENTIF_2	VARCHAR	(255)	--Tipo de identificación 2
,	NUMERO_IDENTIF_2	VARCHAR	(255)	--Número Identificación 2
,	PRIMER_NOMBRE	VARCHAR	(255)	--Primer Nombre
,	SEGUNDO_NOMBRE	VARCHAR	(255)	--Segundo Nombre
,	PRIMER_APELLIDO	VARCHAR	(255)	--Primer Apellido
,	SEGUNDO_APELLIDO	VARCHAR	(255)	--Segundo Apellido
,	APELLIDO_DE_CASADA	VARCHAR	(255)	--Apellido de casada
,	FECHA_NACIMIENTO	TIMESTAMP		--Fecha de nacimiento
,	SEXO	VARCHAR	(255)	--Sexo
,	ESTADO_CIVIL	VARCHAR	(255)	--Estado Civil
,	EMAIL	VARCHAR	(255)	--Email
,	PAIS_RESIDENCIA	VARCHAR	(255)	--Pais Residencia
,	PAIS_NACIMIENTO	VARCHAR	(255)	--País de Nacimiento
,	DEPARTAMENTO_PROVINCIA	VARCHAR	(255)	--Departamento (Provincia)
,	MUNICIPIO_POBLACION	VARCHAR	(255)	--Municipio (Población)
,	TIPO_RESIDENCIA	VARCHAR	(255)	--Tipo de Residencia
,	DIRECCION_1_CASA	VARCHAR	(255)	--Dirección 1 (casa)
,	CODIGO_AREA_TELEFONO_CASA	VARCHAR	(255)	--Código de Área (Teléfono Casa)
,	NUMERO_TELEFONO_CASA	VARCHAR	(255)	--Número de teléfono (Casa)
,	EXTENSION_TELEFONO_CASA	VARCHAR	(255)	--Extensión (Teléfono Casa)
,	TELEFONO_CELULAR	VARCHAR	(255)	--Teléfono Celular
,	TIPO_LOC_DIR_PPAL	VARCHAR	(255)	--Tipo Localización de la dirección Principal
,	MEDIO_DE_ENVIO	VARCHAR	(255)	--MEDIO DE ENVIO
,	NIVEL_DE_ESTUDIOS	VARCHAR	(255)	--Nivel de Estudios
,	NUMERO_DEPENDIENTES	VARCHAR	(255)	--Número de Dependientes
,	INDICADOR_VIP	VARCHAR	(255)	--Indicador VIP
,	LUGAR_TRABAJO	VARCHAR	(255)	--Lugar de trabajo
,	LOCALIDAD_TRABAJO	VARCHAR	(255)	--Localidad (Trabajo)
,	FECHA_INICIO_TRABAJO	TIMESTAMP		--Fecha de Inicio (Trabajo)
,	DIRECCION_TRABAJO	VARCHAR	(255)	--Dirección (trabajo)
,	HR_CONTACTO_LLAMADAS_VISITAS	VARCHAR	(255)	--Horario de Contacto para llamadas y visitas
,	CODIGO_AREA_TELEFONO_TRABAJO	VARCHAR	(255)	--Código de Área (Teléfono Trabajo)
,	NUMERO_TELEFONO_TRABAJO	VARCHAR	(255)	--Número de teléfono (trabajo)
,	EXTENSION_TELEFONO_TRABAJO	VARCHAR	(255)	--Extensión (Teléfono Trabajo)
,	TIEMPO_EMPLEO_ACTUAL_MESES	VARCHAR	(255)	--Tiempo en empleo actual (meses)
,	EMAIL_EMPRESA	VARCHAR	(255)	--Email Empresa
,	PROFESION	VARCHAR	(255)	--Profesión
,	INGRESOS_MENSUALES	VARCHAR	(255)	--Ingresos Mensuales
,	CARGO	VARCHAR	(255)	--Cargo
,	NUMERO_UNICO_DE_EMPRESA	VARCHAR	(255)	--Número Único de Empresa
,	TIPO_DE_EMPRESA	VARCHAR	(255)	--Tipo de Empresa
,	NUMERO_VIAJERO_FRECUENTE	VARCHAR	(255)	--Número de Viajero Frecuente
,	FUENTE_DE_INGRESOS	VARCHAR	(255)	--Fuente de Ingresos
,	NOMBRE_REFERENCIA	VARCHAR	(255)	--Nombre referencia
,	NUMERO_TELEFONO_REFERENCIA	VARCHAR	(255)	--Número de teléfono (referencia)
,	PARENTESCO	VARCHAR	(255)	--Parentesco
,	NOMBRE_REFERENCIA_2	VARCHAR	(255)	--Nombre referencia 2
,	NUMERO_TELEFONO_REFERENCIA_2	VARCHAR	(255)	--Número de teléfono (referencia 2)
,	PARENTECO_2	VARCHAR	(255)	--Parenteco 2
,	DESEA_AGREGAR_UN_CODEUDOR	VARCHAR	(255)	--Desea agregar un codeudor ?
,	TIPO_IDENTIF_1_CODEUDOR	VARCHAR	(255)	--Tipo Identificación 1 Codeudor
,	NUMERO_IDENTIF_1_CODEUDOR	VARCHAR	(255)	--Número de Identificacion 1  Codeudor
,	TIPO_IDENTIF_2_CODEUDOR	VARCHAR	(255)	--Tipo Identificacion 2  Codeudor
,	NUMERO_IDENTIF_2_CODEUDOR	VARCHAR	(255)	--Número de Identificacion 2  Codeudor
,	PRIMER_NOMBRE_CODEUDOR	VARCHAR	(255)	--Primer Nombre Codeudor
,	SEGUNDO_NOMBRE_CODEUDOR	VARCHAR	(255)	--Segundo Nombre Codeudor
,	PRIMER_APELLIDO_CODEUDOR	VARCHAR	(255)	--Primer Apellido Codeudor
,	SEGUNDO_APELLIDO_CODEUDOR	VARCHAR	(255)	--Segundo Apellido Codeudor
,	APELLIDO_DE_CASADA_CODEUDOR	VARCHAR	(255)	--Apellido de Casada Codeudor
,	FECHA_NACIMIENTO_CODEUDOR	TIMESTAMP		--Fecha de nacimiento Codeudor
,	SEXO_CODEUDOR	VARCHAR	(255)	--Sexo Codeudor
,	ESTADO_CIVIL_CODEUDOR	VARCHAR	(255)	--Estado Civil Codeudor
,	EMAIL_CODEUDOR	VARCHAR	(255)	--Email Codeudor
,	PAIS_RESIDENCIA_CODEUDOR	VARCHAR	(255)	--Pais Residencia Codeudor
,	PAIS_NACIMIENTO_CODEUDOR	VARCHAR	(255)	--Pais Nacimiento Codeudor
,	DPTO_PROVINCIA_CODEU	VARCHAR	(255)	--Departamento (Provincia) Codeudor
,	MUNICIPIO_POBLACION_CODEUDOR	VARCHAR	(255)	--Municipio (Poblacion) Codeudor
,	DIRECCION_1_CASA_CODEUDOR	VARCHAR	(255)	--Dirección 1 (casa) Codeudor
,	CODAREA_TEL_CASA_CODEU	VARCHAR	(255)	--Código de Área (Telefono Casa) Codeudor
,	NUMERO_TELEFONO_CASA_CODEUDOR	VARCHAR	(255)	--Número de Teléfono (Casa) Codeudor
,	EXT_TEL_CASA_CODEUDOR	VARCHAR	(255)	--Extensión (Teléfono Casa) Codeudor
,	TELEFONO_CELULAR_CODEUDOR	VARCHAR	(255)	--Teléfono Celular Codeudor
,	LUGAR_TRABAJO_CODEUDOR	VARCHAR	(255)	--Lugar de trabajo Codeudor
,	FECHA_INICIO_TRABAJO_CODEUDOR	TIMESTAMP		--Fecha de Inicio (Trabajo) Codeudor
,	DIRECCION_TRABAJO_CODEUDOR	VARCHAR	(255)	--Dirección (Trabajo) Codeudor
,	HORA_CONTAC_LLAMA_VISITA_CODEU	VARCHAR	(255)	--Horario de Contacto para llamadas y visitas Codeudor
,	CODAREA_TEL_TRABAJO_CODEU	VARCHAR	(255)	--Código de Área (Telefono Trabajo) Codeudor
,	NUM_TEL_TRABAJO_CODEUDOR	VARCHAR	(255)	--Número de Teléfono (trabajo) Codeudor
,	EXT_TEL_TRABAJO_CODEU	VARCHAR	(255)	--Extensión (Teléfono Trabajo) Codeudor
,	TIEMPO_EMPL_ACTUAL_MESES_CODEU	VARCHAR	(255)	--Tiempo en empleo actual (en meses) Codeudor
,	EMAIL_EMPRESA_CODEUDOR	VARCHAR	(255)	--Email Empresa Codeudor
,	PROFESION_CODEUDOR	VARCHAR	(255)	--Profesión Codeudor
,	CARGO_CODEUDOR	VARCHAR	(255)	--Cargo Codeudor
,	INGRESOS_MENSUALES_CODEUDOR	VARCHAR	(255)	--Ingresos Mensuales Codeudor
,	FUENTE_DE_INGRESOS_CODEUDOR	VARCHAR	(255)	--Fuente de Ingresos Codeudor
,	TIPO_DE_EMPRESA_CODEUDOR	VARCHAR	(255)	--Tipo de Empresa Codeudor
,	GARANTIA_DEPOSITO	VARCHAR	(255)	--Garantía Deposito
,	NOMBRE_DE_UNIVERSIDAD	VARCHAR	(255)	--Nombre de Universidad
,	CARGO_DE_FIGURA_PUBLICA	VARCHAR	(255)	--Cargo de Figura Pública
,	RELACION_FIGURA_PUBLICA	VARCHAR	(255)	--Relación Figura Pública
,	DEPARTAMENTO_TRABAJO	VARCHAR	(255)	--Departamento (trabajo) 
,	MUNICIPIO_TRABAJO_	VARCHAR	(255)	--Municipio (trabajo) 
,	NUMERO_UNICO_EMPRESA_CODEUDOR	VARCHAR	(255)	--Número Único de Empresa Codeudor
,	NOMBRE_ESTAMP_TARJETA	VARCHAR	(255)	--Nombre de Estampación de la tarjeta
,	ENVIO_DE_CORRESPONDENCIA	VARCHAR	(255)	--Envio de Correspondencia 
,	FORMA_DE_PAGO	VARCHAR	(255)	--Forma de pago
,	INDICADOR_DE_LIMITE_UNICO	VARCHAR	(255)	--INDICADOR DE LÍMITE ÚNICO
,	LINEA_SUGERIDA	VARCHAR	(255)	--Línea Sugerida
,	REQUIERE_PIN	VARCHAR	(255)	--Requiere PIN
,	NUMERO_CUENTA_PASIVA_A_CARGAR	VARCHAR	(255)	--Número de Cuenta pasiva a Cargar 
,	TIPO_DE_CUENTA	VARCHAR	(255)	--Tipo de cuenta
,	TIPO_DE_PAGO_	VARCHAR	(255)	--Tipo de pago 
,	NO_TARJETAS_ADICES_A_INCLUIR	VARCHAR	(255)	--¿Cuantas tarjetas Adicionales desea añadir?
,	CALIPARTIPBENE_TJCONTRATOADIC1	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 1
,	TIPO_IDENTIF_1_ADIC_1	VARCHAR	(255)	--Tipo Identificación 1 Adicional 1
,	NUMERO_IDENTIF_1_ADIC_1	VARCHAR	(255)	--Número de Identificación 1 Adicional 1
,	TIPO_DE_IDENTIF_2_ADIC_1	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 1
,	NUMERO_IDENTIF_2_ADIC_1	VARCHAR	(255)	--Número de Identificación 2 Adicional 1
,	PRIMER_NOMBRE_ADIC_1	VARCHAR	(255)	--Primer Nombre Adicional 1
,	SEGUNDO_NOMBRE_ADIC_1	VARCHAR	(255)	--Segundo Nombre Adicional 1
,	PRIMER_APELLIDO_ADIC_1	VARCHAR	(255)	--Primer Apellido Adicional 1
,	SEGUNDO_APELLIDO_ADIC_1	VARCHAR	(255)	--Segundo Apellido Adicional 1
,	NOMBRE_ESTAMP_TJADIC_1	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta  Adicional 1
,	TELEFONO_CASA_ADIC_1	VARCHAR	(255)	--Telefono Casa Adicional 1
,	TELEFONO_TRABAJO_ADIC_1	VARCHAR	(255)	--Teléfono Trabajo Adicional 1
,	CELULAR_ADIC_1	VARCHAR	(255)	--Celular Adicional 1
,	LIMITE_ADIC_1	DECIMAL	(17,2)	--Limite Adicional 1
,	REQUIERE_PIN_ADIC_1	VARCHAR	(255)	--Requiere PIN Adicional 1
,	CALIPARTIPBENE_TJCONTRATOADIC2	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 2
,	TIPO_IDENTIF_1_ADIC_2	VARCHAR	(255)	--Tipo Identificación 1 Adicional 2
,	NUMERO_IDENTIF_1_ADIC_2	VARCHAR	(255)	--Número de Identificación 1 Adicional 2
,	TIPO_DE_IDENTIF_2_ADIC_2	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 2
,	NUMERO_IDENTIF_2_ADIC_2	VARCHAR	(255)	--Número de Identificación 2 Adicional 2
,	PRIMER_NOMBRE_ADIC_2	VARCHAR	(255)	--Primer Nombre Adicional 2
,	SEGUNDO_NOMBRE_ADIC_2	VARCHAR	(255)	--Segundo Nombre Adicional 2
,	PRIMER_APELLIDO_ADIC_2	VARCHAR	(255)	--Primer Apellido Adicional 2
,	SEGUNDO_APELLIDO_ADIC_2	VARCHAR	(255)	--Segundo Apellido Adicional 2
,	NOMBRE_ESTAMP_TJADIC_2	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta  Adicional 2
,	TELEFONO_CASA_ADIC_2	VARCHAR	(255)	--Telefono Casa Adicional 2
,	TELEFONO_TRABAJO_ADIC_2	VARCHAR	(255)	--Teléfono Trabajo Adicional 2
,	CELULAR_ADIC_2	VARCHAR	(255)	--Celular Adicional 2
,	LIMITE_ADIC_2	DECIMAL	(17,2)	--Limite Adicional 2
,	REQUIERE_PIN_ADIC_2	VARCHAR	(255)	--Requiere PIN Adicional 2
,	CALIPARTIPBENE_TJCONTRATOADIC3	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 3
,	TIPO_IDENTIF_1_ADIC_3	VARCHAR	(255)	--Tipo Identificación 1 Adicional 3
,	NUMERO_IDENTIF_1_ADIC_3	VARCHAR	(255)	--Número de Identificación 1 Adicional 3
,	TIPO_DE_IDENTIF_2_ADIC_3	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 3
,	NUMERO_IDENTIF_2_ADIC_3	VARCHAR	(255)	--Número de Identificación 2 Adicional 3
,	PRIMER_NOMBRE_ADIC_3	VARCHAR	(255)	--Primer Nombre Adicional 3
,	SEGUNDO_NOMBRE_ADIC_3	VARCHAR	(255)	--Segundo Nombre Adicional 3
,	PRIMER_APELLIDO_ADIC_3	VARCHAR	(255)	--Primer Apellido Adicional 3
,	SEGUNDO_APELLIDO_ADIC_3	VARCHAR	(255)	--Segundo Apellido Adicional 3
,	NOMBRE_ESTAMP_TJADIC_3	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta Adicional 3
,	TELEFONO_CASA_ADIC_3	VARCHAR	(255)	--Telefono Casa Adicional 3
,	TELEFONO_TRABAJO_ADIC_3	VARCHAR	(255)	--Teléfono Trabajo Adicional 3
,	CELULAR_ADIC_3	VARCHAR	(255)	--Celular Adicional 3
,	LIMITE_ADIC_3	DECIMAL	(17,2)	--Limite Adicional 3
,	REQUIERE_PIN_ADIC_3	VARCHAR	(255)	--Requiere PIN Adicional 3
,	CALIPARTIPBENE_TJCONTRATOADIC4	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 4
,	TIPO_IDENTIF_1_ADIC_4	VARCHAR	(255)	--Tipo Identificación 1 Adicional 4
,	NUMERO_IDENTIF_1_ADIC_4	VARCHAR	(255)	--Número de Identificación 1 Adicional 4
,	TIPO_DE_IDENTIF_2_ADIC_4	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 4
,	NUMERO_IDENTIF_2_ADIC_4	VARCHAR	(255)	--Número de Identificación 2 Adicional 4
,	PRIMER_NOMBRE_ADIC_4	VARCHAR	(255)	--Primer Nombre Adicional 4
,	SEGUNDO_NOMBRE_ADIC_4	VARCHAR	(255)	--Segundo Nombre Adicional 4
,	PRIMER_APELLIDO_ADIC_4	VARCHAR	(255)	--Primer Apellido Adicional 4
,	SEGUNDO_APELLIDO_ADIC_4	VARCHAR	(255)	--Segundo Apellido Adicional 4
,	NOMBRE_ESTAMP_TJADIC_4	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta Adicional 4
,	TELEFONO_CASA_ADIC_4	VARCHAR	(255)	--Telefono Casa Adicional 4
,	TELEFONO_TRABAJO_ADIC_4	VARCHAR	(255)	--Teléfono Trabajo Adicional 4
,	CELULAR_ADIC_4	VARCHAR	(255)	--Celular Adicional 4
,	LIMITE_ADIC_4	DECIMAL	(17,2)	--Limite Adicional 4
,	REQUIERE_PIN_ADIC_4	VARCHAR	(255)	--Requiere PIN Adicional 4
,	CALIPARTIPBENE_TJCONTRATOADIC5	VARCHAR	(255)	--Calidad de Participación del Beneficiario de la Tarjeta en el Contrato Adicional 5
,	TIPO_IDENTIF_1_ADIC_5	VARCHAR	(255)	--Tipo Identificación 1 Adicional 5
,	NUMERO_IDENTIF_1_ADIC_5	VARCHAR	(255)	--Número de Identificación 1 Adicional 5
,	TIPO_DE_IDENTIF_2_ADIC_5	VARCHAR	(255)	--Tipo de Identificación 2 Adicional 5
,	NUMERO_IDENTIF_2_ADIC_5	VARCHAR	(255)	--Número de Identificación 2 Adicional 5
,	PRIMER_NOMBRE_ADIC_5	VARCHAR	(255)	--Primer Nombre Adicional 5
,	SEGUNDO_NOMBRE_ADIC_5	VARCHAR	(255)	--Segundo Nombre Adicional 5
,	PRIMER_APELLIDO_ADIC_5	VARCHAR	(255)	--Primer Apellido Adicional 5
,	SEGUNDO_APELLIDO_ADIC_5	VARCHAR	(255)	--Segundo Apellido Adicional 5
,	NOMBRE_ESTAMP_TJADIC_5	VARCHAR	(255)	--Nombre de Estampación de la Tarjeta Adicional 5
,	TELEFONO_CASA_ADIC_5	VARCHAR	(255)	--Telefono Casa Adicional 5
,	TELEFONO_TRABAJO_ADIC_5	VARCHAR	(255)	--Teléfono Trabajo Adicional 5
,	CELULAR_ADIC_5	VARCHAR	(255)	--Celular Adicional 5
,	LIMITE_ADIC_5	DECIMAL	(17,2)	--Limite Adicional 5
,	REQUIERE_PIN_ADIC_5	VARCHAR	(255)	--Requiere PIN Adicional 5
,	DESEA_BALCON	VARCHAR	(255)	--¿Desea Balcon?
,	MONTO_CHEQUES_SOLICITADOS	DECIMAL	(22,2)	--Monto de Cheques Solicitados
,	CANTIDAD_DE_CHEQUES	VARCHAR	(255)	--Cantidad de Cheques
,	INSTCOMPRACARTERA_NOM_TITULAR1	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-1
,	CUENTA_A_ABONAR_ENDOSO_1	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-1
,	MONTO_CHEQUE_1	DECIMAL	(22,2)	--Monto de Cheque-1
,	INSTCOMPRACARTERA_NOM_TITULAR2	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-2
,	CUENTA_A_ABONAR_ENDOSO_2	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-2
,	MONTO_CHEQUE_2	DECIMAL	(22,2)	--Monto de Cheque-2
,	INSTCOMPRACARTERA_NOM_TITULAR3	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-3
,	CUENTA_A_ABONAR_ENDOSO_3	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-3
,	MONTO_CHEQUE_3	DECIMAL	(22,2)	--Monto de Cheque-3
,	INSTCOMPRACARTERA_NOM_TITULAR4	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-4
,	CUENTA_A_ABONAR_ENDOSO_4	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-4
,	MONTO_CHEQUE_4	DECIMAL	(22,2)	--Monto de Cheque-4
,	INSTCOMPRACARTERA_NOM_TITULAR5	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-5
,	CUENTA_A_ABONAR_ENDOSO_5	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-5
,	MONTO_CHEQUE_5	DECIMAL	(22,2)	--Monto de Cheque-5
,	INSTCOMPRACARTERA_NOM_TITULAR6	VARCHAR	(255)	--Instituto a Comprar Cartera o Nombre del Titular-6
,	CUENTA_A_ABONAR_ENDOSO_6	VARCHAR	(255)	--Cuenta a Abonar (Endoso)-6
,	MONTO_CHEQUE_6	DECIMAL	(22,2)	--Monto de Cheque-6
,	LISTADO_DOCUMENTOS_ADJUNTAR	VARCHAR	(255)	--Listado de Documentos a adjuntar
,	NOTAS_COMENT_DOCUMENTACION	VARCHAR	(255)	--Notas/Comentario Documentación
,	NOTAS_COMENT_VALIDACION	VARCHAR	(255)	--Notas/Comentarios Validación
,	BITACOMENT_VISIBLEACREDITVALID	VARCHAR	(255)	--Bitácora de comentarios (Solo visible para créditos) Validación
,	BITACOMENT_EJECUT_VENTAS_VALID	VARCHAR	(255)	--Bitácora de comentarios para el Ejecutivo de Ventas Validación
,	ESTADO_VALIDACION	VARCHAR	(255)	--Estado Validación
,	NOTAS_COMENT_AUTENTICACION	VARCHAR	(255)	--Notas/Comentarios Autenticación
,	ESTADO_AUTENTICACION	VARCHAR	(255)	--Estado Autenticación
,	NOTAS_COMENT_ANALISIS	VARCHAR	(255)	--Notas/Comentarios Análisis
,	ESTADO_ANALISIS	VARCHAR	(255)	--Estado  Análisis
,	BITACOMENT_CREDITOS_ANALISIS	VARCHAR	(255)	--Bitácora de comentarios (Solo visible para créditos)  Análisis
,	BITACOMENT_EJEC_VENTA_ANALISIS	VARCHAR	(255)	--Bitácora de comentarios para el Ejecutivo de Ventas  Análisis
,	BITACOMENT_ANALISTA_AUTEN	VARCHAR	(255)	--Bitácora de comentarios (Para analista de Autenticación)  Análisis
,	ESTADSOLIC_APROBDENEG_EN_CURSO	VARCHAR	(255)	--Estado de la Solicitud (Aprogada, Denegada, En Curso etc)
,	FASE_VALID_AUTEN_FINAL	VARCHAR	(255)	--Fase (ETAPA EN LA QUE SE ENCUENTRA  VALIDACION, AUTENTICACION, ANALISIS FINAL
,	FECHA_CREACION_SOLICITUD	TIMESTAMP		--Fecha y Hora de creación de la solicitud
,	FECRESOL_DATOS_AUTEN_FINAL	TIMESTAMP		--Fecha y Hora de resolución en cada etapa (Datos Básicos, Validación, Autenticación, Analisis Final ETC..)
,	FECING_DATOS_VALID_AUTEN_FINAL	TIMESTAMP		--Fecha y Hora de ingresó en cada etapa (Datos Básicos, Validación, Autenticación, Analisis Final ETC..)
,	USUARIORESOL_DATOS_AUTEN_FINAL	VARCHAR	(255)	--Usuario que resolvío en cada etapa (Datos Básicos, Validación, Autenticación, Analisis Final ETC..)
,	NO_TARJETA_GENERADA	VARCHAR	(255)	--No. de Tarjeta generada
,	NO_CONTRATO	VARCHAR	(255)	--N° de contrato
,	REASONCODES	VARCHAR	(255)	--ReasonCodes
,	OTROS_INGRESOS	VARCHAR	(255)	--Otros ingresos 
,	FUENTE_OTROS_INGRESOS	VARCHAR	(255)	--Fuente de otros ingresos
,	NUMERO_INTENTOS_DE_LLAMADA	VARCHAR	(255)	--Numero Intentos de Llamada
,	NUMERO_VALIDADOR	VARCHAR	(255)	--Numero de validador
,	FECHA_VALIDADOR	TIMESTAMP		--Fecha de validador
,	LIMITE_SUPERIOR_EQFX	DECIMAL	(22,2)	--Limite_Superior_EQFX
,	LIMITE_INFERIOR_EQFX	DECIMAL	(22,2)	--Limite_Inferior_EQFX
,	CUARTIL_EQFX	DECIMAL	(22,2)	--Cuartil_EQFX
,	INGRESO_BASE	DECIMAL	(22,2)	--Ingreso_Base
,	MISMA_EMPRESA	VARCHAR	(255)	--Misma_Empresa  
,	MARCACION_RECONDUCIBLE	VARCHAR	(255)	--Marcación de reconducible
,	TIPO_DE_RECONDUCCION	VARCHAR	(255)	--Tipo de reconduccion
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
,@OBJECT_NAME = 'CC_SOLICITUDES_TARJETAS'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = 'fd3533e50830fc9a774665d3e83b3a641ebbaa75'
,@VERSION_CODE = 'fd3533e'
,@VERSION_DATE = 'May 2, 2019 8:54:26 AM'
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

COMMIT;

if exists (select 1 from CNF.CAT_JOBS WHERE NOMBRE_TABLA = 'CC_SOLICITUDES_TARJETAS')
BEGIN
  DELETE CNF.CAT_JOBS WHERE NOMBRE_TABLA = 'CC_SOLICITUDES_TARJETAS'
END
INSERT INTO "CNF"."CAT_JOBS" ("NOMBRE_JOB","NOMBRE_TABLA","TIPO_CARGA","REPROCESO") 
VALUES('JOB_CASE_CENTER_STJ','CC_SOLICITUDES_TARJETAS',NULL,0);
COMMIT;
