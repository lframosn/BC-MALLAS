
drop table IF EXISTS "STG_SAT"."CC_CASOS_ATC";  

COMMIT;

CREATE TABLE IF NOT EXISTS  "STG_SAT"."CC_CASOS_ATC" (
	"numero_de_caso" VARCHAR(21) NULL,
	"codigo_gestion" VARCHAR(14) NULL,
	"gestion_descripcion" VARCHAR(19) NULL,
	"fecha_apertura" VARCHAR(23) NULL,
	"fecha_modificacion" VARCHAR(23) NULL,
	"descripcion_del_caso" VARCHAR(20) NULL,
	"pan" VARCHAR(17) NULL,
	"numero_de_contrato" VARCHAR(18) NULL,
	"nombre_1" VARCHAR(15) NULL,
	"apellido_1" VARCHAR(10) NULL,
	"apellido_2" VARCHAR(10) NULL,
	"record_id_casecenter" VARCHAR(24) NULL,
	"cuscaid" VARCHAR(8) NULL,
	"created_by" VARCHAR(33) NULL,
	"estado" VARCHAR(8) NULL
); COMMIT;



drop table IF EXISTS "STG_SAT"."CC_CONTROVERSIAS";  

COMMIT;

CREATE TABLE IF NOT EXISTS  "STG_SAT"."CC_CONTROVERSIAS" (
	"fecha_creacion" VARCHAR(23) NULL,
	"tipo_identificacion" VARCHAR(19) NULL,
	"numero_identificacion" VARCHAR(21) NULL,
	"numero_tarjeta" VARCHAR(14) NULL,
	"nombre1" VARCHAR(21) NULL,
	"nombre2" VARCHAR(7) NULL,
	"apellido1" VARCHAR(9) NULL,
	"apellido2" VARCHAR(9) NULL,
	"apellido_casada" VARCHAR(15) NULL,
	"razon_social" VARCHAR(12) NULL,
	"telefono" VARCHAR(8) NULL,
	"tipo_via" VARCHAR(8) NULL,
	"nombre_via" VARCHAR(10) NULL,
	"numero_via" VARCHAR(10) NULL,
	"codigo_postal" VARCHAR(13) NULL,
	"provincia" VARCHAR(9) NULL,
	"comentarios" VARCHAR(69) NULL,
	"cta_centro_alta" VARCHAR(15) NULL,
	"cuenta" VARCHAR(6) NULL,
	"pan" VARCHAR(16) NULL,
	"centalta1" VARCHAR(9) NULL,
	"cuenta1" VARCHAR(12) NULL,
	"numextcta1" VARCHAR(10) NULL,
	"clamon1" VARCHAR(7) NULL,
	"arn1" VARCHAR(4) NULL,
	"mov_amt1" VARCHAR(8) NULL,
	"mov_class" VARCHAR(9) NULL,
	"centalta2" VARCHAR(9) NULL,
	"cuenta2" VARCHAR(7) NULL,
	"numextcta2" VARCHAR(10) NULL,
	"clamon2" VARCHAR(7) NULL,
	"arn2" VARCHAR(4) NULL,
	"mov_amt2" VARCHAR(8) NULL,
	"mov_class2" VARCHAR(10) NULL,
	"centalta3" VARCHAR(9) NULL,
	"cuenta3" VARCHAR(7) NULL,
	"numextcta3" VARCHAR(10) NULL,
	"clamon3" VARCHAR(7) NULL,
	"arn3" VARCHAR(4) NULL,
	"mov_amt3" VARCHAR(8) NULL,
	"mov_class3" VARCHAR(10) NULL,
	"centalta4" VARCHAR(9) NULL,
	"cuenta4" VARCHAR(7) NULL,
	"numextcta4" VARCHAR(10) NULL,
	"clamon4" VARCHAR(7) NULL,
	"arn4" VARCHAR(4) NULL,
	"mov_amt4" VARCHAR(8) NULL,
	"mov_class4" VARCHAR(10) NULL,
	"centalta5" VARCHAR(9) NULL,
	"cuenta5" VARCHAR(7) NULL,
	"numextcta5" VARCHAR(10) NULL,
	"clamon5" VARCHAR(7) NULL,
	"arn5" VARCHAR(4) NULL,
	"mov_amt5" VARCHAR(8) NULL,
	"mov_class5" VARCHAR(10) NULL,
	"cuscaid" VARCHAR(8) NULL,
	"id_registro" VARCHAR(15) NULL,
	"id_cliente" VARCHAR(10) NULL,
	"estado" VARCHAR(10) NULL,
	"fecha_ultima_modificacion" VARCHAR(25) NULL,
	"created_by" VARCHAR(33) NULL
); COMMIT;


