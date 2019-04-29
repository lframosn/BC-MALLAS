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
