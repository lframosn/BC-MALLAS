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
