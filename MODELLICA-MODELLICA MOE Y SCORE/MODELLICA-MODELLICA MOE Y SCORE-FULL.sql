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

drop table IF EXISTS SAT.CUS_ADM_MOE;  CREATE TABLE IF NOT EXISTS SAT.CUS_ADM_MOE  ( 	EDAD	DECIMAL	(28,6)	--Input-Main-Edad-Edad en años
,	TIPO_CLIENTE	DECIMAL	(11,0)	--Input-Main-Tipo_Cliente-Logica cliente (New - Existing)
,	POLICY_INDICATOR	DECIMAL	(11,0)	--Input-Main-Policy_Indicator-Policy Indicator
,	RAC	DECIMAL(11,0) DEFAULT 4		--Input-Main-RAC-Indica qué "fase de admisión" se ejecuta en el motor
,	LOGO	VARCHAR	(255)	--Input-Main-Logo-Categoría de la primera tarjeta
,	SOURCECODE	VARCHAR	(255)	--Input-Main-SourceCode-Código interno
,	TIPOEMPLEO	VARCHAR	(255)	--Input-Main-TipoEmpleo-Empleado o Indepoendiente
,	TIEMPOEMPLEO	DECIMAL	(28,6)	--Input-Main-TiempoEmpleo-Tiempo en el empleo en meses
,	LOGO2	VARCHAR	(255)	--Input-Main-Logo2-Categoría de la segunda tarjeta
,	INGRESOS	DECIMAL(28,6) DEFAULT 0		--Input-Main-Ingresos-Ingresos mensuales
,	FORZAJE_SCORE	DECIMAL(11,0) DEFAULT 0		--Input-Main-Forzaje_Score-1 = hubo forzaje; 0= NO hubo forzaje
,	TIPO_PCCD	DECIMAL	(11,0)	--Input-Main-Tipo_PCCD-Indica que es PCCD-TWO, PCCD_UNO u otro programa
,	PERFIL_CLIENTE	VARCHAR	(255)	--Input-Main-Perfil_Cliente-Perfil en función del tipo de ingresos
,	MATCH_INTERNO	DECIMAL	(11,0)	--Input-Main-Match_Interno-Indica la coincidencia entre CaseCenter y Base Interna del telefono y la Direccion (1=coincidencia, 0=diferencia)
,	GRADUADO	VARCHAR	(255)	--Input-Main-Graduado-Indica si es graduado universitario
,	UNIVERSIDAD	VARCHAR	(255)	--Input-Main-Universidad-Nombre de universidad 
,	GARANTIA_DEPOSITO	DECIMAL	(28,6)	--Input-Main-Garantia_deposito-Monto del Deposito
,	MISMA_EMPRESA	DECIMAL	(11,0)	--Input-Main-Misma_Empresa-"0" = no es la misma empresa: "1" = es la misma empresa
,	INGRESO_BASE	DECIMAL	(28,6)	--Input-Main-Ingreso_Base-
,	NRO_SOLICITUD	VARCHAR	(255)	--Input-Main-nro_solicitud-
,	SUMACUOTA_CARDS_SSF	DECIMAL	(28,6)	--Input-SSF-SumaCuota_Cards_SSF-Gasto mensual pago tarjetas
,	SUMACUOTA_HIPOTECAS_SSF	DECIMAL	(28,6)	--Input-SSF-SumaCuota_Hipotecas_SSF-Gasto mensual pago hipotecas
,	SUMACUOTA_PREST_CONSUMO_SSF	DECIMAL	(28,6)	--Input-SSF-SumaCuota_Prest_consumo_SSF-Gasto mensual pago prestamos consumo
,	SUMACUOTA_SOBREGIROS_SSF	DECIMAL	(28,6)	--Input-SSF-SumaCuota_Sobregiros_SSF-Gasto mensual pago sobregiros
,	SUMACUOTA_REFI_SSF	DECIMAL	(28,6)	--Input-SSF-SumaCuota_Refi_SSF-Gasto mensual pago refinanciaciones
,	MORAACTUAL_ALL_SSF	DECIMAL	(11,0)	--Input-SSF-MoraActual_All_SSF-Mora actual
,	REFERENCIA_MASANTIGUA_SSF	DECIMAL	(11,0)	--Input-SSF-Referencia_MasAntigua_SSF-Experencia Crediticia
,	CONTEO_WO_SSF	DECIMAL	(11,0)	--Input-SSF-Conteo_WO_SSF-Juicios Vigentes
,	LIMITEPCCD_6MESES_SSF	DECIMAL	(11,0)	--Input-SSF-LimitePCCD_6meses_SSF-Limite tarjetas con la compeytencia ultimos 6 meses
,	LIMITEPCCD_12MESES_SSF	DECIMAL	(11,0)	--Input-SSF-LimitePCCD_12meses_SSF-Limite tarjetas con la compeytencia ultimos 12 meses
,	CONTEO_REFIS_SSF	DECIMAL	(11,0)	--Input-SSF-Conteo_Refis_SSF-Rewrites
,	MAYOR_ANT_TC_SSF	DECIMAL	(11,0)	--Input-SSF-Mayor_Ant_TC_SSF-Experencia Crediticia
,	SCORE_BUREAU_EQFX	DECIMAL	(11,0)	--Input-EQFX-Score_Bureau_EQFX-Score de Equifax
,	LIMITEPCCD_6MESES_EQFX	DECIMAL	(11,0)	--Input-EQFX-LimitePCCD_6meses_EQFX-Limite tarjetas con la compeytencia ultimos 6 meses
,	LIMITEPCCD_12MESES_EQFX	DECIMAL	(11,0)	--Input-EQFX-LimitePCCD_12meses_EQFX-Limite tarjetas con la compeytencia ultimos 12 meses
,	MORAACTUAL_EQFX	DECIMAL	(11,0)	--Input-EQFX-MoraActual_EQFX-Mora actual
,	NUMEROMESES_EQFX	DECIMAL	(11,0)	--Input-EQFX-NumeroMeses_EQFX-Experencia Crediticia
,	ANTMAXTC_EQFX	DECIMAL	(11,0)	--Input-EQFX-AntMaxTC_EQFX-Experencia Crediticia
,	TC_JURIDICO_EQFX	DECIMAL	(11,0)	--Input-EQFX-tc_Juridico_EQFX-Juicios Vigentes
,	TOTAL_JUICIOS_EQFX	DECIMAL	(11,0)	--Input-EQFX-Total_Juicios_EQFX-Rewrites
,	SUMCUOACTOT_EQFX	DECIMAL	(11,0)	--Input-EQFX-SumCuoActOt_EQFX-Sumatoria de cuotas actuales
,	SE_CONSULTO_EQUIFAX	VARCHAR	(255)	--Input-EQFX-Se_Consulto_Equifax-
,	LIMITE_SUPERIOR_EQFX	DECIMAL	(28,6)	--Input-EQFX-Limite_Superior_EQFX-
,	LIMITE_INFERIOR_EQFX	DECIMAL	(28,6)	--Input-EQFX-Limite_Inferior_EQFX-
,	CUARTIL_EQFX	DECIMAL	(11,0)	--Input-EQFX-Cuartil_EQFX-
,	FLAG_EXPATRIADO	DECIMAL	(11,0)	--Input-Bureau Interno-Flag_Expatriado-Expatriado (1=SI)
,	FLAG_VIP	DECIMAL	(11,0)	--Input-Bureau Interno-Flag_VIP-VIP (1=SI)
,	MOB_VISA	DECIMAL	(11,0)	--Input-Bureau Interno-MOB_Visa-Antiguedad Visa
,	MOB_MASTER	DECIMAL	(11,0)	--Input-Bureau Interno-MOB_Master-Antiguedad MC
,	BEH_SCORE_VISA	DECIMAL	(11,0)	--Input-Bureau Interno-Beh_Score_Visa-Score comportamiento Visa
,	BEH_SCORE_MASTER	DECIMAL	(11,0)	--Input-Bureau Interno-Beh_Score_Master-Score comportamiento MC
,	TOTAL_DPD	DECIMAL	(11,0)	--Input-Bureau Interno-Total_Dpd-Dias de atraso
,	NUM_TC	DECIMAL	(11,0)	--Input-Bureau Interno-Num_TC-Cantidad de tarjetas de credito
,	VISA_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-Visa_Balance-Saldo Visa
,	VISA_LINE	DECIMAL	(28,6)	--Input-Bureau Interno-Visa_Line-Linea Visa
,	MASTER_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-Master_Balance-Saldo MC
,	MASTER_LINE	DECIMAL	(28,6)	--Input-Bureau Interno-Master_Line-Linea MC
,	BLOCK_CODE_VISA	VARCHAR	(255)	--Input-Bureau Interno-Block_Code_Visa-Codigo bloqueo Visa
,	BLOCK_CODE_MASTER	VARCHAR	(255)	--Input-Bureau Interno-Block_Code_Master-Codigo bloqueo MC
,	RW_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-RW_Balance-Saldo RW
,	VISA_WRITE_OFF	DECIMAL	(11,0)	--Input-Bureau Interno-Visa_Write_Off-Perdida Visa
,	MASTER_WRITE_OFF	DECIMAL	(11,0)	--Input-Bureau Interno-Master_Write_Off-Perdida MC
,	IL_WRITE_OFF	DECIMAL	(11,0)	--Input-Bureau Interno-IL_Write_Off-Perdida installment loan
,	MORTG_WRITE_OFF	DECIMAL	(11,0)	--Input-Bureau Interno-Mortg_Write_Off-Perdidas hipotecarias
,	AUTO_WRITE_OFF	DECIMAL	(11,0)	--Input-Bureau Interno-Auto_Write_Off-Perdida Auto
,	MONTHS_LAST_CLI	DECIMAL	(11,0)	--Input-Bureau Interno-Months_Last_CLI-Meses desde ultima vez CLI
,	FLAG_PRE_REJECTION	VARCHAR	(255)	--Input-Bureau Interno-Flag_Pre_Rejection-Pre rejection (1=SI)
,	MOB_YOUNGEST_EXTRA	DECIMAL	(11,0)	--Input-Bureau Interno-MOB_Youngest_Extra-Antiguedad mas reciente Extra
,	NEG_REFERENCES	VARCHAR	(255)	--Input-Bureau Interno-Neg_references-Referencias negativas
,	RW_CC_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-RW_CC_Balance-Saldo tarjeta credito RW
,	IL_CC_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-IL_CC_Balance-Saldo installment loan tarjeta de crédito
,	RC_LINE	DECIMAL	(28,6)	--Input-Bureau Interno-RC_Line-Linea RC
,	RC_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-RC_Balance-Saldo RC
,	EXTRA_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-Extra_Balance-Saldo Extra
,	IL_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-IL_Balance-Saldo installment loan
,	OD_LINE	DECIMAL	(28,6)	--Input-Bureau Interno-OD_Line-Linea OD
,	OD_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-OD_Balance-Saldo OD
,	AUTO_BALANCE	DECIMAL	(28,6)	--Input-Bureau Interno-Auto_Balance-Saldo Auto
,	DDA_OVERLIMIT	DECIMAL	(28,6)	--Input-Bureau Interno-DDA_Overlimit-Sobregiro DDA
,	VAREXTRA3	DECIMAL	(28,6)	--Input-Bureau Interno-VarExtra3-Variable extra 3
,	SCORE_INTERNO	DECIMAL	(11,0)	--Input-Bureau Interno-Score_Interno-Score interno
,	FLAG_REWRITE	DECIMAL	(11,0)	--Input-Bureau Interno-Flag_Rewrite-Rewrite (1=SI)
,	MOB_REWRITE	DECIMAL	(11,0)	--Input-Bureau Interno-MOB_Rewrite-Antiguedad rewrite
,	RC_WRITE_OFF	DECIMAL	(11,0)	--Input-Bureau Interno-RC_Write_Off-Perdida RC
,	SOB_WRITE_OFF	DECIMAL	(11,0)	--Input-Bureau Interno-SOB_Write_Off-Perdida SOB
,	SUMACUOTAS_TARJETAS_COBIS	DECIMAL	(28,6)	--Input-Bureau Interno-SumaCuotas_Tarjetas_COBIS-Sumatoria cuotas tarjetas de credito
,	SUMACUOTAS_HIPOTECAS_COBIS	DECIMAL	(28,6)	--Input-Bureau Interno-SumaCuotas_Hipotecas_COBIS-Sumatoria cuotas hipotecartias
,	SUMACUOTAS_PERSONALES_COBIS	DECIMAL	(28,6)	--Input-Bureau Interno-SumaCuotas_Personales_COBIS-Sumatoria cuotas creditos personales
,	TIPOEMPRESA	VARCHAR	(255)	--Input-Bureau Interno-TipoEmpresa-Marcacion de tipo de empresa
,	FLAG_ORO	DECIMAL	(11,0)	--Input-Bureau Interno-Flag_Oro-Oro (1=SI)
,	FLAG_PEP	DECIMAL	(11,0)	--Input-Bureau Interno-Flag_PEP-PEP (1=SI)
,	FLAG_EXTRANJERO	DECIMAL	(11,0)	--Input-Bureau Interno-Flag_Extranjero-Extranjero (1=SI)
,	FLAG_CREDOMATIC	DECIMAL	(11,0)	--Input-Bureau Interno-Flag_Credomatic-Refinancia tarjeta de Credomatic (1=SI)
,	FLAG_AFP_ELECTRONICO	DECIMAL	(11,0)	--Input-Bureau Interno-Flag_AFP_Electronico-Identifica si el cliente debe presentar el documento NUP
,	REASONCODE	VARCHAR	(255)	--Internal-Main-ReasonCode-Motivo de rechazo; utilizada para alimentar ReasonCodes
,	AUX2	DECIMAL	(11,0)	--Internal-Main-Aux2-Para facilitar un cálculo
,	PREVIOUS_REASONCODE	VARCHAR	(255)	--Internal-Main-Previous_ReasonCode-Variable interna para facilitar el cálculo de otras variables
,	AUX	DECIMAL	(11,0)	--Internal-Main-aux-Facilitador de calculos
,	CUOTASINTERNAS_COBIS	DECIMAL	(28,6)	--Internal-Main-CuotasInternas_COBIS-Sumatoria de 3 tipos de cuotas distintas de acurdo a COBIS
,	TARGET_MARKET	VARCHAR	(255)	--Decision-Main-Target_Market-Segmentos de la población por nivel económico
,	FLAG_PLANILLERO	DECIMAL	(11,0)	--Decision-Main-Flag_Planillero-Flag que indica si cliente es Planillero
,	FLAG_HIT	DECIMAL	(11,0)	--Decision-Main-Flag_Hit-0 = no hit, 1 = hit
,	PROGRAMA	VARCHAR	(255)	--Decision-Main-Programa-Programa
,	LIMITE_PCCD_SSF	DECIMAL	(28,6)	--Decision-Main-Limite_PCCD_SSF-Límite tarjeta crédito con la competencia según info de SSF
,	FLAG_XS	DECIMAL	(11,0)	--Decision-Main-Flag_XS-Indicador de Cros sell
,	REASONCODES	VARCHAR	(255)	--Decision-Main-ReasonCodes-Motivos de rechazo
,	FLAG_PCCD	DECIMAL	(11,0)	--Decision-Main-Flag_PCCD-Indicador de PCCD
,	CAP_MUE	DECIMAL	(28,6)	--Decision-Main-CAP_MUE-Tope máximo
,	MUE_DISPUESTO	DECIMAL	(28,6)	--Decision-Main-MUE_Dispuesto-Máxima exposición excluyendo las hipotecas
,	DEBT_BURDEN_INICIAL_SSF	DECIMAL	(28,6)	--Decision-Main-Debt_Burden_Inicial_SSF-Gastos financieros como porcentaje de los ingresos mensuales
,	DEBT_BURDEN_FINAL	DECIMAL	(28,6)	--Decision-Main-Debt_Burden_Final-Gastos financieros como porcentaje de los ingresos mensuales, incluyendo el crédito solicitado
,	MULTIPLICADOR	DECIMAL	(28,6)	--Decision-Main-Multiplicador-Multiplicador utilizado al definir los límites
,	LINEA_MAXIMA	DECIMAL	(28,6)	--Decision-Main-Linea_Maxima-Línea Máxima dadas ciertas características
,	MUE_DISPONIBLE	DECIMAL	(28,6)	--Decision-Main-MUE_Disponible-Disponible excluyendo hipotecario
,	LIMMAXLOGO	DECIMAL	(28,6)	--Decision-Main-LimMaxLogo-Límite máximo dado el Logo de la primera tarjeta
,	LIMMINLOGO	DECIMAL	(28,6)	--Decision-Main-LimMinLogo-Límite mínimo dado el Logo de la primera tarjeta
,	LINEA_TIMESINCOME	DECIMAL	(28,6)	--Decision-Main-Linea_TimesIncome-Línea en función de los ingresos
,	LINEA_DISPDEBTBURDEN	DECIMAL	(28,6)	--Decision-Main-Linea_DispDebtBurden-Línea en función del Debt Burden
,	LINEADISPMUE	DECIMAL	(28,6)	--Decision-Main-LineaDispMUE-Línea en función del DispMUE
,	LINEA_CAP_PRODUCTO	DECIMAL	(28,6)	--Decision-Main-Linea_CAP_Producto-Línea en función de la "Linea_Maxima"
,	LIMITE_NUEVA_LINEA	DECIMAL	(28,6)	--Decision-Main-Limite_Nueva_Linea-El menor límite entre 4 distintas formas de calcular el límite
,	EMPLEADO_CUSCATLAN	DECIMAL	(11,0)	--Decision-Main-Empleado_Cuscatlan-En función del Source Code
,	LINEAMINIMA	DECIMAL	(28,6)	--Decision-Main-LineaMinima-Línea en función del programa
,	FLAG_NORMALSALES	DECIMAL	(11,0)	--Decision-Main-Flag_NormalSales-Crédito "regular"
,	EXPCREDITICIA_ALL	DECIMAL	(11,0)	--Decision-Main-ExpCrediticia_All-Experiencia crediticia para los trabajadores independientes
,	EXPPCCD_ALL	DECIMAL	(11,0)	--Decision-Main-ExpPCCD_All-Experiencia crediticia para los empleados
,	LIMITE_PCCD_EQFX	DECIMAL	(28,6)	--Decision-Main-Limite_PCCD_EQFX-Límite tarjeta crédito con la competencia según info de Equifax
,	LIMITE_PCCD	DECIMAL	(28,6)	--Decision-Main-Limite_PCCD-Mayor límite entre los limites calculados en base a  SSF y Equifax
,	EMPLEO_EMPRESA	VARCHAR	(255)	--Decision-Main-Empleo_Empresa-De acuerdo a condición laboral y empleador
,	GASTOS_NUEVA_LINEA	DECIMAL	(28,6)	--Decision-Main-Gastos_Nueva_Linea-Estimación del gasto financierio del crédito analizado
,	LIMMAXLOGO2	DECIMAL	(28,6)	--Decision-Main-LimMaxLogo2-Límite máximo dado el Logo de la segunda tarjeta
,	LIMMINLOGO2	DECIMAL	(28,6)	--Decision-Main-LimMinLogo2-Límite mínimo dado el Logo de la segunda tarjeta
,	CAP_DB	DECIMAL	(28,6)	--Decision-Main-CAP_DB-Porcentaje máximo de los ingresos mensuales destinado a pagar gastos financieros
,	DEBT_BURDEN_FINAL_SSF	DECIMAL	(28,6)	--Decision-Main-Debt_Burden_Final_SSF-Gastos financieros, incluyendo el crédito analizado, como porcentaje de los ingresos mensuales
,	LIMITEFINAL_LINEA1	DECIMAL(28,6) DEFAULT 0		--Decision-Main-LimiteFinal_Linea1-Límite final del Logo1
,	LIMITEFINAL_LINEA2	DECIMAL(28,6) DEFAULT 0		--Decision-Main-LimiteFinal_Linea2-Límite final del Logo2
,	CAPACIDADEDEUDAMIENTOMENSUAL	DECIMAL	(28,6)	--Decision-Main-CapacidadEdeudamientoMensual-Cuanto puede pagar por mes para el crédito analizado, dados el ingreso mensual, el porcentaje que puede destinar a gastos financieros, y los actuales gastos financieros
,	DEBT_BURDEN_INICIAL_ALL	DECIMAL	(28,6)	--Decision-Main-Debt_Burden_Inicial_All-Porcentaje de los ingresos que el solicitante destina a pagar cuotas de créditos
,	DEBT_BURDEN_FINAL_ALL	DECIMAL	(28,6)	--Decision-Main-Debt_Burden_Final_All-Porcentaje de los ingresos que el solicitante destina a pagar cuotas de créditos, incluyendo el crédito evaluado
,	TASA_X_LOGO	DECIMAL	(28,6)	--Decision-Main-Tasa_x_logo-Tasa de interés asociada a cada tipo de logo
,	MUE_FINAL2	DECIMAL	(28,6)	--Decision-Main-MUE_Final2-MUE incluyendo crédito evaluado; valuado luego del RAC2
,	MUE_FINAL3	DECIMAL	(28,6)	--Decision-Main-MUE_Final3-MUE incluyendo crédito evaluado; valuado luego del RAC3
,	PERFIL_DOCUMENTACION	VARCHAR	(255)	--Decision-Main-Perfil_Documentacion-Perfiles de solicitantes para documentar
,	DOCUMENTACION	VARCHAR	(255)	--Decision-Main-Documentacion-Documentación que debe presentar y/0 firmar el solicitante
,	ESTRATEGIA_AUTENTICACION	VARCHAR	(255)	--Decision-Main-Estrategia_Autenticacion-Estrategia para autenticar
,	PRODUCTO_AUTENTICACION	VARCHAR	(255)	--Decision-Main-Producto_Autenticacion-Producto en función de Flag_Oro y el Programa
,	UMBRAL_SOLICITADO	VARCHAR	(255)	--Decision-Main-Umbral_Solicitado-Preguntas que debe responder correctamente para autenticar
,	VERIFICAR_IDENTIDAD	VARCHAR	(255)	--Decision-Main-Verificar_Identidad-Indica si debe verificar la identidad (Si o No)
,	CODIGO_DOC	VARCHAR	(255)	--Decision-Main-Codigo_Doc-Abreviarura de 3 letras de la Documentacion
,	INGRESO_INFERIDO_EQFX	DECIMAL	(28,6)	--Decision-Main-Ingreso_Inferido_EQFX-Ingreso inferido en ase a datos de Equifax
,	FLAG_GARANTIZADA	DECIMAL	(11,0)	--Decision-Main-Flag_garantizada-Crédito garantizado
,	DEBE_CONSULTAR_EQUIFAX	VARCHAR	(255)	--Decision-Main-Debe_Consultar_Equifax-Verifica si es necesario consultar o no Equifax
,	FLAG_TIGO	DECIMAL	(11,0)	--Decision-Main-Flag_TIGO-Indicador de TIGO
,	INGRESO_VERIFICADO	DECIMAL	(28,6)	--Decision-Main-Ingreso_Verificado-Para documentacion TIGO
,	MODELO_VERIFICADO	VARCHAR	(255)	--Decision-Main-Modelo_Verificado-Para documentacion TIGO
,	SYSTEMDATE	DATE		-----
,	SYSTEMTIME	VARCHAR	(255)	--System-Main-SystemTime-
,	CLIENTSYSTEM	VARCHAR	(255)	--System-Main-ClientSystem-
,	CLIENTTCPIP	VARCHAR	(255)	--System-Main-ClientTCPIP-
,	USUARIO	VARCHAR	(255)	--System-Main-User-
,	RETURNSYSTEMBLOCK	DECIMAL	(11,0)	--System-Main-ReturnSystemBlock-
,	RETURNINPUTBLOCK	DECIMAL	(11,0)	--System-Main-ReturnInputBlock-
,	RETURNINTERNALBLOCK	DECIMAL	(11,0)	--System-Main-ReturnInternalBlock-
,	RETURNDECISIONBLOCK	DECIMAL	(11,0)	--System-Main-ReturnDecisionBlock-
,	APPLICATIONNUMBER	VARCHAR	(255)	--System-Main-ApplicationNumber-
,	FINALSTATUS	VARCHAR	(255)	--System-Main-FinalStatus-
,	SYSTEMID	VARCHAR	(255)	--System-Main-SystemId-
,	SYSTEMCULTURE	VARCHAR	(255)	--System-Main-SystemCulture-
,	ENGINERELEASE	VARCHAR	(255)	--System-Main-EngineRelease-
,	WRITEDECISIONHISTORY	VARCHAR(255) DEFAULT  'Y'		--System-Main-WriteDecisionHistory-
,	STEPBYSTEP	VARCHAR(255) DEFAULT  'N'		--System-Main-StepByStep-
,	ERROR1	DECIMAL(11,0) DEFAULT 0		--System-Main-Error1-
,	ERROR2	DECIMAL(11,0) DEFAULT 0		--System-Main-Error2-
,	ERROR3	DECIMAL(11,0) DEFAULT 0		--System-Main-Error3-
,	ERROR4	DECIMAL(11,0) DEFAULT 0		--System-Main-Error4-
,	CHAMPCHALL50_50	DECIMAL	(28,6)	--System-Champion Challenger-ChampChall50_50-En forma aleatoria el 50% va por un lado y el otro 50% por otro lado
,	CHAMPCHALL90_10	DECIMAL	(28,6)	--System-Champion Challenger-ChampChall90_10-En forma aleatoria el 90% va por un lado y el 10% por otro lado
,	LOAD_DATE	DATE default getdate()		-----
,	FILENAME	VARCHAR	(1000)	-----
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
,	NUMREFACT_REFI	DECIMAL	(11,0)	DEFAULT 0 --Numero de referencias tipo producto refinanciamiento en Bucket actual
,	NUMREFACT_SOBR	DECIMAL	(11,0)	DEFAULT 0 --Numero de referencias tipo producto sobregiro en Bucket actual
,	NUMREFACT_CARDS	DECIMAL	(11,0)	DEFAULT 0 --Numero de referencias tipo producto tarjeta en Bucket actual
,	NUMREFACT_HIPO	DECIMAL	(11,0)	DEFAULT 0 --Numero de referencias tipo producto hipoteca en Bucket actual
,	NUMREFACT_PIL	DECIMAL	(11,0)	DEFAULT 0 --Numero de referencias tipo producto PIL en Bucket actual
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
,	REFINANCIAMIENTO	DECIMAL	(28,6)	DEFAULT 0 --
,	SOBREGIRO	DECIMAL	(28,6)	DEFAULT 0 --
,	REFERENCIAS_CASTIGADAS	DECIMAL	(11,0)	--
,	MAX_CARDS_UTIL	DECIMAL	(28,6)	--
,	NRO_SOLICITUD	VARCHAR	(255)	--
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
,	SYSTEMDATE	DATE		--
,	LOAD_DATE	DATE default getdate()		--
,	FILENAME	VARCHAR	(1000)	--
); COMMIT;	 	 		

