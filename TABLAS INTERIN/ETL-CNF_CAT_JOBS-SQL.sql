IF EXISTS (SELECT 1 FROM cnf.cat_jobs WHERE NOMBRE_JOB = 'JOB_INTERIN')
BEGIN
  DELETE cnf.cat_jobs WHERE NOMBRE_JOB = 'JOB_INTERIN'
END
insert into cnf.cat_jobs(nombre_job,nombre_tabla,tipo_carga,reproceso) values ('JOB_INTERIN','TB_BUCKET_MORA',NULL,1)
insert into cnf.cat_jobs(nombre_job,nombre_tabla,tipo_carga,reproceso) values ('JOB_INTERIN','TB_BALANCE_SALDOS_DIARIOS',NULL,1)
insert into cnf.cat_jobs(nombre_job,nombre_tabla,tipo_carga,reproceso) values ('JOB_INTERIN','TB_AUTORIZACIONES',NULL,1)
COMMIT;