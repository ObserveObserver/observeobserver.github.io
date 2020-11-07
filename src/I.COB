       IDENTIFICATION DIVISION.
       PROGRAM-ID. I.
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
               NL
               HEAD
                 NL
                 CAPTION
                   'i - *observe.observer'
                 END-CAPTION
                 META PROP BECOMES '"og:title"'
                      CON BECOMES '"i - *observe.observer"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:type"'
                      CON BECOMES '"website"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:url"'
                      CON BECOMES '"HTTPS://OBSERVE.OBSERVER/M.HTML"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:image"'
                  CON BECOMES '"https://observe.observer/f/preview.jpg"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:description"'
                      CON BECOMES '"why does it bother me so much? i cou
      -    'ldn''t even move. breathing heavily, i gripped nothing as ha
      -    'rd as i could..."'
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
                 DIV LINEAGE BECOMES '"story"' CLOSE-DIV
                   H1 IDENTITY BECOMES '"storytitle"' CLOSE-H1
                     'i'
                   END-H1
                   SCRIPT SRC BECOMES '"https://ajax.googleapis.com/ajax
      -    '/libs/jquery/3.4.0/jquery.min.js"' CLOSE-SCRIPT
                   END-SCRIPT
                   SCRIPT SRC BECOMES '"f/typeWriter.js"' CLOSE-SCRIPT
                   END-SCRIPT
                   PARA IDENTITY BECOMES '"demo"' CLOSE-PARA
                   END-PARA
                   PARA STYLE-ATTR BECOMES
                            '"display:none;text-align:left;"' CLOSE-PARA
           'it''s stressful.' BREAK
           'i just want it to stop.' BREAK
            BREAK
           'i get urges,' BREAK
           'i get angry,' BREAK
           'i get frustrated,' BREAK
           'i get depressed;' BREAK
            BREAK BREAK
           'an angry sadness,' BREAK
            BREAK BREAK
           'a sadness i can''t love.' BREAK
            BREAK BREAK
           'why does it bother me so much? i couldn''t even fucking '
           'move, breathing heavily. i gripped nothing as hard i '
           'could grip. i saw myself bashing my skull and creating a '
           'nice dent in the door. something is really satisfying and '
           'cathartic about the thought, it just fits. thoughts of '
           'punching my wall as hard as possible, breaking every '
           'bone. that''d show them, then they''d feel bad. maybe '
           'they can feel like i do, then? i don''t know. i wish '
           'people knew the pain i feel sometimes, or rather, i '
           'wish someone actually cared a lot. i wish someone cared '
           'for me like i care. it''s different, and i don''t expect '
           'it. i compare my pain and put it down, some trained '
           'humbleness. but it''s tiresome, i jus want to grieve '
           'without feeling bad about it. '  BREAK
            BREAK BREAK
           'it''s hopeful and pretty,' BREAK
           'i want it to be drawn out.' BREAK
           'i want to experience it in it''s fullest.' BREAK
           'i want to be happy when i die.' BREAK
            BREAK BREAK
           'it''s such a comfortable thought,' BREAK
           'to be laughing or smiling;' BREAK
           'what about in your embrace?' BREAK
            BREAK BREAK
           'it''s nice.' BREAK
            BREAK BREAK
           'quickly seems terrible,' BREAK
           'what a waste.' BREAK
           'but young is a shame.' BREAK
            BREAK BREAK
           'i want everyone to die,' BREAK
           'i don''t want anyone to be in pain;' BREAK
           'i don''t want anyone to die.' BREAK
            BREAK BREAK
           'the world is beautiful,' BREAK
           'life is a marvel.' BREAK
            BREAK BREAK
           'i want people to be beautiful,' BREAK
           'i want people to be emotional.' BREAK
            BREAK BREAK
           'i love sadness,' BREAK
           'sadness is beautiful.' BREAK
           'empathy is beautiful.' BREAK
            BREAK BREAK
           'everyone''s emotions,' BREAK
           'everyone''s tears mixing together;' BREAK
           'everyone crying for each other,' BREAK
           'everyone feeling everyone''s pain.' BREAK
            BREAK BREAK
           'god it''s beautiful,' BREAK
           'i want that world.' BREAK
            BREAK BREAK
           'i''m lucky to be alive,' BREAK
           'i''m lucky to be emotional.' BREAK
            BREAK BREAK
           'i want to breakdown and reset,' BREAK
           'i want to wail and scream,' BREAK
           'i want to let out all my pain,' BREAK
           'i want to let out all my anger.' BREAK
            BREAK BREAK
           'i want someone to empathize,' BREAK
           'i want someone to say it''ll be ok' BREAK
           'even if i know it''ll be ok' BREAK
           '(and i do know it''ll be ok.)' BREAK
            BREAK BREAK
           'i want everyone to empathize with everyone,' BREAK
           'i want everyone to love everyone.' BREAK
           'i want everyone to connect,' BREAK
           'i want no-one to feel lonely.' BREAK
            BREAK BREAK
            BREAK BREAK
           'i want everyone''s pain,' BREAK
           'i want to make everyone happy.' BREAK
                   PARA CLOSE-PARA
                   END-PARA
                   END-DIV
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM I.
