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
               DOC
               NL
               HEAD
                 NL
                 CAPTION
                   'k - *observe.observer'
                 END-CAPTION
                 META PROP BECOMES '"og:title"'
                      CON BECOMES '"m - *observe.observer"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:type"'
                      CON BECOMES '"website"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:url"'
                      CON BECOMES '"HTTPS://OBSERVE.OBSERVER/L.HTML"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:image"'
                      CON BECOMES '"http://observe.observer/f/preview.jp
      -    'g"'
                 CLOSE-META
                 NL
                 META PROP BECOMES '"og:description"'
                      CON BECOMES '"i just want us to be happy. im happy
      -    ' not really? dont know, hard to say..."'
                 CLOSE-META
                 NL
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
                   H1 IDENTITY BECOMES '"storytitle"' CLOSE-H1
                       'k'
                   END-H1
                   NL
                   PARA CLOSE-PARA
           'i just want us to be happy. im happy. not really? '
           'dont know, hard to say. sometimes im happy, sometimes im '
           'miserable. unfulfilled. i want you to be happy. i know '
           'why you''re not, and it''s ok. i want to make you happy; '
           'i want to fix you. it''s not my job, but i have to do it. '
           'it''s in my heart, it''s in my soul. i just want to see '
           'you smile. i want to see you comfortable. you will be, '
           'i promise. just let me, ok?'
                   BREAK
                   BREAK
           'we''ll all be happy in death. we''ll all be connected. '
           'we''ll all be loved. we''ll all be cherished; '
           'i''ve said it before. i want it so bad. but i''m so afraid'
           '. i don''t want to leave. i know i''ll die young, '
           'i''ve always known. i dont want to leave you. if you die,'
           'i''ll die. i don''t want you to die. please don''t die '
           'when i die. i want you to live so badly. '
           'i want you to feel alive. i want you to feel real. '
           'i want to be apart of you. we''ll merge one day, '
           'i''ve said it before. '
                   BREAK
                   BREAK
           'i want your pain, i want your love, i can finally feel it. '
           'i want to be appreciated. i want to be cherished. '
           'i want to be loved. i want to be connected. '
           'why don''t people connect with me? it''s so hard. '
           'it fucking hurts. i get overwhelmed. i get sad. i '
           'withdraw. i don''t know why im like this, but i '
           'love myself. well, sometimes i do. i love you more '
           'than myself. i really mean that. im going to marry you, '
           'you know? its not just talk. you will be my wife, '
           'my housewife. im going to show you the world. '
           'we will die together. our souls will die, our souls '
           'will merge. we will become one being, one soul, '
           'one consciousness. i will become you, you will become me. '
           'it makes me so fucking happy. i cant wait :)'
                   BREAK
                   BREAK
           'im such a sad person. im very depressed. im always '
           'depressed. its how ive always been. its how i always '
           'will be. i dont mean to make you feel bad, i really dont '
           'want anyone to pity me. i dont mind it, i accept it. '
           'i really hate it. i love being sad, im sick of being '
           'depressed. existential depression, lack of fulfillment. '
           'i need something new in life. i need an output. i hurt, '
           'but ill be ok, i promise. i just need some time. '
           'i may withdraw. i may act different. i may be terse. '
           'but i love you, i love my friends. ill always love you. '
           'it''s nothing personal, just give me some time. i promise.'
                   END-PARA
                   END-DIV
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM K.
