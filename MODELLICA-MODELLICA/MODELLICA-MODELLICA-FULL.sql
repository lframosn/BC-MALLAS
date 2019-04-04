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

drop table IF EXISTS SAT.CUS_ADM_MOE;  CREATE TABLE IF NOT EXISTS SAT.CUS_ADM_MOE  ( 	EDAD	DECIMAL	(28,6)	--Edad en años
,	TIPO_CLIENTE	DECIMAL	(11,0)	--Logica cliente (New - Existing)
,	POLICY_INDICATOR	DECIMAL	(11,0)	--Policy Indicator
,	RAC	DECIMAL	(11,0)	--Indica qué "fase de admisión" se ejecuta en el motor
,	LOGO	VARCHAR	(255)	--Categoría de la primera tarjeta
,	SOURCECODE	VARCHAR	(255)	--Código interno
,	TIPOEMPLEO	VARCHAR	(255)	--Empleado o Indepoendiente
,	TIEMPOEMPLEO	DECIMAL	(28,6)	--Tiempo en el empleo en meses
,	LOGO2	VARCHAR	(255)	--Categoría de la segunda tarjeta
,	INGRESOS	DECIMAL	(28,6)	--Ingresos mensuales
,	FORZAJE_SCORE	DECIMAL	(11,0)	--1 = hubo forzaje; 0= NO hubo forzaje
,	TIPO_PCCD	DECIMAL	(11,0)	--Indica que es PCCD-TWO, PCCD_UNO u otro programa
,	PERFIL_CLIENTE	VARCHAR	(255)	--Perfil en función del tipo de ingresos
,	MATCH_INTERNO	DECIMAL	(11,0)	--Indica la coincidencia entre CaseCenter y Base Interna del telefono y la Direccion (1=coincidencia, 0=diferencia)
,	SUMACUOTA_CARDS_SSF	DECIMAL	(28,6)	--Gasto mensual pago tarjetas
,	SUMACUOTA_HIPOTECAS_SSF	DECIMAL	(28,6)	--Gasto mensual pago hipotecas
,	SUMACUOTA_PREST_CONSUMO_SSF	DECIMAL	(28,6)	--Gasto mensual pago prestamos consumo
,	SUMACUOTA_SOBREGIROS_SSF	DECIMAL	(28,6)	--Gasto mensual pago sobregiros
,	SUMACUOTA_REFI_SSF	DECIMAL	(28,6)	--Gasto mensual pago refinanciaciones
,	MORAACTUAL_ALL_SSF	DECIMAL	(11,0)	--Mora actual
,	REFERENCIA_MASANTIGUA_SSF	DECIMAL	(11,0)	--Experencia Crediticia
,	CONTEO_WO_SSF	DECIMAL	(11,0)	--Juicios Vigentes
,	LIMITEPCCD_6MESES_SSF	DECIMAL	(11,0)	--Limite tarjetas con la compeytencia ultimos 6 meses
,	LIMITEPCCD_12MESES_SSF	DECIMAL	(11,0)	--Limite tarjetas con la compeytencia ultimos 12 meses
,	CONTEO_REFIS_SSF	DECIMAL	(11,0)	--Rewrites
,	MAYOR_ANT_TC_SSF	DECIMAL	(11,0)	--Experencia Crediticia
,	SCORE_BUREAU_EQFX	DECIMAL	(11,0)	--Score de Equifax
,	LIMITEPCCD_6MESES_EQFX	DECIMAL	(11,0)	--Limite tarjetas con la compeytencia ultimos 6 meses
,	LIMITEPCCD_12MESES_EQFX	DECIMAL	(11,0)	--Limite tarjetas con la compeytencia ultimos 12 meses
,	MORAACTUAL_EQFX	DECIMAL	(11,0)	--Mora actual
,	NUMEROMESES_EQFX	DECIMAL	(11,0)	--Experencia Crediticia
,	ANTMAXTC_EQFX	DECIMAL	(11,0)	--Experencia Crediticia
,	TC_JURIDICO_EQFX	DECIMAL	(11,0)	--Juicios Vigentes
,	TOTAL_JUICIOS_EQFX	DECIMAL	(11,0)	--Rewrites
,	SUMCUOACTOT_EQFX	DECIMAL	(11,0)	--Sumatoria de cuotas actuales
,	FLAG_EXPATRIADO	DECIMAL	(11,0)	--Expatriado (1=SI)
,	FLAG_VIP	DECIMAL	(11,0)	--VIP (1=SI)
,	MOB_VISA	DECIMAL	(11,0)	--Antiguedad Visa
,	MOB_MASTER	DECIMAL	(11,0)	--Antiguedad MC
,	BEH_SCORE_VISA	DECIMAL	(11,0)	--Score comportamiento Visa
,	BEH_SCORE_MASTER	DECIMAL	(11,0)	--Score comportamiento MC
,	TOTAL_DPD	DECIMAL	(11,0)	--Dias de atraso
,	NUM_TC	DECIMAL	(11,0)	--Cantidad de tarjetas de credito
,	VISA_BALANCE	DECIMAL	(28,6)	--Saldo Visa
,	VISA_LINE	DECIMAL	(28,6)	--Linea Visa
,	MASTER_BALANCE	DECIMAL	(28,6)	--Saldo MC
,	MASTER_LINE	DECIMAL	(28,6)	--Linea MC
,	BLOCK_CODE_VISA	VARCHAR	(255)	--Codigo bloqueo Visa
,	BLOCK_CODE_MASTER	VARCHAR	(255)	--Codigo bloqueo MC
,	RW_BALANCE	DECIMAL	(28,6)	--Saldo RW
,	VISA_WRITE_OFF	DECIMAL	(11,0)	--Perdida Visa
,	MASTER_WRITE_OFF	DECIMAL	(11,0)	--Perdida MC
,	IL_WRITE_OFF	DECIMAL	(11,0)	--Perdida installment loan
,	MORTG_WRITE_OFF	DECIMAL	(11,0)	--Perdidas hipotecarias
,	AUTO_WRITE_OFF	DECIMAL	(11,0)	--Perdida Auto
,	MONTHS_LAST_CLI	DECIMAL	(11,0)	--Meses desde ultima vez CLI
,	FLAG_PRE_REJECTION	VARCHAR	(255)	--Pre rejection (1=SI)
,	MOB_YOUNGEST_EXTRA	DECIMAL	(11,0)	--Antiguedad mas reciente Extra
,	NEG_REFERENCES	VARCHAR	(255)	--Referencias negativas
,	RW_CC_BALANCE	DECIMAL	(28,6)	--Saldo tarjeta credito RW
,	IL_CC_BALANCE	DECIMAL	(28,6)	--Saldo installment loan tarjeta de crédito
,	RC_LINE	DECIMAL	(28,6)	--Linea RC
,	RC_BALANCE	DECIMAL	(28,6)	--Saldo RC
,	EXTRA_BALANCE	DECIMAL	(28,6)	--Saldo Extra
,	IL_BALANCE	DECIMAL	(28,6)	--Saldo installment loan
,	OD_LINE	DECIMAL	(28,6)	--Linea OD
,	OD_BALANCE	DECIMAL	(28,6)	--Saldo OD
,	AUTO_BALANCE	DECIMAL	(28,6)	--Saldo Auto
,	DDA_OVERLIMIT	DECIMAL	(28,6)	--Sobregiro DDA
,	VAREXTRA3	DECIMAL	(28,6)	--Variable extra 3
,	SCORE_INTERNO	DECIMAL	(11,0)	--Score interno
,	FLAG_REWRITE	DECIMAL	(11,0)	--Rewrite (1=SI)
,	MOB_REWRITE	DECIMAL	(11,0)	--Antiguedad rewrite
,	RC_WRITE_OFF	DECIMAL	(11,0)	--Perdida RC
,	SOB_WRITE_OFF	DECIMAL	(11,0)	--Perdida SOB
,	SUMACUOTAS_TARJETAS_COBIS	DECIMAL	(28,6)	--Sumatoria cuotas tarjetas de credito
,	SUMACUOTAS_HIPOTECAS_COBIS	DECIMAL	(28,6)	--Sumatoria cuotas hipotecartias
,	SUMACUOTAS_PERSONALES_COBIS	DECIMAL	(28,6)	--Sumatoria cuotas creditos personales
,	TIPOEMPRESA	VARCHAR	(255)	--Marcacion de tipo de empresa
,	FLAG_ORO	DECIMAL	(11,0)	--Oro (1=SI)
,	FLAG_PEP	DECIMAL	(11,0)	--PEP (1=SI)
,	FLAG_EXTRANJERO	DECIMAL	(11,0)	--Extranjero (1=SI)
,	FLAG_CREDOMATIC	DECIMAL	(11,0)	--Refinancia tarjeta de Credomatic (1=SI)
,	FLAG_AFP_ELECTRONICO	DECIMAL	(11,0)	--Identifica si el cliente debe presentar el documento NUP
,	REASONCODE	VARCHAR	(255)	--Motivo de rechazo; utilizada para alimentar ReasonCodes
,	AUX2	DECIMAL	(11,0)	--Para facilitar un cálculo
,	PREVIOUS_REASONCODE	VARCHAR	(255)	--Variable interna para facilitar el cálculo de otras variables
,	AUX	DECIMAL	(11,0)	--Facilitador de calculos
,	CUOTASINTERNAS_COBIS	DECIMAL	(28,6)	--Sumatoria de 3 tipos de cuotas distintas de acurdo a COBIS
,	TARGET_MARKET	VARCHAR	(255)	--Segmentos de la población por nivel económico
,	FLAG_PLANILLERO	DECIMAL	(11,0)	--Flag que indica si cliente es Planillero
,	FLAG_HIT	DECIMAL	(11,0)	--0 = no hit, 1 = hit
,	PROGRAMA	VARCHAR	(255)	--Programa
,	LIMITE_PCCD_SSF	DECIMAL	(28,6)	--Límite tarjeta crédito con la competencia según info de SSF
,	FLAG_XS	DECIMAL	(11,0)	--Indicador de Cros sell
,	REASONCODES	VARCHAR	(255)	--Motivos de rechazo
,	FLAG_PCCD	DECIMAL	(11,0)	--Indicador de PCCD
,	CAP_MUE	DECIMAL	(28,6)	--Tope máximo
,	MUE_DISPUESTO	DECIMAL	(28,6)	--Máxima exposición excluyendo las hipotecas
,	DEBT_BURDEN_INICIAL_SSF	DECIMAL	(28,6)	--Gastos financieros como porcentaje de los ingresos mensuales
,	DEBT_BURDEN_FINAL	DECIMAL	(28,6)	--Gastos financieros como porcentaje de los ingresos mensuales, incluyendo el crédito solicitado
,	MULTIPLICADOR	DECIMAL	(28,6)	--Multiplicador utilizado al definir los límites
,	LINEA_MAXIMA	DECIMAL	(28,6)	--Línea Máxima dadas ciertas características
,	MUE_DISPONIBLE	DECIMAL	(28,6)	--Disponible excluyendo hipotecario
,	LIMMAXLOGO	DECIMAL	(28,6)	--Límite máximo dado el Logo de la primera tarjeta
,	LIMMINLOGO	DECIMAL	(28,6)	--Límite mínimo dado el Logo de la primera tarjeta
,	LINEA_TIMESINCOME	DECIMAL	(28,6)	--Línea en función de los ingresos
,	LINEA_DISPDEBTBURDEN	DECIMAL	(28,6)	--Línea en función del Debt Burden
,	LINEADISPMUE	DECIMAL	(28,6)	--Línea en función del DispMUE
,	LINEA_CAP_PRODUCTO	DECIMAL	(28,6)	--Línea en función de la "Linea_Maxima"
,	LIMITE_NUEVA_LINEA	DECIMAL	(28,6)	--El menor límite entre 4 distintas formas de calcular el límite
,	EMPLEADO_CUSCATLAN	DECIMAL	(11,0)	--En función del Source Code
,	LINEAMINIMA	DECIMAL	(28,6)	--Línea en función del programa
,	FLAG_NORMALSALES	DECIMAL	(11,0)	--Crédito "regular"
,	EXPCREDITICIA_ALL	DECIMAL	(11,0)	--Experiencia crediticia para los trabajadores independientes
,	EXPPCCD_ALL	DECIMAL	(11,0)	--Experiencia crediticia para los empleados
,	LIMITE_PCCD_EQFX	DECIMAL	(28,6)	--Límite tarjeta crédito con la competencia según info de Equifax
,	LIMITE_PCCD	DECIMAL	(28,6)	--Mayor límite entre los limites calculados en base a  SSF y Equifax
,	EMPLEO_EMPRESA	VARCHAR	(255)	--De acuerdo a condición laboral y empleador
,	GASTOS_NUEVA_LINEA	DECIMAL	(28,6)	--Estimación del gasto financierio del crédito analizado
,	LIMMAXLOGO2	DECIMAL	(28,6)	--Límite máximo dado el Logo de la segunda tarjeta
,	LIMMINLOGO2	DECIMAL	(28,6)	--Límite mínimo dado el Logo de la segunda tarjeta
,	CAP_DB	DECIMAL	(28,6)	--Porcentaje máximo de los ingresos mensuales destinado a pagar gastos financieros
,	DEBT_BURDEN_FINAL_SSF	DECIMAL	(28,6)	--Gastos financieros, incluyendo el crédito analizado, como porcentaje de los ingresos mensuales
,	LIMITEFINAL_LINEA1	DECIMAL	(28,6)	--Límite final del Logo1
,	LIMITEFINAL_LINEA2	DECIMAL	(28,6)	--Límite final del Logo2
,	CAPACIDADEDEUDAMIENTOMENSUAL	DECIMAL	(28,6)	--Cuanto puede pagar por mes para el crédito analizado, dados el ingreso mensual, el porcentaje que puede destinar a gastos financieros, y los actuales gastos financieros
,	DEBT_BURDEN_INICIAL_ALL	DECIMAL	(28,6)	--Porcentaje de los ingresos que el solicitante destina a pagar cuotas de créditos
,	DEBT_BURDEN_FINAL_ALL	DECIMAL	(28,6)	--Porcentaje de los ingresos que el solicitante destina a pagar cuotas de créditos, incluyendo el crédito evaluado
,	TASA_X_LOGO	DECIMAL	(28,6)	--Tasa de interés asociada a cada tipo de logo
,	MUE_FINAL2	DECIMAL	(28,6)	--MUE incluyendo crédito evaluado; valuado luego del RAC2
,	MUE_FINAL3	DECIMAL	(28,6)	--MUE incluyendo crédito evaluado; valuado luego del RAC3
,	PERFIL_DOCUMENTACION	VARCHAR	(255)	--Perfiles de solicitantes para documentar
,	DOCUMENTACION	VARCHAR	(255)	--Documentación que debe presentar y/0 firmar el solicitante
,	ESTRATEGIA_AUTENTICACION	VARCHAR	(255)	--Estrategia para autenticar
,	PRODUCTO_AUTENTICACION	VARCHAR	(255)	--Producto en función de Flag_Oro y el Programa
,	UMBRAL_SOLICITADO	VARCHAR	(255)	--Preguntas que debe responder correctamente para autenticar
,	VERIFICAR_IDENTIDAD	VARCHAR	(255)	--Indica si debe verificar la identidad (Si o No)
,	CODIGO_DOC	VARCHAR	(255)	--Abreviarura de 3 letras de la Documentacion
,   SYSTEMDATE DATE NULL
,   LOAD_DATE datetime NULL DEFAULT getdate()
,   FILENAME varchar(1000) null
); COMMIT;	 	 		

