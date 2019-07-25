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
rm TLV_*.txt


### TLV_BC_React_Especial
server=$3,$4
archivo=$5/TLV_BC_React_Especial.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT * from BC_React_Especial;" -o$archivo -s "~"  -W -k -h -1 -b

### TLV_BC_Reactivaciones_A
server=$3,$4
archivo=$5/TLV_BC_Reactivaciones_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from BC_Reactivaciones_A;" -o$archivo -s "~"  -W -k -h -1 -b

### TLV_BC_Reactivaciones_B
server=$3,$4
archivo=$5/TLV_BC_Reactivaciones_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from BC_Reactivaciones_B;" -o$archivo -s "~"  -W -k -h -1 -b


### TLV_BC_TLV_TC_Dedicados_All
server=$3,$4
archivo=$5/TLV_BC_TLV_TC_Dedicados_All.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from BC_TLV_TC_Dedicados_All;" -o$archivo -s "~"  -W -k -h -1 -b

### TLV_BC_TLV_TC_Multi_All
server=$3,$4
archivo=$5/TLV_BC_TLV_TC_Multi_All.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from BC_TLV_TC_Multi_All;" -o$archivo -s "~"  -W -k -h -1 -b

### TLV_BC_TLV_XTR_Multi_All
server=$3,$4
archivo=$5/TLV_BC_TLV_XTR_Multi_All.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from BC_TLV_XTR_Multi_All;" -o$archivo -s "~"  -W -k -h -1 -b

### TLV_CETE_PIL_GOB_TUP
server=$3,$4
archivo=$5/TLV_CETE_PIL_GOB_TUP.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from CETE_PIL_GOB_TUP;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_CETE_PIL_GOB_TUP_B
server=$3,$4
archivo=$5/TLV_CETE_PIL_GOB_TUP_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from CETE_PIL_GOB_TUP_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_CETE_PIL_Gobierno
server=$3,$4
archivo=$5/TLV_CETE_PIL_Gobierno.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from CETE_PIL_Gobierno;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_CETE_PIL_Pruebas
server=$3,$4
archivo=$5/TLV_CETE_PIL_Pruebas.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from CETE_PIL_Pruebas;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_Lista_BALCON_A
server=$3,$4
archivo=$5/TLV_Lista_BALCON_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from Lista_BALCON_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_Lista_BALCON_B
server=$3,$4
archivo=$5/TLV_Lista_BALCON_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from Lista_BALCON_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_Lista_BALCON_B
server=$3,$4
archivo=$5/TLV_Lista_BALCON_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from Lista_BALCON_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_Lista_de_la_Muerte
server=$3,$4
archivo=$5/TLV_Lista_de_la_Muerte.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from Lista_de_la_Muerte;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_Lista_XSELL_CORE
server=$3,$4
archivo=$5/TLV_Lista_XSELL_CORE.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from Lista_XSELL_CORE;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_Lista_XSELL_CORE_B
server=$3,$4
archivo=$5/TLV_Lista_XSELL_CORE_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from Lista_XSELL_CORE_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_BVSEGUROS_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_BVSEGUROS_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_BVSEGUROS_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_BVSEGUROS_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_BVSEGUROS_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_BVSEGUROS_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA01_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA01_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA01_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA01_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA01_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA01_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA02_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA02_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA02_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA02_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA02_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA02_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA03_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA03_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA03_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA03_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA03_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA03_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA04_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA04_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA04_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA04_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA04_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA04_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA05_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA05_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA05_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA05_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA05_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA05_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA06_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA06_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA06_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_EXTRA06_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_EXTRA06_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_EXTRA06_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_METROS2DAS_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_METROS2DAS_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_METROS2DAS_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_METROS2DAS_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_METROS2DAS_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_METROS2DAS_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_SELECTOS_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_SELECTOS_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_SELECTOS_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_SELECTOS_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_SELECTOS_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_SELECTOS_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_TLMK1_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_TLMK1_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_TLMK1_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_TLMK1_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_TLMK1_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_TLMK1_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_TLMK2_A
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_TLMK2_A.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_TLMK2_A;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_SV_BC_TLV_TLMK2_B
server=$3,$4
archivo=$5/TLV_SV_BC_TLV_TLMK2_B.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from SV_BC_TLV_TLMK2_B;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_TLV_EXTRA01_NA
server=$3,$4
archivo=$5/TLV_TLV_EXTRA01_NA.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from TLV_EXTRA01_NA;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_TLV_EXTRA02_NA
server=$3,$4
archivo=$5/TLV_TLV_EXTRA02_NA.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from TLV_EXTRA02_NA;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_TLV_EXTRA03_NA
server=$3,$4
archivo=$5/TLV_TLV_EXTRA03_NA.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from TLV_EXTRA03_NA;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_TLV_EXTRA04_NA
server=$3,$4
archivo=$5/TLV_TLV_EXTRA04_NA.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from TLV_EXTRA04_NA;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_EXTRA05_NA
server=$3,$4
archivo=$5/TLV_EXTRA05_NA.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from TLV_EXTRA05_NA;" -o$archivo -s "~"  -W -k -h -1 -b
### TLV_TLV_TLMK05_NA
server=$3,$4
archivo=$5/TLV_TLV_TLMK05_NA.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; select * from TLV_TLMK05_NA;" -o$archivo -s "~"  -W -k -h -1 -b