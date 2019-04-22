drop proc IF EXISTS SAT.SP_AUTORIZACIONES;
commit;
create proc SAT.SP_AUTORIZACIONES
 @OPERACION CHAR(1) DEFAULT 'V'
,@FECENVIO DATE DEFAULT NULL
,@FECENVIOFIN DATE DEFAULT NULL
as
BEGIN
/*
declare @OPERACION CHAR(1) 
,@FECENVIO DATE 
,@FECENVIOFIN DATE 

select @OPERACION = 'V'
*/
DECLARE 
 @FECHA_INI DATE
,@FECHA_FIN DATE
,@FECHA_INICIO_SATDWH DATE 

create TABLE #AUTORIZACIONES (
 IDENTIFICADOR_EJECUCION  integer
,CODENT                   varchar(4)
,TIPOMSGON                varchar(4)
,CODPROON                 decimal(6,0)
,SIAIDCD                  varchar(19)
,PAN                      varchar(22)
,CODMAR                   decimal(2,0)
,INDTIPT                  decimal(2,0)
,INDDEBCRE                decimal(1,0)
,IMPTRN                   decimal(17,2)
,CLAMONTRN                decimal(3,0)
,IMPCCA                   decimal(17,2)
,CLAMONCCA                decimal(3,0)
,IMPDIV                   decimal(17,2)
,CLAMONDIV                decimal(3,0)
,FECTRN                   date
,HORTRN                   time
,CMBAPLI                  decimal(9,4)
,CODACT                   decimal(4,0)
,CODPAIS                  decimal(3,0)
,MODENTDAT                varchar(12)
,SESIONORI                varchar(12)
,SESIONSIA                varchar(7)
,IMPTASAS                 decimal(17,2)
,IDADQUIR                 varchar(11)
,CODRED                   varchar(11)
,NUMREFOPE                decimal(12,0)
,IDTERM                   varchar(16)
,CODCOM                   varchar(15)
,NOMCOM                   varchar(15)
,LOCALIDAD                varchar(15)
,RTSITD                   varchar(40)
,DATORI                   varchar(30)
,NUMAUT                   varchar(6)
,CODRESPU                 varchar(3)
,CODACCRED                decimal(3,0)
,TIPFRAN                  decimal(4,0)
,INDNORCOR                decimal(1,0)
,TIPOFAC                  decimal(4,0)
,INDPREAUT                decimal(1,0)
,INDCRUCE                 decimal(1,0)
,INDANUL                  decimal(1,0)
,INDRETSAL                varchar(1)
,IMPTRNCON                decimal(17,2)
,IMPAUTCON                decimal(17,2)
,CLAMONCON                decimal(3,0)
,FECCONTA                 date
,NUMRETSAL                decimal(10,0)
,IMPRETSAL                decimal(17,2)
,CLAMONRET                decimal(3,0)
,CENTALTA                 varchar(4)
,CUENTA                   varchar(12)
,IMPPROP                  decimal(17,2)
,ACCEMICRE                varchar(1)
,ACCEMIDEB                varchar(1)
,ACCMERCH                 varchar(1)
,INDPROINC                varchar(1)
,FECCADTAR                decimal(6,0)
,CALFRAUDE                varchar(3)
,NUMPASIVO                varchar(24)
,CODBLQFRA                varchar(2)
,TIPOLIN                  varchar(4)
,LINREF                   decimal(8,0)
,TIPOLIM                  varchar(1)
,FORPAGO                  decimal(2,0)
,RESOLUTOR                varchar(11)
,COMISION                 decimal(17,2)
,IMPUESTO                 decimal(17,2)
,CODENTUMO                varchar(4)
,CODOFIUMO                varchar(4)
,USUARIOUMO               varchar(8)
,CODTERMUMO               varchar(8)
,CONTCUR                  timestamp
,DATADI                   varchar(650)
,FECENVIO                 date
,NUMBENCTA                decimal(5,0)
,NUMPLASTICO              decimal(12,0)
,PAN1                     varchar(22)
,PANANT                   varchar(22)
,CODBLQ                   decimal(2,0)
,FECULTBLQ                date
,NUMKPIN                  decimal(2,0)
,VISAPHONE                decimal(4,0)
,INDTARPROV               varchar(1)
,CODBLQ1                  decimal(2,0)
,DESBLQ                   varchar(30)
,DESBLQRED                varchar(10)
,INDENVRED                varchar(1)
,CODBLQSIA                varchar(2)
,INDNOREN                 decimal(1,0)
,INDREVER                 varchar(1)
,INDCMBPAN                varchar(1)
,FECULTBLQ1               date
,TEXBLQ                   varchar(30)
,INDBLQEXT                varchar(1)
,MOTBLQ                   decimal(2,0)
,FECENVIO1                date
,CODESTCTA                decimal(2,0)
,GRUPOLIQ                 decimal(2,0)
)

