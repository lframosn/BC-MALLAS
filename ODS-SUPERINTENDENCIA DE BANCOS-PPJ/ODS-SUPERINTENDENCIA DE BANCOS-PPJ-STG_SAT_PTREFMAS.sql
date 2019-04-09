DROP TABLE IF EXISTS "STG_SAT"."PTREFMAS";
DROP TABLE IF EXISTS "STG"."PTREFMAS";

drop table IF EXISTS STG_SAT.PTREFMAS;  CREATE TABLE IF NOT EXISTS STG_SAT.PTREFMAS  ( 	MIS_DATE 	DATE		--FECHA DE CORTE DE LA INFORMACIÓN 
--LISTADO REFIN MASTER	 	 		
,	DW_ACCT_NBR 	VARCHAR	(24)	--NUMERO DE LA CUENTA REFINANCIADORA 
,	DW_ORG 	DECIMAL	(4,0)	--CODIGO DE ENTIDAD 
,	DW_LOGO 	DECIMAL	(4,0)	--CODIGO DE SUBPRODUCTO 
,	DW_REL_NBR 	VARCHAR	(24)	--NUMERO UNICO 
,	DW_ACCT_TYPE 	VARCHAR	(1)	--IDENTIFICADOR DEL TIPO DE CUENTA 
,	DW_OPEN_DATE 	DATE		--FECHA DE OTORGAMIENTO 
,	DW_CLOSE_DATE 	DATE		--FECHA DE VENCIMIENTO 
,	DW_ORG_ACCT_NBR 	VARCHAR	(24)	--NUMERO DE CUENTA ORIGINAL (REFINANCIADA) 
,	DW_ORG_ACCT_DPD 	DECIMAL	(5,0)	--NUMERO ORIGNAL DE DPD (DIAS DE MORA) 
,	DW_ORG_ACCT_PRIN 	DECIMAL	(11,2)	--SALDO CAPITAL DE LA CUENTA REFINANCIADA 
,	DW_ORG_ACCT_INT 	DECIMAL	(11,2)	--SALDO DE INTERESES DE LA CUENTA REFINANCIADA 
,	DW_CYCLE_DUE 	DECIMAL	(2,0)	--CICLO DE LA CUENTA 
,	DW_DAYS_PAST_DUE 	DECIMAL	(5,0)	--DIAS DE MORA 
,	DW_DELQ_HISTORY 	VARCHAR	(24)	--HISTORICO DE MORA 
,	DW_NEW_ACCT_IND 	VARCHAR	(1)	--INDICADOR DE NUEVA CUENTA 
,	DW_LOAN_MOB 	DECIMAL	(5,0)	--MESES EN LIBROS 
,	MH_LOAN_AMT 	DECIMAL	(11,2)	--MONTO ORIGINAL 
,	MH_LOAN_DATE 	DATE		--FECHA OTORGAMIENTO 
,	MH_EFF_TENOR 	DECIMAL	(5,0)	--NUMERO DE CUOTAS 
,	MH_OUTST_BAL 	DECIMAL	(11,2)	--SALDO PENDIENTE 
,	MH_OUTST_TENOR 	DECIMAL	(5,0)	--CUOTAS PENDIENTES 
,	MH_BILLED_INSTALL 	DECIMAL	(3,0)	--NÚMERO DE CUOTAS FACTURADAS 
,	MH_BILLED_INT 	DECIMAL	(11,2)	--MONTO DE INTERÉS FACTURADO 
,	MH_BILLED_PRIN 	DECIMAL	(11,2)	--MONTO DE CAPITAL FACTURADO 
,	DW_INT_PAID_MTH 	DECIMAL	(11,2)	--SALDO MENSUAL DE INTERESES PAGADOS 
,	DW_PRIN_PAID_MTH 	DECIMAL	(11,2)	--SALDO MENSUAL DE CAPITAL PAGADO 
,	DW_TOT_INT_PAID 	DECIMAL	(11,2)	--TOTAL INTESES PAGADO 
,	DW_TOT_PRIN_PAID 	DECIMAL	(11,2)	--TOTAL CAPITAL PAGADO 
,	DT_NEW_INT_DEF 	DECIMAL	(11,2)	--SALDO INTERES DIFERIDO CALCULADO DEL MES 
,	DT_INT_DEF_AMT 	DECIMAL	(11,2)	--INTERESES DIFERIDOS PAGADOS EN EL MES 
,	DT_INT_DEF_BAL 	DECIMAL	(11,2)	--INTERES DIFERIDO DEL MES 
,	DT_INT_DEF_BAL_PREV 	DECIMAL	(11,2)	--INTERES DIFERIDO MES ANTERIOR 
,	DT_OWN_DPD_FLAG 	VARCHAR	(1)	--BANDERA PARA IDENTIFICAR CUENTA SIN MORA EN LOS ULTIMOS 6 MESES 
,	DT_RISK_CALIFICATION 	VARCHAR	(10)	--CATEGORIA DE RIESGO 
,	DW_LEGAL_VEHICLE 	VARCHAR	(3)	--VEHICULO LEGAL 
,	DW_PAYMENT_HISTORY 	VARCHAR	(1)	--HISTORICO DE PAGOS 
,	DW_REFIN_FLAG 	VARCHAR	(2)	--IDENTIFICADOR DE REFINANCIAMIENTO 
,	DW_BS_USER_DATE_4 	DATE		--FECHA DE USER4 
,	HB_FH_AMT_PMTS_01 	DECIMAL	(11,2)	--ÚLTIMA CANTIDAD DE PAGO DEL ESTADO DE CUENTA 
,	HB_FH_TOT_AMT_DUE_02 	DECIMAL	(11,2)	--PAGO MINIMO 
,	PT_MT_AMOUNT 	DECIMAL	(11,2)	-- MONTO PAGADO EN EL PERÍODO DE GRACIA 
,	DW_BS_CURR_BAL 	DECIMAL	(11,2)	--SALDO ACTUAL  
,	DW_BS_LAST_PYMT_DUE 	DATE		--FECHA VENCIMIENTO DE ULTIMO ESTADO DE CUENTA 
,	DT_PAYOFF_FLAG 	VARCHAR	(1)	--BANDERA DEL PAGO COMPLETO 
,	DW_BS_AMT_OUTST_EPP 	DECIMAL	(11,2)	--SALDO DEL EXTRAFINANCIAMIENTO 
,	DW_BS_ALOP_OUTST_BAL 	DECIMAL	(11,2)	--SALDO DEL INTRAFINANCIAMIENTO 
,	DW_SALDO_TOTAL  	DECIMAL	(11,2)	--SALDO TOTAL DE LA CUENTA 
,	DW_CUS_TYPE     	VARCHAR	(24)	--TIPO DE CLIENTE  
,	DW_CUS_SEGMENT  	VARCHAR	(30)	--SEGMENTO DE CLIENTE 
,	LOAD_DATE	DATE null default getdate()		--FECHA DE CARGA
); COMMIT;	 	 		