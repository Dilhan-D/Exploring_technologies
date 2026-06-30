       IDENTIFICATION DIVISION.
       PROGRAM-ID. BOUCLEFOR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  I     PIC 9(02).

       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               IF I = 3
                *>    DISPLAY "Trois !"
      *            display "TROIS !"
                   display "C'est un nombre impair."
               IF I = 5
                   DISPLAY "Cinq !"   
               ELSE
                   DISPLAY "Nombre : " I
               END-IF
           END-PERFORM.
           STOP RUN.
