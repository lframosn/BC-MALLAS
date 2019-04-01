-----------------------------
--INDICES ASOCIADOS A LA VISTA
-----------------------------
create HG index if not exists idx_HG_PCENVPO1_RI_CUENTA on SAT.PCENVPO1_RI(CUENTA)
create HG index if not exists idx_HG_PCENVPO1_RI_FECVENMOV on SAT.PCENVPO1_RI(FECVENMOV)
COMMIT;