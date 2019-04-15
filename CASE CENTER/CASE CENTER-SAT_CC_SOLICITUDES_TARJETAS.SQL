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
