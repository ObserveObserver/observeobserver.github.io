       PROGRAM-ID. BANNER.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           FUNCTION ALL INTRINSIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'DICTIONARY.CPY'.
       PROCEDURE DIVISION.
           DISPLAY
           DIV LINEAGE BECOMES '"top"' CLOSE-DIV
           H1 CLOSE-H1
            '*observe.observer'
           END-H1
           END-DIV
           DIV LINEAGE BECOMES '"links"' CLOSE-DIV
             DIV LINEAGE BECOMES '"storieslink"' CLOSE-DIV
               LINK URL BECOMES '"/"' CLOSE-LINK
                 'stories'
               END-LINK
             END-DIV
             NL
             DIV LINEAGE BECOMES '"bloglink"' CLOSE-DIV
               LINK URL BECOMES '"BLOG.COB"' CLOSE-LINK
                 'blog'
               END-LINK
             END-DIV
             NL
             DIV LINEAGE BECOMES '"readmelink"' CLOSE-DIV
               LINK URL BECOMES '"README.COB"' CLOSE-LINK
                 'README.NFO'
               END-LINK
             END-DIV
             NL
             DIV LINEAGE BECOMES '"keyboardlink"' CLOSE-DIV
               LINK URL BECOMES '"KEYBOARDS.COB"' CLOSE-LINK
                 'keyboards'
               END-LINK
             END-DIV
           END-DIV
           NL
           DIV IDENTITY BECOMES '"divider"' CLOSE-DIV
             '=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-='
           END-DIV
           END-DISPLAY.
       GOBACK.
       END PROGRAM BANNER.
