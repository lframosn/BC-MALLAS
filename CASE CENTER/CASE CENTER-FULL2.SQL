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

drop table IF EXISTS SAT.CC_SOLICITUDES_EXTRAFINA;  CREATE TABLE IF NOT EXISTS SAT.CC_SOLICITUDES_EXTRAFINA  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(12)	--estado bandeja
,	FECHA_DE_CREACION	TIMESTAMP		--fecha de creacion
,	NO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(6)	--producto colocado
,	TIPO_PRODUCTO	VARCHAR	(2)	--tipo producto
,	NO_CUENTA	VARCHAR	(30)	--numero de cuenta
,	NOMBRE_COMPLETO	VARCHAR	(35)	--nombre completo
,	TIPO_DOCUMENTO	VARCHAR	(10)	--tipo documento
,	NO_DOCUMENTO	VARCHAR	(30)	--numero documento
,	PROFESION	VARCHAR	(3)	--profesion
,	DEPARTAMENTO_CASA	VARCHAR	(2)	--departamento casa
,	MUNICIPIO_CASA	VARCHAR	(50)	--municipio casa
,	DIRECCION_CASA	VARCHAR	(255)	--direccion casa
,	TELEFONO_CASA	VARCHAR	(8)	--telefono casa
,	REFERENCIA_CASA	VARCHAR	(255)	--referencia casa
,	OTRO_CONTACTO	VARCHAR	(8)	--otro contacto
,	NIT	VARCHAR	(14)	--nit
,	FECHA_NACIMIENTO	DATE		--fecha nacimiento
,	ESTADO_CIVIL	VARCHAR	(1)	--estado civil
,	SEXO	VARCHAR	(1)	--sexo
,	LUGAR_TRABAJO	VARCHAR	(255)	--lugar de trabajo
,	DEPARTAMENTO_OFICINA	VARCHAR	(2)	--departamento oficina
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
,	DEPARTAMENTO_CONTRATO	VARCHAR	(2)	--departamento de contrato
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

-------------------- TABLAS STAGE ------------------
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

drop table IF EXISTS STG_SAT.CC_SOLICITUDES_EXTRAFINA;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_SOLICITUDES_EXTRAFINA  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(12)	--estado bandeja
,	FECHA_DE_CREACION	VARCHAR(23)		--fecha de creacion
,	NO_DE_TARJETA	VARCHAR	(22)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(6)	--producto colocado
,	TIPO_PRODUCTO	VARCHAR	(2)	--tipo producto
,	NO_CUENTA	VARCHAR	(30)	--numero de cuenta
,	NOMBRE_COMPLETO	VARCHAR	(35)	--nombre completo
,	TIPO_DOCUMENTO	VARCHAR	(10)	--tipo documento
,	NO_DOCUMENTO	VARCHAR	(30)	--numero documento
,	PROFESION	VARCHAR	(3)	--profesion
,	DEPARTAMENTO_CASA	VARCHAR	(2)	--departamento casa
,	MUNICIPIO_CASA	VARCHAR	(50)	--municipio casa
,	DIRECCION_CASA	VARCHAR	(255)	--direccion casa
,	TELEFONO_CASA	VARCHAR	(8)	--telefono casa
,	REFERENCIA_CASA	VARCHAR	(255)	--referencia casa
,	OTRO_CONTACTO	VARCHAR	(8)	--otro contacto
,	NIT	VARCHAR	(14)	--nit
,	FECHA_NACIMIENTO	DATE		--fecha nacimiento
,	ESTADO_CIVIL	VARCHAR	(1)	--estado civil
,	SEXO	VARCHAR	(1)	--sexo
,	LUGAR_TRABAJO	VARCHAR	(255)	--lugar de trabajo
,	DEPARTAMENTO_OFICINA	VARCHAR	(2)	--departamento oficina
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
,	DEPARTAMENTO_CONTRATO	VARCHAR	(2)	--departamento de contrato
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
 @OBJECT_NAME = 'CC_SOLICITUDES_EXTRAFINA'
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
,@OBJECT_NAME = 'CC_REFINANCIAMIENTOS'
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
 @OBJECT_NAME = 'CC_SOLICITUDES_EXTRAFINA'
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

COMMIT;