IF EXISTS(SELECT 1 from sysobjects where name = 'TB_AUTORIZACIONES' AND user_name(uid) = 'SAT') AND @OPERACION = 'C'
BEGIN
  SELECT 
       IDENTIFICADOR_EJECUCION 
      ,CODENT                  
      ,TIPOMSGON               
      ,CODPROON                
      ,SIAIDCD                 
      ,PAN                     
      ,CODMAR                  
      ,INDTIPT                 
      ,INDDEBCRE               
      ,IMPTRN                  
      ,CLAMONTRN               
      ,IMPCCA                  
      ,CLAMONCCA               
      ,IMPDIV                  
      ,CLAMONDIV               
      ,FECTRN                  
      ,HORTRN                  
      ,CMBAPLI                 
      ,CODACT                  
      ,CODPAIS                 
      ,MODENTDAT               
      ,SESIONORI               
      ,SESIONSIA               
      ,IMPTASAS                
      ,IDADQUIR                
      ,CODRED                  
      ,NUMREFOPE               
      ,IDTERM                  
      ,CODCOM                  
      ,NOMCOM                  
      ,LOCALIDAD               
      ,RTSITD                  
      ,DATORI                  
      ,NUMAUT                  
      ,CODRESPU                
      ,CODACCRED               
      ,TIPFRAN                 
      ,INDNORCOR               
      ,TIPOFAC                 
      ,INDPREAUT               
      ,INDCRUCE                
      ,INDANUL                 
      ,INDRETSAL               
      ,IMPTRNCON               
      ,IMPAUTCON               
      ,CLAMONCON               
      ,FECCONTA                
      ,NUMRETSAL               
      ,IMPRETSAL               
      ,CLAMONRET               
      ,CENTALTA                
      ,CUENTA                  
      ,IMPPROP                 
      ,ACCEMICRE               
      ,ACCEMIDEB               
      ,ACCMERCH                
      ,INDPROINC               
      ,FECCADTAR               
      ,CALFRAUDE               
      ,NUMPASIVO               
      ,CODBLQFRA               
      ,TIPOLIN                 
      ,LINREF                  
      ,TIPOLIM                 
      ,FORPAGO                 
      ,RESOLUTOR               
      ,COMISION                
      ,IMPUESTO                
      ,CODENTUMO               
      ,CODOFIUMO               
      ,USUARIOUMO              
      ,CODTERMUMO              
      ,CONTCUR                 
      ,DATADI                  
      ,FECENVIO                
      ,NUMBENCTA               
      ,NUMPLASTICO             
      ,PAN1                    
      ,PANANT                  
      ,CODBLQ                  
      ,FECULTBLQ               
      ,NUMKPIN                 
      ,VISAPHONE               
      ,INDTARPROV              
      ,CODBLQ1                 
      ,DESBLQ                  
      ,DESBLQRED               
      ,INDENVRED               
      ,CODBLQSIA               
      ,INDNOREN                
      ,INDREVER                
      ,INDCMBPAN               
      ,FECULTBLQ1              
      ,TEXBLQ                  
      ,INDBLQEXT               
      ,MOTBLQ                  
      ,FECENVIO1               
      ,CODESTCTA               
      ,GRUPOLIQ                
   FROM #AUTORIZACIONES WHERE 1 = 2
  RETURN 0
END

SELECT @OPERACION = UPPER(@OPERACION)
IF @OPERACION NOT IN ('V','C','L','G','B') SELECT @OPERACION = 'V'
-- TIPOS DE OPERACION:
-- V: LEER LOS RESULTADOS DE LAS TABLAS BASE. LOS RESULTADOS NO SE ALMACENAN
--     SE LEE DE LAS TABLAS DIRECTAMENTE Y EL RESULTADO SE DESPLIEGA. 
--     DEPENDE DE LOS PARAMETROS DE FECHAS, SI NO SE ENVIAN LEE TODAS LAS FECHAS
-- C: CREAR LA ESTRUCTURA DE LA TABLA. 
--     NO TIENE OUTPUT DE RESULTADO. LA TABLA SE LLAMA TB_BALANCE_SALDOS_DIARIOS
-- L: LEER LOS RESULTADOS DE LA TABLA FIJA TB_BALANCE_SALDOS_DIARIOS. 
--     DEPENDE DE LOS PARAMETROS DE FECHAS, SI NO SE ENVIAN LEE TODAS LAS FECHAS
-- G: BORRA Y GRABA NUEVAMENTE EL LA TABLA TB_BALANCE_SALDOS_DIARIOS. SI NO EXISTE LA CREA
-- B: BORRA DE LA TABLA TB_BALANCE_SALDOS_DIARIOS. SI LA TABLA NO EXISTE NO DA ERROR
---------------------------------------------------------
-- SE DEBE CREAR EL SIGUIENTE PARAMETRO
--IF NOT EXISTS (SELECT 1 FROM CNF.PARAMETROS WHERE PARAMETRO = 'FECINISATDWH')
--insert CNF.PARAMETROS (PARAMETRO, VALOR) SELECT 'FECINISATDWH', '20190301'
-- LA FECHA DEBE SER EL VALOR CON EL QUE SE INICIA A CARGAR EL DWH DE SAT
---------------------------------------------------------
-- CONDICIONES DE FECHAS:
-- SI NO SE ENVIAN FECHAS SE TOMA INICIAL Y FINAL = 1 ENE 0001
-- SI NO SE ENVIA LA FECHA FINAL, LA FECHA FINAL SE IGUALA A LA FECHA INICIAL
-- SI LA FECHA INICIAL ES MAYOR A LA FINAL, LA FECHA FINAL SE IGUALA A LA FECHA INICIAL
-- SI LA FECHA INICIAL Y FINAL SON NULL (NO SE ENVIAN) SE TOMAN LOS RANGOS DEL 01 ENE 0001 AL 31 DIC 9999
---------------------------------------------------------
/****************
INDICES ASOCIADOS A LA VISTA:
-----------------------------
***********************/

IF @FECENVIO IS NULL
BEGIN
  SELECT @FECHA_INI = '00010101'
END
ELSE
BEGIN
  SELECT @FECHA_INI = @FECENVIO
END

IF @FECENVIOFIN IS NULL
BEGIN
  IF @FECENVIO IS NULL
    SELECT @FECHA_FIN = '99991231'
  ELSE  
    SELECT @FECHA_FIN = @FECHA_INI