drop table IF EXISTS "STG_SAT"."CC_SOLICITUDES_TARJETAS";  

COMMIT;

CREATE TABLE IF NOT EXISTS  "STG_SAT"."CC_SOLICITUDES_TARJETAS" (
	"NOMBRE COMPLETO" VARCHAR(32) NULL,
	"NIT" INTEGER NULL,
	"INGRESO MENSUALES" DECIMAL(10,3) NULL,
	"LUGAR DE TRABAJO" VARCHAR(9) NULL,
	"DIRECCION DE DOMICILIO" VARCHAR(41) NULL,
	"PUESTO" VARCHAR(11) NULL,
	"NUMERO DE CUENTA" INTEGER NULL,
	"NUMERO DE TARJETA" INTEGER NULL,
	"TIPO TARJETA" INTEGER NULL,
	"MARCA COMERCIAL" VARCHAR(37) NULL,
	"TYPE" VARCHAR(2) NULL,
	"LIMITE" DECIMAL(10,3) NULL,
	"TIPO SOLICITUD" VARCHAR(17) NULL,
	"TIPO DE SOLICITANTE" VARCHAR(7) NULL,
	"SOURCED CODE" VARCHAR(8) NULL,
	"PRODUCT ORG" VARCHAR(37) NULL,
	"SUPERVISOR" VARCHAR(8) NULL,
	"VIAJERO FRECUENTE" INTEGER NULL,
	"NACIONALIDAD" VARCHAR(11) NULL,
	"PAIS DE NACIMIENTO" VARCHAR(11) NULL,
	"FECHA DE NACIMIENTO" VARCHAR(10) NULL,
	"ESTADO CIVIL" VARCHAR(11) NULL,
	"PROFESION" VARCHAR(11) NULL,
	"CARGO" VARCHAR(17) NULL,
	"TIPO DE EMPRESA" VARCHAR(21) NULL,
	"DIRECCION (TRABAJO)" VARCHAR(20) NULL,
	"DIRECCION 2 (TRABAJO)" VARCHAR(11) NULL,
	"DIRECCION 3(TRABAJO)" VARCHAR(11) NULL,
	"FUENTE DE INGRESOS" VARCHAR(27) NULL,
	"OTROS INGRESOS" DECIMAL(10,3) NULL,
	"ID2 Type" VARCHAR(3) NULL,
	"ID2" INTEGER NULL,
	"TIPO DE RESIDENCIA" VARCHAR(19) NULL,
	"DIRECCION (CASA)" VARCHAR(41) NULL,
	"DEPARTAMENTO" VARCHAR(11) NULL,
	"MUNICIPIO EL SALVADOR" VARCHAR(19) NULL,
	"COUNTRY (Home)" VARCHAR(11) NULL,
	"INDICADOR FIGURA PUBLICA" VARCHAR(49) NULL,
	"CARGO FIGURA PUBLICA" VARCHAR(10) NULL,
	"RELACION PEP" VARCHAR(5) NULL,
	"NOMBRE REFERENCIA:" VARCHAR(18) NULL,
	"NUMERO DE TELEFONO (REFERENCIA)" INTEGER NULL,
	"PARENTESCO" VARCHAR(7) NULL,
	"NOMBRE REFERENCIA 2" VARCHAR(18) NULL,
	"NUMERO DE TELEFONO (REFERENCIA 2)" INTEGER NULL,
	"PARENTESCO 2" VARCHAR(7) NULL,
	"BALCON BALANCE PAYMENT 1" VARCHAR(2) NULL,
	"CODIGO DE VENDEDOR" VARCHAR(8) NULL,
	"TELEFONO CASA" INTEGER NULL,
	"TELEFONO TRABAJO" INTEGER NULL,
	"NOMBRE EJECUTIVO" VARCHAR(14) NULL,
	"NUMERO DE TEL MOVIL" INTEGER NULL,
	"DIRECCION DE CORRESPONDENCIA" VARCHAR(4) NULL,
	"FECHA_APERTURA" VARCHAR(23) NULL,
	"TIPO_CLIENTE" VARCHAR(7) NULL,
	"PROGRAMA DE VENTAS" VARCHAR(10) NULL,
	"CANAL DE VENTAS" VARCHAR(31) NULL,
	"SEXO" VARCHAR(9) NULL,
	"EDAD" INTEGER NULL,
	"CTA_PLANILLERA" INTEGER NULL,
	"FECHA DE INGRESO CASECENTER" VARCHAR(10) NULL,
	"NOMBRE EN PLASTICO" VARCHAR(21) NULL,
	"NOMBRE ADICIONAL 1" VARCHAR(32) NULL,
	"NIT ADICIONAL 1" INTEGER NULL,
	"DUI ADICIONAL 1" INTEGER NULL,
	"FECHA NACIMIENTO ADICIONAL 1" VARCHAR(9) NULL,
	"PLASTICO ADICIONAL 1" INTEGER NULL,
	"LIMITE TARJETA ADICIONAL 1" INTEGER NULL,
	"NOMBRE ADICIONAL 2" VARCHAR(15) NULL,
	"NIT ADICIONAL 2" INTEGER NULL,
	"DUI ADICIONAL 2" INTEGER NULL,
	"FECHA NACIMIENTO ADICIONAL 2" VARCHAR(9) NULL,
	"PLASTICO ADICIONAL 2" INTEGER NULL,
	"LIMITE TARJETA ADICIONAL 2" INTEGER NULL,
	"NOMBRE ADICIONAL 3" VARCHAR(11) NULL,
	"NIT ADICIONAL 3" INTEGER NULL,
	"DUI ADICIONAL 3" INTEGER NULL,
	"FECHA NACIMIENTO ADICIONAL 3" VARCHAR(9) NULL,
	"PLASTICO ADICIONAL 3" INTEGER NULL,
	"LIMITE TARJETA ADICIONAL 3" INTEGER NULL,
	"NOMBRE ADICIONAL 4" VARCHAR(7) NULL,
	"NIT ADICIONAL 4" INTEGER NULL,
	"DUI ADICIONAL 4" INTEGER NULL,
	"FECHA NACIMIENTO ADICIONAL 4" VARCHAR(9) NULL,
	"PLASTICO ADICIONAL 4" INTEGER NULL,
	"LIMITE TARJETA ADICIONAL 4" INTEGER NULL,
	"NOMBRE ADICIONAL 5" VARCHAR(11) NULL,
	"NIT ADICIONAL 5" INTEGER NULL,
	"DUI ADICIONAL 5" INTEGER NULL,
	"FECHA NACIMIENTO ADICIONAL 5" VARCHAR(9) NULL,
	"PLASTICO ADICIONAL 5" INTEGER NULL,
	"LIMITE TARJETA ADICIONAL 5" INTEGER NULL,
	"CORREO ELECTRONICO" VARCHAR(33) NULL,
	"NUMERO UNICO" INTEGER NULL,
	"T INT" INTEGER NULL,
	"T INT LETRAS" INTEGER NULL,
	"T INT ANUAL" INTEGER NULL,
	"T INT ANUAL LETRAS" INTEGER NULL,
	"CARGO MORA" INTEGER NULL,
	"CARGO SOBREGIRO" INTEGER NULL,
	"LIMITE LETRAS" INTEGER NULL,
	"COMISION RETIRO" INTEGER NULL,
	"LIM MAX CRED" INTEGER NULL,
	"LIM MAX CRED LETRAS" INTEGER NULL,
	"T INT COMPRAS" INTEGER NULL,
	"T INT RETIROS" INTEGER NULL,
	"T INT EFECTIVA" INTEGER NULL,
	"T INT EFECTIVA LETRAS" INTEGER NULL,
	"MEM TIT INI" INTEGER NULL,
	"MEM ADI INI" INTEGER NULL,
	"MEM TIT REN" INTEGER NULL,
	"MEM ADI REN" INTEGER NULL,
	"VALOR SISTEMA PROTECCION" INTEGER NULL,
	"INSTITUCION A COMPRA CARTERA-1" VARCHAR(11) NULL,
	"INSTITUCION A COMPRA CARTERA-2" VARCHAR(11) NULL,
	"INSTITUCION A COMPRA CARTERA-3" INTEGER NULL,
	"INSTITUCION A COMPRA CARTERA-4" INTEGER NULL,
	"INSTITUCION A COMPRA CARTERA-5" INTEGER NULL,
	"INSTITUCION A COMPRA CARTERA-6" INTEGER NULL,
	"# DE CUENTA A ABONAR (ENDOSO)-1" INTEGER NULL,
	"# DE CUENTA A ABONAR (ENDOSO)-2" INTEGER NULL,
	"# DE CUENTA A ABONAR (ENDOSO)-3" INTEGER NULL,
	"# DE CUENTA A ABONAR (ENDOSO)-4" INTEGER NULL,
	"# DE CUENTA A ABONAR (ENDOSO)-5" INTEGER NULL,
	"# DE CUENTA A ABONAR (ENDOSO)-6" INTEGER NULL,
	"MONTO PARA EMITIR CHEQUE-1" DECIMAL(10,3) NULL,
	"MONTO PARA EMITIR CHEQUE-2" DECIMAL(10,3) NULL,
	"MONTO PARA EMITIR CHEQUE-3" INTEGER NULL,
	"MONTO PARA EMITIR CHEQUE-4" INTEGER NULL,
	"MONTO PARA EMITIR CHEQUE-5" INTEGER NULL,
	"MONTO PARA EMITIR CHEQUE-6" INTEGER NULL,
	"SUMA DE MONTOS DE CHEQUES" DECIMAL(10,3) NULL,
	"TIPO DE CONVENIO" INTEGER NULL,
	"LOGO/ PLAN" INTEGER NULL,
	"LOGO" VARCHAR(37) NULL,
	"MONTO EN LETRAS: SUMA DE MONTOS DE CHEQUES" INTEGER NULL,
	"MONTO DE BALCON A TITULO." DECIMAL(10,3) NULL,
	"HORARIO DE VISITA" VARCHAR(18) NULL,
	"RECORD ID CASECENTER" VARCHAR(24) NULL,
	"garantia_deposito" INTEGER NULL,
	"universidad" VARCHAR(38) NULL,
	"ingreso_inferido" INTEGER NULL
); COMMIT;


