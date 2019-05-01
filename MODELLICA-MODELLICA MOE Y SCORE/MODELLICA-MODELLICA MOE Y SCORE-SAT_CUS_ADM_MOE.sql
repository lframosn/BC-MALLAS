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
,	MISMA_EMPRESA	DECIMAL	(11,0)	--Input-Main-Misma_Empresa-“0” = no es la misma empresa: “1” = es la misma empresa
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
