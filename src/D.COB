       IDENTIFICATION DIVISION.
       PROGRAM-ID. D.
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
                   'd - *observe.observer'
                 END-CAPTION
                 META BECOMES '"og:title"'
                   CON BECOMES '"d - *observe.observer"'
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
                   CON BECOMES '"Weird! Nothing going on here. Anybody e
      -    'lse see who got married? Anybody see those celebrities break
      -    ' up?"'
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
                     'd'
                   END-H1
                   PARA CLOSE-PARA
           'Weird! Nothing going on here. Anybody else see who go '
           't married? Anybody see those celebrities break up? Did '
           'you see those (SAME SEX!) celebrities making out? It''s '
           'a crazy world we live in, it''s hot, fast, sleek and '
           'changing; here today gone tomorrow. The latest fashion, '
           'the latest accessories, the latest tech; we live in the '
           'future and it''s about time you upgraded. Still on that '
           'puny 4g? Buy the Pacific Bell(R)-Western Electric(R)-'
           'Sprint(R)-Nextel(R)-Mobile(R)-Orange(R)-APPLE(R)-'
           'iPHONE(R) '
           '12XXXL and fry your braincells with Huawei''s(R) '
           'patented space-aged 5g technology. Put a grape in the '
           'microwave, now put your brain next to one of the millions '
           'of inconspicuous Huawei® cell towers. The chemical '
           'makeup of your noggin will shape and become superhuman, '
           'you''ll become a fucking ninja turtle. You''ll live '
           'in the sewers, you''ll have to get by eating garbage '
           'the rest of your life because you''re a hideous '
           'fucking freak who can''t be seen in daylight, or '
           'else people will attack you or report you to the '
           'authorities like its Vampire Masquerade Bloodlines. '
           'You got the heat on you and you''re fucked, but what '
           'are they gonna do? Bring you to the lab and '
           'experiment on you, they''re gonna conduct the '
           'most god awful dissection sessions you''ve never '
           'thought of. It''s Unit 731+1, and it''s your new normal. '
           'Shell cracked in two, spitroasted by 2 masked men '
           'you''ve never seen or smelled before. Their semen will '
           'infiltrate you, and your body will attempt to purge it. '
           'You''ll start to like it, you''ll become addicted to it. '
           'They''ll make you beg to be violated, they''ll call you '
           'names. But deep down you know this is all fucked, your '
           'last shred of humanity waning as they inject more '
           'toxins into you. You wanna go to sleep but you can''t, '
           'your head throbbing as you can feel every last '
           'braincell morph into a gelatinous substance. They '
           'extract it once a month, they say they''re putting '
           'it in perfume. You can barely remember what that even '
           'means. You wake up [you don''t sleep] you run laps '
           '[you''re tired] you wanna go home [where?] I thought '
           'you wanted pizza, but you really didn''t. You just '
           'lust for things you''d never thought before, you''re '
           'completely changed. Your transformation '
           'is complete, you''re a sideshow freak for '
           'some faceless fat-cats amusement; a hollow '
           'shell of what was your former self and you '
           'don''t really care. Your insides corroded, '
           'you''re just a cow whose organs are milked '
           'for bio-fuel, powering the future scents of AXE(R) '
           'bodyspray; you only wish that you could have some '
           'as you waste in your cell, toiling endlessly as '
           'your mind paces with excitement; you''re at bat, '
           'don''t strike out.'
                   END-PARA
                   END-DIV
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM D.
