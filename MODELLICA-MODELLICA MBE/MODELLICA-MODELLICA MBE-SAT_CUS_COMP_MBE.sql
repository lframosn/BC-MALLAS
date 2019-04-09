drop table IF EXISTS SAT.CUS_COMP_MBE;  CREATE TABLE IF NOT EXISTS SAT.CUS_COMP_MBE  ( 	SYSTEMDATE	DATE		--SYSTEMDATE
,	SYSTEMTIME	VARCHAR	(255)	--SYSTEMTIME
,	CLIENTSYSTEM	VARCHAR	(255)	--CLIENTSYSTEM
,	CLIENTTCPIP	VARCHAR	(255)	--CLIENTTCPIP
,	COMP_USER	VARCHAR	(255)	--USER
,	RETURNSYSTEMBLOCK	DECIMAL	(11,0)	--RETURNSYSTEMBLOCK
,	RETURNINPUTBLOCK	DECIMAL	(11,0)	--RETURNINPUTBLOCK
,	RETURNINTERNALBLOCK	DECIMAL	(11,0)	--RETURNINTERNALBLOCK
,	RETURNDECISIONBLOCK	DECIMAL	(11,0)	--RETURNDECISIONBLOCK
,	APPLICATIONNUMBER	VARCHAR	(255)	--APPLICATIONNUMBER
,	FINALSTATUS	VARCHAR	(255)	--FINALSTATUS
,	SYSTEMID	VARCHAR	(255)	--SYSTEMID
,	SYSTEMCULTURE	VARCHAR	(255)	--SYSTEMCULTURE
,	ENGINERELEASE	VARCHAR	(255)	--ENGINERELEASE
,	WRITEDECISIONHISTORY	VARCHAR	(255)	--WRITEDECISIONHISTORY
,	STEPBYSTEP	VARCHAR	(255)	--STEPBYSTEP
,	ERROR1	DECIMAL	(11,0)	--ERROR1
,	ERROR2	DECIMAL	(11,0)	--ERROR2
,	ERROR3	DECIMAL	(11,0)	--ERROR3
,	ERROR4	DECIMAL	(11,0)	--ERROR4
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
,	CUENTA	VARCHAR	(255)	--CUENTA
,	PAN	VARCHAR	(255)	--PAN
,	NUMCLI	VARCHAR	(255)	--NUMCLI
,	REFI_36M	DECIMAL	(11,0)	--Ha tenido un refinanciamiento los ultimos 36 meses?
,	NUM_TARJETAS	DECIMAL	(11,0)	--Numero de tarjetas del cliente
,	PDTOPEN	DATE		--fecha apertura de cuenta performance period
,	DPD_RETAIL_PDTS	DECIMAL	(11,0)	--Days Past Due in all Retail Products
,	AGE	DECIMAL	(11,0)	--Age in years
,	MONTHSSINCELASTCLI	DECIMAL	(11,0)	--Months Since Last CLI
,	UNSEC_RETAIL_PRODS_IND	DECIMAL	(11,0)	--Unsec_Retail_Prods_Ind
,	MOBRETAIL	DECIMAL	(11,0)	--MOB Retail
,	CRLINEUTILIZATION	DECIMAL	(11,0)	--Credit Line utilization %
,	SUMCRLIMITSDOMINLOGIC	DECIMAL	(28,6)	--Sum CrLimit Domin logi
,	SCORE_ADM_BC	DECIMAL	(28,6)	--Score de adquisicion en BC
,	CUOTA_SSF	DECIMAL	(28,6)	--Cuota externa SSF
,	CUOTA_INTERNA	DECIMAL	(28,6)	--Cuota Interna BC
,	INGRESO_VALIDADO	DECIMAL	(28,6)	--Ingreso Validado BC
,	INGRESO_NO_VALIDADO	DECIMAL	(28,6)	--Ingreso no validado BC
,	INGRESO_INFERIDO	DECIMAL	(28,6)	--Ingreso Inferido
,	FLAG_TM_AB_6MOB	VARCHAR	(255)	--Validacion de programa NS en los ultimos 6 meses
,	FLAG_UNIFICACIONES	VARCHAR	(255)	--Cuenta con CLI por unificacion menor a 6meses
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
,	VINTAGE_JUNE_2010_FLAG	DECIMAL	(11,0)	--VINTAGE_JUNE_2010_FLAG
,	INCOME	DECIMAL	(28,6)	--INCOME
,	VISA_LINE	DECIMAL	(28,6)	--VISA_LINE
,	VISA_BALANCE	DECIMAL	(28,6)	--VISA_BALANCE
,	MC_LINE	DECIMAL	(28,6)	--MC_LINE
,	MC_BALANCE	DECIMAL	(28,6)	--MC_BALANCE
,	RW_CC_BALANCE	DECIMAL	(28,6)	--RW_CC_BALANCE
,	IL_CC_BALANCE	DECIMAL	(28,6)	--IL_CC_BALANCE
,	RC_LINE	DECIMAL	(28,6)	--RC_LINE
,	RC_BALANCE	DECIMAL	(28,6)	--RC_BALANCE
,	EXTRA_BALANCE	DECIMAL	(28,6)	--EXTRA_BALANCE
,	IL_BALANCE	DECIMAL	(28,6)	--IL_BALANCE
,	RW_BALANCE	DECIMAL	(28,6)	--RW_BALANCE
,	OD_LINE	DECIMAL	(28,6)	--OD_LINE
,	OD_BALANCE	DECIMAL	(28,6)	--OD_BALANCE
,	AUTO_BALANCE	DECIMAL	(28,6)	--AUTO_BALANCE
,	DDA_OVERLIMIT	DECIMAL	(28,6)	--DDA_OVERLIMIT
,	VAREXTRA3	DECIMAL	(28,6)	--VAREXTRA3
,	TM	VARCHAR	(255)	--TM
,	FILLERT1	VARCHAR	(255)	--FILLERT1
,	FILLERT2	VARCHAR	(255)	--FILLERT2
,	FILLERT3	VARCHAR	(255)	--FILLERT3
,	FILLERT4	VARCHAR	(255)	--FILLERT4
,	FILLERT5	VARCHAR	(255)	--FILLERT5
,	FILLERT6	VARCHAR	(255)	--FILLERT6
,	FILLERT7	VARCHAR	(255)	--FILLERT7
,	FILLERT8	VARCHAR	(255)	--FILLERT8
,	FILLERT9	VARCHAR	(255)	--FILLERT9
,	FILLERT10	VARCHAR	(255)	--FILLERT10
,	FILLERT11	VARCHAR	(255)	--FILLERT11
,	FILLERT12	VARCHAR	(255)	--FILLERT12
,	FILLERT13	VARCHAR	(255)	--FILLERT13
,	FILLERT14	VARCHAR	(255)	--FILLERT14
,	FILLERT15	VARCHAR	(255)	--FILLERT15
,	FILLERD1	DATE		--FILLERD1
,	FILLERD2	DATE		--FILLERD2
,	FILLERD3	DATE		--FILLERD3
,	FILLERD4	DATE		--FILLERD4
,	FILLERD5	DATE		--FILLERD5
,	FILLERC1	DECIMAL	(28,6)	--FILLERC1
,	FILLERC2	DECIMAL	(28,6)	--FILLERC2
,	FILLERC3	DECIMAL	(28,6)	--FILLERC3
,	FILLERC4	DECIMAL	(28,6)	--FILLERC4
,	FILLERC5	DECIMAL	(28,6)	--FILLERC5
,	FILLERC6	DECIMAL	(28,6)	--FILLERC6
,	FILLERC7	DECIMAL	(28,6)	--FILLERC7
,	FILLERC8	DECIMAL	(28,6)	--FILLERC8
,	FILLERC9	DECIMAL	(28,6)	--FILLERC9
,	FILLERC10	DECIMAL	(28,6)	--FILLERC10
,	FILLERC11	DECIMAL	(28,6)	--FILLERC11
,	FILLERC12	DECIMAL	(28,6)	--FILLERC12
,	FILLERC13	DECIMAL	(28,6)	--FILLERC13
,	FILLERC14	DECIMAL	(28,6)	--FILLERC14
,	FILLERC15	DECIMAL	(28,6)	--FILLERC15
,	FILLERI1	DECIMAL	(11,0)	--FILLERI1
,	FILLERI2	DECIMAL	(11,0)	--FILLERI2
,	FILLERI3	DECIMAL	(11,0)	--FILLERI3
,	FILLERI4	DECIMAL	(11,0)	--FILLERI4
,	FILLERI5	DECIMAL	(11,0)	--FILLERI5
,	FILLERI6	DECIMAL	(11,0)	--FILLERI6
,	FILLERI7	DECIMAL	(11,0)	--FILLERI7
,	FILLERI8	DECIMAL	(11,0)	--FILLERI8
,	FILLERI9	DECIMAL	(11,0)	--FILLERI9
,	FILLERI10	DECIMAL	(11,0)	--FILLERI10
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
,	INGRESO	DECIMAL	(28,6)	--Ingreso seleccionado
,	CUOTA_DISPONIBLE	DECIMAL	(28,6)	--Cuota disponible por endeudamiento
,	LINEA_DB_EXTRA	DECIMAL	(28,6)	--Oferta maxima Extra por endeudamiento
,	SCORE_CURRENT	DECIMAL	(11,0)	--Score
,	MUE_DISPONIBLE	DECIMAL	(28,6)	--MUE Diponible
,	MUE_DISPUESTO	DECIMAL	(28,6)	--MUE Dispuesto
,	SCENARIO_RECHAZO	VARCHAR	(255)	--Motivo de rechazo
,	LISTA_RECHAZO	VARCHAR	(255)	--lista concatenada todos los rechazos
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
,	COMP_DELTA	DECIMAL	(28,6)	--Importe a incrementar al limite actual 
,   LOAD_DATE datetime NULL DEFAULT getdate()
); COMMIT;	 	 		
