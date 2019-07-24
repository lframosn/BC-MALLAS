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


### BC_CL_COB_HIPOTECAS
server=$3,$4
archivo=$5/BC_CL_COB_HIPOTECAS.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT * FROM BC_CL_COB_HIPOTECAS;" -o$archivo -s "~"  -W -k -h -1 -b