drop table IF EXISTS "STG_SAT"."CC_SOLICITUDES_BALCON";  

COMMIT;


CREATE TABLE IF NOT EXISTS  "STG_SAT"."CC_SOLICITUDES_BALCON" (
	"nro_seguimiento" VARCHAR(20) NULL,
	"estado_bandeja" VARCHAR(25) NULL,
	"fecha_creacion_solicitud" VARCHAR(16) NULL,
	"numero_de_tarjeta" INTEGER NULL,
	"producto_colocado" VARCHAR(6) NULL,
	"tipo_de_producto" VARCHAR(13) NULL,
	"numero_de_cuenta" INTEGER NULL,
	"nombre_completo" VARCHAR(30) NULL,
	"tipo_documento" VARCHAR(3) NULL,
	"numero_documento" VARCHAR(10) NULL,
	"direccion_casa" VARCHAR(61) NULL,
	"telefono_casa" INTEGER NULL,
	"referencia_casa" INTEGER NULL,
	"direccion_trabajo" VARCHAR(27) NULL,
	"telefono_trabajo" VARCHAR(17) NULL,
	"referencia_trabajo" INTEGER NULL,
	"numero_contacto_1" INTEGER NULL,
	"numero_contacto_2" INTEGER NULL,
	"balcon_para_tercero" VARCHAR(15) NULL,
	"nombre_de_tercero" INTEGER NULL,
	"monto_estado_de_cuenta" DECIMAL(10,3) NULL,
	"monto_maximo_autorizado" DECIMAL(10,3) NULL,
	"limite_de_credito" DECIMAL(10,3) NULL,
	"limite_disponible" DECIMAL(10,3) NULL,
	"sub_producto" INTEGER NULL,
	"tipo_cuota" VARCHAR(4) NULL,
	"cuotas" INTEGER NULL,
	"tasa_preferencial" DECIMAL(10,3) NULL,
	"fecha_de_corte" VARCHAR(10) NULL,
	"lugar_de_entrega" VARCHAR(7) NULL,
	"agencia" VARCHAR(19) NULL,
	"monto_cheques_solicitados" DECIMAL(10,3) NULL,
	"cantidad_cheques_solicitados" INTEGER NULL,
	"normal_monto_de_estado_de_cuenta" DECIMAL(10,3) NULL,
	"normal_monto_maximo_autorizado" DECIMAL(10,3) NULL,
	"normal_balcon_25_mas_de_estado_de_cuenta" DECIMAL(10,3) NULL,
	"instituto-1" VARCHAR(13) NULL,
	"instituto-2" VARCHAR(27) NULL,
	"instituto-3" VARCHAR(14) NULL,
	"endoso-1" INTEGER NULL,
	"endoso-2" INTEGER NULL,
	"endoso-3" INTEGER NULL,
	"monto_a_emitir-1" DECIMAL(10,3) NULL,
	"monto_a_emitir-2" DECIMAL(10,3) NULL,
	"monto_a_emitir-3" DECIMAL(10,3) NULL,
	"record_id_case_center" VARCHAR(24) NULL,
	"cuscaid" VARCHAR(11) NULL,
	"modified" VARCHAR(16) NULL,
	"modified_by" VARCHAR(33) NULL,
	"fecha_de_envio_para_impresion" VARCHAR(16) NULL
); COMMIT;