END
ELSE
BEGIN
  SELECT @FECHA_FIN = @FECENVIOFIN
END
IF @FECHA_INI > @FECHA_FIN
  SELECT @FECHA_FIN = @FECHA_INI

if @OPERACION IN ('C','G','L') --  C = CREA ESTRUCTURA DE TABLA FIJA 
--- G = GRABA DATOS EN ESTRUCTURA DE TABLA FIJA.. SI LA TABLA NO EXISTE LA CREA..
--- L = LEE DATOS DE TABLA FIJA.. SI LA TABLA NO EXISTE LA CREA..
BEGIN
  IF NOT EXISTS(SELECT 1 from sysobjects where name = 'TB_AUTORIZACIONES' AND user_name(uid) = 'SAT')
  BEGIN
    SELECT  
       IDENTIFICADOR_EJECUCION 
      ,CODENT                  
      ,TIPOMSGON               
      ,CODPROON                
      ,SIAIDCD                 
      ,PAN                     
      ,CODMAR                  
      ,INDTIPT                 
      ,INDDEBCRE               
      ,IMPTRN                  
      ,CLAMONTRN               
      ,IMPCCA                  
      ,CLAMONCCA               
      ,IMPDIV                  
      ,CLAMONDIV               
      ,FECTRN                  
      ,HORTRN                  
      ,CMBAPLI                 
      ,CODACT                  
      ,CODPAIS                 
      ,MODENTDAT               
      ,SESIONORI               
      ,SESIONSIA               
      ,IMPTASAS                
      ,IDADQUIR                
      ,CODRED                  
      ,NUMREFOPE               
      ,IDTERM                  
      ,CODCOM                  
      ,NOMCOM                  
      ,LOCALIDAD               
      ,RTSITD                  
      ,DATORI                  
      ,NUMAUT                  
      ,CODRESPU                
      ,CODACCRED               
      ,TIPFRAN                 
      ,INDNORCOR               
      ,TIPOFAC                 
      ,INDPREAUT               
      ,INDCRUCE                
      ,INDANUL                 
      ,INDRETSAL               
      ,IMPTRNCON               
      ,IMPAUTCON               
      ,CLAMONCON               
      ,FECCONTA                
      ,NUMRETSAL               
      ,IMPRETSAL               
      ,CLAMONRET               
      ,CENTALTA                
      ,CUENTA                  
      ,IMPPROP                 
      ,ACCEMICRE               
      ,ACCEMIDEB               
      ,ACCMERCH                
      ,INDPROINC               
      ,FECCADTAR               
      ,CALFRAUDE               
      ,NUMPASIVO               
      ,CODBLQFRA               
      ,TIPOLIN                 
      ,LINREF                  
      ,TIPOLIM                 
      ,FORPAGO                 
      ,RESOLUTOR               
      ,COMISION                
      ,IMPUESTO                
      ,CODENTUMO               
      ,CODOFIUMO               
      ,USUARIOUMO              
      ,CODTERMUMO              
      ,CONTCUR                 
      ,DATADI                  
      ,FECENVIO                
      ,NUMBENCTA               
      ,NUMPLASTICO             
      ,PAN1                    
      ,PANANT                  
      ,CODBLQ                  
      ,FECULTBLQ               
      ,NUMKPIN                 
      ,VISAPHONE               
      ,INDTARPROV              
      ,CODBLQ1                 
      ,DESBLQ                  
      ,DESBLQRED               
      ,INDENVRED               
      ,CODBLQSIA               
      ,INDNOREN                
      ,INDREVER                
      ,INDCMBPAN               
      ,FECULTBLQ1              
      ,TEXBLQ                  
      ,INDBLQEXT               
      ,MOTBLQ                  
      ,FECENVIO1               
      ,CODESTCTA               
      ,GRUPOLIQ                
      INTO SAT.TB_AUTORIZACIONES 
      FROM #AUTORIZACIONES WHERE 1=2
    IF @OPERACION = 'L'
    BEGIN
      SELECT  
       IDENTIFICADOR_EJECUCION 
      ,CODENT                  
      ,TIPOMSGON               
      ,CODPROON                
      ,SIAIDCD                 
      ,PAN                     
      ,CODMAR                  
      ,INDTIPT                 
      ,INDDEBCRE               
      ,IMPTRN                  
      ,CLAMONTRN               
      ,IMPCCA                  
      ,CLAMONCCA               
      ,IMPDIV                  
      ,CLAMONDIV               
      ,FECTRN                  
      ,HORTRN                  
      ,CMBAPLI                 
      ,CODACT                  
      ,CODPAIS                 
      ,MODENTDAT               
      ,SESIONORI               
      ,SESIONSIA               
      ,IMPTASAS                
      ,IDADQUIR                
      ,CODRED                  
      ,NUMREFOPE               
      ,IDTERM                  
      ,CODCOM                  
      ,NOMCOM                  
      ,LOCALIDAD               
      ,RTSITD                  
      ,DATORI                  
      ,NUMAUT                  
      ,CODRESPU                
      ,CODACCRED               
      ,TIPFRAN                 
      ,INDNORCOR               
      ,TIPOFAC                 
      ,INDPREAUT               
      ,INDCRUCE                
      ,INDANUL                 
      ,INDRETSAL               
      ,IMPTRNCON               
      ,IMPAUTCON               
      ,CLAMONCON               
      ,FECCONTA                
      ,NUMRETSAL               
      ,IMPRETSAL               
      ,CLAMONRET               
      ,CENTALTA                
      ,CUENTA                  
      ,IMPPROP                 
      ,ACCEMICRE               
      ,ACCEMIDEB               
      ,ACCMERCH                
      ,INDPROINC               
      ,FECCADTAR               
      ,CALFRAUDE               
      ,NUMPASIVO               
      ,CODBLQFRA               
      ,TIPOLIN                 
      ,LINREF                  
      ,TIPOLIM                 
      ,FORPAGO                 
      ,RESOLUTOR               
      ,COMISION                
      ,IMPUESTO                
      ,CODENTUMO               
      ,CODOFIUMO               
      ,USUARIOUMO              
      ,CODTERMUMO              
      ,CONTCUR                 
      ,DATADI                  
      ,FECENVIO                
      ,NUMBENCTA               
      ,NUMPLASTICO             
      ,PAN1                    
      ,PANANT                  
      ,CODBLQ                  
      ,FECULTBLQ               
      ,NUMKPIN                 
      ,VISAPHONE               
      ,INDTARPROV              
      ,CODBLQ1                 
      ,DESBLQ                  
      ,DESBLQRED               
      ,INDENVRED               
      ,CODBLQSIA               
      ,INDNOREN                
      ,INDREVER                
      ,INDCMBPAN               
      ,FECULTBLQ1              
      ,TEXBLQ                  
      ,INDBLQEXT               
      ,MOTBLQ                  
      ,FECENVIO1               
      ,CODESTCTA               
      ,GRUPOLIQ                
    FROM SAT.TB_AUTORIZACIONES WHERE 1 = 2
      RETURN 0
    END
  END
  IF @OPERACION = 'C'
  BEGIN
     SELECT  
       IDENTIFICADOR_EJECUCION 
      ,CODENT                  
      ,TIPOMSGON               
      ,CODPROON                
      ,SIAIDCD                 
      ,PAN                     
      ,CODMAR                  
      ,INDTIPT                 
      ,INDDEBCRE               
      ,IMPTRN                  
      ,CLAMONTRN               
      ,IMPCCA                  
      ,CLAMONCCA               
      ,IMPDIV                  
      ,CLAMONDIV               
      ,FECTRN                  
      ,HORTRN                  
      ,CMBAPLI                 
      ,CODACT                  
      ,CODPAIS                 
      ,MODENTDAT               
      ,SESIONORI               
      ,SESIONSIA               
      ,IMPTASAS                
      ,IDADQUIR                
      ,CODRED                  
      ,NUMREFOPE               
      ,IDTERM                  
      ,CODCOM                  
      ,NOMCOM                  
      ,LOCALIDAD               
      ,RTSITD                  
      ,DATORI                  
      ,NUMAUT                  
      ,CODRESPU                
      ,CODACCRED               
      ,TIPFRAN                 
      ,INDNORCOR               
      ,TIPOFAC                 
      ,INDPREAUT               
      ,INDCRUCE                
      ,INDANUL                 
      ,INDRETSAL               
      ,IMPTRNCON               
      ,IMPAUTCON               
      ,CLAMONCON               
      ,FECCONTA                
      ,NUMRETSAL               
      ,IMPRETSAL               
      ,CLAMONRET               
      ,CENTALTA                
      ,CUENTA                  
      ,IMPPROP                 
      ,ACCEMICRE               
      ,ACCEMIDEB               
      ,ACCMERCH                
      ,INDPROINC               
      ,FECCADTAR               
      ,CALFRAUDE               
      ,NUMPASIVO               
      ,CODBLQFRA               
      ,TIPOLIN                 
      ,LINREF                  
      ,TIPOLIM                 
      ,FORPAGO                 
      ,RESOLUTOR               
      ,COMISION                
      ,IMPUESTO                
      ,CODENTUMO               
      ,CODOFIUMO               
      ,USUARIOUMO              
      ,CODTERMUMO              
      ,CONTCUR                 
      ,DATADI                  
      ,FECENVIO                
      ,NUMBENCTA               
      ,NUMPLASTICO             
      ,PAN1                    
      ,PANANT                  
      ,CODBLQ                  
      ,FECULTBLQ               
      ,NUMKPIN                 
      ,VISAPHONE               
      ,INDTARPROV              
      ,CODBLQ1                 
      ,DESBLQ                  
      ,DESBLQRED               
      ,INDENVRED               
      ,CODBLQSIA               
      ,INDNOREN                
      ,INDREVER                
      ,INDCMBPAN               
      ,FECULTBLQ1              
      ,TEXBLQ                  
      ,INDBLQEXT               
      ,MOTBLQ                  
      ,FECENVIO1               
      ,CODESTCTA               
      ,GRUPOLIQ                
    FROM SAT.TB_AUTORIZACIONES WHERE 1 = 2
     RETURN 0
  END