drop table IF EXISTS SAT.CUS_ADM_SCORE;  CREATE TABLE IF NOT EXISTS SAT.CUS_ADM_SCORE  ( 	M_BUCKET_NF	DECIMAL	(28,6)	--Bucket por dias mora, tomando en cuenta referencias saneadas y castigadas, en consulta e intervalo de estudio (9 meses desde el ultimo mes disponible en SSF)
,	MAX_BUCKET_OBS	DECIMAL	(28,6)	--Maximo Bucket del periodo (9 meses desde ultimo mes disponible SSF) tomando en cuenta referencias saneadas y castigadas con un minimo de saldo <=60 (saldo mora & saldo vencido). Si max_bucket = 0 entonces remplazar por Bucket_NF
,	MAXMOB	DECIMAL	(28,6)	--MOB (Months on book) con fecha (mes1 - fecha otorgamiento) en bucket por producto y por periodo del cliente (6 productos + 9 meses + 3 periodos (3M, 6M, 9M)) en base de datos mora
,	TOTALREFENMORA	DECIMAL	(28,6)	--Total de numero de variables (referencias) en mora (si Bucket > 0)
,	N_REF_RIESGO	DECIMAL	(28,6)	--Numero de referencias de riesgo (referencia de riesgo cuando Cod. Inst.='SA04' or 'BC30' en SSF)
,	UTIL_CARDS_T1	DECIMAL	(28,6)	--Suma de saldo adeudado dividido por el monto otorgado de referencias CARDS en ultimo trimestre (meses 1, 2 y 3)
,	MAX_MR_U_CARDS	DECIMAL	(28,6)	--Maximo de saldo adeudado dividido por el monto otorgrado de referencias tarjetas en ultimos 9 meses
,	NUMREFMORA_CARDS	DECIMAL	(28,6)	--Numero de referencias tarjetas en mora en ultimo mes (mes 1)
,	MAX_SOBRG_CARDS	DECIMAL	(28,6)	--Numero mAximo de tarjetas sobregiradas en 1 mes en Ultimos 9 meses
,	MESES_SOBR_CARDS	DECIMAL	(11,0)	--NUmero de meses con alguna tarjeta en sobregiro en los Ultimos 9 meses
,	RATIO_UTIL_CARDS	DECIMAL	(28,6)	--Ratio de maximo "tarjetas utiles" de mes 1 con respecto a maximo "tarjetas utiles" de mes 9
,	V_UTIL_CARDS1	DECIMAL	(28,6)	--Ratio de suma saldo adeudado mes 1 dividido por suma de monto otorgado mes 1 con respecto al mes 2 (suma de saldo adeudado mes 2 dividido por suma de monto otorgado mes 2)
,	MR_UTIL_CARDS1	DECIMAL	(28,6)	--Maximo "tarjetas utiles" (saldo adeudado/monto otorgado) de mes 1
,	AGE	DECIMAL	(11,0)	--Edad del solicitante. Diferencia de edad entre fecha de nacimiento y fecha actual
,	BUCKET_0_1M	DECIMAL	(28,6)	--Maximo Bucket de mes 1
,	MAXMOB_G_CARDS	DECIMAL	(28,6)	--Maximo MOB (Months on book) de referencias tarjetas en los ultimos 9 meses
,	MINMOB_G_CARDS	DECIMAL	(28,6)	--Minimo MOB (Months on book) de referencias tarjetas en los ultimos 9 meses
,	COUNT_CARDS_6M	DECIMAL	(28,6)	--Suma de referencias tarjetas de MOB menor o igual que 6 en mes 1
,	COUNT_PIL_6M	DECIMAL	(28,6)	--Suma de referencias PIL de MOB menor o igual que 6 en mes 1
,	NUMREFACT_REFI	DECIMAL	(11,0)	--Numero de referencias tipo producto refinanciamiento en Bucket actual
,	NUMREFACT_SOBR	DECIMAL	(11,0)	--Numero de referencias tipo producto sobregiro en Bucket actual
,	NUMREFACT_CARDS	DECIMAL	(11,0)	--Numero de referencias tipo producto tarjeta en Bucket actual
,	NUMREFACT_HIPO	DECIMAL	(11,0)	--Numero de referencias tipo producto hipoteca en Bucket actual
,	NUMREFACT_PIL	DECIMAL	(11,0)	--Numero de referencias tipo producto PIL en Bucket actual
,	REFMORA_PERC_TOTALREF	DECIMAL	(11,0)	--Ratio de la suma de referencias en mora (refEnMora) con respecto la suma de las referencias actuales (totalRef)
,	UTIL_CARDS_ACTUAL	DECIMAL	(28,6)	--Ratio de saldo vigente actual en tarjetas con respecto al monto otorgado actual
,	V_BAL1M9M	DECIMAL	(11,0)	--Flag que indica si el balance actual es el masimo de los balances de los ultimos 9 meses
,	NUMREF_ALL_1	DECIMAL	(11,0)	--Numero de registros de los productos otros, tarjetas, PIL, refinamiento, sobregiros y rotacion en mes 1
,	NUMREF_ALL_9	DECIMAL	(11,0)	--Numero de registros de los productos otros, tarjetas, PIL, refinamiento, sobregiros y rotacion en mes 9
,	PR_REVOL	DECIMAL	(28,6)	--Ratio de saldo adeudado en mes 1 con respecto a saldo adeudado en mes 9 de los productos tarjetas, sobregiro y rotativo
,	PR_DECRE	DECIMAL	(28,6)	--Ratio de saldo adeudado en mes 1 con respecto a saldo adeudado en mes 9 de los productos PIL, refinamiento e hipotecario
,	LE_T2	DECIMAL	(11,0)	--Flag que indica si Bucket del mes 2 es menor que los 2 anteriores, mes 3 y 4
,	LE_T3	DECIMAL	(11,0)	--Flag que indica si Bucket del mes 3 es menor que los 2 anteriores, mes 4 y 5
,	LE_T4	DECIMAL	(11,0)	--Flag que indica si Bucket del mes 4 es menor que los 2 anteriores, mes 5 y 6
,	LE_T5	DECIMAL	(11,0)	--Flag que indica si Bucket del mes 5 es menor que los 2 anteriores, mes 6 y 7
,	LE_T6	DECIMAL	(11,0)	--Flag que indica si Bucket del mes 6 es menor que los 2 anteriores, mes 7 y 8
,	LE_T7	DECIMAL	(11,0)	--Flag que indica si Bucket del mes 7 es menor que los 2 anteriores, mes 8 y 9
,	BUCKET_0_2M	DECIMAL	(28,6)	--Maximo Bucket de mes 2
,	BUCKET_0_3M	DECIMAL	(28,6)	--Maximo Bucket de mes 3
,	BUCKET_0_4M	DECIMAL	(28,6)	--Maximo Bucket de mes 4
,	BUCKET_0_5M	DECIMAL	(28,6)	--Maximo Bucket de mes 5
,	BUCKET_0_6M	DECIMAL	(28,6)	--Maximo Bucket de mes 6
,	BUCKET_0_7M	DECIMAL	(28,6)	--Maximo Bucket de mes 7
,	BUCKET_0_8M	DECIMAL	(28,6)	--Maximo Bucket de mes 8
,	BUCKET_0_9M	DECIMAL	(28,6)	--Maximo Bucket de mes 9
,	REFINANCIAMIENTO	DECIMAL	(28,6)	--
,	SOBREGIRO	DECIMAL	(28,6)	--
,	REFERENCIAS_CASTIGADAS	DECIMAL	(11,0)	--
,	MAX_CARDS_UTIL	DECIMAL	(28,6)	--
,	NF_B0	DECIMAL	(11,0)	--
,	MAX_BUCKET_OBS_B2TOB3	DECIMAL	(11,0)	--
,	MAX_BUCKET_OBS_B4UP	DECIMAL	(11,0)	--
,	TOTALREFENMORA_1	DECIMAL	(11,0)	--
,	TOTALREFENMORA_2	DECIMAL	(11,0)	--
,	TOTALREFENMORA_3UP	DECIMAL	(11,0)	--
,	SR_1	DECIMAL	(11,0)	--
,	ES_B_ALL1	DECIMAL	(11,0)	--
,	REFINANCIAMIENTO_SC	DECIMAL	(11,0)	--
,	SOBREGIRO_SC	DECIMAL	(11,0)	--
,	REFERENCIAS_CASTIGADAS_SC	DECIMAL	(11,0)	--
,	PR_REVOL_1DOWN	DECIMAL	(11,0)	--
,	PR_DECRE_90DOWN	DECIMAL	(11,0)	--
,	NUEVAS_REFERENCIAS	DECIMAL	(11,0)	--
,	V_BAL1M9M_B0	DECIMAL	(11,0)	--
,	ON_THE_EDGE	DECIMAL	(11,0)	--
,	ROLL_BACK_ART	DECIMAL	(11,0)	--
,	REFMORA_PERC_TOTALREF_52UP	DECIMAL	(11,0)	--
,	COMB_UTILMAXMOB_CARDS	DECIMAL	(11,0)	--
,	COMB_UTILMAXMINMOBMR_CARDS	DECIMAL	(11,0)	--
,	C_B3U_6M_1TO2	DECIMAL	(11,0)	--
,	C_B3U_6M_3UP	DECIMAL	(11,0)	--
,	C_NREFI_NSOBR_NPIL_YCARDS	DECIMAL	(11,0)	--
,	C_NREFI_NSOBR_YPIL_YCARDS_YHIPO	DECIMAL	(11,0)	--
,	UTIL_CARDS_T1_0TO29	DECIMAL	(11,0)	--
,	NUMREFMORA_CARDS_NOT0	DECIMAL	(11,0)	--
,	MAX_SOBRG_CARDS_EQUAL2	DECIMAL	(11,0)	--
,	MAX_SOBRG_CARDS_3UP	DECIMAL	(11,0)	--
,	MAX_MR_U_CARDS_77DOWN	DECIMAL	(11,0)	--
,	MAX_MR_U_CARDS_115UP	DECIMAL	(11,0)	--
,	RATIO_UTIL_CARDS_77DOWN	DECIMAL	(11,0)	--
,	N_REF_RIESGO_1UP	DECIMAL	(11,0)	--
,	V_UTIL_CARDS1_LESS	DECIMAL	(11,0)	--
,	MAXMOB_G_CARDS_9DOWN	DECIMAL	(11,0)	--
,	MAXMOB_13DOWN	DECIMAL	(11,0)	--
,	AGE_58UP	DECIMAL	(11,0)	--
,	AGE_27DOWN	DECIMAL	(11,0)	--
,	MESES_SOBR_CARDS_2UP_FN	DECIMAL	(11,0)	--
,	MINMOB_G_CARDS_48UP	DECIMAL	(11,0)	--
,	MR_UTIL_CARDS1_43DOWN	DECIMAL	(11,0)	--
,	PIL_CARDS_6M	DECIMAL	(11,0)	--
,	BETA	DECIMAL	(28,6)	--
,	SCORE_LOG	DECIMAL	(28,6)	--
,	MEJORA	DECIMAL	(11,0)	--
,	C_B3U_6M_SUM	DECIMAL	(11,0)	--Vector de flags que indica si el maximo de bucket es mayor o igual a 3 para los ultimos 6 meses
,	SCORE_BUREAU_CUSCATLAN	DECIMAL	(28,6)	--
,	VALORES_SCORE	VARCHAR	(255)	--
,   SYSTEMDATE DATE NULL
,   LOAD_DATE datetime NULL DEFAULT getdate()
,   FILENAME varchar(1000) null
); COMMIT;	 	 		