drop table IF EXISTS "STG_SAT"."CC_TARJETAS_ADICIONALES";  

COMMIT;

CREATE TABLE IF NOT EXISTS  "STG_SAT"."CC_TARJETAS_ADICIONALES" (
	"pan" INTEGER NULL,
	"solicitud" VARCHAR(17) NULL,
	"numero_de_cliente" INTEGER NULL,
	"nombre_de_cliente" VARCHAR(20) NULL,
	"nro_tarjetas_adicionales" INTEGER NULL,
	"calidad_participacion_beneficiario_tarjeta_adicional_1_en_contrato" VARCHAR(2) NULL,
	"codigo_tipo_de_tarjeta_adicional_1" INTEGER NULL,
	"codigo_marca_de_tarjeta_adicional_1" INTEGER NULL,
	"tipo_identificacion_1_adicional_1" VARCHAR(3) NULL,
	"numero_identificacion_1_adicional_1" INTEGER NULL,
	"tipo_identificacion_2_adicional_1" VARCHAR(3) NULL,
	"numero_identificacion_2_adicional_1" INTEGER NULL,
	"primer_nombre_adicional_1" VARCHAR(4) NULL,
	"segundo_nombre_adicional_1" INTEGER NULL,
	"primer_apellido_adicional_1" VARCHAR(6) NULL,
	"segundo_apellido_adicional_1" INTEGER NULL,
	"nombre_completo_adicional_1" VARCHAR(12) NULL,
	"indicador_estampacion_tarjeta_adicional_1" VARCHAR(1) NULL,
	"condiciones_estampacion_tarjeta_adicional_1" INTEGER NULL,
	"nombre_estampacion_tarjeta_adicional_1" VARCHAR(12) NULL,
	"telefono_casa_adicional_1" INTEGER NULL,
	"telefono_trabajo_adicional_1" INTEGER NULL,
	"calidad_participacion_beneficiario_tarjeta_adicional_2_en_contrato" VARCHAR(2) NULL,
	"codigo_tipo_de_tarjeta_adicional_2" INTEGER NULL,
	"codigo_marca_de_tarjeta_adicional_2" INTEGER NULL,
	"numero_identificacion_1_adicional_2" INTEGER NULL,
	"numero_identificacion_2_adicional_2" INTEGER NULL,
	"nombre_completo_adicional_2" INTEGER NULL,
	"indicador_estampacion_tarjeta_adicional_2" VARCHAR(1) NULL,
	"condiciones_estampacion_tarjeta_adicional_2" INTEGER NULL,
	"primer_nombre_adicional_2" INTEGER NULL,
	"segundo_nombre_adicional_2" INTEGER NULL,
	"primer_apellido_adicional_2" INTEGER NULL,
	"segundo_apellido_adicional_2" INTEGER NULL,
	"nombre_estampacion_tarjeta_adicional_2" INTEGER NULL,
	"telefono_casa_adicional_2" INTEGER NULL,
	"telefono_trabajo_adicional_2" INTEGER NULL,
	"celular_adicional_2" INTEGER NULL,
	"limite_adicional_2" INTEGER NULL,
	"indicador_exencion_de_cuotas_adicional_2" INTEGER NULL,
	"indicador_tarjeta_emv_adicional_2" INTEGER NULL,
	"calidad_participacion_beneficiario_tarjeta_adicional_3_en_contrato" VARCHAR(2) NULL,
	"codigo_tipo_de_tarjeta_adicional_3" INTEGER NULL,
	"codigo_marca_de_tarjeta_adicional_3" INTEGER NULL,
	"numero_identificacion_1_adicional_3" INTEGER NULL,
	"numero_identificacion_2_adicional_3" INTEGER NULL,
	"nombre_completo_adicional_3" INTEGER NULL,
	"indicador_estampacion_tarjeta_adicional_3" VARCHAR(1) NULL,
	"condiciones_estampacion_tarjeta_adicional_3" INTEGER NULL,
	"primer_nombre_adicional_3" INTEGER NULL,
	"segundo_nombre_adicional_3" INTEGER NULL,
	"primer_apellido_adicional_3" INTEGER NULL,
	"segundo_apellido_adicional_3" INTEGER NULL,
	"nombre_estampacion_tarjeta_adicional_3" INTEGER NULL,
	"telefono_casa_adicional_3" INTEGER NULL,
	"telefono_trabajo_adicional_3" INTEGER NULL,
	"celular_adicional_3" INTEGER NULL,
	"limite_adicional_3" INTEGER NULL,
	"indicador_exencion_de_cuotas_adicional_3" INTEGER NULL,
	"indicador_tarjeta_emv_adicional_3" INTEGER NULL,
	"calidad_participacion_beneficiario_tarjeta_adicional_4_en_contrato" VARCHAR(2) NULL,
	"codigo_tipo_de_tarjeta_adicional_4" INTEGER NULL,
	"codigo_marca_de_tarjeta_adicional_4" INTEGER NULL,
	"numero_identificacion_1_adicional_4" INTEGER NULL,
	"numero_identificacion_2_adicional_4" INTEGER NULL,
	"nombre_completo_adicional_4" INTEGER NULL,
	"indicador_estampacion_tarjeta_adicional_4" VARCHAR(1) NULL,
	"condiciones_estampacion_tarjeta_adicional_4" INTEGER NULL,
	"primer_nombre_adicional_4" INTEGER NULL,
	"segundo_nombre_adicional_4" INTEGER NULL,
	"primer_apellido_adicional_4" INTEGER NULL,
	"segundo_apellido_adicional_4" INTEGER NULL,
	"nombre_estampacion_tarjeta_adicional_4" INTEGER NULL,
	"telefono_casa_adicional_4" INTEGER NULL,
	"telefono_trabajo_adicional_4" INTEGER NULL,
	"celular_adicional_4" INTEGER NULL,
	"limite_adicional_4" INTEGER NULL,
	"indicador_exencion_de_cuotas_adicional_4" INTEGER NULL,
	"indicador_tarjeta_emv_adicional_4" INTEGER NULL,
	"calidad_participacion_beneficiario_tarjeta_adicional_5_en_contrato" VARCHAR(2) NULL,
	"codigo_tipo_de_tarjeta_adicional_5" INTEGER NULL,
	"codigo_marca_de_tarjeta_adicional_5" INTEGER NULL,
	"numero_identificacion_1_adicional_5" INTEGER NULL,
	"numero_identificacion_2_adicional_5" INTEGER NULL,
	"nombre_completo_adicional_5" INTEGER NULL,
	"primer_nombre_adicional_5" INTEGER NULL,
	"segundo_nombre_adicional_5" INTEGER NULL,
	"primer_apellido_adicional_5" INTEGER NULL,
	"segundo_apellido_adicional_5" INTEGER NULL,
	"indicador_estampacion_tarjeta_adicional_5" VARCHAR(1) NULL,
	"condiciones_estampacion_tarjeta_adicional_5" INTEGER NULL,
	"nombre_estampacion_tarjeta_adicional_5" INTEGER NULL,
	"telefono_casa_adicional_5" INTEGER NULL,
	"telefono_trabajo_adicional_5" INTEGER NULL,
	"celular_adicional_5" INTEGER NULL,
	"limite_adicional_5" INTEGER NULL,
	"indicador_exencion_de_cuotas_adicional_5" INTEGER NULL,
	"indicador_tarjeta_emv_adicional_5" INTEGER NULL,
	"cuscaid" INTEGER NULL,
	"fecha_ingreso" VARCHAR(10) NULL,
	"fecha_modificacion" VARCHAR(23) NULL,
	"fecha_aprobacion" INTEGER NULL,
	"estado" VARCHAR(8) NULL
); COMMIT;

