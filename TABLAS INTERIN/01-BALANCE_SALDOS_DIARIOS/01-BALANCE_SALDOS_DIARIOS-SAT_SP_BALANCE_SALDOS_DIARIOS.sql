drop proc IF EXISTS SAT.SP_BALANCE_SALDOS_DIARIOS;
commit;
create proc SAT.SP_BALANCE_SALDOS_DIARIOS
 @OPERACION CHAR(1) DEFAULT 'V'
,@FECENVIO DATE DEFAULT NULL
,@FECENVIOFIN DATE DEFAULT NULL
as
BEGIN
DECLARE 
 @FECHA_INI DATE
,@FECHA_FIN DATE
,@FECHA_INICIO_SATDWH DATE 

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
create HG index if not exists idx_HG_ATINTCAB_FECENVIO on SAT.ATINTCAB(FECENVIO)
CREATE HG index IF NOT EXISTS idx_HG_PARAMETROS_PARAMETRO on CNF.PARAMETROS(PARAMETRO)
CREATE HG index if not exists idx_HG_PCENVPO1_CU_CUENTA on SAT.PCENVPO1_CU(CUENTA)
CREATE HG index if not exists idx_HG_PCENVPO1_CU_SALDISCRE on SAT.PCENVPO1_CU(SALDISCRE)
CREATE HG index if not exists idx_HG_PCENVPO1_CU_IDENTIFICADOR_EJECUCION on SAT.PCENVPO1_CU(IDENTIFICADOR_EJECUCION)
CREATE HG index if not exists idx_HG_PCENVPO1_IC_CUENTA on SAT.PCENVPO1_IC(CUENTA)
CREATE HG index if not exists idx_HG_PCENVPO1_IC_IDENTIFICADOR_EJECUCION on SAT.PCENVPO1_IC(IDENTIFICADOR_EJECUCION)
CREATE HG index if not exists idx_HG_PCENVPO1_MP_CUENTA on SAT.PCENVPO1_MP(CUENTA)
CREATE HG index if not exists idx_HG_PCENVPO1_MP_IDENTIFICADOR_EJECUCION on SAT.PCENVPO1_MP(IDENTIFICADOR_EJECUCION)
CREATE HG index if not exists idx_HG_PCENVPO1_MP_CALPART on SAT.PCENVPO1_MP(CALPART)
CREATE HG index if not exists idx_HG_TBDOCPER_IDENTCLI on SAT.TBDOCPER(IDENTCLI)
CREATE HG index if not exists idx_HG_TBDOCPER_TIPDOC on SAT.TBDOCPER(TIPDOC)
CREATE HG index if not exists idx_HG_TBDOCPER_IDENTIFICADOR_EJECUCION on SAT.TBDOCPER(IDENTIFICADOR_EJECUCION)
*******************/
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

CREATE TABLE #BALANCE_SALDOS_DIARIOS (
 IDENTIFICADOR_EJECUCION INTEGER
