01	PCEXTCU1_CU.	02	IDENTIFICADOR_EJECUCION	PIC 9.
		02	CODENT_D	PIC X(4).
		02	NSECFIC_D	PIC 9(10).
		02	TIPOCINTA_D	PIC 9(2).
		02	TIPOREG_D	PIC X(1).
		02	FILLER_D	PIC X(91).
		02	NUMREGPROC	PIC 9(12).
		02	CODENT	PIC X(4).
		02	CENTALTA	PIC X(4).
		02	CUENTA	PIC X(12).
		02	TIPOREG	PIC X(2).
		02	PRODUCTO	PIC X(2).
		02	SUBPRODU	PIC X(4).
		02	CONPROD	PIC X(3).
		02	CALPART	PIC X(2).
		02	NUMBEN	PIC 9(5).
		02	CODREGIMEN	PIC 9(4).
		02	CLAMON	PIC 9(3).
		02	LIMCRECTA	PIC 9(15)V99.
		02	LIMCRECTAC	PIC 9(15)V99.
		02	SALDISCRE	PIC 9(15)V99.
		02	SALDISCREC	PIC 9(15)V99.
		02	INDMONPRIN	PIC X(1).
		02	CODFORMATO	PIC X(10).
		02	DISBLECRECTA	PIC X(17).
		02	DISBLECRECTAC	PIC X(17).
		02	GRUPOLIQ	PIC 9(2).
		02	DESPROD	PIC X(30).
		02	INTERESANUAL	PIC 9(5)V9999.
		02	NOMBREMP	PIC X(30).
		02	GRUPOEMP	PIC 9(4).
		02	BALMESACT	PIC 9(15)V99.
		02	BALMESANT	PIC 9(15)V99.
		02	FILLER1	PIC X(733).
				
01	PCEXTCU1_LI.	02	IDENTIFICADOR_EJECUCION	PIC 9.
		02	CODENT_D	PIC X(4).
		02	NSECFIC_D	PIC 9(10).
		02	TIPOCINTA_D	PIC 9(2).
		02	TIPOREG_D	PIC X(1).
		02	FILLER_D	PIC X(91).
		02	NUMREGPROC	PIC 9(12).
		02	CODENT	PIC X(4).
		02	CENTALTA	PIC X(4).
		02	CUENTA	PIC X(12).
		02	TIPOREG	PIC X(2).
		02	LINEA	PIC X(4).
		02	CODCAMCOM	PIC X(4).
		02	CLAMON	PIC 9(3).
		02	LIMCRELIN	PIC 9(15)V99.
		02	SALAUTLIN	PIC 9(15)V99.
		02	SALDISLIN	PIC 9(15)V99.
		02	FECINILIN	PIC X(10).
		02	FECFINLIN	PIC X(10).
		02	INDTIPLIN	PIC X(1).
		02	INDTIPOPE	PIC X(1).
		02	IMPCUOTATOT	PIC 9(15)V99.
		02	IMPCOMPTOT	PIC 9(15)V99.
		02	BALCUOACT	PIC 9(15)V99.
		02	BALCUOANT	PIC 9(15)V99.
		02	CREDDISP	PIC 9(15)V99.
		02	FILLER1	PIC X(809).
				
01	PCEXTCU1_FI.	
		02	CODENT_D	PIC X(4).
		02	NSECFIC_D	PIC 9(10).
		02	TIPOCINTA_D	PIC 9(2).
		02	TIPOREG_D	PIC X(1).
		02	FILLER_D	PIC X(91).
		02	NUMREGPROC	PIC 9(12).
		02	CODENT	PIC X(4).
		02	CENTALTA	PIC X(4).
		02	CUENTA	PIC X(12).
		02	TIPOREG	PIC X(2).
		02	PAN	PIC X(22).
		02	IMPFAC	PIC 9(15)V99.
		02	CODCOM	PIC X(15).
		02	NOMCOMRED	PIC X(27).
		02	NUMOPECUO	PIC 9(6).
		02	CLAMON	PIC 9(3).
		02	NUMFINAN	PIC 9(3).
		02	TOTCUOTAS	PIC 9(9).
		02	IMPCUOTA	PIC 9(15)V99.
		02	NUMCUOPAG	PIC 9(9).
		02	IMPTOTAL	PIC 9(15)V99.
		02	IMPINTTOTAL	PIC 9(15)V99.
		02	IMPAMORT	PIC 9(15)V99.
		02	IMPINTAMORT	PIC 9(15)V99.
		02	FECULTLIQ	PIC X(10).
		02	FECALTA	PIC X(10).
		02	NUMULTCUO	PIC 9(9).
		02	PORINT	PIC 9(3)V9999.
		02	INTANUAL	PIC 9(5)V9999.
		02	FILLER1	PIC X(737).
				
