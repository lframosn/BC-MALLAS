01	TBCODBLQ.			
		02	CODENT 	PIC X(4).
		02	CODBLQ 	PIC 9(2) COMP-3.
		02	DESBLQ 	PIC X(30).
		02	DESBLQRED 	PIC X(10).
		02	INDAPLEMISOR 	PIC X(1).
		02	CODBLQSIA 	PIC X(2).
		02	INDBLQOPE 	PIC X(1).
		02	INDNOREN 	PIC 9(1) COMP-3.
		02	INDENVRED 	PIC X(1).
		02	INDGENCUO 	PIC X(1).
		02	INDBONCUO 	PIC X(1).
		02	INDBLQCON 	PIC X(1).
		02	INDBLQLIQ 	PIC X(1).
		02	PESO 	PIC 9(2) COMP-3.
		02	INDREVER 	PIC X(1).
		02	INDREEM 	PIC X(1).
		02	INDCMBPAN 	PIC X(1).
		02	INDLIQDEU 	PIC X(1).
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).


01	TBBLQCTA.			
		02	CODENT 	PIC X(4).
		02	CENTALTA 	PIC X(4).
		02	CUENTA 	PIC X(12).
		02	CODBLQ 	PIC 9(2) COMP-3.
		02	FECULTBLQ 	PIC X(10).
		02	TEXBLQ  	PIC X(30).
		02	INDBLQEXT 	PIC X(1).
		02	MOTBLQ 	PIC 9(2) COMP-3.
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).


01	TBHISMOD.			
		02	CODENT_ENC	PIC X(4).
		02	OFICINA	PIC X(4).
		02	USUARIO	PIC X(8).
		02	TIPO_ACCION	PIC X(30).
		02	TIPO_REGISTRO	PIC X(1).
		02	CODENT 	PIC X(4).
		02	CENTALTA 	PIC X(4).
		02	CUENTA 	PIC X(12).
		02	NUMSECHIS 	PIC 9(15) COMP-3.
		02	PAN 	PIC X(22).
		02	CODCOM 	PIC X(15).
		02	FECHAMOD 	PIC X(10).
		02	HORAMOD 	PIC X(8).
		02	TIPACCES 	PIC 9(1) COMP-3.
		02	PROCESO 	PIC X(10).
		02	DESPROCESO 	PIC X(30).
		02	DATOMOD 	PIC X(2).
		02	MOTIVO 	PIC X(2).
		02	CANALMOD 	PIC X(2).
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).
		02	TABLA 	PIC X(3).
		02	REGANT 	PIC X(1024).
		02	REGACT 	PIC X(1024).
		02	FILLER1	PIC X(62).


