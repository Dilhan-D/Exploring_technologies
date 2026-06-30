       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE-TO.  

       DATA DIVISION. 
       WORKING-STORAGE SECTION.
      *   01  1E-VAR      PIC X(10) VALUE "Hi".
         01 TESTINT      PIC 9(01).
         01 E-VAR1       PIC 9(01).
         01 E-VAR2       PIC 9(05).
         01 E-VAR3       PIC 9(05).
         01 E-TEST       PIC 9(10).
         01 TOTALI       PIC 9(06).
         01 VARCH1       PIC X(10) VALUE 'BONJOUR'. 
         01 VARCH2       PIC X(10) VALUE "Dilhan".
         01 E-VCHT       PIC X(20).

       PROCEDURE DIVISION.
       BEGIN.
      * MOVE "Hello" TO 1E-VAR.
           MOVE 12345 TO TESTINT.
           MOVE 50  TO E-VAR1. 
           MOVE 100 TO E-VAR2.
           MOVE 250 TO E-VAR3.
           COMPUTE E-TEST = E-VAR1 + E-VAR2 + E-VAR3 + TESTINT.
           COMPUTE TOTALI = TESTINT * E-VAR1 * E-VAR2 * E-VAR3.
           STRING VARCH1 DELIMITED BY SIZE
                  VARCH2 DELIMITED BY SIZE
                  INTO E-VCHT.

      * AFFICHER LA VALEUR DE E-VAR.
           DISPLAY 'Affiche le message : ' TESTINT.
           DISPLAY 'Valeur de E-VAR1 : ' E-VAR1.
           DISPLAY 'Affiche le message : 'E-VAR2.
           DISPLAY 'Affiche le message : 'E-VAR3.
           DISPLAY 'Affiche le message de TESTI : 'TESTINT.
           DISPLAY 'Affiche le message combiné : 'E-TEST.
           DISPLAY 'Affiche le message total : 'TOTALI.
           DISPLAY 'Affiche le message combiné de VCH1 & VCH2 :' E-VCHT. 

           STOP RUN.
