IF EXISTS (SELECT 1 FROM CNF.PARAMETROS WHERE PARAMETRO = 'INTERIN_ULTFEC_BUCKET_MORA')
BEGIN
  DELETE CNF.PARAMETROS WHERE PARAMETRO = 'INTERIN_ULTFEC_BUCKET_MORA'
END
INSERT CNF.PARAMETROS
(PARAMETRO, VALOR)
SELECT 'INTERIN_ULTFEC_BUCKET_MORA','2019/05/01'
COMMIT;