drop table IF EXISTS STG_SAT.CC_SOLICITUDES_TARJETAS;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_SOLICITUDES_TARJETAS  ( 	NOMBRE_COMPLETO	VARCHAR	(1)	--nombre completo
,	NIT	VARCHAR	(2)	--nit
,	INGRESO_MENSUALES	VARCHAR	(3)	--ingreso mensuales
,	LUGAR_DE_TRABAJO	VARCHAR	(4)	--lugar de trabajo
,	DIREC_DOMICILIO	VARCHAR	(5)	--direccion de domicilio
,	PUESTO	VARCHAR	(6)	--puesto
,	NUMERO_CUENTA	VARCHAR	(7)	--numero de cuenta
,	NUMERO_DE_TARJETA	VARCHAR	(8)	--numero de tarjeta
,	TIPO_TARJETA	VARCHAR	(9)	--tipo tarjeta
,	MARCA_COMERCIAL	VARCHAR	(10)	--marca comercial
,	TYPE	VARCHAR	(11)	--type
,	LIMITE	VARCHAR	(12)	--limite
,	TIPO_SOLICITUD	VARCHAR	(13)	--tipo solicitud
,	TIPO_DE_SOLICITANTE	VARCHAR	(14)	--tipo de solicitante
,	SOURCED_CODE	VARCHAR	(15)	--sourced code
,	PRODUCT_ORG	VARCHAR	(16)	--product org
,	SUPERVISOR	VARCHAR	(17)	--supervisor
,	VIAJERO_FRECUENTE	VARCHAR	(18)	--viajero frecuente
,	NACIONALIDAD	VARCHAR	(19)	--nacionalidad
,	PAIS_DE_NACIMIENTO	VARCHAR	(20)	--pais de nacimiento
,	FECHA_DE_NACIMIENTO	DATE		--fecha de nacimiento
,	ESTADO_CIVIL	VARCHAR	(22)	--estado civil
,	PROFESION	VARCHAR	(23)	--profesion
,	CARGO	VARCHAR	(24)	--cargo
,	TIPO_DE_EMPRESA	VARCHAR	(25)	--tipo de empresa
,	DIRECCION_TRABAJO	VARCHAR	(26)	--direccion (trabajo)
,	DIRECCION2_TRABAJO	VARCHAR	(27)	--direccion 2 (trabajo)
,	DIRECCION3_TRABAJO	VARCHAR	(28)	--direccion 3(trabajo)
,	FUENTE_INGRESOS	VARCHAR	(29)	--fuente de ingresos
,	OTROS_INGRESOS	VARCHAR	(30)	--otros ingresos
,	ID2_TYPE	VARCHAR	(31)	--id2 type
,	ID2	VARCHAR	(32)	--id2
,	TIPO_DE_RESIDENCIA	VARCHAR	(33)	--tipo de residencia
,	DIRECCION_CASA	VARCHAR	(34)	--direccion (casa)
,	DEPARTAMENTO	VARCHAR	(35)	--departamento
,	MUNICIPIO_EL_SALVADOR	VARCHAR	(36)	--municipio el salvador
,	COUNTRY_HOME	VARCHAR	(37)	--country (home)
,	INDICADOR_FIGURA_PUBLICA	VARCHAR	(38)	--indicador figura publica
,	CARGO_FIGURA_PUBLICA	VARCHAR	(39)	--cargo figura publica
,	RELACION_PEP	VARCHAR	(40)	--relacion pep
,	NOMBRE_REFERENCIA	VARCHAR	(41)	--nombre referencia
,	NO_TELEFONO_REFERENCIA	VARCHAR	(42)	--numero de telefono (referencia)
,	PARENTESCO	VARCHAR	(43)	--parentesco
,	NOMBRE_REFERENCIA2	VARCHAR	(44)	--nombre referencia 2
,	NO_TELEFONO_REFERENCIA2	VARCHAR	(45)	--numero de telefono (referencia 2)
,	PARENTESCO2	VARCHAR	(46)	--parentesco 2
,	BALCON_BALANCE_PAYMENT1	VARCHAR	(47)	--balcon balance payment 1
,	CODIGO_DE_VENDEDOR	VARCHAR	(48)	--codigo de vendedor
,	TELEFONO_CASA	VARCHAR	(49)	--telefono casa
,	TELEFONO_TRABAJO	VARCHAR	(50)	--telefono trabajo
,	NOMBRE_EJECUTIVO	VARCHAR	(51)	--nombre ejecutivo
,	NUMERO_DE_TEL_MOVIL	VARCHAR	(52)	--numero de tel movil
,	DIREC_CORRESPONDENCIA	VARCHAR	(53)	--direccion de correspondencia
,	FECHA_APERTURA	VARCHAR(23)		--fecha apertura
,	TIPO_CLIENTE	VARCHAR	(55)	--tipo cliente
,	PROGRAMA_DE_VENTAS	VARCHAR	(56)	--programa de ventas
,	CANAL_DE_VENTAS	VARCHAR	(57)	--canal de ventas
,	SEXO	VARCHAR	(58)	--sexo
,	EDAD	VARCHAR	(59)	--edad
,	CTA_PLANILLERA	VARCHAR	(60)	--cta planillera
,	FECHA_INGRESO_CASECENTER	VARCHAR(23)		--fecha de ingreso casecenter
,	NOMBRE_EN_PLASTICO	VARCHAR	(62)	--nombre en plastico
,	NOMBRE_ADIC1	VARCHAR	(63)	--nombre adicional 1
,	NIT_ADIC1	VARCHAR	(64)	--nit adicional 1
,	DUI_ADIC1	VARCHAR	(65)	--dui adicional 1
,	FECHA_NACIM_ADIC1	DATE		--fecha nacimiento adicional 1
,	PLASTICO_ADIC1	VARCHAR	(67)	--plastico adicional 1
,	LIMITE_TARJETA_ADIC1	VARCHAR	(68)	--limite tarjeta adicional 1
,	NOMBRE_ADIC2	VARCHAR	(69)	--nombre adicional 2
,	NIT_ADIC2	VARCHAR	(70)	--nit adicional 2
,	DUI_ADIC2	VARCHAR	(71)	--dui adicional 2
,	FECHA_NACIM_ADIC2	DATE		--fecha nacimiento adicional 2
,	PLASTICO_ADIC2	VARCHAR	(73)	--plastico adicional 2
,	LIMITE_TARJETA_ADIC2	VARCHAR	(74)	--limite tarjeta adicional 2
,	NOMBRE_ADIC3	VARCHAR	(75)	--nombre adicional 3
,	NIT_ADIC3	VARCHAR	(76)	--nit adicional 3
,	DUI_ADIC3	VARCHAR	(77)	--dui adicional 3
,	FECHA_NACIM_ADIC3	DATE		--fecha nacimiento adicional 3
,	PLASTICO_ADIC3	VARCHAR	(79)	--plastico adicional 3
,	LIMITE_TARJETA_ADIC3	VARCHAR	(80)	--limite tarjeta adicional 3
,	NOMBRE_ADIC4	VARCHAR	(81)	--nombre adicional 4
,	NIT_ADIC4	VARCHAR	(82)	--nit adicional 4
,	DUI_ADIC4	VARCHAR	(83)	--dui adicional 4
,	FECHA_NACIM_ADIC4	DATE		--fecha nacimiento adicional 4
,	PLASTICO_ADIC4	VARCHAR	(85)	--plastico adicional 4
,	LIMITE_TARJETA_ADIC4	VARCHAR	(86)	--limite tarjeta adicional 4
,	NOMBRE_ADIC5	VARCHAR	(87)	--nombre adicional 5
,	NIT_ADIC5	VARCHAR	(88)	--nit adicional 5
,	DUI_ADIC5	VARCHAR	(89)	--dui adicional 5
,	FECHA_NACIM_ADIC5	DATE		--fecha nacimiento adicional 5
,	PLASTICO_ADIC5	VARCHAR	(91)	--plastico adicional 5
,	LIMITE_TARJETA_ADIC5	VARCHAR	(92)	--limite tarjeta adicional 5
,	CORREO_ELECTRONICO	VARCHAR	(93)	--correo electronico
,	NUMERO_UNICO	VARCHAR	(94)	--numero unico
,	T_INT	VARCHAR	(95)	--t int
,	T_INT_LETRAS	VARCHAR	(96)	--t int letras
,	T_INT_ANUAL	VARCHAR	(97)	--t int anual
,	T_INT_ANUAL_LETRAS	VARCHAR	(98)	--t int anual letras
,	CARGO_MORA	VARCHAR	(99)	--cargo mora
,	CARGO_SOBREGIRO	VARCHAR	(100)	--cargo sobregiro
,	LIMITE_LETRAS	VARCHAR	(101)	--limite letras
,	COMISION_RETIRO	VARCHAR	(102)	--comision retiro
,	LIM_MAX_CRED	VARCHAR	(103)	--lim max cred
,	LIM_MAX_CRED_LETRAS	VARCHAR	(104)	--lim max cred letras
,	T_INT_COMPRAS	VARCHAR	(105)	--t int compras
,	T_INT_RETIROS	VARCHAR	(106)	--t int retiros
,	T_INT_EFECTIVA	VARCHAR	(107)	--t int efectiva
,	T_INT_EFECTIVA_LETRAS	VARCHAR	(108)	--t int efectiva letras
,	MEM_TIT_INI	VARCHAR	(109)	--mem tit ini
,	MEM_ADI_INI	VARCHAR	(110)	--mem adi ini
,	MEM_TIT_REN	VARCHAR	(111)	--mem tit ren
,	MEM_ADI_REN	VARCHAR	(112)	--mem adi ren
,	VALOR_SISTEMA_PROTECCION	VARCHAR	(113)	--valor sistema proteccion
,	INSTITUCION_COMPRA_CARTERA1	VARCHAR	(114)	--institucion a compra cartera 1
,	INSTITUCION_COMPRA_CARTERA2	VARCHAR	(115)	--institucion a compra cartera 2
,	INSTITUCION_COMPRA_CARTERA3	VARCHAR	(116)	--institucion a compra cartera 3
,	INSTITUCION_COMPRA_CARTERA4	VARCHAR	(117)	--institucion a compra cartera 4
,	INSTITUCION_COMPRA_CARTERA5	VARCHAR	(118)	--institucion a compra cartera 5
,	INSTITUCION_COMPRA_CARTERA6	VARCHAR	(119)	--institucion a compra cartera 6
,	NO_CUENTA_ABONAR_ENDOSO1	VARCHAR	(120)	--no de cuenta a abonar (endoso) 1
,	NO_CUENTA_ABONAR_ENDOSO2	VARCHAR	(121)	--no de cuenta a abonar (endoso) 2
,	NO_CUENTA_ABONAR_ENDOSO3	VARCHAR	(122)	--no de cuenta a abonar (endoso) 3
,	NO_CUENTA_ABONAR_ENDOSO4	VARCHAR	(123)	--no de cuenta a abonar (endoso) 4
,	NO_CUENTA_ABONAR_ENDOSO5	VARCHAR	(124)	--no de cuenta a abonar (endoso) 5
,	NO_CUENTA_ABONAR_ENDOSO6	VARCHAR	(125)	--no de cuenta a abonar (endoso) 6
,	MONTO_EMITIR_CHEQUE1	VARCHAR	(126)	--monto para emitir cheque 1
,	MONTO_EMITIR_CHEQUE2	VARCHAR	(127)	--monto para emitir cheque 2
,	MONTO_EMITIR_CHEQUE3	VARCHAR	(128)	--monto para emitir cheque 3
,	MONTO_EMITIR_CHEQUE4	VARCHAR	(129)	--monto para emitir cheque 4
,	MONTO_EMITIR_CHEQUE5	VARCHAR	(130)	--monto para emitir cheque 5
,	MONTO_EMITIR_CHEQUE6	VARCHAR	(131)	--monto para emitir cheque 6
,	SUMA_MONTOS_CHQ	VARCHAR	(132)	--suma de montos de cheques
,	TIPO_DE_CONVENIO	VARCHAR	(133)	--tipo de convenio
,	LOGO_PLAN	VARCHAR	(134)	--logo/ plan
,	LOGO	VARCHAR	(135)	--logo
,	SUMA_MONTOS_CHQ_LETRAS	VARCHAR	(136)	--monto en letras - suma de montos de cheques
,	MONTO_DE_BALCON_A_TITULO	VARCHAR	(137)	--monto de balcon a titulo.
,	HORARIO_DE_VISITA	VARCHAR	(138)	--horario de visita
,	RECORD_ID_CASECENTER	VARCHAR	(139)	--record id casecenter
,	GARANTIA_DEPOSITO	VARCHAR	(140)	--garantia deposito
,	UNIVERSIDAD	VARCHAR	(141)	--universidad
,	INGRESO_INFERIDO	VARCHAR	(142)	--ingreso inferido
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		