01	TBINCINT.			
		02	CODENT 	PIC X(4).
		02	NUMINC 	PIC 9(9) COMP-3.
		02	NUMEXP 	PIC 9(9) COMP-3.
		02	CODREG 	PIC 9(2) COMP-3.
		02	NUMREFREM 	PIC 9(10) COMP-3.
		02	NUMREFFACREM 	PIC 9(5) COMP-3.
		02	INDAJENA 	PIC X(1).
		02	INDNORCOR 	PIC 9(1) COMP-3.
		02	TIPOFAC 	PIC 9(4) COMP-3.
		02	PAN 	PIC X(22).
		02	TIPFRAN 	PIC 9(4) COMP-3.
		02	SECOPE 	PIC 9(12) COMP-3.
		02	NUMREF 	PIC X(23).
		02	FECFAC 	PIC X(10).
		02	NUMAUT 	PIC X(6).
		02	NOMCOMRED 	PIC X(27).
		02	CODCOM 	PIC X(15).
		02	CODACT 	PIC 9(4) COMP-3.
		02	INDDEBCRE 	PIC 9(1) COMP-3.
		02	CLAMONDIV 	PIC 9(3) COMP-3.
		02	FECCMB 	PIC X(10).
		02	CMBAPLI 	PIC 9(5)V9999 COMP-3.
		02	IMPDIV 	PIC 9(15)V99 COMP-3.
		02	IMPLIQ 	PIC 9(15)V99 COMP-3.
		02	CLAMONLIQ 	PIC 9(3) COMP-3.
		02	POBCOM 	PIC X(24).
		02	FECALTAINC 	PIC X(10).
		02	TIPOINC 	PIC 9(3) COMP-3.
		02	MOTINC 	PIC 9(2) COMP-3.
		02	INDERROR 	PIC X(16).
		02	CODRAZ 	PIC 9(4) COMP-3.
		02	CODSOLINC 	PIC 9(2) COMP-3.
		02	TIPOSOL 	PIC 9(2) COMP-3.
		02	FECSOLINC 	PIC X(10).
		02	FECLIQ 	PIC X(10).
		02	CODFUNFRAN 	PIC 9(3) COMP-3.
		02	INDCHAPAR 	PIC X(1).
		02	CODACTESP 	PIC 9(4) COMP-3.
		02	MODOOBTAUT 	PIC X(2).
		02	TEXTOINICIO 	PIC X(60).
		02	NUMCINTA 	PIC 9(17) COMP-3.
		02	INDAPLCOM 	PIC X(1).
		02	INDAPLEXT 	PIC X(1).
		02	INDORIINC 	PIC X(1).
		02	INDANUL 	PIC X(1).
		02	INDRET 	PIC 9(1) COMP-3.
		02	FECCONTA 	PIC X(10).
		02	FECCONTASOL 	PIC X(10).
		02	INDINCPEN 	PIC X(1).
		02	CLAMON 	PIC 9(3) COMP-3.
		02	IMPFAC 	PIC 9(15)V99 COMP-3.
		02	FECPROCIN 	PIC X(10).
		02	CODSUBFRA 	PIC X(1).
		02	CODPAIS 	PIC 9(3) COMP-3.
		02	CODRAZCHA 	PIC 9(4) COMP-3.
		02	INDCOMINC 	PIC X(1).
		02	INDCOMPCUO 	PIC X(1).
		02	CODTIPC 	PIC X(4).
		02	TOTCUOTAS 	PIC 9(9) COMP-3.
		02	MESCARCUO 	PIC 9(2) COMP-3.
		02	PORINT 	PIC 9(3)V9999 COMP-3.
		02	SIAIDCD 	PIC X(19).
		02	NUMOPECUO 	PIC 9(6) COMP-3.
		02	CODTERM 	PIC X(16).
		02	LINREF 	PIC 9(8) COMP-3.
		02	FORPAGO 	PIC 9(2) COMP-3.
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).


01	TBFINCUO.			
		02	CODENT 	PIC X(4).
		02	CENTALTA 	PIC X(4).
		02	CUENTA 	PIC X(12).
		02	CLAMON 	PIC 9(3) COMP-3.
		02	CODTIPC 	PIC X(4).
		02	NUMOPECUO 	PIC 9(6) COMP-3.
		02	NUMFINAN 	PIC 9(3) COMP-3.
		02	PORINT  	PIC 9(3)V9999 COMP-3.
		02	TOTCUOTAS 	PIC 9(9) COMP-3.
		02	IMPCUOTA 	PIC 9(15)V99 COMP-3.
		02	NUMCUOPAG 	PIC 9(9) COMP-3.
		02	NUMMESFIN 	PIC X(12).
		02	IMPTOTAL 	PIC 9(15)V99 COMP-3.
		02	IMPINTTOTAL 	PIC 9(15)V99 COMP-3.
		02	IMPAMORT 	PIC 9(15)V99 COMP-3.
		02	IMPINTAMORT 	PIC 9(15)V99 COMP-3.
		02	FECULTLIQ 	PIC X(10).
		02	FECALTA 	PIC X(10).
		02	FECBAJA 	PIC X(10).
		02	MOTBAJA  	PIC X(2).
		02	NUMULTCUO  	PIC 9(9) COMP-3.
		02	INTCARPTE 	PIC 9(15)V99 COMP-3.
		02	ESTCONT 	PIC 9(1) COMP-3.
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).


01	TBDETCUO.			
		02	CODENT 	PIC X(4).
		02	CENTALTA 	PIC X(4).
		02	CUENTA 	PIC X(12).
		02	CLAMON 	PIC 9(3) COMP-3.
		02	NUMOPECUO 	PIC 9(6) COMP-3.
		02	NUMFINAN 	PIC 9(3) COMP-3.
		02	NUMCUOTA 	PIC 9(9) COMP-3.
		02	FECPROCUO 	PIC X(10).
		02	IMPCUOTA 	PIC 9(15)V99 COMP-3.
		02	IMPCAPITAL 	PIC 9(15)V99 COMP-3.
		02	IMPINTERESES 	PIC 9(15)V99 COMP-3.
		02	IMPIMPTO 	PIC 9(15)V99 COMP-3.
		02	ESTCUO 	PIC 9(2) COMP-3.
		02	FECLIQ 	PIC X(10).
		02	FECCONTA 	PIC X(10).
		02	ESTCONT 	PIC 9(1) COMP-3.
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).


