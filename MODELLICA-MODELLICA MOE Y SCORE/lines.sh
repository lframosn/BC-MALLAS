##/********************************************************
##  * files.sh                                             *
##  *                                                      *
##  * Author:  Mario Valdez | Gyssa                        *
##  *                                                      *
##  * Purpose:  recibe un archivo que resumen n            *
##		transacciones en formato xml y este es     *
##		divido en xml individuales                 *
##  *                                                      *
##  * Usage:                                               *
##  *      JOB_LOAD_FILESNAMES_MDE                         *
##  ********************************************************/



archivoMOE=DecHistory_cus_adm.dat
archivodestinoMOE=MOEDecHistory_cus_adm.dat
archivoSCO=DecHistory_cus_adm_score.dat
archivodestinoSCO=SCODecHistory_cus_adm_score.dat

cd /data/SAT/mde

#### procesamiento MOE

if ls $archivoMOE* 1> /dev/null 2>&1; then
  ls $archivoMOE* | while read moe; do
    if ls MOE${moe}*.xml 1> /dev/null 2>&1; then
      rm MOE${moe}*.xml ;
    fi
  done;
fi

if ls $archivoMOE* 1> /dev/null 2>&1; then
  ls $archivoMOE* | while read moe; do
  split -l1 -e -d -a 6 ${moe} MOE${moe}- ;
  done;
fi

if ls $archivoMOE* 1> /dev/null 2>&1; then
  if ls $archivodestinoMOE* 1> /dev/null 2>&1; then
    ls $archivodestinoMOE* | while read f; do mv ./${f} ./${f}.xml; done;
  fi
fi

if ls $archivoMOE* 1> /dev/null 2>&1; then
 ls $archivoMOE* | while read moe; do
  ./moveFiles.sh ${moe} ;
  done;
fi

#### procesamiento SCORE

if ls $archivoSCO* 1> /dev/null 2>&1; then
  ls $archivoSCO* | while read sco; do
    if ls SCO${sco}*.xml 1> /dev/null 2>&1; then
      rm SCO${sco}*.xml ;
    fi
  done;
fi

if ls $archivoSCO* 1> /dev/null 2>&1; then
  ls $archivoSCO* | while read sco; do
  split -l1 -e -d -a 6 ${sco} SCO${sco}- ;
  done;
fi

if ls $archivoSCO* 1> /dev/null 2>&1; then
  if ls $archivodestinoSCO* 1> /dev/null 2>&1; then
    ls $archivodestinoSCO* | while read f; do mv ./${f} ./${f}.xml; done;
  fi
fi

if ls $archivoSCO* 1> /dev/null 2>&1; then
 ls $archivoSCO* | while read sco; do
  ./moveFiles.sh ${sco} ;
  done;
fi

