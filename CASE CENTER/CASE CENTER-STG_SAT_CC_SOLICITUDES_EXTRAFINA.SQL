drop table IF EXISTS STG_SAT.CC_SOLICITUDES_EXTRAFINA;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_SOLICITUDES_EXTRAFINA  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(30)	--estado bandeja
,	FECHA_DE_CREACION	VARCHAR(23)		--fecha de creacion
,	NO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(6)	--producto colocado
,	TIPO_PRODUCTO	VARCHAR	(50)	--tipo producto
,	NO_CUENTA	VARCHAR	(30)	--numero de cuenta
,	NOMBRE_COMPLETO	VARCHAR	(35)	--nombre completo
,	TIPO_DOCUMENTO	VARCHAR	(10)	--tipo documento
,	NO_DOCUMENTO	VARCHAR	(30)	--numero documento
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
,	LUGAR_TRABAJO	VARCHAR	(255)	--lugar de trabajo
,	DEPARTAMENTO_OFICINA	VARCHAR	(30)	--departamento oficina
,	MUNICIPIO_OFICINA	VARCHAR	(50)	--municipio oficina
,	DIRECCION_OFICINA	VARCHAR	(255)	--direccion oficina
,	TELEFONO_OFICINA	VARCHAR	(8)	--telefono oficina
,	REFERENCIA_OFICINA	VARCHAR	(255)	--referencia oficina
,	PROCEDENCIA_FONDOS	VARCHAR	(255)	--procedencia de fondos
,	LUGAR_PROCEDENCIA	VARCHAR	(255)	--lugar de procedencia
,	PAGOS_ADIC_PROYECTADOS	VARCHAR	(255)	--pagos adicionales proyectados
,	COMO_REALIZARA_PAGOS_ADIC	VARCHAR	(255)	--como realizara pagos adicionales
,	REL_NUMBER	VARCHAR	(255)	--rel number
,	FECHA_CORTE_TARJETA	DATE		--fecha corte tarjeta
,	SUB_PRODUCTO	VARCHAR	(4)	--sub producto
,	TIPO_CUOTA	VARCHAR	(8)	--tipo cuota
,	PLAZO	VARCHAR	(3)	--plazo
,	PRESTAMO	VARCHAR	(17)	--prestamo
,	INTERES_NOMINAL	VARCHAR	(7)	--interes nominal
,	COMISION_DESEMBOLSO	VARCHAR	(17)	--comision de desembolso
,	ORIGEN	VARCHAR	(255)	--origen
,	LUGAR_ENTREGA	VARCHAR	(255)	--lugar de entrega
,	AGENCIA	VARCHAR	(100)	--agencia
,	DEPARTAMENTO_CONTRATO	VARCHAR	(30)	--departamento de contrato
,	MUNICIPIO_CONTRATO	VARCHAR	(50)	--municipio de contrato
,	NORMAL_MONTO_EFECTIVO	VARCHAR	(17)	--normal monto en efectivo
,	NORMAL_MONTO_CHEQUE	VARCHAR	(17)	--normal monto en cheque
,	CANTIDAD_CHEQUES	VARCHAR	(3)	--cantidad cheques
,	TOP_UP_MONTO_CHEQUES	VARCHAR	(17)	--top up monto cheques
,	CUENTA_BANCARIA_AHORRO1	VARCHAR	(30)	--cuenta bancaria ahorro 1
,	CUENTA_BANCARIA_AHORRO2	VARCHAR	(30)	--cuenta bancaria ahorro 2
,	CUENTA_BANCARIA_AHORRO3	VARCHAR	(30)	--cuenta bancaria ahorro 3
,	NO_CUENTA_BANCARIA_AHORRO1	VARCHAR	(30)	--numero cuenta bancaria ahorro 1
,	NO_CUENTA_BANCARIA_AHORRO2	VARCHAR	(30)	--numero cuenta bancaria ahorro 2
,	NO_CUENTA_BANCARIA_AHORRO3	VARCHAR	(30)	--numero cuenta bancaria ahorro 3
,	MONTO_CUENTA_BANCARIA_AHORRO1	VARCHAR	(30)	--monto cuenta bancaria ahorro 1
,	MONTO_CUENTA_BANCARIA_AHORRO2	VARCHAR	(30)	--monto cuenta bancaria ahorro 2
,	MONTO_CUENTA_BANCARIA_AHORRO3	VARCHAR	(30)	--monto cuenta bancaria ahorro 3
,	NO_DE_TARJETA1	VARCHAR	(22)	--numero de tarjeta 1
,	NO_DE_TARJETA2	VARCHAR	(22)	--numero de tarjeta 2
,	NO_DE_TARJETA3	VARCHAR	(22)	--numero de tarjeta 3
,	NO_DE_TARJETA4	VARCHAR	(22)	--numero de tarjeta 4
,	TARJETA_CREDITO_MONTO1	VARCHAR	(17)	--tarjeta de credito monto 1
,	TARJETA_CREDITO_MONTO2	VARCHAR	(17)	--tarjeta de credito monto 2
,	TARJETA_CREDITO_MONTO3	VARCHAR	(17)	--tarjeta de credito monto 3
,	TARJETA_CREDITO_MONTO4	VARCHAR	(17)	--tarjeta de credito monto 4
,	NO_DE_REFERENCIA1	VARCHAR	(22)	--numero de referencia 1
,	NO_DE_REFERENCIA2	VARCHAR	(22)	--numero de referencia 2
,	NO_DE_REFERENCIA3	VARCHAR	(22)	--numero de referencia 3
,	NO_DE_REFERENCIA4	VARCHAR	(22)	--numero de referencia 4
,	TARJETA_CREDITO_MONTO_INT1	VARCHAR	(7)	--tarjeta de credito monto int 1
,	TARJETA_CREDITO_MONTO_INT2	VARCHAR	(7)	--tarjeta de credito monto int 2
,	TARJETA_CREDITO_MONTO_INT3	VARCHAR	(7)	--tarjeta de credito monto int 3
,	TARJETA_CREDITO_MONTO_INT4	VARCHAR	(7)	--tarjeta de credito monto int 4
,	CUENTA_ABONAR_ENDOSO1	VARCHAR	(30)	--cuenta a abonar endoso 1
,	CUENTA_ABONAR_ENDOSO2	VARCHAR	(30)	--cuenta a abonar endoso 2
,	CUENTA_ABONAR_ENDOSO3	VARCHAR	(30)	--cuenta a abonar endoso 3
,	INSTITUTO_COMPRAR_CARTERA1	VARCHAR	(255)	--instituto a comprar cartera 1
,	INSTITUTO_COMPRAR_CARTERA2	VARCHAR	(255)	--instituto a comprar cartera 2
,	INSTITUTO_COMPRAR_CARTERA3	VARCHAR	(255)	--instituto a comprar cartera 3
,	MONTO_CHEQUE1	VARCHAR	(17)	--monto de cheque 1
,	MONTO_CHEQUE2	VARCHAR	(17)	--monto de cheque 2
,	MONTO_CHEQUE3	VARCHAR	(17)	--monto de cheque 3
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	MODIFIED_BY	VARCHAR	(255)	--modified by
,	MODIFIED	VARCHAR	(23)	--modified
,	FECHA_ENVIO_IMPRESION	VARCHAR	(23)	--fecha de envio para impresion
,	RECORD_ID_CASE_CENTER	VARCHAR	(24)	--record id case center
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		

