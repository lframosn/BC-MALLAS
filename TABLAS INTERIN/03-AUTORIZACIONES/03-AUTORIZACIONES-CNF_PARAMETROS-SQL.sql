IF EXISTS (SELECT 1 FROM CNF.PARAMETROS WHERE PARAMETRO = 'INTERIN_ULTFEC_AUTORIZACIONES')
BEGIN
  DELETE CNF.PARAMETROS WHERE PARAMETRO = 'INTERIN_ULTFEC_AUTORIZACIONES'
END
INSERT CNF.PARAMETROS
(PARAMETRO, VALOR)
SELECT 'INTERIN_ULTFEC_AUTORIZACIONES','2019/05/01'
COMMIT;