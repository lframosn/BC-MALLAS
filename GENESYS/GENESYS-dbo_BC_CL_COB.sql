drop table IF EXISTS dbo.BC_CL_COB;  
CREATE TABLE IF NOT EXISTS dbo.BC_CL_COB (
	RECORD_ID INTEGER NULL,
	CONTACT_INFO VARCHAR(128) NULL,
	CONTACT_INFO_TYPE INTEGER NULL,
	RECORD_TYPE INTEGER NULL,
	RECORD_STATUS INTEGER NULL,
	CALL_RESULT INTEGER NULL,
	ATTEMPT INTEGER NULL,
	DIAL_SCHED_TIME INTEGER NULL,
	CALL_TIME INTEGER NULL,
	DAILY_FROM INTEGER NULL,
	DAILY_TILL INTEGER NULL,
	TZ_DBID INTEGER NULL,
	CAMPAIGN_ID INTEGER NULL,
	AGENT_ID VARCHAR(32) NULL,
	CHAIN_ID INTEGER NULL,
	CHAIN_N INTEGER NULL,
	GROUP_ID INTEGER NULL,
	APP_ID INTEGER NULL,
	TREATMENTS VARCHAR(255) NULL,
	MEDIA_REF INTEGER NULL,
	EMAIL_SUBJECT VARCHAR(255) NULL,
	EMAIL_TEMPLATE_ID INTEGER NULL,
	SWITCH_ID INTEGER NULL,
	BC_COB_ACCT_NUM VARCHAR(19) NULL,
	BC_COB_ADDRESS_BUS_LINE1 VARCHAR(35) NULL,
	BC_COB_ADDRESS_BUS_LINE2 VARCHAR(35) NULL,
	BC_COB_ADDRESS_LINE1 VARCHAR(35) NULL,
	BC_COB_ADDRESS_LINE2 VARCHAR(35) NULL,
	BC_COB_ADDRESS_LINE3 VARCHAR(35) NULL,
	BC_COB_AMNA_SS VARCHAR(18) NULL,
	BC_COB_BALANCE_AT_RISK FLOAT NULL,
	BC_COB_BEHAVIORAL_SCORE VARCHAR(3) NULL,
	BC_COB_CARDS_CUST_ID VARCHAR(19) NULL,
	BC_COB_CURRENT_BALANCE FLOAT NULL,
	BC_COB_CURRENT_DUE_AMT FLOAT NULL,
	BC_COB_CUST_TYPE VARCHAR(4) NULL,
	BC_COB_CUSTOMER_CITY VARCHAR(30) NULL,
	BC_COB_CUSTOMER_INFO_NUMBER VARCHAR(30) NULL,
	BC_COB_CUSTOMER_NAME VARCHAR(45) NULL,
	BC_COB_CUSTOMER_STATE VARCHAR(2) NULL,
	BC_COB_CYCLES_DELINQUENCY INTEGER NULL,
	BC_COB_DPD INTEGER NULL,
	BC_COB_LAST_ACTIVITY_DATE VARCHAR(8) NULL,
	BC_COB_LAST_PAYMENT_DATE VARCHAR(8) NULL,
	BC_COB_MONTHS_ON_BOOK INTEGER NULL,
	BC_COB_OPEN_DATE VARCHAR(8) NULL,
	BC_COB_OVERLIMIT_AMT FLOAT NULL,
	BC_COB_POSTAL_CODE VARCHAR(9) NULL,
	BC_COB_RESPONSIBLE_COLL VARCHAR(4) NULL,
	BC_COB_TOTAL_DELINQ_AMT FLOAT NULL,
	BC_COB_TOTAL_DUE_AMOUNT FLOAT NULL,
	BC_COB_FUNCTIONAL_AREA VARCHAR(1) NULL,
	BC_COB_STATE_CODE VARCHAR(2) NULL,
	BC_COB_LOCATION_CODE VARCHAR(6) NULL,
	BC_COB_DISPOSITION VARCHAR(50) NULL,
	BC_COB_C1 VARCHAR(25) NULL,
	BC_COB_C2 VARCHAR(25) NULL,
	BC_COB_C3 VARCHAR(25) NULL,
	LOAD_DATE TIMESTAMP NULL
);

; COMMIT;	 	 		