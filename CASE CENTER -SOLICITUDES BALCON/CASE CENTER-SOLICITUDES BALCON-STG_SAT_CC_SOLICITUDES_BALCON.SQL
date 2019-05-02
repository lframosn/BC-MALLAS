drop table IF EXISTS STG_SAT.CC_SOLICITUDES_BALCON;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_SOLICITUDES_BALCON  ( 	NRO_SEGUIMIENTO	VARCHAR	(255)	--nro seguimiento
,	ESTADO_BANDEJA	VARCHAR	(255)	--estado bandeja
,	FECHA_CREACION_SOLICITUD	TIMESTAMP		--fecha creacion solicitud
,	NUMERO_DE_TARJETA	VARCHAR	(255)	--numero de tarjeta
,	PRODUCTO_COLOCADO	VARCHAR	(255)	--producto colocado
,	TIPO_DE_PRODUCTO	VARCHAR	(255)	--tipo de producto
,	NUMERO_DE_CUENTA	VARCHAR	(255)	--numero de cuenta
,	NOMBRE_COMPLETO	VARCHAR	(255)	--nombre completo
,	TIPO_DOCUMENTO	VARCHAR	(255)	--tipo documento
,	NUMERO_DOCUMENTO	VARCHAR	(255)	--numero documento
,	DIRECCION_CASA	VARCHAR	(255)	--direccion casa
,	TELEFONO_CASA	VARCHAR	(255)	--telefono casa
,	REFERENCIA_CASA	VARCHAR	(255)	--referencia casa
,	DIRECCION_TRABAJO	VARCHAR	(255)	--direccion trabajo
,	TELEFONO_TRABAJO	VARCHAR	(255)	--telefono trabajo
,	REFERENCIA_TRABAJO	VARCHAR	(255)	--referencia trabajo
,	NUMERO_CONTACTO_1	VARCHAR	(255)	--numero contacto 1
,	NUMERO_CONTACTO_2	VARCHAR	(255)	--numero contacto 2
,	BALCON_PARA_TERCERO	VARCHAR	(255)	--balcon para tercero
,	NOMBRE_DE_TERCERO	VARCHAR	(255)	--nombre de tercero
,	MONTO_ESTADO_DE_CUENTA	DECIMAL	(17,2)	--monto estado de cuenta
,	MONTO_MAXIMO_AUTORIZADO	DECIMAL	(17,2)	--monto maximo autorizado
,	LIMITE_DE_CREDITO	DECIMAL	(17,2)	--limite de credito
,	LIMITE_DISPONIBLE	DECIMAL	(17,2)	--limite disponible
,	SUB_PRODUCTO	VARCHAR	(255)	--sub producto
,	TIPO_CUOTA	VARCHAR	(255)	--tipo cuota
,	CUOTAS	DECIMAL	(3,0)	--cuotas
,	TASA_PREFERENCIAL	DECIMAL	(7,2)	--tasa preferencial
,	FECHA_DE_CORTE	DATE		--fecha de corte
,	LUGAR_DE_ENTREGA	VARCHAR	(255)	--lugar de entrega
,	AGENCIA	VARCHAR	(255)	--agencia
,	MONTO_CHEQUES_SOLICITADOS	DECIMAL	(17,0)	--monto cheques solicitados
,	CANTIDAD_CHEQUES_SOLICITADOS	DECIMAL	(1,0)	--cantidad cheques solicitados
,	NORMAL_MONTO_DE_ESTADO_CUENTA	DECIMAL	(17,2)	--normal monto de estado de cuenta
,	NORMAL_MONTO_MAXIMO_AUTORIZADO	DECIMAL	(17,2)	--normal monto maximo autorizado
,	NORMAL_BALCON_25MAS_ESTADO_CTA	DECIMAL	(17,2)	--normal balcon 25 mas de estado de cuenta
,	INSTITUTO_1	VARCHAR	(255)	--instituto 1
,	INSTITUTO_2	VARCHAR	(255)	--instituto 2
,	INSTITUTO_3	VARCHAR	(255)	--instituto 3
,	ENDOSO_1	VARCHAR	(255)	--endoso 1
,	ENDOSO_2	VARCHAR	(255)	--endoso 2
,	ENDOSO_3	VARCHAR	(255)	--endoso 3
,	MONTO_A_EMITIR_1	DECIMAL	(17,2)	--monto a emitir 1
,	MONTO_A_EMITIR_2	DECIMAL	(17,2)	--monto a emitir 2
,	MONTO_A_EMITIR_3	DECIMAL	(17,2)	--monto a emitir 3
,	RECORD_ID_CASE_CENTER	VARCHAR	(255)	--record id case center
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	MODIFIED	TIMESTAMP		--modified
,	MODIFIED_BY	VARCHAR	(255)	--modified by
,	FECHA_DE_ENVIO_PARA_IMPRESION	TIMESTAMP		--fecha de envio para impresion
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		