END -- 'C'

IF @OPERACION = 'L' -- LEE DATOS DE LA TABLA FIJA
BEGIN
  SELECT 
       IDENTIFICADOR_EJECUCION 
      ,CODENT                  
      ,TIPOMSGON               
      ,CODPROON                
      ,SIAIDCD                 
      ,PAN                     
      ,CODMAR                  
      ,INDTIPT                 
      ,INDDEBCRE               
      ,IMPTRN                  
      ,CLAMONTRN               
      ,IMPCCA                  
      ,CLAMONCCA               
      ,IMPDIV                  
      ,CLAMONDIV               
      ,FECTRN                  
      ,HORTRN                  
      ,CMBAPLI                 
      ,CODACT                  
      ,CODPAIS                 
      ,MODENTDAT               
      ,SESIONORI               
      ,SESIONSIA               
      ,IMPTASAS                
      ,IDADQUIR                
      ,CODRED                  
      ,NUMREFOPE               
      ,IDTERM                  
      ,CODCOM                  
      ,NOMCOM                  
      ,LOCALIDAD               
      ,RTSITD                  
      ,DATORI                  
      ,NUMAUT                  
      ,CODRESPU                
      ,CODACCRED               
      ,TIPFRAN                 
      ,INDNORCOR               
      ,TIPOFAC                 
      ,INDPREAUT               
      ,INDCRUCE                
      ,INDANUL                 
      ,INDRETSAL               
      ,IMPTRNCON               
      ,IMPAUTCON               
      ,CLAMONCON               
      ,FECCONTA                
      ,NUMRETSAL               
      ,IMPRETSAL               
      ,CLAMONRET               
      ,CENTALTA                
      ,CUENTA                  
      ,IMPPROP                 
      ,ACCEMICRE               
      ,ACCEMIDEB               
      ,ACCMERCH                
      ,INDPROINC               
      ,FECCADTAR               
      ,CALFRAUDE               
      ,NUMPASIVO               
      ,CODBLQFRA               
      ,TIPOLIN                 
      ,LINREF                  
      ,TIPOLIM                 
      ,FORPAGO                 
      ,RESOLUTOR               
      ,COMISION                
      ,IMPUESTO                
      ,CODENTUMO               
      ,CODOFIUMO               
      ,USUARIOUMO              
      ,CODTERMUMO              
      ,CONTCUR                 
      ,DATADI                  
      ,FECENVIO                
      ,NUMBENCTA               
      ,NUMPLASTICO             
      ,PAN1                    
      ,PANANT                  
      ,CODBLQ                  
      ,FECULTBLQ               
      ,NUMKPIN                 
      ,VISAPHONE               
      ,INDTARPROV              
      ,CODBLQ1                 
      ,DESBLQ                  
      ,DESBLQRED               
      ,INDENVRED               
      ,CODBLQSIA               
      ,INDNOREN                
      ,INDREVER                
      ,INDCMBPAN               
      ,FECULTBLQ1              
      ,TEXBLQ                  
      ,INDBLQEXT               
      ,MOTBLQ                  
      ,FECENVIO1               
      ,CODESTCTA               
      ,GRUPOLIQ                
    FROM SAT.TB_AUTORIZACIONES
   WHERE FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 
  RETURN 0
