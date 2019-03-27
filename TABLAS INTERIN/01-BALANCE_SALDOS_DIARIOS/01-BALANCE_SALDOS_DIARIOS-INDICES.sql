-----------------------------
-INDICES ASOCIADOS A LA VISTA
-----------------------------
create HG index if not exists idx_HG_ATINTCAB_FECENVIO on SAT.ATINTCAB(FECENVIO);
CREATE HG index IF NOT EXISTS idx_HG_PARAMETROS_PARAMETRO on CNF.PARAMETROS(PARAMETRO);
CREATE HG index if not exists idx_HG_PCENVPO1_CU_CUENTA on SAT.PCENVPO1_CU(CUENTA);
CREATE HG index if not exists idx_HG_PCENVPO1_CU_SALDISCRE on SAT.PCENVPO1_CU(SALDISCRE);
CREATE HG index if not exists idx_HG_PCENVPO1_CU_IDENTIFICADOR_EJECUCION on SAT.PCENVPO1_CU(IDENTIFICADOR_EJECUCION);
CREATE HG index if not exists idx_HG_PCENVPO1_IC_CUENTA on SAT.PCENVPO1_IC(CUENTA);
CREATE HG index if not exists idx_HG_PCENVPO1_IC_IDENTIFICADOR_EJECUCION on SAT.PCENVPO1_IC(IDENTIFICADOR_EJECUCION);
CREATE HG index if not exists idx_HG_PCENVPO1_MP_CUENTA on SAT.PCENVPO1_MP(CUENTA);
CREATE HG index if not exists idx_HG_PCENVPO1_MP_IDENTIFICADOR_EJECUCION on SAT.PCENVPO1_MP(IDENTIFICADOR_EJECUCION);
CREATE HG index if not exists idx_HG_PCENVPO1_MP_CALPART on SAT.PCENVPO1_MP(CALPART);
CREATE HG index if not exists idx_HG_TBDOCPER_IDENTCLI on SAT.TBDOCPER(IDENTCLI);
CREATE HG index if not exists idx_HG_TBDOCPER_TIPDOC on SAT.TBDOCPER(TIPDOC);
CREATE HG index if not exists idx_HG_TBDOCPER_IDENTIFICADOR_EJECUCION on SAT.TBDOCPER(IDENTIFICADOR_EJECUCION);
COMMIT;