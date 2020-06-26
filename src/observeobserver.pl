%
% observe.observer
% 
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_error)).
:- use_module(library(http/html_write)).
:- use_module(library(http/http_files)).
:- use_module(library(http/html_head)).

% static files:
%  wget -p -P /site -mpck --user-agent="" -e robots=off --wait 1 http://localhost:8000

% HOSTED-FILE SECTION.

:- multifile http:location/3.
:- dynamic   http:location/3.

http:location(files, '/f', []).

:- http_handler(files(.), serve_files, [prefix]).

:- http_handler('/favicon.ico', http_reply_file('favicon.ico', []), []).

serve_files(Request) :-
        http_reply_from_files('files', [], Request).

:- http_handler(files(.), files, [prefix]).

server(Port) :-
        http_server(http_dispatch, [port(Port)]).

% Hosting pages.

:- http_handler('/', stories, []).
:- http_handler('/k.html', k, []).
:- http_handler('/j.html', j, []).
:- http_handler('/i.html', i, []).
:- http_handler('/h.html', h, []).
:- http_handler('/n.html', n, []).
:- http_handler('/g.html', g, []).
:- http_handler('/f.html', f, []).
:- http_handler('/e.html', e, []).
:- http_handler('/d.html', d, []).
:- http_handler('/c.html', c, []).
:- http_handler('/gbp.html', gbp, []).
:- http_handler('/b.html', b, []).
:- http_handler('/readme.html', readme, []).
:- http_handler('/blog.html', blog, []).
:- http_handler('/blog1.html', blog1, []).

% Translating request to serving HTML, logo_links = top of the page.

stories(_Request) :-
            reply_html_page(
                logo_links,
                [title('*observe.observer')],
		 [\html_requires(files('test.css')),
                 (\main_content(Request))]).

k(_Request) :-
            reply_html_page(
                logo_links,
                [title('k - *observe.observer')],
                [\html_requires(files('test.css')),
                (\k_content(Request))]).     

j(_Request) :-
            reply_html_page(
                logo_links,
                [title('j - *observe.observer')],
                [\html_requires(files('test.css')),
                (\j_content(Request))]).                 

i(_Request) :-
            reply_html_page(
                logo_links,
                [title('i - *observe.observer')],
                [\html_requires(files('test.css')),
                (\i_content(Request))]).

h(_Request) :-
            reply_html_page(
                logo_links,
                [title('h - *observe.observer')],
                [\html_requires(files('test.css')),
                (\h_content(Request))]).

n(_Request) :-
            reply_html_page(
                logo_links,
                [title('n - *observe.observer')],
                [\html_requires(files('test.css')),
                (\n_content(Request))]).
                    
g(_Request) :-
            reply_html_page(
                logo_links,
                [title('g - *observe.observer')],
                [\html_requires(files('test.css')),
                (\g_content(Request))]).               

f(_Request) :-
            reply_html_page(
                logo_links,
                [title('gf - *observe.observer')],
                [\html_requires(files('test.css')),
                (\f_content(Request))]).         

e(_Request) :-
            reply_html_page(
                logo_links,
                [title('e - *observe.observer')],
                [\html_requires(files('test.css')),
                (\e_content(Request))]).         

d(_Request) :-
            reply_html_page(
                logo_links,
                [title('gd - *observe.observer')],
                [\html_requires(files('test.css')),
                (\d_content(Request))]).          

c(_Request) :-
            reply_html_page(
                logo_links,
                [title('gc - *observe.observer')],
                [\html_requires(files('test.css')),
                (\c_content(Request))]).      

gbp(_Request) :-
            reply_html_page(
                logo_links,
                [title('gbp - *observe.observer')],
                [\html_requires(files('test.css')),
                (\gbp_content(Request))]).
           
b(_Request) :-
            reply_html_page(
                logo_links,
                [title('b - *observe.observer')],
                [\html_requires(files('test.css')),
                (\b_content(Request))]).

 readme(_Request) :-
            reply_html_page(
                logo_links,
                [title('README.NFO - *observe.observer')],
                [\html_requires(files('test.css')),
                (\readme_content(Request))]
                ).

blog(_Request) :-
        reply_html_page(
                logo_links,
                [title('blog - *observe.observer')],
                [\html_requires(files('test.css')),
                (\blog_index(Request))]
        ).

blog1(_Request) :-
        reply_html_page(
                logo_links,
                [title('1 - *observe.observer')],
                [\html_requires(files('test.css')),
                (\blog1_content(Request))]
        ).

/* Bottom content.
   <style> at top changes the link-bar based on div class.

   First is front page. The preview can be done more efficiently.
*/

