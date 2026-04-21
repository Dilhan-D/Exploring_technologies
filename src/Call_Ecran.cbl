       IDENTIFICATION DIVISION.
       PROGRAM-ID.  Call_Ecran.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 W_NAME     PIC X(30).
       01 W_AGE      PIC 99.

       PROCEDURE DIVISION.
           MOVE SPACES TO W_NAME
           MOVE ZEROS  TO W_AGE


           CALL "ECRAN01" USING W_NAME W_AGE

           DISPLAY "Nom = " W_NAME
           DISPLAY "Age = " W_AGE

           STOP RUN.