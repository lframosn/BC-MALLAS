##/********************************************************           
##  * files.sh		                                   *   
##  *                                                      *   
##  * Author:  Jaime Ascencio | Gyssa                      *   
##  *                                                      *   
##  * Purpose:  Generar un archivo listando todos los      *
##              archivo cuyo nombre inicie con dri         *   
##  *                                                      *   
##  * Usage: Y3JlYWRvOjI0MDgyMDE4/B64                      *   
##  *      JOB_LOAD_FILESNAMES		                   *   
##  ********************************************************/ 


cd /data/SAT/mallas/
ls *.* -I listadoArchivos.txt -I *.gz > listadoArchivos.txt