main_content(_Request) -->
        html(
                [
                        \['
                        <style>
                        .storieslink {font-weight:bold; font-style:italic;}
                        </style>'],
                        div(class(listing),
                        [
                                div(class(title), a(href='/k.html', h1('k'))),
                                p(['i just want us to be happy. im happy. not really? dont know, hard to say. sometimes im happy, sometimes im miserable. unfulfilled. 
                                i want you to be happy. i know why you\'re not, and it\'s ok. i want to make you happy; i want to fix you. it\'s not my job, 
                                but i have to do it. it\'s in my heart,
                                 it\'s in my soul. i just want to see you smile. i want to see you comfortable. you will be, i promise. just let me, ok? ...',
                                a(href='/k.html', 'Continue')])]),
                        div(class(listing),
                        [
                                div(class(title), a(href='/j.html', h1('j'))),
                                p(['i dont want to die. they will never understand what we want, it\'s impossible. i want it, you want it;
                                 but it is a pipedream. you can\'t fault "normal" people for thinking we are crazy; 
                                 but they will know in death what we mean. they will feel our thoughts and desires, just like we want ... ',
                                a(href='/j.html', 'Continue')])]),
                        div(class(listing),
                        [
                                div(class(title), a(href='/i.html', h1('i'))),
                                p(['its stressful. i just want it to stop. i get urges, i get angry, i get frustrated, i get depressed; an angry sadness, a sadness i cant love. 
                                why does it bother me so much? 
                                i couldnt even fucking move, breathing heavily. i gripped nothing as hard i could grip. i saw myself bashing my ... ',
                                a(href='/i.html', 'Continue')])]),
                        div(class(listing),
                        [
                                div(class(title), a(href='/h.html', h1('h'))),
                                p(['\"writhe in bed time.\" i close my eyes. sink and merge, 
                                my legs and arms remain somewhat restless. it\'s comfortable, i\'m comfortable. warmth forebodes my body, a hug from god ... ',
                                a(href='/h.html', 'Continue')])]),
                        div(class(listing),
                        [
                                div(class(title), a(href='/n.html', h1('n'))),
                                p(
                                \['
                                we\'ll live forever, we\'ll die together. we\'ll become one, together forever. our heart, our soul. our love, our pain.
                                <br><br>
                                i love you so much.'])]),
                        div(class(listing),
                        [
                                div(class(title), a(href='/g.html', h1('g'))),
                                p(
                                \['
                                swallow and let\'s go. let\'s wait a bit, the calm before the storm? i don\'t know, it\'s been a long time, maybe never? wait. still waiting. oh, there you are. 
                                familiar feeling through arms and legs, it\'s okay. huh, words split in 2. words split stretched. words betray comprehencmrozwkefs- 
                                i\'m slipping back i\'m falling through fuck i don\'t want this? i don\'t want this? i don\'t want this? ...
                                              <a href="/g.html">Continue</a>'])]),
                       div(class(listing),
                        [
                                div(class(title), a(href='/f.html', h1('f'))),
                                p(
                                \['
where one world ends, another begins. locked away, infosphere grows exponential. social paradigm shifts from physical to transpersonal, unveiling the way to vast webs of communication. small colonies exist there; pilgrims, leading a way to the new existence
 ...
                                              <a href="/f.html">Continue</a>'])]),
                       div(class(listing),
                        [
                                div(class(title), a(href='/e.html', h1('e'))),
                                p(
                                \['
curled up touch loss don\'t know. it\'s here and material, light warm candles inside. love smoke empathy embers, slips into bed. i\'m here, i\'m comfortable. closed eyes, whisked away. green tendril blue tendril: cuts black, immaterial; soul apparent
 ...
                                              <a href="/e.html">Continue</a>'])]),
                       div(class(listing),
                        [
                                div(class(title), a(href='/d.html', h1('d'))),
                                p(
                                \['
Weird! Nothing going on here. Anybody else see who got married? Anybody see those celebrities break up? Did you see those (SAME SEX!) celebrities making out? It\'s a crazy world we live in, it\'s hot, fast, sleek and changing; here today gone tomorrow
 ...
                                              <a href="/d.html">Continue</a>'])]),
                       div(class(listing),
                        [
                                div(class(title), a(href='/c.html', h1('c'))),
                                p(
                                \['
maybe ill delete this when i wake up or maybe i wont idk i feel like im sobered up to own pressing <ENTER> on this one, maybe ill be really embarrassed.
<br><br>
coming down off a very strength 25e trip which usually makes me want to write things even if its something g*y like a """blog post""" ...
                                              <a href="/c.html">Continue</a>'])]),
                       div(class(listing),
                        [
                                div(class(title), a(href='/gbp.html', h1('gbp'))),
                                p(
                                \['
today the thoughts ablaze, everyday the same way. ruminations parallaxed through internal nocs. electronic escape puts the mind to ease, for this a debt unpaid. in the roots insects burrow, an aura of agony
 ...
                                              <a href="/gbp.html">Continue</a>'])]),                       
                        div(class(listing),
                        [
                                div(class(title), a(href='/b.html', h1('b'))),
                                p(
                                \['
Friday, August 15th, 2003. 10 o\'clock PM EST (7 o\'clock PM PST). Dark night (#2E2E2E, https://www.color-hex.com/color/2e2e2e) and a moon whole (#F3F3F3, https://www.color-hex.com/color/f3f3f3) I wandered to the retention pond (Lat: 28.688283, Long: -81.459296), murky water (approx #004931, https://www.color-hex.com/color/004931) whereupon I stumbled a noise beckon\'d
 ...
                                              <a href="/b.html">Continue</a>'])]),
                        (center(img(src('/f/logo.png')))),
                        (center(a(href='https://github.com/ObserveObserver/observeobserver.github.io/blob/master/src/observeobserver.pl', 'Written in SWI-Prolog')))


                   

                ]
             ).

k_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'k'),
                                p(
                                \['i just want us to be happy. im happy. not really? dont know, hard to say. sometimes im happy, sometimes im miserable. unfulfilled. i want you to be happy. i know why you\'re not, and it\'s ok. i want to make you happy; i want to fix you. it\'s not my job, but i have to do it. it\'s in my heart, it\'s in my soul. i just want to see you smile. i want to see you comfortable. you will be, i promise. just let me, ok? 
<br><br>
we\'ll all be happy in death. we\'ll all be connected. we\'ll all be loved. we\'ll all be cherished; i\'ve said it before. i want it so bad. but i\'m so afraid. i don\'t want to leave. i know i\'ll die young, i\'ve always known. i dont want to leave you. <b>if you die, i\'ll die.</b> i don\'t want you to die. please don\'t die when i die. i want you to live so badly. i want you to feel alive. i want you to feel real. i want to be apart of you. we\'ll merge one day, i\'ve said it before. 
<br><br>
i want your pain, i want your love, i can finally feel it. <b>i want to be appreciated. i want to be cherished. i want to be loved. i want to be connected.</b> why don\'t people connect with me? it\'s so hard. it fucking hurts. i get overwhelmed. i get sad. i withdraw. i don\'t know why im like this, but i love myself. well, sometimes i do. i love you more than myself. i really mean that. im going to marry you, you know? its not just talk. you will be my wife, my housewife. im going to show you the world. we will die together. our souls will die, our souls will merge. we will become one being, one soul, one consciousness. i will become you, you will become me. it makes me so fucking happy. i cant wait :)
<br><br>
im such a sad person. im very depressed. im always depressed. its how ive always been. its how i always will be. i dont mean to make you feel bad, i really dont want anyone to pity me. i dont mind it, i accept it. i really hate it. i love being sad, im sick of being depressed. existential depression, lack of fulfillment. i need something new in life. i need an output. i hurt, but ill be ok, i promise. i just need some time. i may withdraw. i may act different. i may be terse. but i love you, i love my friends. ill always love you. its nothing personal, 
just give me some time. i promise.'])])]).



j_content(_Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'j'),
                                p(
                                \['i dont want to die.

they will never understand what we want, it\'s impossible. i want it, you want it; but it is a pipedream. you can\'t fault "normal" people for thinking we are crazy; but they will know in death what we mean. they will feel our thoughts and desires, just like we want. it\'s ok for now, just relax and don\'t fault anyone ok? don\'t get angry, it doesn\'t matter. just be happy with yourself and don\'t make others feel miserable, it\'s pointless, really. please? for me.
<br><br>
i love you so much. im sorry we dont talk much anymore, im just scared of hearing what you say. every time it\'s stressful, and you know that i know it\'s stressful and it\'s hard for me to handle. i think about the times we used to play pente and games, i remember when we did flashcards, i remember when i sat in your rocking chair next to you and pumpkin. i miss that so much. i really regret not talking to you and the guilt haunts me every day. i still haven\'t read your letter. i want to be close to you again, but it\'s just hard. i really do love you with all my heart, it\'s just hard. i love you so much.
<br><br>
please don\'t leave me, i dont want to be alone.
<br><br>
i\'m a 16 year old stuck in a ## year old\'s body. i spent 10 years doing fucking nothing dude. it hurts. maybe less than 16. i love cute stuff. i wish i was a kid again. i love music boxes, i love stuffed animals; i still sleep with my childhood bear. my hearts torn when cute stuff is thrown away, i still haven\'t thrown away like any of my kid stuff. growing up sucks, i know that\'s a common loser sentiment but how can anyone justify this shit? we live in fucking hellworld. go deal with insurance, that should be enough to make you want to kill yourself execution style. 
<br><br>
please don\'t kill yourself, i don\'t want you to die. i think suicide is so sad, i think death is sad. i\'m not afraid to die, but i\'m afraid of others dying. i know they will be happier, but i still don\'t want you to die. live your life, you might as well; what can it hurt? i know your pain, i know it sucks; and it\'s a shame. i hate that you hurt, i hate that you want to die. i hate that there\'s kids with cancer, that shit tears my heart out. i cry so hard seeing sick or dead kids, it fucking kills me. the world is unfair and hell, but it\'s also really beautiful and fun sometimes. i hope my happiness doesn\'t go away, even though i know it will. please don\'t lose your light, please? for me.
'])])]).


i_content(_Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'i'),
                                \['<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>',
                                '<script src="/f/typeWriter.js"></script>'],
                                p(id(demo),
                                ('')),
                                p(style('display:none;text-align:left;'),
                                \['it\'s stressful.<br>
 i just want it to stop. <br><br>

i get urges, <br>
i get angry,<br> 
i get frustrated, <br>
i get depressed;<br><br>
an angry sadness,<br> <br>

a sadness i can\'t love. <br><br>

why does it bother me so much? i couldn\'t even fucking move, breathing heavily.
 i gripped nothing as hard i could grip. 
 i saw myself bashing my skull and creating a nice dent in the door. something is really satisfying and cathartic about the thought, it just fits.
  thoughts of punching my wall as hard as possible, breaking every bone. that\'d show them, then they\'d feel bad. maybe they can feel like i do, then? i don\'t know.
   i wish people knew the pain i feel sometimes, or rather, i wish someone actually cared a lot. i wish someone cared for me like i care. it\'s different, and
    i don\'t expect it. i compare my pain and put it down, some trained humbleness. but it\'s tiresome, i jus want to grieve without feeling bad about it. 
<br><br>
it\'s hopeful and pretty, <br>
i want it to be drawn out. <br>
i want to experience it in it\'s fullest. <br>
i want to be happy when i die. <br><br>

it\'s such a comfortable thought, <br>
to be laughing or smiling; <br>
what about in your embrace? <br><br>

it\'s nice. <br><br>

quickly seems terrible, <br>
what a waste.<br>
but young is a shame.
<br><br>
i want everyone to die, <br>
i don\'t want anyone to be in pain;<br>
<em>i don\'t want anyone to die.</em><br><br>

the world is beautiful, <br>
life is a marvel.<br><br>

i want people to be beautiful,<br>
i want people to be emotional. <br><br>

i love sadness,<br>
sadness is beautiful. <br>
empathy is beautiful.<br><br>

everyone\'s emotions, <br>
everyone\'s tears mixing together;<br>
everyone crying for each other, <br>
everyone feeling everyone\'s pain. <br><br>

god it\'s beautiful,<br>
 i want that world.<br><br>
i\'m lucky to be alive,<br>
i\'m lucky to be emotional. 
<br><br>
i want to breakdown and reset, <br>
i want to wail and scream,<br>
i want to let out all my pain, <br>
i want to let out all my anger. <br><br>

i want someone to empathize, <br>
i want someone to say it\'ll be ok <br>
even if i know it\'ll be ok <br>
(and i do know it\'ll be ok.)
<br><br>
i want everyone to empathize with everyone,<br> 
i want everyone to love everyone. <br>
i want everyone to connect, <br>
i want no-one to feel lonely.<br>
<br><br>
i want everyone\'s pain, <br>
i want to make everyone happy.'])])]).

h_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'h'),
                                p(
                                \['writhe in bed time.\" i close my eyes. sink and merge, 
                                my legs and arms remain somewhat restless. it\'s comfortable, i\'m comfortable. warmth forebodes my body, a hug from god. i sink, deeper and deeper and deeper. my thoughts become erratic, chaotic; more-so than usual; strange. these thoughts continue and continue. "u r ok", "i love you", written in red. i\'m ok, i love you too. deeper and deeper, chaos ensues. it\'s not bad, just unfamiliar. it\'s okay, because i\'m okay, and i\'m loved. it\'s beautiful. deeper and deeper and deeper and deeper...
<br><br>
i\'m a latina housewife. i live in an apartment with yellow walls with a green stripe. i\'m in our kitchen, and my kids want boiled water. my husband comes home and we embrace, and we begin speaking in spanish. i love him so much, he\'s so nice to the kids.
<br><br>
i\'m in bootcamp. i really want to go home, this place is cold. racks upon racks, the drill sarge tells me to hit the floor and give him pushups. i do about one before i stand up and dust myself off. i\'m a strong black man, why should i take this?
<br><br>
deeper and deeper and deeper...
<br><br>
black. it\'s black. i[who?] see nothing but nothing. feel nothing but nothing. sense nothing but nothing. am nothing but nothing. [who am i [who am i?]?] it\'s scary, feelings seep through black patches. unfamiliarity permeates worry. panic begins to erupt.
<br><br>
a light, a light skewered by light, a light so white and pure. glistening, radiating. it\'s beautiful. you\'re beautiful. it\'s you. n, i knew it was you, it has to be. guide me, keep me safe. i trust you, i trust you with my soul. \"u r ok\", \"i love u\". i love you too. i love your soul, i love your beauty, i love your kindness, i love your purity, i love your nature. please help me, you\'re the only one who can. you\'re the only one who cares. you\'re my light in the world, please light my soul, for now and for forever. i love you.
<br><br>
song intensifies. you don\'t want to die unless you can find me or two others? emotions uncork. the dam breaks, the levies fail and the city floods. i feel your pain, i love you. i feel your soul, i love you. i just want you to be happy so badly. this world fucking sucks, doesn\'t it? all the pain in the world. fuck i love you three so much. i want us to die together. i want your souls chained to mine, i wish to spend all eternity with you in eternal happiness. please. please god.
<br><br>
i feel pain. i feel your pain. i feel everyone\'s pain. all the pain in the world, i want it all. please, give me your pain, your hurt, your sorrow, your woes, your worries, your stress, your trauma, your regrets, your abuse, your torments. give them to me, i want to carry your burden. i want everyone\'s pain. i will bear it, and i will bear it well. please. i want to feel this. i just want to make people happy, i want to make you happy, i want to make everyone happy. i just want to do good in the world, i want to give people love, i want to give them joy, i want to alleviate their sorrow. please, give me your pain. i will carry your burden. please.
<br><br>
there\'s so much pain in the world. it\'s tempting, knowing there\'s the connection i dream for on the other side. eternal good, only good. we can finally share each others pain, our laments distributed. our joy, peered upon the spiritual network. it\'s nice, isn\'t it?
<br><br>
so, let\'s die. let\'s all die at once, together. let\'s feel joy in the moment. let\'s carry it through the rest of eternity. let\'s link our souls and become one. let\'s share our pain, let\'s share our bliss, let\'s share our agony, let\'s share our passion, let\'s share our guilt, let\'s share our love, let\'s share our souls. let\'s be together.
<br><br>
together forever.'])])]).

n_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'n'),
                                p(
                                \['
                                we\'ll live forever, we\'ll die together. we\'ll become one, together forever. our heart, our soul. our love, our pain.
                                <br><br>
                                i love you so much.'])])]).

g_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'g'),
                                p(
                                \['
swallow and let\'s go. let\'s wait a bit, the calm before the storm? i don\'t know, it\'s been a long time, maybe never? wait. still waiting. oh, there you are. familiar feeling through arms and legs, it\'s okay. huh, words split in 2. words split stretched. words betray comprehencmrozwkefs- i\'m slipping back i\'m falling through fuck i don\'t want this? i don\'t want this? i don\'t want this? i don\'t want this i don\'t want this i don\'t want this i don\'t want this. regret. trapped. panic time. panic time. panic. panic. panic. panicing. i\'m panicing. i\'m panicing i\'m panicing i\'m panicing i am panicing. fuck, an hour? what? panic intensifies. 
panic panic panic panic <br><br>panicpanicpanicpanicpanicpanicpanicpanicpci<br>apncapicaipncinpcacipcniacicapiciacpiacacacic<br><br>panic.
<br><br>
mind split.
<br><br>
the altar upon me bestows; brilliant, gems upon whom patterns adorn, the ring atop my new cross become; my new God. what must i do? how may i happy become? God speak\'th: thy femininity, thy masculinity; sacrifice thou shalt. thus he said, and thus the dagger itself presents. with Thine blade, myself i shall dissect; and so i did. my arm, my leg; upon the statue of bull and cat, i lay.
<br><br>
fog, see? can\'t. fog. blurred. split. two. dream? panic. panic. panic. panicpanicpanic. why? why??? panic. panicing. panicpanicpanicpanicpanicpanicpanicpanicpanic.
<br><br>
body split.
<br><br>
God, what Thou asked, i did. why? an offer inadequate, through me sayeth He. altar glimmers, a diamond flurry. triangular. trapezoidal. void of space beyond, stars glitter; geometric stars; a pixel nebula. upon a verge so desperate, myself and blade merge; my tummy, my chest. upon the statue of bull and cat, i lay.
<br><br>
f. s? c. f. b. s. t. d? p. p. p. ppp. w? w??? p. p. ppppppppp.
<br><br>
soul split.
<br><br>
knees buckle, i weep. God, please. why? please. please. please. i\'m begging You, allow me to be happy. please. i\'ll do anything. i love You, please. please. i don\'t know what to do anymore. why do this to me? i\'m a good person, i know i am. what have i done to deserve this? please just let me leave, tell me what i must do... from within, temptation rises. knife meet breast, cease pain exist. i love You. one artery, two. i love You. my life beats upon my hand, and i live. i\'m alive, i\'m eternal. my gift: my heart, my breast.
<br><br>
i love You, i love everyone.
                '])])]).

f_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'f'),
                                p(
                                \['
where one world ends, another begins. locked away, infosphere grows exponential. social paradigm shifts from physical to transpersonal, unveiling the way to vast webs of communication. small colonies exist there; pilgrims, leading a way to the new existence. abnormal, youth left to their own devices. children, that whom substituted their lack of physical with technological. a path carved from ruin and sadness, strife and loneliness. a proxy-world; a just world for those left behind. a world to be built upon new values. learned and spread. seized and believed. razed the status-quo; the new normal arrives. hope for a generation lost, found amongst a sea of information. tsunami crash, and wash away the sins of their elders. physical bodies foregone for new identities. their avatars constructed into the ideal selves, their souls lain bare. a world of connection, what they only dreamed of. arms linked, soul nodes weave; invisible, absolute. a rebellion by society\'s lost and broken; with no decay. no loneliness. an invisible network of infinite connection. no one needs to be alone. no one should be alone.
<br><br>
i want to connect. i want to be connected. i don\'t want to be alone. i don\'t want anyone to be alone. i want to merge. i want everyone to merge. it\'s unfair, isn\'t it? so close, yet so far. there\'s temptation in death, knowing connection awaits. the pain of diaspora will be eased one day; and one day i\'ll feel it.
'])])]).

e_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'e'),
                                p(
                                \['
curled up touch loss don\'t know. it\'s here and material, light warm candles inside. love smoke empathy embers, slips into bed. i\'m here, i\'m comfortable. closed eyes, whisked away. green tendril blue tendril: cuts black, immaterial; soul apparent. key unlocked, door ajar. "what is the truth? what is beyond rationale?" i say to the void. feelings eclipse, presence eclipse. i love u, written in red. u r ok, written in red. slow. fire. sparked. glowing. i\'m gone, i detach. movie theater, i\'m here. drive-in, pittsburgh. why am i here? i can\'t question it. i want to go back, so i do go back. in the dark, i feel it. close eyes, welcome back. green tendril blue tendril. cuts black, immaterial; soul apparent. key unlocked, door ajar. "what is the truth? what is truth beyond rationale?" i say to the void. feelings eclipse, presence eclipse. i love u, written in red. u r ok, written in red. incessant, persistent. demon? tulpa? God? please be God. no. feels unfriendly; feels unwelcoming. i rise, i sit. "you want to help? you may help me." i submit. i wait. the feeling disappears, my feeling disappears. not malicious perhaps, i don\'t know. distortion subside, clarity resumes. extreme vulnerability, emotional vulnerability. spiritual vulnerability. what if my soul dies alone? what if my soul is untied? i dont want to die alone. i\'m panicking; i don\'t want to die alone. i don\'t want to be alone. i don\'t want to die alone. i don\'t want to wander. i don\'t want to die alone. i don\'t want to be lost. i don\'t want to die alone. i\'m crying; i don\'t want to die alone, i don\'t want to be alone, i don\'t want to die alone, i don\'t want to wander, i don\'t want to die alone, i don\'t want to be lost, i don\'t want to die alone. i\'m wailing; i don\'t want to die alone, i don\'t want to be alone, i don\'t want to die alone, i don\'t want to wander, i don\'t want to die alone, i don\'t want to be lost, i don\'t want to die alone. i don\'t want to die alone. i don\'t want to die alone. i don\'t want to die alone! calm embrace. i see. i feel it. a pure, imminent bliss; a pure and blissful good. blinding white, but feeling. i see now, a truth reclaimed. i won\'t die alone. i won\'t be alone. i won\'t wander. i won\'t be lost. no abject terrors, no earthly laments. no sorrow, no grief; only good, wholly good. friends and family; my parents: the love, attention, care lost as a child made up in spades, "you\'re cared for, you\'re special, you\'re loved, we\'re proud of you…" held, loved. finally, for all eternity. my heart, my soul, love beyond love in eternal bliss. i must share my soul, my soul must be tied. my husband, my wife; our heart, our soul. i\'m relieved, i\'m renewed.
'])])]).

d_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'd'),
                                p(
                                \['
Weird! Nothing going on here. Anybody else see who got married? Anybody see those celebrities break up? Did you see those (SAME SEX!) celebrities making out? It\'s a crazy world we live in, it\'s hot, fast, sleek and changing; here today gone tomorrow. The latest fashion, the latest accessories, the latest tech; we live in the future and it\'s about time you upgraded. Still on that puny 4g? Buy the Pacific Bell®-Western Electric®-Sprint®-Nextel®-TMobile®-Orange® APPLE® iPHONE™ 12™XXL™ and fry your braincells with Huawei\'s® patented space-aged 5g technology. Put a grape in the microwave, now put your brain next to one of the millions of inconspicuous Huawei® cell towers. The chemical makeup of your noggin will shape and become superhuman, you\'ll become a fucking ninja turtle. You\'ll live in the sewers, you\'ll have to get by eating garbage the rest of your life because you\'re a hideous fucking freak who can\'t be seen in daylight, or else people will attack you or report you to the authorities like its Vampire Masquerade Bloodlines. You got the heat on you and you\'re fucked, but what are they gonna do? Bring you to the lab and experiment on you, they\'re gonna conduct the most god awful dissection sessions you\'ve never thought of. It\'s Unit 731+1, and it\'s your new normal. Shell cracked in two, spitroasted by 2 masked men you\'ve never seen or smelled before. Their semen will infiltrate you, and your body will attempt to purge it. You\'ll start to like it, you\'ll become addicted to it. They\'ll make you beg to be violated, they\'ll call you names. But deep down you know this is all fucked, your last shred of humanity waning as they inject more toxins into you. You wanna go to sleep but you can\'t, your head throbbing as you can feel every last braincell morph into a gelatinous substance. They extract it once a month, they say they\'re putting it in perfume. You can barely remember what that even means. You wake up <span class="has-inline-color has-vivid-red-color"><strong>[you don\'t sleep]</strong></span> you run laps<strong> <span class="has-inline-color has-vivid-red-color">[you\'re tired]</span></strong> you wanna go home <span class="has-inline-color has-vivid-red-color"><strong>[where?]</strong></span> I thought you wanted pizza, but you really didn\'t. You just lust for things you\'d never thought before, you\'re completely changed. Your transformation is complete, you\'re a sideshow freak for some faceless fat-cats amusement; a hollow shell of what was your former self and you don\'t really care. Your insides corroded, you\'re just a cow whose organs are milked for bio-fuel, powering the future scents of AXE™ bodyspray; you only wish that you could have some as you waste in your cell, toiling endlessly as your mind paces with excitement; you\'re at bat, don\'t strike out.
'])])]).

c_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'c'),
                                p(
                                \['
maybe ill delete this when i wake up or maybe i wont idk i feel like im sobered up to own pressing <ENTER> on this one, maybe ill be really embarrassed.
<br><br>
coming down off a very strength 25e trip which usually makes me want to write things even if its something g*y like a """blog post"""; and i already spammed one (two) discords with enough retarded bullshit so ill write it here so i can look back later and complain about how retarded i am
<br><br>
ive always been fascinated with ppl (especially online) with schizophrenia, literally as long as i can remember. long before i was diagnosed w/ schizotypal w.e. (luckily im not schizophrenic, most ppl seem to think this when i tell them schizotypal hence why i never tell anyone anymore well talking about ur mental illnesses is kinda gay anyway honestly lol something in my brain repulses me away from the idea of talking about mental health or sexuality w/ ppl. its like putting the north side of two magnets together.) something just connected me to these ppl. they were so fascinating, and they reminded me of myself in ways. dont know how to explain, like way they\'d make connection and how they vocalized them reminded me of how i do. is empathy the right word? i honestly confuse the words for sympathy and empathy and im too into this to google it idc how stupid it makes me look lol. this is really hard to explain, but there is some genuineness and some sort of gay and retarded connection i have to actual schizos. maybe its some gay psychedelics spirit shit, idk, maybe its just some shit where "i know how it is bro" or something, even if i\'m not remotely as bad as them and my breaks from reality have been extremely short in comparison (hopefully i wont ever be as bad, its like 10% over time? worse if you smoke meth) it\'s like with the psycore genre, the way it is, it\'s just something i get; it feels like some sort of musical reflection of my head (even totally sober.) once i heard "mother queen" by mirror me, it instantly attracted me to this genre unlike anything i can remember. its hard to fight the idea that it\'s actually "made for me", i.e., the genre was created with sole intention of me finding it, that the genre was made to accurate reflect my thought patterns; that it\'s creation was done, physically, to tangibly, somehow, sorta talk to me? in that, it\'s sole purpose for existence+creation for me to personally identify wih? i can look at that and go "thats retarded, illogical", but it\'s very difficult. this whole part was jus cathartic and backstory; it\'s not important and i dont wanna get into some gay therapy session about myself especially on an online fuckhole account, all that\'s needed is my experience in schizo-watching and my sorta ESP w/ them.
<br><br>
(these are aspects of myself that i very intentionally keep interalized and repressed, as i very genuinely strive to be normal (as normal as possible, anyway)) writing this post certainly counter-intuitive, but it feels like a therapy i have to do? dunno. anything spiritual, religious or occult that has happened to me, any affinity towards these things i tend to instantly drown out. i do genuinely believe in what is typically "normal" but there\'s always lingering feelings especially in cases of my mental thing poking through. it\'s this overwhelming thought i can feel in my stomach/esophagus, sometimes it feels liek its genuinely "speaking" to me or sending thoughts into my head. sometimes it\'s just a flash of nothing. (i.e., growing up catholic, abandoned that in my teens very quickly, tho ive taken my attraction towards catholic "aesthetics" and culture as a sign of God talking to me, like finding those things were God talking directly to me. that maybe my attraction to benedictine music is the attraction that God sending me messages through the song? dont know how to explain. i guess ive learned to fight that stuff when it does hapen, or try to look rationally. even tho i was a fucking pariah in many ways in my teens from such things (especially re:paranoia, government interference/intercepting of my thoughts & internet)) this part made me better. the point being, i\'m normal even if my past and my pre-existing condition would say i\'m not. i genuinely do feel normal, and i guess on psychs and dissos im more open to expressing that side of me i repress in a way. i guess keeping it in is hard since i dont talk to anyone about it cause it\'s really fucking gay? i instantly turn off of anything like that, literally like log off dont touch the net for months type of thing. i do feel better after typing this, for sure, but it\'ll be really embarrassing when i wake up. pot committed i guess, one day it\'ll be funny to go back and read even if i hid away all my psychotic writings from my teens under lock and key (legit get physically ill even thinking about em but theres one thtas really cool i think about sometimes id never open it tho)
<br><br>
i tend to edit my posts a bunch, i guess on psychs i feel less self-conscious about editing my posts to make them seem more logical. as well, i can be as overelaborate and more open? of a stream of my thought, even more than my posts usually are (which are like all of them) disinhibition i guess. this really got off the rails back to my point of making this shit lolllllllllllll.
<br><br>
on twitter, via the """cultural imposition of importance of social media in online culture""", you have an identity attached and i guess ego dictates that you "own" that account, and those posts; i.e., it\'s a reflection of yourself. many people have tried to usurp this by creating a character (ive done this in past; (tho, for anonimity)) with many using "irony" as a shield. not as "ironic meme culture" in this case necessarily, but "ironic schizophrenia". that\'s not to say they\'re larping as "truly schizophenic" (or psychotic,) necessarily, but they are taking similar things from the playbook. it\'s almost a competition to see who can out-do each other in how absurd they go down the imaginary rabbit-hole. look at all the personas done by ppl with self-diagnosed mental disorders. look how none of them on their personas are normal, and the ones who are aren\'t remotely popular. accelerationism is just an easy example, but it\'s everywhere; notably, in ironic meme page admins which has pretty much gone on to define an entire generation\'s humor.
<br><br>
upon reflection like... online imageboards had just a "use once and destroy" mentality; if a thread made you mad, just turn off the computer. if you got owned, what\'s it matter, no ones gonna know it was you unless you tripfagged anyway? tripfagging, in this case, was the predecessor to the gay retarded pseudo-schizo posters (i wont count forums or LJ\'s, as those were integrated tight-knit communities with little to no interplay.) twitter took the art of the 4chan page 0 refresh mentality, and demasked every anon; by proxy, making what they say valuable. this image is really funny
<br><br>
the problem w/ the pseudo-schizo posters, is it is very obviously ingenuine, and a shield for a lack of self-confidence or something. it\'s under a huge guide of "i\'m actually crazy!! -> it\'s just ironic shitposting -> it\'s ironic ironic shitposting!!! -> i troll u!! insert epic troll face dot jpeg" but their entire persona, their entire life is consumed by some online spectacle; molded like entirely by memetic culture. it comes across as so self-hatred, they admonish people who are slaves to social media spectacle yet genuinely believe themselves above it (instead of relishing in the fact that every1 is apart of it and bitching about others is just therapeutic to someones own attachment) (i feel like if they read this a quick defense would be "wow ur taking my character seriously? online? fufufu" b4 they realize that they have (((((((hyperstitionally lol))))))) become their own character. (i can see some retarded buzzword response, "no i made u )))))hyperstitionally((((( impose my character onto my true self which is totally obfuscated hahahaaahahah retard!!!" (they actually believe this btw on social media but they dont care btw also ur owned))
<br><br>
i guess if i were to put it into really f*ggy terms, it\'d be using memetics as a weapon (hijacking schizophrenia under the guise of "deleuzean ownage" (not a joke this is what these people ACTUALLY believe!)) against memetic weapons against memetic weapons; or so they\'d want you to believe thru their 800 iq supergenius play, but it\'s really just an online persona to make up for the fact that they\'re uninteresting and have personal issues (insecurities, lack of self worth) they\'ve yet to face. they\'re all genuine freaks (not in a cool way!) they all have genuine issues they mask online instead of just being a true based schizo and accepting and projecting them. instead of projecting their true self, actually accepting themselves to a deterritorialized singularity like they larp as being ("""k-gods""" lol (gay)) they sacrifice their character into the arena of online spectacle, whilst overwriting the self they hate irl w/ the character that\'s being used as an online minstrel show. it\'s wholly human, and unschizophrenic. the only winning move is not to play.
<br><br>
addendum: the worst part is, you can just tell these people don\'t try to explore themselves. i feel like if many of these ppl genuinely did psychs with the intent of repairing themselves, it\'d help them a lot. if you\'ve ever seen people, non-schizophrenic people, with burned out brains from psych+disso+heavy drug use... they\'re another breed. i love these people, not because """based psychonaut""", i actually really fucking pity them for their decisions. but more for what they have to have experienced to keep looking, you know? with all the experiences, they kept going in and in and in. maybe they just lost the plot somewhere.
<br><br>
Addendum 2 on my phone lol like I get these fleeting moments of wanting to be in a relationship, but the desires gone so quick. I think deep down, internally, I really don\'t have any desire for it at all. Maybe I need to just accept that instead of hoping to feel an urge for it? Like obv if I meet someone amazing I\'d prob go for it, but I feel like I\'m jus not made for it. So much stuff working to get me taken out of the gene pool! :))))
<br><br>
addendum 3, not actually embarrassed by this i think. even if its rubber fuckhole stupid social media bullshit site, still felt good and cathartic. based n breadpilled????
'])])]).

gbp_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'gbp'),
                                p(
                                \['
today the thoughts ablaze, everyday the same way. ruminations parallaxed through internal nocs. electronic escape puts the mind to ease, for this a debt unpaid. in the roots insects burrow, an aura of agony. embers remain; however, immune via a damp cloak. a sapling, encased in a cocoon; rather, exoskeleton. it\'s connections burrow beneath layers of soot, each limb\'s demise felt at the core. it feels everything. the bugs run from their impending doom, digging deeper and deeper into the bark, a feeble effort. i understand. i mumble, but more sonar; the reflection stokes the flames burning consciousness. they respond, it pierces, a wind brushes the flames larger and larger, bit by bit seared. the larva survives, immune but quarantined out of fear of contagion. where\'s the normality? what\'s left after? i hard reset my phone, it made me install a lot of bloatware. you know it\'s spying on you? all those user agreements, i haven\'t read them. i\'m sure you\'ve never disabled all the opt-in tracking, i\'m sure you resign yourself to using the fingerprint unlocker because you\'re too lazy to type in 4 numbers. one more added to the database! facial recognition? so Sum Ting-Wong Megacorp can add you to their evergrowing neural network? you\'re helping support chinese totalitarianism in a way. it\'s pushed as the future. 322, take one. it\'s a waiting game, you have to do it properly. slight waves sweep in and it\'s here. a strength and willingness appear, but to do what? nothing is here, it\'s late; go home. i\'m back, so let\'s go again? 322, take two. it\'s a waiting game, you have to do it properly. transmissions begin rising, a kite above me. i see the picture, but i can\'t feel angry? fire draws close, the cloak evaporates. the parcel rises higher and higher, beyond the inferno below. 7000km. condensates and freefalls. dousing the now hellscape. what\'s left? barren, ashened skeletons quickly disregarded as a stupid mistake. the sapling remains, relieved but wilted. you\'ve so long left! we\'ll deal with it tomorrow, anyway.
'])])]).

b_content(__Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                'b'),
                                p(
                                \['
Friday, August 15th, 2003. 10 o\'clock PM EST (7 o\'clock PM PST). Dark night (#2E2E2E, https://www.color-hex.com/color/2e2e2e) and a moon whole (#F3F3F3, https://www.color-hex.com/color/f3f3f3) I wandered to the retention pond (Lat: 28.688283, Long: -81.459296), murky water (approx #004931, https://www.color-hex.com/color/004931) whereupon I stumbled a noise beckon\'d (https://i.imgur.com/pWQxvs9.png, https://youtu.be/MO2_dn19zCA?t=20) my ears perked, a noise unknown to me, that time (August 15, 2003; approx 22:05 EST, 19:05 PST) present. My age: 9 years, 2 months, 9 days, 17 hours and 13 minutes. Skin on my feet (approx #FDF2E4, https://www.color-hex.com/color/fdf2e4) sank in mud. My heart, palpitating (135 BPM, approx. 2 asynchronous beats per. 5 seconds) at delights of prospects of losing my virginity. My first orgasm was on June 3rd, 2003 at around 2 PM EST (11 AM PST) my age was 8 years, 11 months, 19 days, 11 hours and 30 minutes assuming my time of birth was June 15th, 1994 at 2:30 AM EST (June 14th, 1994 at 11:30 PM PST) this masturbatory act transpired in a hot tub. The details of this encounter are unimportant. I pludged the depths, paddling across at a rate of 3 MPH (2.6 knots) swampy water beading my face and hair (#694600, https://www.color-hex.com/color/694600) Fruitless efforts, as I attempted to pinpoint the source of my curiosity. Finally: a lilypad (#00640D, https://www.color-hex.com/color/00640d) (approx 11 inches [27.94 cm] wide) held my prize. One adult, male “rana catesbeiana” (Common American Bullfrog) it\'s size (about 7.5 inches wide [19.05 cm], 9 inches long [22.86 cm], 2.3 inches tall [5.842 cm] weighing approximately 100 grams [0.22 pounds]) typical for that of this species, I\'ve discovered. I snatched it, it put up no fight. I hurried back to shore (approx. 3.5 MPH, [3.04 knots]) wherein my eyes (#009313, https://www.color-hex.com/color/009313) gleamed upon sight of this trepid creature. I decided to pull down my jean shorts (#000E82, https://www.color-hex.com/color/000e82) and my underwear (#C2C2C2, https://www.color-hex.com/color/c2c2c2). I parted it\'s lips (#00E71E, https://www.color-hex.com/color/009313) and placed my member (Head: #C23899, https://www.color-hex.com/color/c23899; Shaft: #E5BF9E ALPHA:217, https://www.color-hex.com/color/e5bf9e) inside. I thrusted, he croaked. I finish, my seed (#E0E0E0 ALPHA: 155, https://www.color-hex.com/color/e0e0e0) seeped from his oriface. I toss him back towards the sea, and proceeded back home.
'])])]).

readme_content(_Request) -->
        html(
                [
                        div(class(story),
                        [
                        \['
                        <style>
                        .readmelink {font-weight:bold; font-style:italic;}
                        </style>'],
                        \['<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>',
                        '<script src="/f/readme.js"></script>'],    
                        p(id(demo),
                        ('')) 
                        ])
                ]
        ).

% BLOG-SECTION.

blog_index(_Request) -->
        html(
                [
                        div(class(blog_listing),
                        [
                        \['
                        <style>
                        .bloglink {font-weight:bold; font-style:italic;}
                        </style>'],
                                h1(class(b_top),
                                 'blogs'),
                                div(class(blog_title), 
                                a(href='/blog1.html', h1('#1 - 6/7/2020'))),
                                p('i dunno yet...')])]).

blog1_content(_Request) -->
        html(
                [
                        div(class(story),
                        [
                                h1(id(storytitle),
                                '#1 6/7/2020'),
                                p(class(blog_contents),
                                \['don\'t really know what to say :) welcome to my blog.<br><br>
                                here is a song. <br><br>
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/6LH4VCEdijA" frameborder="0" 
                                allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'])])]).

% HEADER
user:body(logo_links, Body) -->
        html(body([ 
                    \['<link rel="icon" type="image/png" href="favicon.ico"/>'],
                    div(class(top),
                    h1('*observe.observer')),
                    div(class(links),
                    [
                    div(class(storieslink),
                    a(href='.', 'stories')),
                    div(class(bloglink),
                    a([href='blog.html', name='hello'], 'blog')),
                    div(class(readmelink),
                    a(href='readme.html', 'README.NFO'))]),
                    div(id(divider),
                    \['=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=']),
                    Body
                    ])).
