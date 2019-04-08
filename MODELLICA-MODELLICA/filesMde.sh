##/********************************************************           
##  * filesMde.sh		                           *   
##  *                                                      *   
##  * Author:  Mario Valdez | Gyssa                        *   
##  *                                                      *   
##  * Purpose:  Generar un archivo listando todos los      * 
##              archivo cuyo nombre incluya .xml           *   
##  *                                                      *   
##  * Usage:                    			   *   
##  *      JOB_LOAD_FILESNAMES_MDE                         *   
##  ********************************************************/ 


cd /data/SAT/mde
  ls -I listadoArchivos.txt -I All.xml *.xml > listadoArchivosXML.txt