01	TBTARJET.			
		02	CODENT 	PIC X(4).
		02	CODMAR 	PIC 9(2) COMP-3.
		02	INDTIPT 	PIC 9(2) COMP-3.
		02	CENTALTA 	PIC X(4).
		02	CUENTA 	PIC X(12).
		02	NUMBENCTA 	PIC 9(5) COMP-3.
		02	NUMPLASTICO  	PIC 9(12) COMP-3.
		02	TIPBON 	PIC X(6).
		02	PAN 	PIC X(22).
		02	PANANT 	PIC X(22).
		02	FECALTA 	PIC X(10).
		02	FECULTUSO 	PIC X(10).
		02	INDSITTAR 	PIC 9(2) COMP-3.
		02	INDULTTAR 	PIC X(2).
		02	INDNOREN 	PIC 9(1) COMP-3.
		02	CODBLQ 	PIC 9(2) COMP-3.
		02	FECULTBLQ 	PIC X(10).
		02	TEXBLQ 	PIC X(30).
		02	FECBAJA 	PIC X(10).
		02	MOTBAJA 	PIC X(2).
		02	FECCADTAR 	PIC 9(6) COMP-3.
		02	FECCADTARANT 	PIC 9(6) COMP-3.
		02	FECCOBCUO 	PIC 9(6) COMP-3.
		02	OFFSET1  	PIC 9(4) COMP-3.
		02	OFFSET2 	PIC 9(4) COMP-3.
		02	PVV1 	PIC X(4).
		02	PVV2  	PIC X(4).
		02	CODCLAVE 	PIC X(3).
		02	CODCLVANT 	PIC X(3).
		02	NUMACT1 	PIC 9(1) COMP-3.
		02	NUMACT2 	PIC 9(1) COMP-3.
		02	NUMANT1 	PIC 9(1) COMP-3.
		02	NUMANT2 	PIC 9(1) COMP-3.
		02	INDCAMLIM 	PIC X(1).
		02	INDACTLIM 	PIC X(1).
		02	INDRESACT 	PIC X(1).
		02	INDRESCOM 	PIC X(1).
		02	INDLIMFAC 	PIC X(1).
		02	VISAPHONE 	PIC 9(4) COMP-3.
		02	NUMKPIN 	PIC 9(2) COMP-3.
		02	IDEMPLEADO 	PIC X(20).
		02	NOMBENRED 	PIC X(35).
		02	INDFOTO 	PIC X(1).
		02	REFFOTO 	PIC X(30).
		02	CODBARR 	PIC 9(14) COMP-3.
		02	CODPROMO 	PIC X(3).
		02	INDEXECUO 	PIC X(1).
		02	INDTAREME 	PIC X(1).
		02	INDAPLIREST 	PIC X(1).
		02	INDTARPROV  	PIC X(1).
		02	INDTAREMV 	PIC 9(1) COMP-3.
		02	HORBLQ 	PIC X(8).
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).


01	TBPLASTI.			
		02	CODENT 	PIC X(4).
		02	CENTALTA 	PIC X(4).
		02	CUENTA 	PIC X(12).
		02	NUMPLASTICO  	PIC 9(12) COMP-3.
		02	FECENVEST 	PIC X(10).
		02	FECRECEST 	PIC X(10).
		02	FECACUSER 	PIC X(10).
		02	FECULTREN 	PIC X(10).
		02	FECRECTAR 	PIC X(10).
		02	FCORETTAR 	PIC X(10).
		02	HCORETTAR 	PIC X(8).
		02	CONDEST 	PIC X(3).
		02	ESTPLAS1 	PIC X(40).
		02	ESTPLAS2 	PIC X(40).
		02	RELTAR 	PIC X(70).
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).