drop table IF EXISTS SAT.CUS_COMP_MBE;  CREATE TABLE IF NOT EXISTS SAT.CUS_COMP_MBE  ( 	PDTOPEN	DATE		--fecha apertura de cuenta performance period
,	PLICR	DECIMAL	(28,6)	--limite de credito performance period
,	LAMCSH01	DECIMAL	(28,6)	--montante retirada dinero periodo 01
,	LAMCSH02	DECIMAL	(28,6)	--montante retirada dinero periodo 02
,	LAMCSH03	DECIMAL	(28,6)	--montante retirada dinero periodo 03
,	LAMCSH04	DECIMAL	(28,6)	--montante retirada dinero periodo 04
,	LAMCSH05	DECIMAL	(28,6)	--montante retirada dinero periodo 05
,	LAMCSH06	DECIMAL	(28,6)	--montante retirada dinero periodo 06
,	LAMCSH07	DECIMAL	(28,6)	--montante retirada dinero periodo 07
,	LAMCSH08	DECIMAL	(28,6)	--montante retirada dinero periodo 08
,	LAMCSH09	DECIMAL	(28,6)	--montante retirada dinero periodo 09
,	LAMCSH10	DECIMAL	(28,6)	--montante retirada dinero periodo 10
,	LAMCSH11	DECIMAL	(28,6)	--montante retirada dinero periodo 11
,	LAMCSH12	DECIMAL	(28,6)	--montante retirada dinero periodo 12
,	LAMDUE01	DECIMAL	(28,6)	--Importe pago minimo 01
,	LAMDUE02	DECIMAL	(28,6)	--Importe pago minimo 02
,	LAMDUE03	DECIMAL	(28,6)	--Importe pago minimo 03
,	LAMDUE04	DECIMAL	(28,6)	--Importe pago minimo 04
,	LAMDUE05	DECIMAL	(28,6)	--Importe pago minimo 05
,	LAMDUE06	DECIMAL	(28,6)	--Importe pago minimo 06
,	LAMDUE07	DECIMAL	(28,6)	--Importe pago minimo 07
,	LAMDUE08	DECIMAL	(28,6)	--Importe pago minimo 08
,	LAMDUE09	DECIMAL	(28,6)	--Importe pago minimo 09
,	LAMDUE10	DECIMAL	(28,6)	--Importe pago minimo 10
,	LAMDUE11	DECIMAL	(28,6)	--Importe pago minimo 11
,	LAMDUE12	DECIMAL	(28,6)	--Importe pago minimo 12
,	LAMPAY01	DECIMAL	(28,6)	--montante pago mes periodo 01
,	LAMPAY02	DECIMAL	(28,6)	--montante pago mes periodo 02
,	LAMPAY03	DECIMAL	(28,6)	--montante pago mes periodo 03
,	LAMPAY04	DECIMAL	(28,6)	--montante pago mes periodo 04
,	LAMPAY05	DECIMAL	(28,6)	--montante pago mes periodo 05
,	LAMPAY06	DECIMAL	(28,6)	--montante pago mes periodo 06
,	LAMPAY07	DECIMAL	(28,6)	--montante pago mes periodo 07
,	LAMPAY08	DECIMAL	(28,6)	--montante pago mes periodo 08
,	LAMPAY09	DECIMAL	(28,6)	--montante pago mes periodo 09
,	LAMPAY10	DECIMAL	(28,6)	--montante pago mes periodo 10
,	LAMPAY11	DECIMAL	(28,6)	--montante pago mes periodo 11
,	LAMPAY12	DECIMAL	(28,6)	--montante pago mes periodo 12
,	LAMPUR01	DECIMAL	(28,6)	--montante compras mes periodo 01
,	LAMPUR02	DECIMAL	(28,6)	--montante compras mes periodo 02
,	LAMPUR03	DECIMAL	(28,6)	--montante compras mes periodo 03
,	LAMPUR04	DECIMAL	(28,6)	--montante compras mes periodo 04
,	LAMPUR05	DECIMAL	(28,6)	--montante compras mes periodo 05
,	LAMPUR06	DECIMAL	(28,6)	--montante compras mes periodo 06
,	LAMPUR07	DECIMAL	(28,6)	--montante compras mes periodo 07
,	LAMPUR08	DECIMAL	(28,6)	--montante compras mes periodo 08
,	LAMPUR09	DECIMAL	(28,6)	--montante compras mes periodo 09
,	LAMPUR10	DECIMAL	(28,6)	--montante compras mes periodo 10
,	LAMPUR11	DECIMAL	(28,6)	--montante compras mes periodo 11
,	LAMPUR12	DECIMAL	(28,6)	--montante compras mes periodo 12
,	LBILBL01	DECIMAL	(28,6)	--nuevo saldo periodo 01
,	LBILBL02	DECIMAL	(28,6)	--nuevo saldo periodo 02
,	LBILBL03	DECIMAL	(28,6)	--nuevo saldo periodo 03
,	LBILBL04	DECIMAL	(28,6)	--nuevo saldo periodo 04
,	LBILBL05	DECIMAL	(28,6)	--nuevo saldo periodo 05
,	LBILBL06	DECIMAL	(28,6)	--nuevo saldo periodo 06
,	LBILBL07	DECIMAL	(28,6)	--nuevo saldo periodo 07
,	LBILBL08	DECIMAL	(28,6)	--nuevo saldo periodo 08
,	LBILBL09	DECIMAL	(28,6)	--nuevo saldo periodo 09
,	LBILBL10	DECIMAL	(28,6)	--nuevo saldo periodo 10
,	LBILBL11	DECIMAL	(28,6)	--nuevo saldo periodo 11
,	LBILBL12	DECIMAL	(28,6)	--nuevo saldo periodo 12
,	LCYCDQ01	DECIMAL	(11,0)	--numero pagos vencidos periodo 01
,	LCYCDQ02	DECIMAL	(11,0)	--numero pagos vencidos periodo 02
,	LCYCDQ03	DECIMAL	(11,0)	--numero pagos vencidos periodo 03
,	LCYCDQ04	DECIMAL	(11,0)	--numero pagos vencidos periodo 04
,	LCYCDQ05	DECIMAL	(11,0)	--numero pagos vencidos periodo 05
,	LCYCDQ06	DECIMAL	(11,0)	--numero pagos vencidos periodo 06
,	LCYCDQ07	DECIMAL	(11,0)	--numero pagos vencidos periodo 07
,	LCYCDQ08	DECIMAL	(11,0)	--numero pagos vencidos periodo 08
,	LCYCDQ09	DECIMAL	(11,0)	--numero pagos vencidos periodo 09
,	LCYCDQ10	DECIMAL	(11,0)	--numero pagos vencidos periodo 10
,	LCYCDQ11	DECIMAL	(11,0)	--numero pagos vencidos periodo 11
,	LCYCDQ12	DECIMAL	(11,0)	--numero pagos vencidos periodo 12
,	EXECUTIONDATE	DATE		--fecha de consulta en sistema
,	BLACKLIST	DECIMAL	(11,0)	--Black_lists
,	WORSTDAYSDELINQUENT	DECIMAL	(11,0)	--Worst days delinquent
,	CREDITBUREAU	DECIMAL	(11,0)	--Credit Bureau
,	YOUNGESTMOB	DECIMAL	(11,0)	--Youngest Month on books
,	WORSTBEHAVIORSCORE	DECIMAL	(11,0)	--Worst Behavior Score
,	MOB	DECIMAL	(11,0)	--Months on books
,	CYCLF	DECIMAL	(11,0)	--suma number os times account was delinquent
,	EXCLUSION_CODE	DECIMAL	(11,0)	--Código de exclusión (De 0 a 17)
,	LCYCDQ00	DECIMAL	(11,0)	--numero pagos vencidos periodo 00
,	LBILBL00	DECIMAL	(11,0)	--nuevo saldo periodo 00
,	LAMDUE00	DECIMAL	(11,0)	--montante retirada dinero periodo 00
,	ID_COD_PERS	DECIMAL	(11,0)	--
,	ID_PROCESO	DECIMAL	(11,0)	--ID del Proceso de Score, o estrategia Extra, CLI o Renovacion
,	ENTIDAD	VARCHAR	(255)	--valor por defecto 0004
,	CENTALTA	VARCHAR	(255)	--valor por defecto 0002
,	CUENTA	VARCHAR	(255)	--
,	PAN	VARCHAR	(255)	--
,	NUMCLI	VARCHAR	(255)	--
,	DPD_RETAIL_PDTS	DECIMAL	(11,0)	--Days Past Due in all Retail Products
,	AGE	DECIMAL	(11,0)	--Age in years
,	MONTHSSINCELASTCLI	DECIMAL	(11,0)	--Months Since Last CLI
,	UNSEC_RETAIL_PRODS_IND	DECIMAL	(11,0)	--Unsec_Retail_Prods_Ind
,	MOBRETAIL	DECIMAL	(11,0)	--MOB Retail
,	CRLINEUTILIZATION	DECIMAL	(11,0)	--Credit Line utilization %
,	SUMCRLIMITSDOMINLOGIC	DECIMAL	(28,6)	--Sum CrLimit Domin logi
,	VIP	DECIMAL	(11,0)	--VIP Indicator
,	MONTHSTOEXPIRY	DECIMAL	(28,6)	--MonthstoExpiry
,	CYCLEDELQ	DECIMAL	(11,0)	--Cycle Delinquent
,	BEHSCORE	DECIMAL	(28,6)	--Behaviour Score
,	EXTERNALCREDITBUREAU	DECIMAL	(11,0)	--External Credit Bureau
,	PERCUTILIZACIONCRLIM	DECIMAL	(28,6)	--% Utilizacion Credit Limit
,	ESTRATEGIA_CORPORATE	DECIMAL	(11,0)	--Estrategia Corporate
,	DWHRECOMMENDEDINL3	DECIMAL	(11,0)	--DWH Recommended in L3 
,	DWHDPDRETAILPRODUCTS	DECIMAL	(11,0)	--DWH DPD Retail products 
,	DWHNODPDOFFUSLAST3MONTHS	DECIMAL	(11,0)	--DWH DPD Retail products 
,	MONTHSSINCELASTEXTRA	DECIMAL	(11,0)	--Months since last Extra with MOB logic
,	AVEUTILIZATION_3MONTHS	DECIMAL	(28,6)	--Av. Utlization % last 3 months
,	MAXCRLIMITBYLOGOVINTAGE	DECIMAL	(11,0)	--Max Crlimit by logo&vintage
,	CRLIMIT	DECIMAL	(28,6)	--Credit limit
,	MONTHSSINCELASTCLIWITHMOBLOGIC	DECIMAL	(11,0)	--Months since last CLI with MOB logic
,	MONTHSSINCELASTCLD	DECIMAL	(11,0)	--Months since last CLD
,	LOGO	DECIMAL	(11,0)	--Credit Card Logo
,	VINTAGE_JUNE_2010_FLAG	DECIMAL	(11,0)	--
,	INCOME	DECIMAL	(28,6)	--
,	VISA_LINE	DECIMAL	(28,6)	--
,	VISA_BALANCE	DECIMAL	(28,6)	--
,	MC_LINE	DECIMAL	(28,6)	--
,	MC_BALANCE	DECIMAL	(28,6)	--
,	RW_CC_BALANCE	DECIMAL	(28,6)	--
,	IL_CC_BALANCE	DECIMAL	(28,6)	--
,	RC_LINE	DECIMAL	(28,6)	--
,	RC_BALANCE	DECIMAL	(28,6)	--
,	EXTRA_BALANCE	DECIMAL	(28,6)	--
,	IL_BALANCE	DECIMAL	(28,6)	--
,	RW_BALANCE	DECIMAL	(28,6)	--
,	OD_LINE	DECIMAL	(28,6)	--
,	OD_BALANCE	DECIMAL	(28,6)	--
,	AUTO_BALANCE	DECIMAL	(28,6)	--
,	DDA_OVERLIMIT	DECIMAL	(28,6)	--
,	VAREXTRA3	DECIMAL	(28,6)	--
,	TM	VARCHAR	(255)	--
,	TIMEONBOOKS	DECIMAL	(11,0)	--CHAR 100: Number of months since open date (partial month rouded up)
,	DELINQUENCY	DECIMAL	(11,0)	--CHAR 200: Deliquency level of account at the time of scoring
,	PERCENTDELINQUENCY_0_1_6	DECIMAL	(11,0)	--CHAR 211: Percent of last 6 billing cycles in which the account was 1 or more cycles delinquent, starting with the billing cycle in which the account was most likely current
,	NUMBERDELINQUENCY_0_LIFETIME	DECIMAL	(11,0)	--CHAR 250: Number of times account was 1 or more cycles delinquent over the lifetime of the account
,	NUMBERDELINQUENCY_1_1_12	DECIMAL	(11,0)	--CHAR 256: Number of times account was 2 or more cycles delinquent over the last 12 cycles
,	CONSECUTIVENOCHANGEINDELINQUENCY_1_12	DECIMAL	(11,0)	--CHAR 264: Number of consecutive billing cycles in which the account remained unchanged in level of delinquency over the last 12 billing cycles, starting with the present billing cycle. 
,	MAXIMUMCONSECUTIVEDECREASESINBALANCE_1_12	DECIMAL	(11,0)	--CHAR 331: Longest run of consecutive decreases in balance over the last 12 billing cycles
,	BALANCE_1_PERC_MAXIMUMBALANCE_1_12	DECIMAL	(11,0)	--CHAR 345: Balance at time of scoring as percent of highest balance over the last 12 billing cycles
,	PAYMENT_1_5_PERC_BALANCE_2_6	DECIMAL	(11,0)	--CHAR 412: Sum of payments received over billing cycles 1 through 5 as percent of sum of balances over billing cycles 2 through 6
,	PERC_PAYMENT_AMOUNTDUE_1_N_1	DECIMAL	(11,0)	--CHAR 431: Percent of the last 12 minus 1 billing cycles in which payments received exceeded the previous cycles's amount due
,	CASHADVANCE_1_12_PERC_PURCHASE_1_12	DECIMAL	(11,0)	--CHAR 473: Total Cash advances posted during last 12 billing cycles as percent of total cash advances and merchandise purchases posted during the last 12 billing cycles
,	OCCDLQ	DECIMAL	(11,0)	--max occurance delinquency
,	OCCBILLBAL	DECIMAL	(11,0)	--max occurance billing balance
,	OCCAMTPAY	DECIMAL	(11,0)	--max occurance amount paid
,	OCCAMTDUE	DECIMAL	(11,0)	--max occurance amount due
,	OCCAMTPUR	DECIMAL	(11,0)	--max occurance amount purchase
,	OCCAMTCSH	DECIMAL	(11,0)	--max occurance amount cash
,	AMTCSH	DECIMAL	(28,6)	--amount cash vector
,	AMTDUE	DECIMAL	(28,6)	--amount due vector
,	AMTPAY	DECIMAL	(28,6)	--amount pay vector
,	AMTPUR	DECIMAL	(28,6)	--amount pur vector
,	BILLBAL	DECIMAL	(28,6)	--billing balance vector
,	CYCDLQ	DECIMAL	(11,0)	--cycle delinquent vector
,	STARTMONTH	DECIMAL	(11,0)	--startmonth - var aux
,	ENDMONTH	DECIMAL	(11,0)	--endmonth- var au
,	NUMERATOR	DECIMAL	(28,6)	--numerator- var aux
,	DENOMINATOR	DECIMAL	(28,6)	--denominator- var aux
,	DTOPEN	DATE		--fecha apertura
,	LICR	DECIMAL	(28,6)	--limite credito
,	I	DECIMAL	(11,0)	--i - periodos
,	RUN	DECIMAL	(11,0)	--var aux
,	MBAL	DECIMAL	(28,6)	--var aux
,	CYCDLQ_NUM	DECIMAL	(11,0)	--suma de cycle delinquen
,	PARTIAL_SCORES	DECIMAL	(11,0)	--Partial Scores vector
,	TARGET_MARKET	VARCHAR	(255)	--Targent Market
,	CAP_MUE	DECIMAL	(28,6)	--MUE máxima
,	LIM_MAX_LOGO	DECIMAL	(28,6)	--Límite máximo por logo
,	VINTAGE_JUNE_2010_FLAG_1	DECIMAL	(11,0)	--Vintage > June 2010 flag (1: Yes) # 523
,	VINTAGE	DATE		--Fecha apertura cuenta
,	SCORE_CURRENT	DECIMAL	(11,0)	--Score
,	MUE_DISPONIBLE	DECIMAL	(28,6)	--MUE Diponible
,	MUE_DISPUESTO	DECIMAL	(28,6)	--MUE Dispuesto
,	NUMCUENTAOUT	VARCHAR	(255)	--
,	STGY_ID_EXTRA	DECIMAL	(11,0)	--ID Estrategia
,	L_XTRFIN_LIMIT	DECIMAL	(11,0)	--Limite Extrafinanciamiento
,	L_XTRFIN_EXPIRY	DATE		--fecha max para extrafinanciamiento
,	ALLOWEDMOVEMENT	VARCHAR	(255)	--Allowed Movement
,	DK727_MULTIPLIER	DECIMAL	(11,0)	--DK727_Multiplier
,	VENCIMIENTO	DECIMAL	(11,0)	--Vencimiento
,	PROMOID	VARCHAR	(255)	--Id Promocion
,	MAXEXTRALINE	DECIMAL	(11,0)	--Max Extrafinanciamiento
,	MINEXTRALINE	DECIMAL	(11,0)	--Min Extrafinanciamiento
,	SCEN_ID_EXTRA	DECIMAL	(11,0)	--Scenario Extrafinanciamiento
,	FINAL_LIMIT_EXTRA	DECIMAL	(28,6)	--Limite Final tras ajuste por MUE
,	APPROVPERIOD	DECIMAL	(11,0)	--Approval Period
,	DECLREASON	VARCHAR	(255)	--Decline Reason
,	SCEN_ID_RENEWAL	DECIMAL	(11,0)	--Scenario Renovacion
,	STGY_ID_RENEWAL	DECIMAL	(11,0)	--ID Estrategia Renewal
,	SCEN_ID_CLI	DECIMAL	(11,0)	--Scenario CLI
,	CREDITLINEMULTIPLIER	DECIMAL	(11,0)	--Multiplicador de linea de credito
,	MAXCREDITLINE	DECIMAL	(28,6)	--max linea de credito
,	MINCREDITLINE	DECIMAL	(28,6)	--min linea de credito
,	NEW_LICR	DECIMAL	(28,6)	--Nuevo limite de credito
,	STGY_ID_CLI	DECIMAL	(11,0)	--ID Estrategia CLI
,	FINAL_LIMIT_CLI	DECIMAL	(28,6)	--Limite Final tras ajuste por Logo y MUE
,	DELTA	DECIMAL	(28,6)	--Importe a incrementar al limite actual 
,   MIS_DATE DATE NULL
,   LOAD_DATE datetime NULL DEFAULT getdate()
); COMMIT;	 	 		

