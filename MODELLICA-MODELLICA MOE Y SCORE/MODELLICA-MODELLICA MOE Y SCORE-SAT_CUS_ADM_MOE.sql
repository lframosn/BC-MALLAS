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
