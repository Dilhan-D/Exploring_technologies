       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ecran.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 OPT_1 PIC X.

       LINKAGE SECTION.
       01 W-NOM PIC X(20).

       SCREEN SECTION.
       01 SCREEN.
          05 BLANK SCREEN.
          05 LINE 2 COLUMN 10 VALUE "SOUS PROGRAMME" foreground-color 3.
          05 LINE 4 COLUMN 10 VALUE "Nom :".
          05 LINE 4 COLUMN 20 PIC X(20) USING W-NOM.
          05 LINE 6 COLUMN 10 VALUE "Appuie sur ENTREE".

       PROCEDURE DIVISION USING W-NOM.
           DISPLAY SCREEN
           ACCEPT  W-NOM
           if OPT_1 = "1"
              MOVE "JJean Valjean" TO W-NOM
           if OPT_1 = "2"
              MOVE "Josiane" TO W-NOM
           if OPT_1 = "3"
              end program.
           END-IF
           end program.