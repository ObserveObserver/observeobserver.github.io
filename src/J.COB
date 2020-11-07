       IDENTIFICATION DIVISION.
       PROGRAM-ID. J.
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
                   'j - *observe.observer'
                 END-CAPTION
                 META BECOMES '"og:title"'
                   CON BECOMES '"j - *observe.observer"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:type"'
                   CON BECOMES '"website"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:url"'
                   CON BECOMES '"HTTPS://OBSERVE.OBSERVER/J.HTML"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:image"'
                 CON BECOMES '"http://observe.observer/f/preview.jpg>"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:description"'
                   CON BECOMES '"i dont want to die. they will never und
      -    'erstand what we want, it''s impossible. i want it, you want
      -    'it.'
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
                     'j'
                   END-H1
                   PARA CLOSE-PARA
           'i dont want to die. they will never understand what we '
           'want, it''s impossible. i want it, you want it; but it is '
           'a pipedream. you can''t fault "normal" people for thinking '
           'we are crazy; but they will know in death what we mean. '
           'they will feel our thoughts and desires, just like we '
           'want. it''s ok for now, just relax and don''t fault anyo'
           'ne ok? don''t get angry, it doesn''t matter. just be hap'
           'py with yourself and don''t make others feel miserable, '
           'it''s pointless, really. please? for me. '
           'i love you so much. im sorry we dont talk much anymore, '
           'im just scared of hearing what you say. every time it''s '
           'stressful, and you know that i know it''s stressful and '
           'it''s hard for me to handle. i think about the times we '
           'used to play pente and games, i remember when we did '
           'flashcards, i remember when i sat in your rocking chair '
           'next to you and pumpkin. i miss that so much. i really '
           'regret not talking to you and the guilt haunts me every '
           'day. i still haven''t read your letter. i want to be '
           'close to you again, but it''s just hard. i really do love '
           'you with all my heart, it''s just hard. i love you so much.'
                   BREAK
                   BREAK
           'please don''t leave me, i dont want to be alone. '
                   BREAK
                   BREAK
           'i''m a 16 year old stuck in a ## year old''s body. '
           'i spent 10 years doing fucking nothing dude. '
           'it hurts. maybe less than 16. i love cute stuff. '
           'i wish i was a kid again. i love music boxes, i love '
           'stuffed animals; i still sleep with my childhood bear. '
           'my hearts torn when cute stuff is thrown away, i still '
           'haven''t thrown away like any of my kid stuff. growing '
           'up sucks, i know that''s a common loser sentiment but '
           'how can anyone justify this shit? we live in fucking '
           'hellworld. go deal with insurance, that should be eno'
           'ugh to make you want to kill yourself execution style. '
                   BREAK
                   BREAK
           'please don''t kill yourself, i don''t want you to die. '
           'i think suicide is so sad, i think death is sad. i''m '
           'not afraid to die, but i''m afraid of others dying. i '
           'know they will be happier, but i still don''t want you '
           'to die. live your life, you might as well; what can it '
           'hurt? i know your pain, i know it sucks; and it''s a '
           'shame. i hate that you hurt, i hate that you want to '
           'die. i hate that there''s kids with cancer, that shit '
           'tears my heart out. i cry so hard seeing sick or dead '
           'kids, it fucking kills me. the world is unfair and '
           'hell, but it''s also really beautiful and fun '
           'sometimes. i hope my happiness doesn''t go away, '
           'even though i know it will. please don''t lose '
           'your light, please? for me.'
                   END-PARA
                   END-DIV
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM J.
