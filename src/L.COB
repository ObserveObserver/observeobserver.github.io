       PROGRAM-ID. L.
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
                   'L - *observe.observer'
                 END-CAPTION
                 NL
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
                  CON BECOMES '"http://observe.observer/f/preview.jpg>"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:description"'
                   CON BECOMES '"she feels pain, he feels pain. what am
      -    'i? am i real? what am i?..."'
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
                       'l'
                   END-H1
                   NL
                   PARA CLOSE-PARA
           'she feels pain. he feels pain. "what am i? am i real? '
           'what am i?" it''s hard. she wants to be herself, why c'
           'an''t she? she is, but she''s not. everyone should be. '
           'it''s hard, society is cruel; a conveyer belt. the assemb'
           'ly line pushing drone, drone everything. she wants to be '
           'beautiful, but how? what is beautiful? beautiful to her i'
           's atypical, is atypical good? she doesn''t know. he '
           'doesn''t know. he wants to be normal, he desires a '
           'sense of normality in his own way. they want to be pure; '
           'he wants to be sweet. he can''t be sweet, people are '
           'watching (man). why hate him for being soft, for being '
           'sweet. they hate him for everything. they hate her '
           'for abnormality, she loves her "normal". fuck, '
           'this sucks, huh?'
               BREAK
               BREAK
           'read about it, it''s true; this is reality and they kn'
           'ow it. they do what they want to do what they want, b'
           'ut are confined: the invisible hand must feed, so feed '
           'it slaves. they don''t want to, but you must; "let''s op'
           't out." WRONG, don''t you see you''re a slave? you think t'
           'here''s something you can do?'
               BREAK
               BREAK
           ' you hate them? fucking do something. can''t let them b'
           'e how they want to? why? why not do something about it? '
           'are you scared? because you don''t care as much as you t'
           'hink. keep posting your meemays, keep preaching to t'
           'hose of whom think they already believe. man, that shi'
           't is sad. i fucking hate it. do sometihng? do sometihng'
           '? do sometihng? why are mad at people for doing someth'
           'ing they believe in? holy shit that is pathetic. '
           'keep posting while the world around you is changed '
           'by those whom are strong enough to do something.'
               BREAK
               BREAK
           'he wants to cry, but he can''t; he wishes he can. '
           'why can''t he? he wants to be pretty, why can''t he? '
           'it''s weird, isn''t it? he thinks so, he wants you to'
           'cry too. he feels bad when he''s made fun of, he looks '
           'at people disliking him, he''s bullied at school. '
           'you wonder why shit happens. be nice to people, he j'
           'ust wants you to be nice to him and accept him.'
               BREAK
               BREAK
           'he wants to cry to cry so bad, it feels so good. '
           'why can''t you cry, anon? are you scared? don''t want '
           'to be soft? it''s okay, i accept you, he accepts you, '
           'she accepts you and the "you" you want to be. be '
           'who you want, stop appeasing people. i want you to '
           'be happy, i want you to cry. ">implying", implying.'
               BREAK
               BREAK
           'it''s okay, it''ll all be okay.'
                   END-PARA
                   END-DIV
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM L.