,FECENVIO          date
,CODENT_D          varchar(4)
,CUENTA          varchar(12)
,PAN_TI          varchar(22)
,CODBLQ_PAN          decimal(2,0)
,UNICO          varchar(22)
,FECCADTAR          decimal(6,0)
,MOTBLQ_PAN          decimal(2,0)
,NUMORDEN          decimal(12,0)
,FECULTCAR          date
,PRODUCTO          varchar(2)
,SUBPRODU          varchar(4)
,LIMCRECTA          decimal(17,2)
,LIMCRECTATEM          decimal(17,2)
,FECINITEM          date
,FECFINTEM          date
,SALAUTCRE          decimal(17,2)
,SALDISCRE          decimal(17,2)
,LIMCRECTAC          decimal(17,2)
,SALAUTCREC          decimal(17,2)
,SALDISCREC          decimal(17,2)
,SALDISP_C          numeric(18,2)
,ANR_BALANCE_MTH          numeric(20,4)
,FECPROVEN          date
,FECULTVEN          date
,FECRESOL          date
,IDENTCLI          varchar(8)
,CODESTCTA          decimal(2,0)
,FECULTESTCTA          date
,CODCONVEN          varchar(4)
,INDCTAEMP          decimal(1,0)
,INDDOMCARCRE          varchar(1)
,CTACARGO          varchar(30)
,FORPAGO          decimal(2,0)
,INDSITCTA          decimal(1,0)
,COMISIONES          decimal(17,2)
,INTERESES          decimal(17,2)
,CAPITAL          decimal(17,2)
,GRUPOLIQ          decimal(2,0)
,CODBLQULT          decimal(2,0)
,IMPMINORIGINAL          decimal(17,2)
,IMPMINPENDIENTE          decimal(17,2)
,IMP_PAGADO          numeric(18,2)
,MOTBLQ          decimal(2,0)
,CODVIAJFRE          varchar(25)
,FECALTAVIAJ          varchar(10)
,INDCLICUMM          varchar(1)
,INDCLICUMC          varchar(1)
,FECCLICUM          varchar(10)
,CLASIFRISAT          varchar(2)
,CLASIFRIREG          varchar(2)
,CLASIFRIMDE          varchar(5)
,TASAEFECMAX          decimal(7,4)
,TIPOREG          varchar(2)
,SITUACION          decimal(2,0)
,IMPCONT          decimal(17,2)
,IMPAGO          decimal(17,2)
,IMPAPL          decimal(17,2)
,IMP_PENDIENTE          numeric(18,2)
,FECULTAPL          date
,FECENVCOB          date
,BALMASALTO          decimal(17,2)
,FECHA_BALMASALTO          date
)

SELECT @FECHA_INICIO_SATDWH = CONVERT(DATE,VALOR) FROM CNF.PARAMETROS WHERE PARAMETRO = 'FECINISATDWH'
IF @FECHA_INICIO_SATDWH IS NULL
  SELECT @FECHA_INICIO_SATDWH = '99991231'

if @OPERACION IN ('C','G','L') --  C = CREA ESTRUCTURA DE TABLA FIJA 
--- G = GRABA DATOS EN ESTRUCTURA DE TABLA FIJA.. SI LA TABLA NO EXISTE LA CREA..
--- L = LEE DATOS DE TABLA FIJA.. SI LA TABLA NO EXISTE LA CREA..
BEGIN
  IF EXISTS(SELECT 1 from sysobjects where name = 'TB_BALANCE_SALDOS_DIARIOS' AND user_name(uid) = 'SAT') AND @OPERACION = 'C'
  BEGIN
    return 0
  END
  IF NOT EXISTS(SELECT 1 from sysobjects where name = 'TB_BALANCE_SALDOS_DIARIOS' AND user_name(uid) = 'SAT')
  BEGIN
    SELECT IDENTIFICADOR_EJECUCION
        ,FECENVIO       
        ,CODENT_D      
        ,CUENTA        
        ,PAN_TI        
        ,CODBLQ_PAN    
        ,UNICO         
        ,FECCADTAR     
        ,MOTBLQ_PAN    
        ,NUMORDEN      
        ,FECULTCAR     
        ,PRODUCTO      
        ,SUBPRODU          
        ,LIMCRECTA         
        ,LIMCRECTATEM      
        ,FECINITEM         
        ,FECFINTEM         
        ,SALAUTCRE         
        ,SALDISCRE         
        ,LIMCRECTAC        
        ,SALAUTCREC        
        ,SALDISCREC        
        ,SALDISP_C         
        ,ANR_BALANCE_MTH   
        ,FECPROVEN         
        ,FECULTVEN         
        ,FECRESOL          
        ,IDENTCLI          
        ,CODESTCTA         
        ,FECULTESTCTA      
        ,CODCONVEN         
        ,INDCTAEMP         
        ,INDDOMCARCRE      
        ,CTACARGO          
        ,FORPAGO          
        ,INDSITCTA         
        ,COMISIONES        
        ,INTERESES         
        ,CAPITAL          
        ,GRUPOLIQ          
        ,CODBLQULT         
        ,IMPMINORIGINAL    
        ,IMPMINPENDIENTE   
        ,IMP_PAGADO        
        ,MOTBLQ          
        ,CODVIAJFRE        
        ,FECALTAVIAJ       
        ,INDCLICUMM        
        ,INDCLICUMC        
        ,FECCLICUM         
        ,CLASIFRISAT       
        ,CLASIFRIREG       
        ,CLASIFRIMDE       
        ,TASAEFECMAX       
        ,TIPOREG          
        ,SITUACION         
        ,IMPCONT          
        ,IMPAGO          
        ,IMPAPL          
        ,IMP_PENDIENTE     
        ,FECULTAPL         
        ,FECENVCOB         
        ,BALMASALTO        
        ,FECHA_BALMASALTO  
      INTO SAT.TB_BALANCE_SALDOS_DIARIOS FROM #BALANCE_SALDOS_DIARIOS WHERE 1=2
    IF @OPERACION = 'L'
    BEGIN
      RETURN 0
    END
  END
  IF @OPERACION = 'C'
  BEGIN
     RETURN 0
  END
