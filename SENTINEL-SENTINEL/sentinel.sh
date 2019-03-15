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


#bash
#Parametros
#%1 = usuario
#%2 = password
#%3 = servidor sentinel
#$4 = puerto
#%5 = ruta de salida

### SSS_Estado
server=$3,$4
archivo=$5/SQLESTADOS.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0  -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT Id_Estado,Tipo,Descripcion,Nivel,Estado_Final,Privilegio_Oficial FROM Sentinel_CR.dbo.SSS_Estado;" -o$archivo -s "~" -W -k -h -1 -b

### SSS_Caso
### /opt/mssql-tools/bin/sqlcmd
archivo=$5/SQLCASOS.txt
cd /opt/mssql-tools/bin/
./sqlcmd-13.0.1.0 -S$3,$4 -U$1 -P$2 -Q "set nocount on; SELECT Id_Caso, Numero_Cliente, Descripcion, Id_Estado, Fecha_Ingreso, Fecha_Inicio, Fecha_Cierre, Fecha_Auditoria, Usuario_Creacion, Usuario_Seguimiento, Proxima_Accion, Codigo_Oficial, Id_Estado_Web, Nivel_Rev, Accion_Rev, Monto_Salvado, Cod_Grupo_Trab, Tipo, Id_Calculo, Oficial_Cuenta_asignado, Fecha_Vencimiento FROM Sentinel_CR.dbo.SSS_Caso;" -o$archivo -s "~"  -W -k -h -1 -b


