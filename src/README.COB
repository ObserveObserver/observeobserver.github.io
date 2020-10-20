       IDENTIFICATION DIVISION.
       PROGRAM-ID. K.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           FUNCTION ALL INTRINSIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'DICTIONARY.CPY'.
       PROCEDURE DIVISION.
           DISPLAY
               'CONTENT-TYPE: TEXT/HTML'
               NL
           END-DISPLAY.
           DISPLAY
               HEAD
                 NL
                 CAPTION
                   'README.NFO - *observe.observer'
                 END-CAPTION
                 META BECOMES '"og:title"'
                   CON BECOMES '"m - *observe.observer"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:type"'
                   CON BECOMES '"website"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:url"'
                   CON BECOMES '"HTTPS://OBSERVE.OBSERVER/L.HTML"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:image"'
                   CON BECOMES '"http://observe.observer/f/PREVIEW.JPG"'
                 CLOSE-META
           END-DISPLAY.
           CALL 'HEAD'.
           DISPLAY
               END-HEAD
               NL
               BODY
           END-DISPLAY.
           CALL 'BANNER'.
           DISPLAY
                 DIV LINEAGE BECOMES '"story"' CLOSE-DIV
                   SCRIPT SRC BECOMES
           '"https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.m
      -    'in.js"' CLOSE-SCRIPT
                   END-SCRIPT
                   SCRIPT SRC BECOMES '"f/readme.js"' CLOSE-SCRIPT
                   END-SCRIPT
                   PARA IDENTITY BECOMES '"demo"' CLOSE-PARA
                   END-PARA
                 END-DIV
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM K.
