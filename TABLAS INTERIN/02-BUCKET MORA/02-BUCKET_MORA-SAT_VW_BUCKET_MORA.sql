COMMIT;
DROP VIEW IF EXISTS SAT.VW_BUCKET_MORA;
CREATE VIEW SAT.VW_BUCKET_MORA AS
-- SI DESEA QUE LA VISTA LEA DE TABLAS BASES EJECUTAR: SELECT * FROM SAT.SP_BUCKET_MORA('V') 
-- SI DESEA QUE LA VISTA LEA DE TABLA FIJA EJECUTAR: SELECT * FROM SAT.SP_BUCKET_MORA('L') 
SELECT * FROM SAT.SP_BUCKET_MORA('V') ;