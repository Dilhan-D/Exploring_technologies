       IDENTIFICATION DIVISION.
       PROGRAM-ID. PAIRORIMP.
       AUTHOR. DILHAN.
       DATE-WRITTEN. 05-01-2026

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBER-INPUT PIC 9(02).

       PROCEDURE DIVISION.
       BEGIN.
           IF FUNCTION MOD(NUMBER-INPUT 2) = 0
               DISPLAY "Le nombre " NUMBER-INPUT " est pair."
           ELSE
               DISPLAY "Le nombre " NUMBER-INPUT " est impair."
           END-IF.
      