01	TBPAGHIS.			
		02	CODENT 	PIC X(4).
		02	CENTALTA 	PIC X(4).
		02	CUENTA 	PIC X(12).
		02	NUMEXTPG 	PIC 9(15) COMP-3.
		02	NUMMOVPG 	PIC 9(7) COMP-3.
		02	CLAMON 	PIC 9(3) COMP-3.
		02	TIPDEU 	PIC X(2).
		02	TIPOLIN 	PIC X(4).
		02	TIPIMP 	PIC 9(2) COMP-3.
		02	INDNORCOR 	PIC 9(1) COMP-3.
		02	NUMREFAPL 	PIC 9(15) COMP-3.
		02	IMPSALDIS 	PIC 9(15)V99 COMP-3.
		02	IMPAPL 	PIC 9(15)V99 COMP-3.
		02	IMPRECAPL 	PIC 9(15)V99 COMP-3.
		02	NUMSECREC 	PIC 9(15) COMP-3.
		02	IMPAPLAPL 	PIC 9(15)V99 COMP-3.
		02	FECAPL 	PIC X(10).
		02	NUMORDEN 	PIC 9(3) COMP-3.
		02	TIPOLINORI 	PIC X(4).
		02	TIPIMPORI 	PIC 9(2) COMP-3.
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).


01	TBCONGEL.			
		02	CODENT 	PIC X(4).
		02	CENTALTA 	PIC X(4).
		02	CUENTA 	PIC X(12).
		02	NUMSECIMP	PIC 9(15) COMP-3.
		02	CLAMON 	PIC 9(3) COMP-3.
		02	IMPORTE 	PIC 9(15)V99 COMP-3.
		02	IMPORTETOT 	PIC 9(15)V99 COMP-3.
		02	IMPAPL 	PIC 9(15)V99 COMP-3.
		02	FECALTA 	PIC X(10).
		02	FECULTAPL 	PIC X(10).
		02	FECBAJA 	PIC X(10).
		02	MOTBAJA 	PIC 9(2) COMP-3.
		02	NUMULTMOV 	PIC 9(7) COMP-3.
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).


01	TBCUOMEM.			
		02	CODENT	PIC X(4).
		02	CENTALTA	PIC X(4).
		02	CUENTA	PIC X(12).
		02	NUMBENCTA	PIC 9(5) COMP-3.
		02	FECALTA	PIC X(10).
		02	CODMAR	PIC 9(2) COMP-3.
		02	INDTIPT	PIC 9(2) COMP-3.
		02	FECCARGO	PIC X(10).
		02	CODENTUMO	PIC X(4).
		02	CODOFIUMO	PIC X(4).
		02	USUARIOUMO	PIC X(8).
		02	CODTERMUMO	PIC X(8).
		02	CONTCUR	PIC X(26).


01	TBMEDENV_ECTA.			
		02	CODENT	PIC X(4).
		02	CENTALTA	PIC X(4).
		02	CUENTA	PIC X(12).
		02	MEDIOENVIO	PIC X(2).
		02	EMAIL	PIC X(30).
		02	FECBAJA	PIC X(10).
		02	CODOFIABO	PIC X(4).
		02	DESCOFABOG	PIC X(30).
		02	CODVIAJFRE	PIC X(25).
		02	FECALTAVIAJ	PIC X(10).
		02	INDCLICUMM	PIC X(1).
		02	INDCLICUMC	PIC X(1).
		02	FECCLICUM	PIC X(10).
		02	CLASIFRISAT	PIC X(2).
		02	CLASIFRIREG	PIC X(2).
		02	CLASIFRIMDE	PIC 9(5) COMP-3.
		02	TASAEFECMAX	PIC 9(3)V9999 COMP-3.
		02	REFEXTCONTR	PIC X(25).
		02	CONPRODT	PIC X(3).
		02	FECCETINI	PIC X(10).
		02	FECCETFIN	PIC X(10).
		02	CONPRODO	PIC X(3).
		02	TASAFINAN	PIC 9(3)V9999 COMP-3.
		02	CODENTUMO	PIC X(4).
		02	CODOFIUMO	PIC X(4).
		02	USUARIOUMO	PIC X(8).
		02	CODTERMUMO	PIC X(8).
		02	CONTCUR	PIC X(26).


01	TBCONBUS.			
		02	CODENT 	PIC X(4).
		02	CENTALTA 	PIC X(4).
		02	CUENTA 	PIC X(12).
		02	CODBUS 	PIC 9(8) COMP-3.
		02	CODELEMENTO 	PIC 9(4) COMP-3.
		02	TIPROLCUENTA 	PIC X(1).
		02	FECALTA 	PIC X(10).
		02	FECBAJA 	PIC X(10).
		02	CODENTUMO 	PIC X(4).
		02	CODOFIUMO 	PIC X(4).
		02	USUARIOUMO 	PIC X(8).
		02	CODTERMUMO 	PIC X(8).
		02	CONTCUR 	PIC X(26).