END -- OPERACION = 'L'

IF @OPERACION = 'B'  --- BORRA DATOS DE LA TABLA FIJA
BEGIN
  IF NOT EXISTS(SELECT 1 from sysobjects where name = 'TB_AUTORIZACIONES' AND user_name(uid) = 'SAT')
  BEGIN
    return 0
  END
  DELETE SAT.TB_AUTORIZACIONES
   WHERE FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 
  RETURN 0
END -- OPERACION = 'B'

-- SE DETERMINAN TODAS LAS CUENTAS A INCLUIR
INSERT #AUTORIZACIONES (
         IDENTIFICADOR_EJECUCION 
        ,CODENT                  
        ,TIPOMSGON               
        ,CODPROON                
        ,SIAIDCD                 
        ,PAN                     
        ,CODMAR                  
        ,INDTIPT                 
        ,INDDEBCRE               
        ,IMPTRN                  
        ,CLAMONTRN               
        ,IMPCCA                  
        ,CLAMONCCA               
        ,IMPDIV                  
        ,CLAMONDIV               
        ,FECTRN                  
        ,HORTRN                  
        ,CMBAPLI                 
        ,CODACT                  
        ,CODPAIS                 
        ,MODENTDAT               
        ,SESIONORI               
        ,SESIONSIA               
        ,IMPTASAS                
        ,IDADQUIR                
        ,CODRED                  
        ,NUMREFOPE               
        ,IDTERM                  
        ,CODCOM                  
        ,NOMCOM                  
        ,LOCALIDAD               
        ,RTSITD                  
        ,DATORI                  
        ,NUMAUT                  
        ,CODRESPU                
        ,CODACCRED               
        ,TIPFRAN                 
        ,INDNORCOR               
        ,TIPOFAC                 
        ,INDPREAUT               
        ,INDCRUCE                
        ,INDANUL                 
        ,INDRETSAL               
        ,IMPTRNCON               
        ,IMPAUTCON               
        ,CLAMONCON               
        ,FECCONTA                
        ,NUMRETSAL               
        ,IMPRETSAL               
        ,CLAMONRET               
        ,CENTALTA                
        ,CUENTA                  
        ,IMPPROP                 
        ,ACCEMICRE               
        ,ACCEMIDEB               
        ,ACCMERCH                
        ,INDPROINC               
        ,FECCADTAR               
        ,CALFRAUDE               
        ,NUMPASIVO               
        ,CODBLQFRA               
        ,TIPOLIN                 
        ,LINREF                  
        ,TIPOLIM                 
        ,FORPAGO                 
        ,RESOLUTOR               
        ,COMISION                
        ,IMPUESTO                
        ,CODENTUMO               
        ,CODOFIUMO               
        ,USUARIOUMO              
        ,CODTERMUMO              
        ,CONTCUR                 
        ,DATADI                  
        ,FECENVIO                
        )
   SELECT t1.IDENTIFICADOR_EJECUCION, 
          t1.CODENT, 
          t1.TIPOMSGON, 
          t1.CODPROON, 
          t1.SIAIDCD, 
          t1.PAN, 
          t1.CODMAR, 
          t1.INDTIPT, 
          t1.INDDEBCRE, 
          t1.IMPTRN, 
          t1.CLAMONTRN, 
          t1.IMPCCA, 
          t1.CLAMONCCA, 
          t1.IMPDIV, 
          t1.CLAMONDIV, 
          t1.FECTRN, 
          t1.HORTRN, 
          t1.CMBAPLI, 
          t1.CODACT, 
          t1.CODPAIS, 
          t1.MODENTDAT, 
          t1.SESIONORI, 
          t1.SESIONSIA, 
          t1.IMPTASAS, 
          t1.IDADQUIR, 
          t1.CODRED, 
          t1.NUMREFOPE, 
          t1.IDTERM, 
          t1.CODCOM, 
          t1.NOMCOM, 
          t1.LOCALIDAD, 
          t1.RTSITD, 
          t1.DATORI, 
          t1.NUMAUT, 
          t1.CODRESPU, 
          t1.CODACCRED, 
          t1.TIPFRAN, 
          t1.INDNORCOR, 
          t1.TIPOFAC, 
          t1.INDPREAUT, 
          t1.INDCRUCE, 
          t1.INDANUL, 
          t1.INDRETSAL, 
          t1.IMPTRNCON, 
          t1.IMPAUTCON, 
          t1.CLAMONCON, 
          t1.FECCONTA, 
          t1.NUMRETSAL, 
          t1.IMPRETSAL, 
          t1.CLAMONRET, 
          t1.CENTALTA, 
          t1.CUENTA, 
          t1.IMPPROP, 
          t1.ACCEMICRE, 
          t1.ACCEMIDEB, 
          t1.ACCMERCH, 
          t1.INDPROINC, 
          t1.FECCADTAR, 
          t1.CALFRAUDE, 
          t1.NUMPASIVO, 
          t1.CODBLQFRA, 
          t1.TIPOLIN, 
          t1.LINREF, 
          t1.TIPOLIM, 
          t1.FORPAGO, 
          t1.RESOLUTOR, 
          t1.COMISION, 
          t1.IMPUESTO, 
          t1.CODENTUMO, 
          t1.CODOFIUMO, 
          t1.USUARIOUMO, 
          t1.CODTERMUMO, 
          t1.CONTCUR, 
          t1.DATADI, 
          A.FECENVIO
       FROM SAT.TBAUTORI t1
          , SAT.ATINTCAB A
      WHERE t1.IDENTIFICADOR_EJECUCION = A.IDENTIFICADOR_EJECUCION
        AND A.FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 