DROP TABLE IF EXISTS "STG_SAT"."CUS_ADM_MOE";  
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."CUS_ADM_MOE" (
	"name" VARCHAR(1024) NULL ,
	"name_1" VARCHAR(1024) NULL ,
	"id" VARCHAR(1024) NULL ,
	"v" VARCHAR(1024) NULL 
);
COMMIT;

DROP TABLE IF EXISTS "STG_SAT"."CUS_ADM_SCORE";  
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."CUS_ADM_SCORE" (
	"name" VARCHAR(1024) NULL ,
	"name_1" VARCHAR(1024) NULL ,
	"id" VARCHAR(1024) NULL ,
	"v" VARCHAR(1024) NULL 
);
COMMIT;

drop table IF EXISTS STG_SAT.CUS_COMP_MBE;  CREATE TABLE IF NOT EXISTS STG_SAT.CUS_COMP_MBE  ( 	PDTOPEN	DATE		--fecha apertura de cuenta performance period
,	PLICR	DECIMAL	(28,6)	--limite de credito performance period
,	LAMCSH01	DECIMAL	(28,6)	--montante retirada dinero periodo 01
,	LAMCSH02	DECIMAL	(28,6)	--montante retirada dinero periodo 02
,	LAMCSH03	DECIMAL	(28,6)	--montante retirada dinero periodo 03
,	LAMCSH04	DECIMAL	(28,6)	--montante retirada dinero periodo 04
,	LAMCSH05	DECIMAL	(28,6)	--montante retirada dinero periodo 05
,	LAMCSH06	DECIMAL	(28,6)	--montante retirada dinero periodo 06
,	LAMCSH07	DECIMAL	(28,6)	--montante retirada dinero periodo 07
,	LAMCSH08	DECIMAL	(28,6)	--montante retirada dinero periodo 08
,	LAMCSH09	DECIMAL	(28,6)	--montante retirada dinero periodo 09
,	LAMCSH10	DECIMAL	(28,6)	--montante retirada dinero periodo 10
,	LAMCSH11	DECIMAL	(28,6)	--montante retirada dinero periodo 11
,	LAMCSH12	DECIMAL	(28,6)	--montante retirada dinero periodo 12
,	LAMDUE01	DECIMAL	(28,6)	--Importe pago minimo 01
,	LAMDUE02	DECIMAL	(28,6)	--Importe pago minimo 02
,	LAMDUE03	DECIMAL	(28,6)	--Importe pago minimo 03
,	LAMDUE04	DECIMAL	(28,6)	--Importe pago minimo 04
,	LAMDUE05	DECIMAL	(28,6)	--Importe pago minimo 05
,	LAMDUE06	DECIMAL	(28,6)	--Importe pago minimo 06
,	LAMDUE07	DECIMAL	(28,6)	--Importe pago minimo 07
,	LAMDUE08	DECIMAL	(28,6)	--Importe pago minimo 08
,	LAMDUE09	DECIMAL	(28,6)	--Importe pago minimo 09
,	LAMDUE10	DECIMAL	(28,6)	--Importe pago minimo 10
,	LAMDUE11	DECIMAL	(28,6)	--Importe pago minimo 11
,	LAMDUE12	DECIMAL	(28,6)	--Importe pago minimo 12
,	LAMPAY01	DECIMAL	(28,6)	--montante pago mes periodo 01
,	LAMPAY02	DECIMAL	(28,6)	--montante pago mes periodo 02
,	LAMPAY03	DECIMAL	(28,6)	--montante pago mes periodo 03
,	LAMPAY04	DECIMAL	(28,6)	--montante pago mes periodo 04
,	LAMPAY05	DECIMAL	(28,6)	--montante pago mes periodo 05
,	LAMPAY06	DECIMAL	(28,6)	--montante pago mes periodo 06
,	LAMPAY07	DECIMAL	(28,6)	--montante pago mes periodo 07
,	LAMPAY08	DECIMAL	(28,6)	--montante pago mes periodo 08
,	LAMPAY09	DECIMAL	(28,6)	--montante pago mes periodo 09
,	LAMPAY10	DECIMAL	(28,6)	--montante pago mes periodo 10
,	LAMPAY11	DECIMAL	(28,6)	--montante pago mes periodo 11
,	LAMPAY12	DECIMAL	(28,6)	--montante pago mes periodo 12
,	LAMPUR01	DECIMAL	(28,6)	--montante compras mes periodo 01
,	LAMPUR02	DECIMAL	(28,6)	--montante compras mes periodo 02
,	LAMPUR03	DECIMAL	(28,6)	--montante compras mes periodo 03
,	LAMPUR04	DECIMAL	(28,6)	--montante compras mes periodo 04
,	LAMPUR05	DECIMAL	(28,6)	--montante compras mes periodo 05
,	LAMPUR06	DECIMAL	(28,6)	--montante compras mes periodo 06
,	LAMPUR07	DECIMAL	(28,6)	--montante compras mes periodo 07
,	LAMPUR08	DECIMAL	(28,6)	--montante compras mes periodo 08
,	LAMPUR09	DECIMAL	(28,6)	--montante compras mes periodo 09
,	LAMPUR10	DECIMAL	(28,6)	--montante compras mes periodo 10
,	LAMPUR11	DECIMAL	(28,6)	--montante compras mes periodo 11
,	LAMPUR12	DECIMAL	(28,6)	--montante compras mes periodo 12
,	LBILBL01	DECIMAL	(28,6)	--nuevo saldo periodo 01
,	LBILBL02	DECIMAL	(28,6)	--nuevo saldo periodo 02
,	LBILBL03	DECIMAL	(28,6)	--nuevo saldo periodo 03
,	LBILBL04	DECIMAL	(28,6)	--nuevo saldo periodo 04
,	LBILBL05	DECIMAL	(28,6)	--nuevo saldo periodo 05
,	LBILBL06	DECIMAL	(28,6)	--nuevo saldo periodo 06
,	LBILBL07	DECIMAL	(28,6)	--nuevo saldo periodo 07
,	LBILBL08	DECIMAL	(28,6)	--nuevo saldo periodo 08
,	LBILBL09	DECIMAL	(28,6)	--nuevo saldo periodo 09
,	LBILBL10	DECIMAL	(28,6)	--nuevo saldo periodo 10
,	LBILBL11	DECIMAL	(28,6)	--nuevo saldo periodo 11
,	LBILBL12	DECIMAL	(28,6)	--nuevo saldo periodo 12
,	LCYCDQ01	DECIMAL	(11,0)	--numero pagos vencidos periodo 01
,	LCYCDQ02	DECIMAL	(11,0)	--numero pagos vencidos periodo 02
,	LCYCDQ03	DECIMAL	(11,0)	--numero pagos vencidos periodo 03
,	LCYCDQ04	DECIMAL	(11,0)	--numero pagos vencidos periodo 04
,	LCYCDQ05	DECIMAL	(11,0)	--numero pagos vencidos periodo 05
,	LCYCDQ06	DECIMAL	(11,0)	--numero pagos vencidos periodo 06
,	LCYCDQ07	DECIMAL	(11,0)	--numero pagos vencidos periodo 07
,	LCYCDQ08	DECIMAL	(11,0)	--numero pagos vencidos periodo 08
,	LCYCDQ09	DECIMAL	(11,0)	--numero pagos vencidos periodo 09
,	LCYCDQ10	DECIMAL	(11,0)	--numero pagos vencidos periodo 10
,	LCYCDQ11	DECIMAL	(11,0)	--numero pagos vencidos periodo 11
,	LCYCDQ12	DECIMAL	(11,0)	--numero pagos vencidos periodo 12
,	EXECUTIONDATE	DATE		--fecha de consulta en sistema
,	BLACKLIST	DECIMAL	(11,0)	--Black_lists
,	WORSTDAYSDELINQUENT	DECIMAL	(11,0)	--Worst days delinquent
,	CREDITBUREAU	DECIMAL	(11,0)	--Credit Bureau
,	YOUNGESTMOB	DECIMAL	(11,0)	--Youngest Month on books
,	WORSTBEHAVIORSCORE	DECIMAL	(11,0)	--Worst Behavior Score
,	MOB	DECIMAL	(11,0)	--Months on books
,	CYCLF	DECIMAL	(11,0)	--suma number os times account was delinquent
,	EXCLUSION_CODE	DECIMAL	(11,0)	--Código de exclusión (De 0 a 17)
,	LCYCDQ00	DECIMAL	(11,0)	--numero pagos vencidos periodo 00
,	LBILBL00	DECIMAL	(11,0)	--nuevo saldo periodo 00
,	LAMDUE00	DECIMAL	(11,0)	--montante retirada dinero periodo 00
,	ID_COD_PERS	DECIMAL	(11,0)	--
,	ID_PROCESO	DECIMAL	(11,0)	--ID del Proceso de Score, o estrategia Extra, CLI o Renovacion
,	ENTIDAD	VARCHAR	(255)	--valor por defecto 0004
,	CENTALTA	VARCHAR	(255)	--valor por defecto 0002
,	CUENTA	VARCHAR	(255)	--
,	PAN	VARCHAR	(255)	--
,	NUMCLI	VARCHAR	(255)	--
,	DPD_RETAIL_PDTS	DECIMAL	(11,0)	--Days Past Due in all Retail Products
,	AGE	DECIMAL	(11,0)	--Age in years
,	MONTHSSINCELASTCLI	DECIMAL	(11,0)	--Months Since Last CLI
,	UNSEC_RETAIL_PRODS_IND	DECIMAL	(11,0)	--Unsec_Retail_Prods_Ind
,	MOBRETAIL	DECIMAL	(11,0)	--MOB Retail
,	CRLINEUTILIZATION	DECIMAL	(11,0)	--Credit Line utilization %
,	SUMCRLIMITSDOMINLOGIC	DECIMAL	(28,6)	--Sum CrLimit Domin logi
,	VIP	DECIMAL	(11,0)	--VIP Indicator
,	MONTHSTOEXPIRY	DECIMAL	(28,6)	--MonthstoExpiry
,	CYCLEDELQ	DECIMAL	(11,0)	--Cycle Delinquent
,	BEHSCORE	DECIMAL	(28,6)	--Behaviour Score
,	EXTERNALCREDITBUREAU	DECIMAL	(11,0)	--External Credit Bureau
,	PERCUTILIZACIONCRLIM	DECIMAL	(28,6)	--% Utilizacion Credit Limit
,	ESTRATEGIA_CORPORATE	DECIMAL	(11,0)	--Estrategia Corporate
,	DWHRECOMMENDEDINL3	DECIMAL	(11,0)	--DWH Recommended in L3 
,	DWHDPDRETAILPRODUCTS	DECIMAL	(11,0)	--DWH DPD Retail products 
,	DWHNODPDOFFUSLAST3MONTHS	DECIMAL	(11,0)	--DWH DPD Retail products 
,	MONTHSSINCELASTEXTRA	DECIMAL	(11,0)	--Months since last Extra with MOB logic
,	AVEUTILIZATION_3MONTHS	DECIMAL	(28,6)	--Av. Utlization % last 3 months
,	MAXCRLIMITBYLOGOVINTAGE	DECIMAL	(11,0)	--Max Crlimit by logo&vintage
,	CRLIMIT	DECIMAL	(28,6)	--Credit limit
,	MONTHSSINCELASTCLIWITHMOBLOGIC	DECIMAL	(11,0)	--Months since last CLI with MOB logic
,	MONTHSSINCELASTCLD	DECIMAL	(11,0)	--Months since last CLD
,	LOGO	DECIMAL	(11,0)	--Credit Card Logo
,	VINTAGE_JUNE_2010_FLAG	DECIMAL	(11,0)	--
,	INCOME	DECIMAL	(28,6)	--
,	VISA_LINE	DECIMAL	(28,6)	--
,	VISA_BALANCE	DECIMAL	(28,6)	--
,	MC_LINE	DECIMAL	(28,6)	--
,	MC_BALANCE	DECIMAL	(28,6)	--
,	RW_CC_BALANCE	DECIMAL	(28,6)	--
,	IL_CC_BALANCE	DECIMAL	(28,6)	--
,	RC_LINE	DECIMAL	(28,6)	--
,	RC_BALANCE	DECIMAL	(28,6)	--
,	EXTRA_BALANCE	DECIMAL	(28,6)	--
,	IL_BALANCE	DECIMAL	(28,6)	--
,	RW_BALANCE	DECIMAL	(28,6)	--
,	OD_LINE	DECIMAL	(28,6)	--
,	OD_BALANCE	DECIMAL	(28,6)	--
,	AUTO_BALANCE	DECIMAL	(28,6)	--
,	DDA_OVERLIMIT	DECIMAL	(28,6)	--
,	VAREXTRA3	DECIMAL	(28,6)	--
,	TM	VARCHAR	(255)	--
,	TIMEONBOOKS	DECIMAL	(11,0)	--CHAR 100: Number of months since open date (partial month rouded up)
,	DELINQUENCY	DECIMAL	(11,0)	--CHAR 200: Deliquency level of account at the time of scoring
,	PERCENTDELINQUENCY_0_1_6	DECIMAL	(11,0)	--CHAR 211: Percent of last 6 billing cycles in which the account was 1 or more cycles delinquent, starting with the billing cycle in which the account was most likely current
,	NUMBERDELINQUENCY_0_LIFETIME	DECIMAL	(11,0)	--CHAR 250: Number of times account was 1 or more cycles delinquent over the lifetime of the account
,	NUMBERDELINQUENCY_1_1_12	DECIMAL	(11,0)	--CHAR 256: Number of times account was 2 or more cycles delinquent over the last 12 cycles
,	CONSECUTIVENOCHANGEINDELINQUENCY_1_12	DECIMAL	(11,0)	--CHAR 264: Number of consecutive billing cycles in which the account remained unchanged in level of delinquency over the last 12 billing cycles, starting with the present billing cycle. 
,	MAXIMUMCONSECUTIVEDECREASESINBALANCE_1_12	DECIMAL	(11,0)	--CHAR 331: Longest run of consecutive decreases in balance over the last 12 billing cycles
,	BALANCE_1_PERC_MAXIMUMBALANCE_1_12	DECIMAL	(11,0)	--CHAR 345: Balance at time of scoring as percent of highest balance over the last 12 billing cycles
,	PAYMENT_1_5_PERC_BALANCE_2_6	DECIMAL	(11,0)	--CHAR 412: Sum of payments received over billing cycles 1 through 5 as percent of sum of balances over billing cycles 2 through 6
,	PERC_PAYMENT_AMOUNTDUE_1_N_1	DECIMAL	(11,0)	--CHAR 431: Percent of the last 12 minus 1 billing cycles in which payments received exceeded the previous cycles's amount due
,	CASHADVANCE_1_12_PERC_PURCHASE_1_12	DECIMAL	(11,0)	--CHAR 473: Total Cash advances posted during last 12 billing cycles as percent of total cash advances and merchandise purchases posted during the last 12 billing cycles
,	OCCDLQ	DECIMAL	(11,0)	--max occurance delinquency
,	OCCBILLBAL	DECIMAL	(11,0)	--max occurance billing balance
,	OCCAMTPAY	DECIMAL	(11,0)	--max occurance amount paid
,	OCCAMTDUE	DECIMAL	(11,0)	--max occurance amount due
,	OCCAMTPUR	DECIMAL	(11,0)	--max occurance amount purchase
,	OCCAMTCSH	DECIMAL	(11,0)	--max occurance amount cash
,	AMTCSH	DECIMAL	(28,6)	--amount cash vector
,	AMTDUE	DECIMAL	(28,6)	--amount due vector
,	AMTPAY	DECIMAL	(28,6)	--amount pay vector
,	AMTPUR	DECIMAL	(28,6)	--amount pur vector
,	BILLBAL	DECIMAL	(28,6)	--billing balance vector
,	CYCDLQ	DECIMAL	(11,0)	--cycle delinquent vector
,	STARTMONTH	DECIMAL	(11,0)	--startmonth - var aux
,	ENDMONTH	DECIMAL	(11,0)	--endmonth- var au
,	NUMERATOR	DECIMAL	(28,6)	--numerator- var aux
,	DENOMINATOR	DECIMAL	(28,6)	--denominator- var aux
,	DTOPEN	DATE		--fecha apertura
,	LICR	DECIMAL	(28,6)	--limite credito
,	I	DECIMAL	(11,0)	--i - periodos
,	RUN	DECIMAL	(11,0)	--var aux
,	MBAL	DECIMAL	(28,6)	--var aux
,	CYCDLQ_NUM	DECIMAL	(11,0)	--suma de cycle delinquen
,	PARTIAL_SCORES	DECIMAL	(11,0)	--Partial Scores vector
,	TARGET_MARKET	VARCHAR	(255)	--Targent Market
,	CAP_MUE	DECIMAL	(28,6)	--MUE máxima
,	LIM_MAX_LOGO	DECIMAL	(28,6)	--Límite máximo por logo
,	VINTAGE_JUNE_2010_FLAG_1	DECIMAL	(11,0)	--Vintage > June 2010 flag (1: Yes) # 523
,	VINTAGE	DATE		--Fecha apertura cuenta
,	SCORE_CURRENT	DECIMAL	(11,0)	--Score
,	MUE_DISPONIBLE	DECIMAL	(28,6)	--MUE Diponible
,	MUE_DISPUESTO	DECIMAL	(28,6)	--MUE Dispuesto
,	NUMCUENTAOUT	VARCHAR	(255)	--
,	STGY_ID_EXTRA	DECIMAL	(11,0)	--ID Estrategia
,	L_XTRFIN_LIMIT	DECIMAL	(11,0)	--Limite Extrafinanciamiento
,	L_XTRFIN_EXPIRY	DATE		--fecha max para extrafinanciamiento
,	ALLOWEDMOVEMENT	VARCHAR	(255)	--Allowed Movement
,	DK727_MULTIPLIER	DECIMAL	(11,0)	--DK727_Multiplier
,	VENCIMIENTO	DECIMAL	(11,0)	--Vencimiento
,	PROMOID	VARCHAR	(255)	--Id Promocion
,	MAXEXTRALINE	DECIMAL	(11,0)	--Max Extrafinanciamiento
,	MINEXTRALINE	DECIMAL	(11,0)	--Min Extrafinanciamiento
,	SCEN_ID_EXTRA	DECIMAL	(11,0)	--Scenario Extrafinanciamiento
,	FINAL_LIMIT_EXTRA	DECIMAL	(28,6)	--Limite Final tras ajuste por MUE
,	APPROVPERIOD	DECIMAL	(11,0)	--Approval Period
,	DECLREASON	VARCHAR	(255)	--Decline Reason
,	SCEN_ID_RENEWAL	DECIMAL	(11,0)	--Scenario Renovacion
,	STGY_ID_RENEWAL	DECIMAL	(11,0)	--ID Estrategia Renewal
,	SCEN_ID_CLI	DECIMAL	(11,0)	--Scenario CLI
,	CREDITLINEMULTIPLIER	DECIMAL	(11,0)	--Multiplicador de linea de credito
,	MAXCREDITLINE	DECIMAL	(28,6)	--max linea de credito
,	MINCREDITLINE	DECIMAL	(28,6)	--min linea de credito
,	NEW_LICR	DECIMAL	(28,6)	--Nuevo limite de credito
,	STGY_ID_CLI	DECIMAL	(11,0)	--ID Estrategia CLI
,	FINAL_LIMIT_CLI	DECIMAL	(28,6)	--Limite Final tras ajuste por Logo y MUE
,	DELTA	DECIMAL	(28,6)	--Importe a incrementar al limite actual 
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
 @NOMBRE_MALLA = 'MODELLICA'
,@OBJECT_NAME = 'CUS_COMP_MBE'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '59cf20c94f689be240b5fb2db39800714239db45'
,@VERSION_CODE = '59cf20c'
,@VERSION_DATE = 'March 25, 2019 3:07:18 PM'
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
 @NOMBRE_MALLA = 'MODELLICA'
,@OBJECT_NAME = 'CUS_ADM_MOE'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '8d6db5b4b98ebcc1b565126707213b33529557bf'
,@VERSION_CODE = '8d6db5b'
,@VERSION_DATE = 'April 4, 2019 1:37:38 PM'
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
 @OBJECT_NAME = 'CUS_ADM_SCORE'
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
,@OBJECT_NAME = 'CUS_COMP_MBE'
,@VERSION_COMMIT = 'b66c91dcdbbf6c7d618526f3b95468930da28851'
,@VERSION_CODE = 'b66c91d'
,@VERSION_DATE = 'April 4, 2019 1:37:54 PM'
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
 @OBJECT_NAME = 'CUS_ADM_MOE'
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
 @OBJECT_NAME = 'CUS_ADM_SCORE'
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
