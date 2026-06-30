      *Date: 2025-12-28
      *Simple COBOL program to demonstrate simples ds and displays 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CBL1.
       AUTHOR. Dilhan.
       DATE-WRITTEN. 2025-12-28

       ENVIRONMENT DIVISION.
       DATA DIVISION.
      *FILE SECTION.                    *>  FOR EXTERNAL FILES
       WORKING-STORAGE SECTION. 
         01  PERSON.
           05 V-NAME      PIC A(20).    *> Alphanumeric field for name
           05 V-AGE       PIC 9(5).     *> Numeric field for age
           05 V-ADDRESS.                *> Pas de PIC pour les FORMATS   
              10 V-STREET PIC A(30).
              10 V-CITY   PIC X(20).
              10 V-STATE  PIC 9(3).
         01 V-ACTP        PIC X(100).
         01 V-HOUR        PIC X(50).

       PROCEDURE DIVISION.
       BEGIN.
           MOVE "Dilhan" TO V-NAME.
           MOVE 28 TO V-AGE.
           MOVE "Portsmouth, VA 23704, États-Unis"
           TO V-ADDRESS.
           MOVE "2211 Frederick Blvd" TO V-STREET.
           MOVE "Norfolk" TO V-CITY.
           MOVE +11111 TO V-STATE.  
           DISPLAY "Age =" V-AGE.
           DISPLAY "Name =" V-NAME.
      *    DISPLAY "Address =" V-ADDRESS.
      *    DISPLAY "Street =" V-STREET.
      *    DISPLAY "City =" V-CITY.
      *    DISPLAY "State =" V-STATE.
           DISPLAY V-ADDRESS " " V-STREET " " V-CITY " " V-STATE.
           DISPLAY "ACCEPT simple".
           DISPLAY "Entrez votre nom: ".
           ACCEPT V-ACTP.                *> Attend l'input utilisateur
           DISPLAY "Name " V-ACTP.
           DISPLAY " ".
           DISPLAY "ACCEPT FROM TIME".
           ACCEPT V-HOUR FROM TIME.            *> Heure actuelle
           DISPLAY "Heure actuelle: " V-HOUR.
           DISPLAY " ".
           STOP RUN.
           