IF (SELECT COUNT(1) FROM #AUTORIZACIONES) <= 0
BEGIN
  RETURN 0
END

-----------------------------------------
--- SE DETERMINAN TARJETAS---------------

SELECT t1.CUENTA, 
       t1.NUMBENCTA, 
       t1.NUMPLASTICO, 
       t1.PAN AS PAN1, 
       t1.PANANT, 
       t1.CODBLQ, 
       t1.FECULTBLQ, 
       t1.NUMKPIN, 
       t1.VISAPHONE, 
       t1.INDTARPROV, 
       A.FECENVIO
  INTO #TARJETAS
  FROM SAT.TBTARJET t1
     , SAT.ATINTCAB A
 WHERE t1.IDENTIFICADOR_EJECUCION = A.IDENTIFICADOR_EJECUCION
   AND A.FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 

UPDATE #AUTORIZACIONES
   SET NUMBENCTA   = TJ.NUMBENCTA, 
       NUMPLASTICO = TJ.NUMPLASTICO, 
       PAN1        = TJ.PAN1, 
       PANANT      = TJ.PANANT, 
       CODBLQ      = TJ.CODBLQ, 
       FECULTBLQ   = TJ.FECULTBLQ, 
       NUMKPIN     = TJ.NUMKPIN, 
       VISAPHONE   = TJ.VISAPHONE, 
       INDTARPROV  = TJ.INDTARPROV
  FROM #AUTORIZACIONES AU
     , #TARJETAS TJ
 WHERE AU.CUENTA = TJ.CUENTA

-----------------------------------------
--- SE DETERMINAN CUENTAS----------------
SELECT t1.CUENTA, 
       t1.CODESTCTA, 
       t1.GRUPOLIQ
  INTO #CUENTA
  FROM SAT.PCENVPO1_CU t1
     , SAT.ATINTCAB A
 WHERE t1.IDENTIFICADOR_EJECUCION = A.IDENTIFICADOR_EJECUCION
   AND A.FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 

UPDATE #AUTORIZACIONES
   SET CODESTCTA = TJ.CODESTCTA, 
       GRUPOLIQ = TJ.GRUPOLIQ
  FROM #AUTORIZACIONES AU
     , #CUENTA TJ
 WHERE AU.CUENTA = TJ.CUENTA

----------------------------------------------
--- SE DETERMINAN CUENTAS BLOQUEADAS ---------
--- CON CODIGO DE BLOQUEO EXISTENTE ----------
SELECT    t2.CODBLQ AS CODBLQ1, 
          t2.DESBLQ, 
          t2.DESBLQRED, 
          t2.INDENVRED, 
          t2.CODBLQSIA, 
          t2.INDNOREN, 
          t2.INDREVER, 
          t2.INDCMBPAN,
          A2.FECENVIO,
          t1.IDENTIFICADOR_EJECUCION,
          t1.CUENTA, 
          t1.FECULTBLQ AS FECULTBLQ1, 
          t1.TEXBLQ, 
          t1.INDBLQEXT, 
          t1.MOTBLQ,
          a2.FECENVIO AS FECENVIO1
     into #CUENTAS_BLOQUEADAS
      FROM SAT.TBCODBLQ t2
         , SAT.ATINTCAB A2
         , SAT.TBBLQCTA t1
         , SAT.ATINTCAB A1
     WHERE t2.IDENTIFICADOR_EJECUCION = A2.IDENTIFICADOR_EJECUCION
       AND A1.FECENVIO = A2.FECENVIO
       and t1.IDENTIFICADOR_EJECUCION = A1.IDENTIFICADOR_EJECUCION
       AND t1.CODBLQ = t2.CODBLQ
       AND A1.FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 

UPDATE #AUTORIZACIONES
   SET CODBLQ1 = BL.CODBLQ1, 
       DESBLQ =  BL.DESBLQ, 
       DESBLQRED = BL.DESBLQRED, 
       INDENVRED = BL.INDENVRED, 
       CODBLQSIA = BL.CODBLQSIA, 
       INDNOREN = BL.INDNOREN, 
       INDREVER  = BL.INDREVER, 
       INDCMBPAN = BL.INDCMBPAN, 
       FECULTBLQ1 = BL.FECULTBLQ1, 
       TEXBLQ = BL.TEXBLQ, 
       INDBLQEXT = BL.INDBLQEXT, 
       MOTBLQ = BL.MOTBLQ,
       FECENVIO1 = BL.FECENVIO1
  FROM #AUTORIZACIONES AU
     , #CUENTAS_BLOQUEADAS BL
 WHERE AU.CUENTA = BL.CUENTA

IF @OPERACION = 'V'
BEGIN
  SELECT         
       IDENTIFICADOR_EJECUCION 
      ,CODENT                  
      ,TIPOMSGON               
      ,CODPROON                
      ,SIAIDCD                 
      ,PAN                     
      ,CODMAR                  
      ,INDTIPT                 
      ,INDDEBCRE               
      ,IMPTRN                  
      ,CLAMONTRN               
      ,IMPCCA                  
      ,CLAMONCCA               
      ,IMPDIV                  
      ,CLAMONDIV               
      ,FECTRN                  
      ,HORTRN                  
      ,CMBAPLI                 
      ,CODACT                  
      ,CODPAIS                 
      ,MODENTDAT               
      ,SESIONORI               
      ,SESIONSIA               
      ,IMPTASAS                
      ,IDADQUIR                
      ,CODRED                  
      ,NUMREFOPE               
      ,IDTERM                  
      ,CODCOM                  
      ,NOMCOM                  
      ,LOCALIDAD               
      ,RTSITD                  
      ,DATORI                  
      ,NUMAUT                  
      ,CODRESPU                
      ,CODACCRED               
      ,TIPFRAN                 
      ,INDNORCOR               
      ,TIPOFAC                 
      ,INDPREAUT               
      ,INDCRUCE                
      ,INDANUL                 
      ,INDRETSAL               
      ,IMPTRNCON               
      ,IMPAUTCON               
      ,CLAMONCON               
      ,FECCONTA                
      ,NUMRETSAL               
      ,IMPRETSAL               
      ,CLAMONRET               
      ,CENTALTA                
      ,CUENTA                  
      ,IMPPROP                 
      ,ACCEMICRE               
      ,ACCEMIDEB               
      ,ACCMERCH                
      ,INDPROINC               
      ,FECCADTAR               
      ,CALFRAUDE               
      ,NUMPASIVO               
      ,CODBLQFRA               
      ,TIPOLIN                 
      ,LINREF                  
      ,TIPOLIM                 
      ,FORPAGO                 
      ,RESOLUTOR               
      ,COMISION                
      ,IMPUESTO                
      ,CODENTUMO               
      ,CODOFIUMO               
      ,USUARIOUMO              
      ,CODTERMUMO              
      ,CONTCUR                 
      ,DATADI                  
      ,FECENVIO                
      ,NUMBENCTA               
      ,NUMPLASTICO             
      ,PAN1                    
      ,PANANT                  
      ,CODBLQ                  
      ,FECULTBLQ               
      ,NUMKPIN                 
      ,VISAPHONE               
      ,INDTARPROV              
      ,CODBLQ1                 
      ,DESBLQ                  
      ,DESBLQRED               
      ,INDENVRED               
      ,CODBLQSIA               
      ,INDNOREN                
      ,INDREVER                
      ,INDCMBPAN               
      ,FECULTBLQ1              
      ,TEXBLQ                  
      ,INDBLQEXT               
      ,MOTBLQ                  
      ,FECENVIO1               
      ,CODESTCTA               
      ,GRUPOLIQ                
    FROM #AUTORIZACIONES
END -- 'V'

if @OPERACION = 'G' --- GRABA DATOS EN ESTRUCTURA DE TABLA FIJA.. SI EXISTEN PRIMERO LOS BORRA.. SI LA TABLA NO EXISTE LA CREA..
BEGIN
  DELETE SAT.TB_AUTORIZACIONES
   WHERE FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 
  INSERT SAT.TB_AUTORIZACIONES (
       IDENTIFICADOR_EJECUCION 
      ,CODENT                  
      ,TIPOMSGON               
      ,CODPROON                
      ,SIAIDCD                 
      ,PAN                     
      ,CODMAR                  
      ,INDTIPT                 
      ,INDDEBCRE               
      ,IMPTRN                  
      ,CLAMONTRN               
      ,IMPCCA                  
      ,CLAMONCCA               
      ,IMPDIV                  
      ,CLAMONDIV               
      ,FECTRN                  
      ,HORTRN                  
      ,CMBAPLI                 
      ,CODACT                  
      ,CODPAIS                 
      ,MODENTDAT               
      ,SESIONORI               
      ,SESIONSIA               
      ,IMPTASAS                
      ,IDADQUIR                
      ,CODRED                  
      ,NUMREFOPE               
      ,IDTERM                  
      ,CODCOM                  
      ,NOMCOM                  
      ,LOCALIDAD               
      ,RTSITD                  
      ,DATORI                  
      ,NUMAUT                  
      ,CODRESPU                
      ,CODACCRED               
      ,TIPFRAN                 
      ,INDNORCOR               
      ,TIPOFAC                 
      ,INDPREAUT               
      ,INDCRUCE                
      ,INDANUL                 
      ,INDRETSAL               
      ,IMPTRNCON               
      ,IMPAUTCON               
      ,CLAMONCON               
      ,FECCONTA                
      ,NUMRETSAL               
      ,IMPRETSAL               
      ,CLAMONRET               
      ,CENTALTA                
      ,CUENTA                  
      ,IMPPROP                 
      ,ACCEMICRE               
      ,ACCEMIDEB               
      ,ACCMERCH                
      ,INDPROINC               
      ,FECCADTAR               
      ,CALFRAUDE               
      ,NUMPASIVO               
      ,CODBLQFRA               
      ,TIPOLIN                 
      ,LINREF                  
      ,TIPOLIM                 
      ,FORPAGO                 
      ,RESOLUTOR               
      ,COMISION                
      ,IMPUESTO                
      ,CODENTUMO               
      ,CODOFIUMO               
      ,USUARIOUMO              
      ,CODTERMUMO              
      ,CONTCUR                 
      ,DATADI                  
      ,FECENVIO                
      ,NUMBENCTA               
      ,NUMPLASTICO             
      ,PAN1                    
      ,PANANT                  
      ,CODBLQ                  
      ,FECULTBLQ               
      ,NUMKPIN                 
      ,VISAPHONE               
      ,INDTARPROV              
      ,CODBLQ1                 
      ,DESBLQ                  
      ,DESBLQRED               
      ,INDENVRED               
      ,CODBLQSIA               
      ,INDNOREN                
      ,INDREVER                
      ,INDCMBPAN               
      ,FECULTBLQ1              
      ,TEXBLQ                  
      ,INDBLQEXT               
      ,MOTBLQ                  
      ,FECENVIO1               
      ,CODESTCTA               
      ,GRUPOLIQ                
       )
  SELECT 
       IDENTIFICADOR_EJECUCION 
      ,CODENT                  
      ,TIPOMSGON               
      ,CODPROON                
      ,SIAIDCD                 
      ,PAN                     
      ,CODMAR                  
      ,INDTIPT                 
      ,INDDEBCRE               
      ,IMPTRN                  
      ,CLAMONTRN               
      ,IMPCCA                  
      ,CLAMONCCA               
      ,IMPDIV                  
      ,CLAMONDIV               
      ,FECTRN                  
      ,HORTRN                  
      ,CMBAPLI                 
      ,CODACT                  
      ,CODPAIS                 
      ,MODENTDAT               
      ,SESIONORI               
      ,SESIONSIA               
      ,IMPTASAS                
      ,IDADQUIR                
      ,CODRED                  
      ,NUMREFOPE               
      ,IDTERM                  
      ,CODCOM                  
      ,NOMCOM                  
      ,LOCALIDAD               
      ,RTSITD                  
      ,DATORI                  
      ,NUMAUT                  
      ,CODRESPU                
      ,CODACCRED               
      ,TIPFRAN                 
      ,INDNORCOR               
      ,TIPOFAC                 
      ,INDPREAUT               
      ,INDCRUCE                
      ,INDANUL                 
      ,INDRETSAL               
      ,IMPTRNCON               
      ,IMPAUTCON               
      ,CLAMONCON               
      ,FECCONTA                
      ,NUMRETSAL               
      ,IMPRETSAL               
      ,CLAMONRET               
      ,CENTALTA                
      ,CUENTA                  
      ,IMPPROP                 
      ,ACCEMICRE               
      ,ACCEMIDEB               
      ,ACCMERCH                
      ,INDPROINC               
      ,FECCADTAR               
      ,CALFRAUDE               
      ,NUMPASIVO               
      ,CODBLQFRA               
      ,TIPOLIN                 
      ,LINREF                  
      ,TIPOLIM                 
      ,FORPAGO                 
      ,RESOLUTOR               
      ,COMISION                
      ,IMPUESTO                
      ,CODENTUMO               
      ,CODOFIUMO               
      ,USUARIOUMO              
      ,CODTERMUMO              
      ,CONTCUR                 
      ,DATADI                  
      ,FECENVIO                
      ,NUMBENCTA               
      ,NUMPLASTICO             
      ,PAN1                    
      ,PANANT                  
      ,CODBLQ                  
      ,FECULTBLQ               
      ,NUMKPIN                 
      ,VISAPHONE               
      ,INDTARPROV              
      ,CODBLQ1                 
      ,DESBLQ                  
      ,DESBLQRED               
      ,INDENVRED               
      ,CODBLQSIA               
      ,INDNOREN                
      ,INDREVER                
      ,INDCMBPAN               
      ,FECULTBLQ1              
      ,TEXBLQ                  
      ,INDBLQEXT               
      ,MOTBLQ                  
      ,FECENVIO1               
      ,CODESTCTA               
      ,GRUPOLIQ                
    FROM #AUTORIZACIONES
END -- OPERACION = 'G'

RETURN 0

END  -- FIN PROCEDIMIENTO;
COMMIT;
