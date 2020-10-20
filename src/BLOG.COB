       IDENTIFICATION DIVISION.
       PROGRAM-ID. BLOG.
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
                   'blog - *observe.observer'
                 END-CAPTION
                 META PROP BECOMES '"og:title"'
                      CON BECOMES '"blog - *observe.observer"'
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
                     CON BECOMES '"http://observe.observer/f/preview.jpg
      -    '>"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:description"'
                      CON BECOMES 'blogs :+)'
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
                   '.bloglink {FONT-WEIGHT:BOLD; FONT-STYLE:ITALIC}'
                 END-STYLE
                 DIV LINEAGE BECOMES 'listing' CLOSE-DIV
                   DIV LINEAGE BECOMES 'title' CLOSE-DIV
                     H1 CLOSE-H1
                       'coming soon :+)'
                     END-H1
                   END-DIV
                 END-DIV
                 MIDDLE
                   IMAGE SRC BECOMES '"F/LOGO.PNG"' CLOSE-IMAGE
                 END-MIDDLE
                 MIDDLE
                   LINK URL BECOMES '"https://github.com/ObserveObserver
      -    '/observeobserver.github.io/blob/master/src/observeobserver.p
      -    'l"'
                   CLOSE-LINK
                     'Written in OpenCOBOL'
                   END-LINK
                 END-MIDDLE
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM BLOG.
