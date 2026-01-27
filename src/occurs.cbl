               IDENTIFICATION DIVISION. 
               PROGRAM-ID. occurs.
               AUTHOR. Dilhan.

               DATA DIVISION.
               WORKING-STORAGE SECTION. 
               01 TAB-NOTES.
                   05 NOTE-DES-ELEVES OCCURS TIMES PIC9(03).

               PROCEDURE DIVISION.
                   MOVE 14 TO NOTE-DES-ELEVES (1).
                   MOVE 16 TO NOTE-DES-ELEVES (2).
                   MOVE 6  TO NOTE-DES-ELEVES (3).
                   MOVE 18 TO NOTE-DES-ELEVES (4).
                   MOVE 07 TO NOTE-DES-ELEVES (5).
              
               END PROGRAM occurs.
        division.
