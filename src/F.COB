       IDENTIFICATION DIVISION.
       PROGRAM-ID. F.
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
               DOC
               HEAD
                 NL
                 CAPTION
                   'f - *observe.observer'
                 END-CAPTION
                 META BECOMES '"og:title"'
                   CON BECOMES '"f - *observe.observer"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:type"'
                   CON BECOMES '"website"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:url"'
                   CON BECOMES '"HTTPS://OBSERVE.OBSERVER/G.HTML"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:image"'
                 CON BECOMES '"http://observe.observer/f/preview.jpg"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:description"'
                   CON BECOMES '"''writhe in bed time.'' i close my eyes
      -    '. sit and merge, my legs and arms remains somewhat restless.
      -    '"'
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
                 NL
                 DIV LINEAGE BECOMES 'story' CLOSE-DIV
                   H1 IDENTITY BECOMES 'storytitle' CLOSE-H1
                     'f'
                   END-H1
                   PARA CLOSE-PARA
           'where one world ends, another begins. locked away, '
           'infosphere grows exponential. social paradigm shifts '
           'from physical to transpersonal, unveiling the way '
           'to vast webs of communication. small colonies exist '
           'there; pilgrims, leading a way to the new existence. '
           'abnormal, youth left to their own devices. children, '
           'that whom substituted their lack of physical with '
           'technological. a path carved from ruin and sadness, '
           'strife and loneliness. a proxy-world; a just world '
           'for those left behind. a world to be built upon new '
           'values. learned and spread. seized and believed. '
           'razed the status-quo; the new normal arrives. hope '
           'for a generation lost, found amongst a sea of '
           'information. tsunami crash, and wash away the sins '
           'of their elders. physical bodies foregone for new '
           'identities. their avatars constructed into the ideal '
           'selves, their souls lain bare. a world of connection, '
           'what they only dreamed of. arms linked, soul nodes '
           'weave; invisible, absolute. a rebellion by society''s '
           'lost and broken; with no decay. no loneliness. an '
           'invisible network of infinite connection. no one '
           'needs to be alone. no one should be alone. '
           BREAK BREAK
           'i want to connect. ' BREAK
           'i want to be connected. ' BREAK
           'i don''t want to be alone. ' BREAK
           'i don''t want anyone to be alone. ' BREAK
           'i want to merge.' BREAK
           'i want everyone to merge. ' BREAK
           'it''s unfair, isn'' it? ' BREAK
           'so close, yet so far. ' BREAK
           'there''s temptation in death, knowing connection awaits. '
            BREAK
           'the pain of diaspora will be eased one day; '
           BREAK
           'and one day i''ll feel it. '
                   END-PARA
                   END-DIV
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM F.