END -- 'C'

IF @OPERACION = 'L' -- LEE DATOS DE LA TABLA FIJA
BEGIN
  SELECT IDENTIFICADOR_EJECUCION
        ,FECENVIO       
        ,CODENT_D      
        ,CUENTA        
        ,PAN_TI        
        ,CODBLQ_PAN    
        ,UNICO         
        ,FECCADTAR     
        ,MOTBLQ_PAN    
        ,NUMORDEN      
        ,FECULTCAR     
        ,PRODUCTO      
        ,SUBPRODU          
        ,LIMCRECTA         
        ,LIMCRECTATEM      
        ,FECINITEM         
        ,FECFINTEM         
        ,SALAUTCRE         
        ,SALDISCRE         
        ,LIMCRECTAC        
        ,SALAUTCREC        
        ,SALDISCREC        
        ,SALDISP_C         
        ,ANR_BALANCE_MTH   
        ,FECPROVEN         
        ,FECULTVEN         
        ,FECRESOL          
        ,IDENTCLI          
        ,CODESTCTA         
        ,FECULTESTCTA      
        ,CODCONVEN         
        ,INDCTAEMP         
        ,INDDOMCARCRE      
        ,CTACARGO          
        ,FORPAGO          
        ,INDSITCTA         
        ,COMISIONES        
        ,INTERESES         
        ,CAPITAL          
        ,GRUPOLIQ          
        ,CODBLQULT         
        ,IMPMINORIGINAL    
        ,IMPMINPENDIENTE   
        ,IMP_PAGADO        
        ,MOTBLQ          
        ,CODVIAJFRE        
        ,FECALTAVIAJ       
        ,INDCLICUMM        
        ,INDCLICUMC        
        ,FECCLICUM         
        ,CLASIFRISAT       
        ,CLASIFRIREG       
        ,CLASIFRIMDE       
        ,TASAEFECMAX       
        ,TIPOREG          
        ,SITUACION         
        ,IMPCONT          
        ,IMPAGO          
        ,IMPAPL          
        ,IMP_PENDIENTE     
        ,FECULTAPL         
        ,FECENVCOB         
        ,BALMASALTO        
        ,FECHA_BALMASALTO  
    FROM SAT.TB_BALANCE_SALDOS_DIARIOS
   WHERE FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 
  RETURN 0
END -- OPERACION = 'L'