DROP TABLE IF EXISTS "STG_SAT"."CUS_ADM_MOE" 
COMMIT;
CREATE TABLE IF NOT EXISTS "STG_SAT"."CUS_ADM_MOE"(
	"name" VARCHAR(1024) NULL ,
	"name_1" VARCHAR(1024) NULL ,
	"id" VARCHAR(1024) NULL ,
	"v" VARCHAR(1024) NULL ,
	"DI_FILENAME" VARCHAR(100) 
);
COMMIT;

DROP TABLE IF EXISTS "STG_SAT"."CUS_ADM_SCORE";  
COMMIT;

DROP TABLE IF EXISTS "STG_SAT"."CUS_ADM_SCORE" 
COMMIT;

CREATE TABLE IF NOT EXISTS "STG_SAT"."CUS_ADM_SCORE"(
	"name" VARCHAR(1024) NULL,
	"name_1" VARCHAR(1024) NULL,
	"id" VARCHAR(1024) NULL,
	"v" VARCHAR(1024) NULL,
	"DI_FILENAME" VARCHAR(100)
);
commit;

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
,@OBJECT_NAME = 'CUS_ADM_MOE'
,@OBJECT_USER = 'SAT'
,@VERSION_COMMIT = '275db7b1a2c31073d0f0b1d3a1faecdd08cb87f5'
,@VERSION_CODE = '275db7b'
,@VERSION_DATE = 'May 1, 2019 12:24:56 PM'
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
,@OBJECT_NAME = 'CUS_ADM_MOE'
,@VERSION_COMMIT = '324967d5faf083a1ff1e39ea7b581499d757fcd9'
,@VERSION_CODE = '324967d'
,@VERSION_DATE = 'April 8, 2019 1:52:52 PM'
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

