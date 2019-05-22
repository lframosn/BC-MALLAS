##/********************************************************
##  * files.sh                                             *
##  *                                                      *
##  * Author:  Jaime Ascencio | Gyssa                      *
##  *                                                      *
##  * Purpose:  Mueve de ubicacion archivos a procesados   *
##  *                                                      *
##  * Usage: Y3JlYWRvOjI0MDgyMDE4/B64                      *
##  *      JOB_LOAD_FILESNAMES                             *
##  ********************************************************/



cd $1
ls -I procesados -I listadoArchivos.txt | grep -v sh > listadoArchivos.txt
for file in $(cat listadoArchivos.txt); do mv "$file" procesados/; done

