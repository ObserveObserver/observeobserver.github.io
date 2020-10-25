       PROGRAM-ID. HEAD.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           FUNCTION ALL INTRINSIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'DICTIONARY.CPY'.
       PROCEDURE DIVISION.
           DISPLAY
                 META NAM BECOMES '"theme-color"'
                      CON BECOMES '"#FFFFFF"'
                 CLOSE-META
                 NL
                 META NAM BECOMES '"twitter:card"'
                      CON BECOMES '"summary_large_image"'
                   CLOSE-META
                 NL
                 META NAM BECOMES '"twitter:image"'
                      CON BECOMES '"https://observe.observer/f/preview.j
      -    'pg"'
                 NL
                 META NAM BECOMES '"viewport"'
                      CON BECOMES '"width=device-width, initial-scale=1.
      -    '0"'
                 CLOSE-META
                 NL
                 L1NK RELATES BECOMES '"stylesheet"'
                      KIND BECOMES '"text/css"'
                      URL BECOMES '"f/test.css"'
                 CLOSE-LINK
                 NL
                 META ' http-equiv' BECOMES '"content-type"'
                       CON BECOMES '"text/html; charset=UTF-8"'
                 CLOSE-META
                 NL
           END-DISPLAY.
       GOBACK.
       END PROGRAM HEAD.
