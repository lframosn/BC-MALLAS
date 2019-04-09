drop table IF EXISTS STG_SAT.CC_TARJETAS_ADICIONALES;  CREATE TABLE IF NOT EXISTS STG_SAT.CC_TARJETAS_ADICIONALES  ( 	PAN	VARCHAR	(22)	--pan
,	SOLICITUD	VARCHAR	(21)	--solicitud
,	NUMERO_CLIENTE	VARCHAR	(8)	--numero de cliente
,	NOMBRE_CLIENTE	VARCHAR	(100)	--nombre de cliente
,	NRO_TJS_ADICIONALES	VARCHAR	(1)	--nro tarjetas adicionales
,	CALPARTICIP_BENEFTJADIC1_CONTRA	VARCHAR	(2)	--calidad participacion beneficiario tarjeta adicional 1 en contrato
,	CODIGO_TIPO_TJADIC1	VARCHAR	(2)	--codigo tipo de tarjeta adicional 1
,	CODIGO_MARCA_TJADIC1	VARCHAR	(2)	--codigo marca de tarjeta adicional 1
,	TIPO_IDENTIF_1_ADIC1	VARCHAR	(1)	--tipo identificacion 1 adicional 1
,	NUMERO_IDENTIF_1_ADIC1	VARCHAR	(14)	--numero identificacion 1 adicional 1
,	TIPO_IDENTIF_2_ADIC1	VARCHAR	(1)	--tipo identificacion 2 adicional 1
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
,	LIMITE_ADIC2	VARCHAR	(17)	--limite adicional 2
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
,	LIMITE_ADIC3	VARCHAR	(17)	--limite adicional 3
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
,	LIMITE_ADIC4	VARCHAR	(17)	--limite adicional 4
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
,	LIMITE_ADIC5	VARCHAR	(17)	--limite adicional 5
,	INDIC_EXENCION_CUOTAS_ADIC5	VARCHAR	(1)	--indicador exención de cuotas adicional 5
,	INDIC_TJ_EMV_ADIC5	VARCHAR	(1)	--indicador tarjeta emv adicional 5
,	CUSCAID	VARCHAR	(255)	--cuscaid
,	FECHA_INGRESO	VARCHAR(23)		--fecha ingreso
,	FECHA_MODIFICACION	VARCHAR(23)		--fecha modificacion
,	FECHA_APROBACION	VARCHAR	(10)	--fecha aprobacion
,	ESTADO	VARCHAR	(50)	--estado
,	MIS_DATE	DATE		--fecha de proceso
,	LOAD_DATE	DATE default getdate()		--Fecha en que se realiza la carga
); COMMIT;	 	 		
