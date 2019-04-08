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