01	PCEXTCU1_CE.	02	IDENTIFICADOR_EJECUCION	PIC 9.
		02	CODENT_D	PIC X(4).
		02	NSECFIC_D	PIC 9(10).
		02	TIPOCINTA_D	PIC 9(2).
		02	TIPOREG_D	PIC X(1).
		02	FILLER_D	PIC X(91).
		02	NUMREGPROC	PIC 9(12).
		02	CODENT	PIC X(4).
		02	CENTALTA	PIC X(4).
		02	CUENTA	PIC X(12).
		02	TIPOREG	PIC X(2).
		02	NUMOPECUO	PIC 9(6).
		02	NUMFINAN	PIC 9(3).
		02	NUMCUOTA	PIC 9(9).
		02	IMPCUOTA	PIC 9(15)V99.
		02	IMPCAPITAL	PIC 9(15)V99.
		02	IMPINTERESES	PIC 9(15)V99.
		02	IMPIMPTO	PIC 9(15)V99.
		02	FECLIQ	PIC X(10).
		02	FILLER1	PIC X(882).
				
01	PCEXTCU1_CC.	02	IDENTIFICADOR_EJECUCION	PIC 9.
		02	CODENT_D	PIC X(4).
		02	NSECFIC_D	PIC 9(10).
		02	TIPOCINTA_D	PIC 9(2).
		02	TIPOREG_D	PIC X(1).
		02	FILLER_D	PIC X(91).
		02	NUMREGPROC	PIC 9(12).
		02	CODENT	PIC X(4).
		02	CENTALTA	PIC X(4).
		02	CUENTA	PIC X(12).
		02	TIPOREG	PIC X(2).
		02	NUMOPECUO	PIC 9(6).
		02	NUMFINAN	PIC 9(3).
		02	NUMCUOTA	PIC 9(9).
		02	CODCONECO	PIC 9(4).
		02	TIPIMP	PIC 9(2).
		02	IMPAPLECO	PIC 9(15)V99.
		02	IMPBRUECO	PIC 9(15)V99.
		02	IMPBONECO	PIC 9(15)V99.
		02	SIGNO	PIC X(1).
		02	FILLER1	PIC X(902).
				
01	PCEXTCU1_CL.	02	IDENTIFICADOR_EJECUCION	PIC 9.
		02	CODENT_D	PIC X(4).
		02	NSECFIC_D	PIC 9(10).
		02	TIPOCINTA_D	PIC 9(2).
		02	TIPOREG_D	PIC X(1).
		02	FILLER_D	PIC X(91).
		02	NUMREGPROC	PIC 9(12).
		02	CODENT	PIC X(4).
		02	CENTALTA	PIC X(4).
		02	CUENTA	PIC X(12).
		02	TIPOREG	PIC X(2).
		02	NOMBRE	PIC X(40).
		02	APELLIDO1	PIC X(36).
		02	APELLIDO2	PIC X(36).
		02	FORMAENVIO	PIC X(2).
		02	E_MAIL	PIC X(100).
		02	CODPAIS	PIC 9(3).
		02	PAIS	PIC X(20).
		02	CODREGION   	PIC X(3).
		02	DESCREGION  	PIC X(20).
		02	CODPROV     	PIC X(2).
		02	DESCPROV    	PIC X(20).
		02	CIUDAD      	PIC X(5).
		02	DESCCIUDAD  	PIC X(35).
		02	CODMUNICIP  	PIC X(5).
		02	MUNICIPIO   	PIC X(40).
		02	CODSECTOR   	PIC X(5).
		02	SECTOR      	PIC X(40).
		02	CODBARRIO   	PIC X(5).
		02	BARRIO      	PIC X(40).
		02	TIPVIA      	PIC X(2).
		02	NOMVIA      	PIC X(5).
		02	DESCNOMVIA  	PIC X(100).
		02	NUMVIA      	PIC X(6).
		02	ESCALERA    	PIC X(4).
		02	PISO        	PIC X(4).
		02	PUERTA      	PIC X(4).
		02	MANZANA     	PIC X(10).
		02	EDIFICIO    	PIC X(4).
		02	KILOMETRO   	PIC X(7).
		02	CODPOSTAL   	PIC X(10).
		02	CODAPTCOR   	PIC X(10).
		02	ENTRCALLES1 	PIC X(5).
		02	DESENTRCALL1	PIC X(100).
		02	ENTRCALLES2 	PIC X(5).
		02	DESENTRCALL2	PIC X(100).
		02	RESTODIR	PIC X(40).
		02	NUMDOC	PIC X(22).
		02	APELARGO	PIC X(50).
		02	FILLER1	PIC X(33).
