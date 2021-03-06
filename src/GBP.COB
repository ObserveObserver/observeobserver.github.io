       IDENTIFICATION DIVISION.
       PROGRAM-ID. GBP.
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
                   'gbp - *observe.observer'
                 END-CAPTION
                 META BECOMES '"og:title"'
                   CON BECOMES '"gbp - *observe.observer"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:type"'
                   CON BECOMES '"website"'
                 CLOSE-META
                 NL
                 META BECOMES '"og:url"'
                   CON BECOMES '"HTTPS://OBSERVE.OBSERVER/GBP.HTML"'
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
                     'gbp'
                   END-H1
                   PARA CLOSE-PARA
           'today the thoughts ablaze, everyday the same way. '
           'ruminations parallaxed through internal nocs. '
           'electronic escape puts the mind to ease, for this a '
           'debt unpaid. in the roots insects burrow, an aura of '
           'agony. embers remain; however, immune via a damp '
           'cloak. a sapling, encased in a cocoon; rather, '
           'exoskeleton. it''s connections burrow beneath layers '
           'of soot, each limb''s demise felt at the core. it '
           'feels everything. the bugs run from their impending '
           'doom, digging deeper and deeper into the bark, a '
           'feeble effort. i understand. i mumble, but more sonar; '
           'the reflection stokes the flames burning consciousness. '
           'they respond, it pierces, a wind brushes the flames '
           'larger and larger, bit by bit seared. the larva '
           'survives, immune but quarantined out of fear of '
           'contagion. where''s the normality? what''s left after? '
           'i hard reset my phone, it made me install a lot of '
           'bloatware. you know it''s spying on you? all those '
           'user agreements, i haven''t read them. i''m sure you''ve '
           'never disabled all the opt-in tracking, i''m sure you '
           'resign yourself to using the fingerprint unlocker '
           'because you''re too lazy to type in 4 numbers. one '
           'more added to the database! facial recognition? so '
           'Sum Ting-Wong Megacorp can add you to their '
           'evergrowing neural network? you''re helping support '
           'chinese totalitarianism in a way. it''s pushed as '
           'the future. 322, take one. it''s a waiting game, you '
           'have to do it properly. slight waves sweep in and '
           'it''s here. a strength and willingness appear, but '
           'to do what? nothing is here, it''s late; go home. i''m '
           'back, so let''s go again? 322, take two. it''s a waiting '
           'game, you have to do it properly. transmissions begin '
           'rising, a kite above me. i see the picture, but i '
           'can''t feel angry? fire draws close, the cloak '
           'evaporates. the parcel rises higher and higher, '
           'beyond the inferno below. 7000km. condensates and '
           'freefalls. dousing the now hellscape. what''s left? '
           'barren, ashened skeletons quickly disregarded as a '
           'stupid mistake. the sapling remains, relieved but '
           'wilted. you''ve so long left! we''ll deal with it '
           'tomorrow, anyway. today the thoughts ablaze, '
           'everyday the same way. ruminations parallaxed '
           'through internal nocs. electronic escape puts '
           'the mind to ease, for this a debt unpaid. in the '
           'roots insects burrow, an aura of agony. embers '
           'remain; however, immune via a damp cloak. a sapling, '
           'encased in a cocoon; rather, exoskeleton. it''s '
           'connections burrow beneath layers of soot, each '
           'limb''s demise felt at the core. it feels everything. '
           'the bugs run from their impending doom, digging '
           'deeper and deeper into the bark, a feeble effort. '
           'i understand. i mumble, but more sonar; the reflection '
           'stokes the flames burning consciousness. they respond, '
           'it pierces, a wind brushes the flames larger and '
           'larger, bit by bit seared. the larva survives, immune '
           'but quarantined out of fear of contagion. where''s '
           'the normality? what''s left after? i hard reset my '
           'phone, it made me install a lot of bloatware. you '
           'know it''s spying on you? all those user agreements, '
           'i haven''t read them. i''m sure you''ve never disabled '
           'all the opt-in tracking, i''m sure you resign yourself '
           'to using the fingerprint unlocker because you''re too '
           'lazy to type in 4 numbers. one more added to the '
           'database! facial recognition? so Sum Ting-Wong '
           'Megacorp can add you to their evergrowing neural '
           'network? you''re helping support chinese totalitarianism '
           'in a way. it''s pushed as the future. 322, take one. '
           'it''s a waiting game, you have to do it properly. slight '
           'waves sweep in and it''s here. a strength and '
           'willingness appear, but to do what? nothing is here, '
           'it''s late; go home. i''m back, so let''s go again? 322, '
           'take two. it''s a waiting game, you have to do it '
           'properly. transmissions begin rising, a kite above '
           'me. i see the picture, but i can''t feel angry? fire '
           'draws close, the cloak evaporates. the parcel rises '
           'higher and higher, beyond the inferno below. 7000km. '
           'condensates and freefalls. dousing the now hellscape. '
           'what''s left? barren, ashened skeletons quickly '
           'disregarded as a stupid mistake. the sapling remains, '
           'relieved but wilted. you''ve so long left! we''ll deal '
           'with it tomorrow, anyway.'
                   END-PARA
                   END-DIV
               END-BODY
           END-DISPLAY.
       GOBACK.
       END PROGRAM GBP.
