#!/bin/bash
##/********************************************************
##  * sentinel.sh                                          *
##  *                                                      *
##  * Author:  Luis Ramos     | Gyssa                      *
##  *                                                      *
##  * Purpose:  Genera archivos intermedios para la        *
##              extraccion de la informacion de sentinel   *
##  *                                                      *
##  * Usage: Y3JlYWRvOjIwMTkwMzE1/B64                      *
##  *      JOB_SENTINEL                                    *
##  ********************************************************/

#Parametros
#%1 = usuario
#%2 = password
#%3 = servidor sentinel
#$4 = puerto
#%5 = ruta de salida
cd /data/SAT/genesys/
rm BC_*.txt


### BC_CL_COB_MORA1_BP
server=$3,$4
archivo=$5/BC_CL_COB_MORA1_BP.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA1_BP;" -o$archivo -s "~"  -W -k -h -1 -b


### BC_CL_COB_MORA1_HB
server=$3,$4
archivo=$5/BC_CL_COB_MORA1_HB.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA1_HB;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA1_HR
server=$3,$4
archivo=$5/BC_CL_COB_MORA1_HR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA1_HR;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA1_LR
server=$3,$4
archivo=$5/BC_CL_COB_MORA1_LR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA1_LR;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA2_HB_HR
server=$3,$4
archivo=$5/BC_CL_COB_MORA2_HB_HR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA2_HB_HR;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA2_BP
server=$3,$4
archivo=$5/BC_CL_COB_MORA2_BP.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA2_BP;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA2_HB_HR
server=$3,$4
archivo=$5/BC_CL_COB_MORA2_HB_HR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA2_HB_HR;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA2_MB_MR
server=$3,$4
archivo=$5/BC_CL_COB_MORA2_MB_MR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA2_MB_MR;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA3_BP
server=$3,$4
archivo=$5/BC_CL_COB_MORA3_BP.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA3_BP;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA3_HB
server=$3,$4
archivo=$5/BC_CL_COB_MORA3_HB.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA3_HB;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA3_SB
server=$3,$4
archivo=$5/BC_CL_COB_MORA3_SB.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA3_SB;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA3_SR
server=$3,$4
archivo=$5/BC_CL_COB_MORA3_SR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA3_SR;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_MORA3_VHR
server=$3,$4
archivo=$5/BC_CL_COB_MORA3_VHR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT record_id,contact_info,contact_info_type,record_type,record_status,call_result,attempt,dial_sched_time,call_time,daily_from,daily_till,tz_dbid,campaign_id,agent_id,chain_id,chain_n,group_id,app_id,treatments,media_ref,email_subject,email_template_id,switch_id,BC_COB_ACCT_NUM,BC_COB_ADDRESS_BUS_LINE1,BC_COB_ADDRESS_BUS_LINE2,BC_COB_ADDRESS_LINE1,BC_COB_ADDRESS_LINE2,BC_COB_ADDRESS_LINE3,BC_COB_AMNA_SS,BC_COB_BALANCE_AT_RISK,BC_COB_BEHAVIORAL_SCORE,BC_COB_CARDS_CUST_ID,BC_COB_CURRENT_BALANCE,BC_COB_CURRENT_DUE_AMT,BC_COB_CUST_TYPE,BC_COB_CUSTOMER_CITY,BC_COB_CUSTOMER_INFO_NUMBER,BC_COB_CUSTOMER_NAME,BC_COB_CUSTOMER_STATE,BC_COB_CYCLES_DELINQUENCY,BC_COB_DPD,BC_COB_LAST_ACTIVITY_DATE,BC_COB_LAST_PAYMENT_DATE,BC_COB_MONTHS_ON_BOOK,BC_COB_OPEN_DATE,BC_COB_OVERLIMIT_AMT,BC_COB_POSTAL_CODE,BC_COB_RESPONSIBLE_COLL,BC_COB_TOTAL_DELINQ_AMT,BC_COB_TOTAL_DUE_AMOUNT,BC_COB_FUNCTIONAL_AREA,BC_COB_STATE_CODE,BC_COB_LOCATION_CODE,BC_COB_DISPOSITION,BC_COB_C1,BC_COB_C2,BC_COB_C3 FROM BC_CL_COB_MORA3_VHR;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_PREVENT_BP
server=$3,$4
archivo=$5/BC_CL_COB_PREVENT_BP.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT * FROM BC_CL_COB_PREVENT_BP;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_PREVENT_HB
server=$3,$4
archivo=$5/BC_CL_COB_PREVENT_HB.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT *  FROM BC_CL_COB_PREVENT_HB;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_PREVENT_HR
server=$3,$4
archivo=$5/BC_CL_COB_PREVENT_HR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT * FROM BC_CL_COB_PREVENT_HR;" -o$archivo -s "~"  -W -k -h -1 -b

### BC_CL_COB_PREVENT_LR
server=$3,$4
archivo=$5/BC_CL_COB_PREVENT_LR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT *  FROM BC_CL_COB_PREVENT_LR;" -o$archivo -s "~"  -W -k -h -1 -b

### BP_CL_COB_PREVENT_MR
server=$3,$4
archivo=$5/BC_CL_COB_PREVENT_MR.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT *  FROM BP_CL_COB_PREVENT_MR;" -o$archivo -s "~"  -W -k -h -1 -b
