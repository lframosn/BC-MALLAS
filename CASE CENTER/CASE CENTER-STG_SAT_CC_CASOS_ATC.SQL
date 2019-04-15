drop table IF EXISTS "STG_SAT"."CC_CASOS_ATC";  
COMMIT;

CREATE TABLE IF NOT EXISTS  "STG_SAT"."CC_CASOS_ATC" (
	"numero_de_caso" VARCHAR(21) NULL,
	"codigo_gestion" VARCHAR(14) NULL,
	"gestion_descripcion" VARCHAR(19) NULL,
	"fecha_apertura" VARCHAR(23) NULL,
	"fecha_modificacion" VARCHAR(23) NULL,
	"descripcion_del_caso" VARCHAR(20) NULL,
	"pan" VARCHAR(17) NULL,
	"numero_de_contrato" VARCHAR(18) NULL,
	"nombre_1" VARCHAR(15) NULL,
	"apellido_1" VARCHAR(10) NULL,
	"apellido_2" VARCHAR(10) NULL,
	"record_id_casecenter" VARCHAR(24) NULL,
	"cuscaid" VARCHAR(8) NULL,
	"created_by" VARCHAR(33) NULL,
	"estado" VARCHAR(8) NULL
); COMMIT;