IF @OPERACION = 'B'  --- BORRA DATOS DE LA TABLA FIJA
BEGIN
  IF NOT EXISTS(SELECT 1 from sysobjects where name = 'TB_BALANCE_SALDOS_DIARIOS' AND user_name(uid) = 'SAT')
  BEGIN
    return 0
  END
  DELETE SAT.TB_BALANCE_SALDOS_DIARIOS
   WHERE FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 
  RETURN 0
END -- OPERACION = 'B'

-- SE DETERMINAN TODAS LAS CUENTAS A INCLUIR
INSERT #BALANCE_SALDOS_DIARIOS (
         IDENTIFICADOR_EJECUCION
        ,FECENVIO       
        ,CODENT_D      
        ,CUENTA        
        ,NUMORDEN      
        ,FECULTCAR     
        ,PRODUCTO      
        ,SUBPRODU          
        ,LIMCRECTA         
        ,LIMCRECTATEM      
        ,FECINITEM         
        ,FECFINTEM         
        ,SALAUTCRE         
        ,SALDISCRE         
        ,LIMCRECTAC        
        ,SALAUTCREC        
        ,SALDISCREC        
        ,SALDISP_C         
        ,FECPROVEN         
        ,FECULTVEN         
        ,FECRESOL          
        ,IDENTCLI          
        ,CODESTCTA         
        ,FECULTESTCTA      
        ,CODCONVEN         
        ,INDCTAEMP         
        ,INDDOMCARCRE      
        ,CTACARGO          
        ,FORPAGO          
        ,INDSITCTA         
        ,COMISIONES        
        ,INTERESES         
        ,CAPITAL          
        ,GRUPOLIQ          
        ,CODBLQULT         
        ,IMPMINORIGINAL    
        ,IMPMINPENDIENTE   
        ,IMP_PAGADO        
        ,MOTBLQ          
        ,CODVIAJFRE        
        ,FECALTAVIAJ       
        ,INDCLICUMM        
        ,INDCLICUMC        
        ,FECCLICUM         
        ,CLASIFRISAT       
        ,CLASIFRIREG       
        ,CLASIFRIMDE       
        ,TASAEFECMAX       
)
SELECT    A.IDENTIFICADOR_EJECUCION,
          AT.FECENVIO, 
          A.CODENT_D, 
          A.CUENTA, 
          A.NUMORDEN, 
          A.FECULTCAR, 
          A.PRODUCTO, 
          A.SUBPRODU, 
          A.LIMCRECTA, 
          A.LIMCRECTATEM, 
          A.FECINITEM, 
          A.FECFINTEM, 
          A.SALAUTCRE, 
          A.SALDISCRE, 
          A.LIMCRECTAC, 
          A.SALAUTCREC, 
          A.SALDISCREC, 
          (CASE  
               WHEN A.LIMCRECTA - A.SALDISCRE  = 0
               THEN 0
               WHEN A.LIMCRECTA - A.SALDISCRE  < 0
               THEN 0
               ELSE  A.LIMCRECTA - A.SALDISCRE
            END) 
                AS SALDISP_C,
          A.FECPROVEN, 
          A.FECULTVEN, 
          A.FECRESOL, 
          A.IDENTCLI, 
          A.CODESTCTA, 
          A.FECULTESTCTA, 
          A.CODCONVEN, 
          A.INDCTAEMP, 
          A.INDDOMCARCRE, 
          A.CTACARGO, 
          A.FORPAGO, 
          A.INDSITCTA, 
          A.COMISIONES, 
          A.INTERESES, 
          A.CAPITAL, 
          A.GRUPOLIQ, 
          A.CODBLQULT, 
          A.IMPMINORIGINAL, 
          A.IMPMINPENDIENTE, 
          (A.IMPMINORIGINAL - A.IMPMINPENDIENTE)  AS IMP_PAGADO, 
          A.MOTBLQ, 
          A.CODVIAJFRE, 
          A.FECALTAVIAJ, 
          A.INDCLICUMM, 
          A.INDCLICUMC, 
          A.FECCLICUM, 
          A.CLASIFRISAT, 
          A.CLASIFRIREG, 
          A.CLASIFRIMDE, 
          A.TASAEFECMAX
