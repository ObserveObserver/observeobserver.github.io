       IDENTIFICATION DIVISION.
       PROGRAM-ID. KB.
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
                   'keyboards - *observe.observer'
                 END-CAPTION
                 META PROP BECOMES '"og:title"'
                      CON BECOMES '"keyboards - *observe.observer"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:type"'
                      CON BECOMES '"website"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:url"'
                      CON BECOMES '"HTTPS://OBSERVE.OBSERVER/BLOG.HTML"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:image"'
                     CON BECOMES '"https://observe.observer/f/preview.jp
      -    'g"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:description"'
                      CON BECOMES 'a lonely ghosts thoughts on keyboards
      -    ''
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
                 STYLE
                   '.keyboardlink {FONT-WEIGHT:BOLD; FONT-STYLE:ITALIC}'
                 END-STYLE
                 DIV LINEAGE BECOMES 'listing' CLOSE-DIV
                   DIV LINEAGE BECOMES 'title' CLOSE-DIV
                     H1 CLOSE-H1
                      'COMING SOON! first post will be full keyboard col
      -    'lection review.'
                     END-H1
                   END-DIV
                 END-DIV
                 MIDDLE
                   IMAGE SRC BECOMES '"f/logo.png"' CLOSE-IMAGE
                 END-MIDDLE
                 MIDDLE
                   LINK URL BECOMES '"https://github.com/ObserveObserver
      -    '/observeobserver.github.io/tree/master/src"'
                   CLOSE-LINK
                     'Written in OpenCOBOL'
                   END-LINK
                 END-MIDDLE
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM KB.
