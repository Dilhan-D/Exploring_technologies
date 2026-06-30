       IDENTIFICATION DIVISION. 
       PROGRAM-ID. TestIF.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
         01  WS-AGE        PIC 99 VALUE 16.
         01  WS-STATUE     PIC X(10).
       PROCEDURE DIVISION.
       MAIN.

           IF WS-AGE <=18
               MOVE "Mineur" TO WS-STATUE
           ELSE
               MOVE "Majeur" TO WS-STATUE
           END-IF.
           DISPLAY "Statut de la personne : " WS-STATUE.
           DISPLAY "Age de la personne : " WS-AGE.

           STOP RUN.
           