--SELECT COUNT(1)
  FROM SAT.ATINTCAB AT
     , SAT.PCENVPO1_CU A
 WHERE A.IDENTIFICADOR_EJECUCION = AT.IDENTIFICADOR_EJECUCION
   AND AT.FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 

IF (SELECT COUNT(1) FROM #BALANCE_SALDOS_DIARIOS) <= 0
BEGIN
  RETURN 0
END

--- ACTUALIZACION DE DATOS TITULAR MP
SELECT  B.CUENTA
       ,B.PAN AS PAN_TI
       ,B.CODBLQ AS CODBLQ_PAN
       ,B.FECCADTAR AS FECCADTAR
       ,B.MOTBLQ AS MOTBLQ_PAN
   INTO #DATOS_TITULAR_MP
   FROM SAT.PCENVPO1_MP B
      , SAT.ATINTCAB AC
      , #BALANCE_SALDOS_DIARIOS A
  WHERE AC.IDENTIFICADOR_EJECUCION = B.IDENTIFICADOR_EJECUCION
    AND A.CUENTA = B.CUENTA
    AND B.CALPART = 'TI'
    AND AC.FECENVIO = A.FECENVIO

UPDATE #BALANCE_SALDOS_DIARIOS
   SET PAN_TI = T.PAN_TI
     , CODBLQ_PAN = T.CODBLQ_PAN
     , FECCADTAR = T.FECCADTAR
     , MOTBLQ_PAN = T.MOTBLQ_PAN
  FROM #BALANCE_SALDOS_DIARIOS B
     , #DATOS_TITULAR_MP T
 WHERE T.CUENTA = B.CUENTA


-- ACTUALIZACION CODIGO UNICO TBDOCPER
SELECT C.IDENTCLI, 
       MAX(C.NUMDOC ) AS UNICO
  INTO #UNICO_TBDOC
  FROM SAT.TBDOCPER C
     , SAT.ATINTCAB AC
     , #BALANCE_SALDOS_DIARIOS A
 WHERE AC.IDENTIFICADOR_EJECUCION = C.IDENTIFICADOR_EJECUCION
   AND A.IDENTCLI = C.IDENTCLI
   AND C.TIPDOC = 'UNI' 
   AND AC.FECENVIO = A.FECENVIO
 GROUP BY C.IDENTCLI

UPDATE #BALANCE_SALDOS_DIARIOS
   SET UNICO = T.UNICO
  FROM #BALANCE_SALDOS_DIARIOS B
     , #UNICO_TBDOC T
 WHERE T.IDENTCLI = B.IDENTCLI

-- ACTUALIZACION DE PROMEDIO
SELECT AA.CUENTA
     , CASE WHEN MAX(AA.SALDISCRE) IS NULL
         THEN 0
         ELSE MAX(AA.SALDISCRE)
         END AS SALDO_INICIAL
    INTO #SALDO_INICIAL
    FROM SAT.PCENVPO1_CU AA
       , SAT.ATINTCAB AAT
       , #BALANCE_SALDOS_DIARIOS A
   WHERE AA.IDENTIFICADOR_EJECUCION = AAT.IDENTIFICADOR_EJECUCION
     AND AAT.FECENVIO = CONVERT(DATE,CONVERT(VARCHAR,DATEPART(YY,A.FECENVIO)) + '/' + CONVERT(VARCHAR,DATEPART(MM,A.FECENVIO)) + '/1')
     AND AA.CUENTA = A.CUENTA
GROUP BY AA.CUENTA

UPDATE #BALANCE_SALDOS_DIARIOS
   SET ANR_BALANCE_MTH = ISNULL(I.SALDO_INICIAL,0)
  FROM #BALANCE_SALDOS_DIARIOS A
     , #SALDO_INICIAL I
 WHERE I.CUENTA = A.CUENTA

SELECT AB.CUENTA
     , MAX(ISNULL(AB.SALDISCRE,0)) AS SALDO_MAYOR
  INTO #SALDO_MAYOR
  FROM SAT.PCENVPO1_CU AB
     , #BALANCE_SALDOS_DIARIOS A
 WHERE AB.IDENTIFICADOR_EJECUCION = A.IDENTIFICADOR_EJECUCION
   AND AB.CUENTA = A.CUENTA
GROUP BY AB.CUENTA

UPDATE #BALANCE_SALDOS_DIARIOS
   SET ANR_BALANCE_MTH = ISNULL(ANR_BALANCE_MTH,0) + ISNULL(I.SALDO_MAYOR,0) / 2
  FROM #BALANCE_SALDOS_DIARIOS A
     , #SALDO_MAYOR I
 WHERE I.CUENTA = A.CUENTA

--- ACTUALIZACION DE DATOS MORAS IC
SELECT A.CUENTA
     , D.TIPOREG AS TIPOREG
     , D.SITUACION AS SITUACION
     , D.IMPCONT AS IMPCONT
     , D.IMPAGO AS IMPPAGO
     , D.IMPAPL AS IMPAPL
     ,(D.IMPAGO - D.IMPAPL) IMP_PENDIENTE
     , D.FECULTAPL AS FECULTAPL
     , D.FECENVCOB AS FECENVCOB
  INTO #MORAS_IC
  FROM SAT.PCENVPO1_IC D
     , SAT.ATINTCAB AC
     , #BALANCE_SALDOS_DIARIOS A
 WHERE AC.IDENTIFICADOR_EJECUCION = D.IDENTIFICADOR_EJECUCION
   AND A.CUENTA = D.CUENTA
   AND AC.FECENVIO = A.FECENVIO

UPDATE #BALANCE_SALDOS_DIARIOS
   SET TIPOREG   = I.TIPOREG
     , SITUACION = I.SITUACION
     , IMPCONT   = I.IMPCONT
     , IMPAGO    = I.IMPPAGO
     , IMPAPL    = I.IMPAPL
     , IMP_PENDIENTE = I.IMP_PENDIENTE
     , FECULTAPL = I.FECULTAPL
     , FECENVCOB = I.FECENVCOB
  FROM #BALANCE_SALDOS_DIARIOS A
     , #MORAS_IC I
 WHERE I.CUENTA = A.CUENTA
                    
-- ACTUALIZACION DE BALANCES MAS ALTOS CU
SELECT A.CUENTA,
       MAX(BAL.SALDISCRE) BALMASALTO
  INTO #BALANCE_MAS_ALTO
  FROM SAT.PCENVPO1_CU BAL
     , SAT.ATINTCAB ATBAL
     , #BALANCE_SALDOS_DIARIOS A
 where BAL.IDENTIFICADOR_EJECUCION = ATBAL.IDENTIFICADOR_EJECUCION
   AND ATBAL.FECENVIO 
       BETWEEN @FECHA_INICIO_SATDWH 
           AND A.FECENVIO 
   AND BAL.CUENTA = A.CUENTA
GROUP BY A.CUENTA

UPDATE #BALANCE_SALDOS_DIARIOS
   SET BALMASALTO   = I.BALMASALTO
  FROM #BALANCE_SALDOS_DIARIOS A
     , #BALANCE_MAS_ALTO I
 WHERE I.CUENTA = A.CUENTA

SELECT A.CUENTA
     , MAX(ATFEC.FECENVIO) AS FECHA_BALMASALTO
  INTO #FECHA_BALANCE_MAS_ALTO
  FROM SAT.PCENVPO1_CU FEC
     , SAT.ATINTCAB ATFEC
     , #BALANCE_SALDOS_DIARIOS A
 WHERE ATFEC.IDENTIFICADOR_EJECUCION = FEC.IDENTIFICADOR_EJECUCION
   AND FEC.SALDISCRE = (SELECT BAL.BALMASALTO
                                      FROM #BALANCE_MAS_ALTO BAL
                                     where  BAL.CUENTA = A.CUENTA)
   AND ATFEC.FECENVIO 
              BETWEEN @FECHA_INICIO_SATDWH
                  AND A.FECENVIO
   AND FEC.CUENTA = A.CUENTA
GROUP BY A.CUENTA

UPDATE #BALANCE_SALDOS_DIARIOS
   SET FECHA_BALMASALTO  = I.FECHA_BALMASALTO
  FROM #BALANCE_SALDOS_DIARIOS A
     , #FECHA_BALANCE_MAS_ALTO I
 WHERE I.CUENTA = A.CUENTA

IF @OPERACION = 'V'
BEGIN
  SELECT IDENTIFICADOR_EJECUCION
        ,FECENVIO       
        ,CODENT_D      
        ,CUENTA        
        ,PAN_TI        
        ,CODBLQ_PAN    
        ,UNICO         
        ,FECCADTAR     
        ,MOTBLQ_PAN    
        ,NUMORDEN      
        ,FECULTCAR     
        ,PRODUCTO      
        ,SUBPRODU          
        ,LIMCRECTA         
        ,LIMCRECTATEM      
        ,FECINITEM         
        ,FECFINTEM         
        ,SALAUTCRE         
        ,SALDISCRE         
        ,LIMCRECTAC        
        ,SALAUTCREC        
        ,SALDISCREC        
        ,SALDISP_C         
        ,ANR_BALANCE_MTH   
        ,FECPROVEN         
        ,FECULTVEN         
        ,FECRESOL          
        ,IDENTCLI          
        ,CODESTCTA         
        ,FECULTESTCTA      
        ,CODCONVEN         
        ,INDCTAEMP         
        ,INDDOMCARCRE      
        ,CTACARGO          
        ,FORPAGO          
        ,INDSITCTA         
        ,COMISIONES        
        ,INTERESES         
        ,CAPITAL          
        ,GRUPOLIQ          
        ,CODBLQULT         
        ,IMPMINORIGINAL    
        ,IMPMINPENDIENTE   
        ,IMP_PAGADO        
        ,MOTBLQ          
        ,CODVIAJFRE        
        ,FECALTAVIAJ       
        ,INDCLICUMM        
        ,INDCLICUMC        
        ,FECCLICUM         
        ,CLASIFRISAT       
        ,CLASIFRIREG       
        ,CLASIFRIMDE       
        ,TASAEFECMAX       
        ,TIPOREG          
        ,SITUACION         
        ,IMPCONT          
        ,IMPAGO          
        ,IMPAPL          
        ,IMP_PENDIENTE     
        ,FECULTAPL         
        ,FECENVCOB         
        ,BALMASALTO        
        ,FECHA_BALMASALTO  
    FROM #BALANCE_SALDOS_DIARIOS
END -- 'V'

if @OPERACION = 'G' --- GRABA DATOS EN ESTRUCTURA DE TABLA FIJA.. SI EXISTEN PRIMERO LOS BORRA.. SI LA TABLA NO EXISTE LA CREA..
BEGIN
  DELETE SAT.TB_BALANCE_SALDOS_DIARIOS
   WHERE FECENVIO BETWEEN @FECHA_INI AND @FECHA_FIN 
  INSERT SAT.TB_BALANCE_SALDOS_DIARIOS (
         IDENTIFICADOR_EJECUCION
        ,FECENVIO       
        ,CODENT_D      
        ,CUENTA        
        ,PAN_TI        
        ,CODBLQ_PAN    
        ,UNICO         
        ,FECCADTAR     
        ,MOTBLQ_PAN    
        ,NUMORDEN      
        ,FECULTCAR     
        ,PRODUCTO      
        ,SUBPRODU          
        ,LIMCRECTA         
        ,LIMCRECTATEM      
        ,FECINITEM         
        ,FECFINTEM         
        ,SALAUTCRE         
        ,SALDISCRE         
        ,LIMCRECTAC        
        ,SALAUTCREC        
        ,SALDISCREC        
        ,SALDISP_C         
        ,ANR_BALANCE_MTH   
        ,FECPROVEN         
        ,FECULTVEN         
        ,FECRESOL          
        ,IDENTCLI          
        ,CODESTCTA         
        ,FECULTESTCTA      
        ,CODCONVEN         
        ,INDCTAEMP         
        ,INDDOMCARCRE      
        ,CTACARGO          
        ,FORPAGO          
        ,INDSITCTA         
        ,COMISIONES        
        ,INTERESES         
        ,CAPITAL          
        ,GRUPOLIQ          
        ,CODBLQULT         
        ,IMPMINORIGINAL    
        ,IMPMINPENDIENTE   
        ,IMP_PAGADO        
        ,MOTBLQ          
        ,CODVIAJFRE        
        ,FECALTAVIAJ       
        ,INDCLICUMM        
        ,INDCLICUMC        
        ,FECCLICUM         
        ,CLASIFRISAT       
        ,CLASIFRIREG       
        ,CLASIFRIMDE       
        ,TASAEFECMAX       
        ,TIPOREG          
        ,SITUACION         
        ,IMPCONT          
        ,IMPAGO          
        ,IMPAPL          
        ,IMP_PENDIENTE     
        ,FECULTAPL         
        ,FECENVCOB         
        ,BALMASALTO        
        ,FECHA_BALMASALTO  
       )
  SELECT 
         IDENTIFICADOR_EJECUCION
        ,FECENVIO       
        ,CODENT_D      
        ,CUENTA        
        ,PAN_TI        
        ,CODBLQ_PAN    
        ,UNICO         
        ,FECCADTAR     
        ,MOTBLQ_PAN    
        ,NUMORDEN      
        ,FECULTCAR     
        ,PRODUCTO      
        ,SUBPRODU          
        ,LIMCRECTA         
        ,LIMCRECTATEM      
        ,FECINITEM         
        ,FECFINTEM         
        ,SALAUTCRE         
        ,SALDISCRE         
        ,LIMCRECTAC        
        ,SALAUTCREC        
        ,SALDISCREC        
        ,SALDISP_C         
        ,ANR_BALANCE_MTH   
        ,FECPROVEN         
        ,FECULTVEN         
        ,FECRESOL          
        ,IDENTCLI          
        ,CODESTCTA         
        ,FECULTESTCTA      
        ,CODCONVEN         
        ,INDCTAEMP         
        ,INDDOMCARCRE      
        ,CTACARGO          
        ,FORPAGO          
        ,INDSITCTA         
        ,COMISIONES        
        ,INTERESES         
        ,CAPITAL          
        ,GRUPOLIQ          
        ,CODBLQULT         
        ,IMPMINORIGINAL    
        ,IMPMINPENDIENTE   
        ,IMP_PAGADO        
        ,MOTBLQ          
        ,CODVIAJFRE        
        ,FECALTAVIAJ       
        ,INDCLICUMM        
        ,INDCLICUMC        
        ,FECCLICUM         
        ,CLASIFRISAT       
        ,CLASIFRIREG       
        ,CLASIFRIMDE       
        ,TASAEFECMAX       
        ,TIPOREG          
        ,SITUACION         
        ,IMPCONT          
        ,IMPAGO          
        ,IMPAPL          
        ,IMP_PENDIENTE     
        ,FECULTAPL         
        ,FECENVCOB         
        ,BALMASALTO        
        ,FECHA_BALMASALTO  
    FROM #BALANCE_SALDOS_DIARIOS
END -- OPERACION = 'G'

END  -- FIN PROCEDIMIENTO;
COMMIT;