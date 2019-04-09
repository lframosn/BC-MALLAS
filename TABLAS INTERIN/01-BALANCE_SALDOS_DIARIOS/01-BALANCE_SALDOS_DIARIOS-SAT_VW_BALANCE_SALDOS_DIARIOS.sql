COMMIT
drop view IF EXISTS SAT.VW_BALANCE_SALDOS_DIARIOS;
commit;
create VIEW SAT.VW_BALANCE_SALDOS_DIARIOS 
AS
-- SI SE DESEA QUE LA VISTA LEA DE TABLAS BASES EJECUTAR: SELECT * FROM SAT.SP_BALANCE_SALDOS_DIARIOS('V')
-- SI SE DESEA QUE LA VISTA LEA DE TABLA FIJA EJECUTAR..: SELECT * FROM SAT.SP_BALANCE_SALDOS_DIARIOS('L')
SELECT   B.FECENVIO       
        ,B.CODENT_D      
        ,B.CUENTA        
        ,B.PAN_TI        
        ,B.CODBLQ_PAN    
        ,B.UNICO         
        ,B.FECCADTAR     
        ,B.MOTBLQ_PAN    
        ,B.NUMORDEN      
        ,B.FECULTCAR     
        ,B.PRODUCTO      
        ,B.SUBPRODU          
        ,B.LIMCRECTA         
        ,B.LIMCRECTATEM      
        ,B.FECINITEM         
        ,B.FECFINTEM         
        ,B.SALAUTCRE         
        ,B.SALDISCRE         
        ,B.LIMCRECTAC        
        ,B.SALAUTCREC        
        ,B.SALDISCREC        
        ,B.SALDISP_C         
        ,B.ANR_BALANCE_MTH   
        ,B.FECPROVEN         
        ,B.FECULTVEN         
        ,B.FECRESOL          
        ,B.IDENTCLI          
        ,B.CODESTCTA         
        ,B.FECULTESTCTA      
        ,B.CODCONVEN         
        ,B.INDCTAEMP         
        ,B.INDDOMCARCRE      
        ,B.CTACARGO          
        ,B.FORPAGO          
        ,B.INDSITCTA         
        ,B.COMISIONES        
        ,B.INTERESES         
        ,B.CAPITAL          
        ,B.GRUPOLIQ          
        ,B.CODBLQULT         
        ,B.IMPMINORIGINAL    
        ,B.IMPMINPENDIENTE   
        ,B.IMP_PAGADO        
        ,B.MOTBLQ          
        ,B.CODVIAJFRE        
        ,B.FECALTAVIAJ       
        ,B.INDCLICUMM        
        ,B.INDCLICUMC        
        ,B.FECCLICUM         
        ,B.CLASIFRISAT       
        ,B.CLASIFRIREG       
        ,B.CLASIFRIMDE       
        ,B.TASAEFECMAX       
        ,B.TIPOREG          
        ,B.SITUACION         
        ,B.IMPCONT          
        ,B.IMPAGO          
        ,B.IMPAPL          
        ,B.IMP_PENDIENTE     
        ,B.FECULTAPL         
        ,B.FECENVCOB         
        ,B.BALMASALTO        
        ,B.FECHA_BALMASALTO   
		,B.IMP_LIN_DEUDA
        ,M.DIASMORA
        ,M.BUCKET_MORA
        ,M.MONTO_MORAINICIAL
        ,M.MORA1 
        ,M.MORA2 
        ,M.MORA3
        ,M.MORA4 
        ,M.MORA5 
        ,M.MORA6
  FROM SAT.SP_BALANCE_SALDOS_DIARIOS('V') B
     ,SAT.SP_BUCKET_MORA('V') M
 WHERE B.CUENTA = M.CUENTA
   AND B.FECENVIO = M.FECENVIO
