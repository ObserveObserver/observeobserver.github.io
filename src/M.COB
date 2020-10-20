       IDENTIFICATION DIVISION.
       PROGRAM-ID. M.
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
                   'm - *observe.observer'
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
                   CON BECOMES '"HTTPS://OBSERVE.OBSERVER/M.HTML"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:image"'
                  CON BECOMES '"http://observe.observer/f/preview.jpg>"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:description"'
                   CON BECOMES 'i just want us to be happy. im happy. not re
      -    'ally? dont know, hard to say...'
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
                 H1 IDENTITY BECOMES 'storytitle' CLOSE-META
                   'm'
                 END-H1
                 PARA CLOSE-PARA
           'why can''t people be who they want to be?'
                 BREAK BREAK
           'i can''t accept the world as it is. i wish for a pure world'
           'a world where people could be beautiful. i want you to be y'
           'ourself, i don''t want you to hold back. i know it''s hard,'
           ' maybe '
           'impossible at times. it''s a pain i can''t face. there''s '
           'so much potential, i''ve felt and seen it. that potential f'
           'eels limitless, but is out of reach. i wish there was no m'
           'asking. you''re fine just the way you are, really. '
           'don''t pr'
           'etend for others!'
                 BREAK BREAK
           '(i know you have to...)'
                 BREAK BREAK
           '(...i wish you didn''t.)'
                 BREAK BREAK
           'i hate mass media, i hate alt media, i hate it all. it''s '
           'all trying to contain your identity, your spirit; i really '
           'hate that. i wish you could truly be yourself, who you are '
           'at your core, who you were as a child. i wish everyone co '
           'uld. i wish everyone''s souls could blossom; become pure '
           'and light! let 3,000,000,000 cultures bloom! let 3,000,00'
           '0,000 selves emerge. a world where one isn''t clay for cul'
           'ture to mold, whose parents won''t dictate who they should '
           'and should not be, who they can and cannot be. no gende'
           'red, no cultured. no norms, no standard.'
                 BREAK BREAK
           'i can''t accept the world as it is. i wish for a world '
           'where people cared, a world where people could be compass'
           'ionate. i want you to cry, i don''t want you to hold back. '
           'i want you to ring true, i want you to be loved. i wish e'
           'veryone loved each other, at least each other''s humani'
           'ties, each others souls. i don''t want you to hide anymore,'
           ' i wish you weren''t afraid. i wish there was no fear, no '
           'phobia. i wish we could love and be loved, unequivically. '
           'i wish we abandoned earthly power for something much more'
           '. more comfort, more security, the last thought in bed '
           'always being "i''m at peace."'
                 BREAK BREAK
           'i hate the world as it is. it''s hard for me to accept'
           '. i know it''ll take time, and even then i will never full'
           'y accept it. i want to change the world in some small way, '
           'for some small amount of people. i want to take away you'
           'r pain, everyone''s pain. i want to give you reason to '
           'get out of bed, i want you to know you are genuinely loved.'
                 BREAK BREAK
           'the world''s a scary place, disconnected and ruthless. '
           'people like us don''t survive. but take my hand, and let''s'
           ' bravely set foot together. as long as you''re with me, i'
           ' feel like nothing can go wrong. place trust in me as'
           ' i trust you, let''s find the purity, connection, warmth,'
           ' affirmation and love we all seek deep down.'
                 BREAK BREAK
           'let''s discover happiness, in our own little ways.'
                 BREAK BREAK
           'let''s do it together.'
                 END-PARA
                 END-DIV
             END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM M.
