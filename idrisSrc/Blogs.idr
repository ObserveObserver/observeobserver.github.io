module Blogs 

import Html
import Html.Attributes
import Data.List
import Data.List1
import Data.String

public export
record Blog where
    constructor MkBlog
    title : String
    content : String
    html : Html

    
footer : String
footer = """
<CENTER><IMG SRC=\"f/logo.png\"></CENTER><CENTER><A  HREF=\"https://github.com/ObserveObserver/observeobserver.github.io/tree/master/idrisSrc\">Written in Idris 2</A></CENTER></BODY>
"""

getNl : String -> String
getNl str = (concat (map (\x => x ++ "<br>") (forget (split (== '\n') str))))

layout : String -> String -> Blog
layout title content =
        MkBlog title content $
        body [] [
          div [class_ "top"] [h1 [] [text "*observe.observer"]],
          div [class_ "links"] [
            div [class_ "storieslink"] [a [href "https://observe.observer"] [text "stories"]],
            div [class_ "bloglink"] [a [href "BLOG.HTML"] [text "blog"]],
            div [class_ "readmelink"] [a [href "README.HTML"] [text "README.NFO"]],
            div [class_ "keyboardlink"] [a [href "KEYBOARDS.HTML"] [text "keyboards"]]
          ],
          div [id "divider"] [text "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="],
          div [class_ "story"] [
            h1 [id "storytitle"] [text title],
            p [] [text content]
          ],
          script [src "index.js"] [],
          script [] [text """
            function debugGlobals() {
              console.log('Available globals:', Object.keys(window).filter(key => key.includes('App') || key.includes('PS') || key === 'halogen'));
            }
            
            // Run this after your PureScript script is loaded
            document.addEventListener('DOMContentLoaded', debugGlobals);
          """],
          text footer
        ]


public export

t : Blog
t = let
        title = "t"
        content = "we were watching the motorcade pass through the city square. past the book depository. you couldn't hear anything. his head exploded. his head simply exploded. his head simply just exploded. there's no getting around it, his head exploded. it exploded good. it just exploded. no rhyme or reason, it just exploded. into a million fragments, exploded on the car, exploded on his wife, exploded on the fans. yes, this is the truth that which i bore withness with my own very two eyes. john f kennedy's head exploded. just like that, bam, exploded. in fact, you would be hard pressed to argue that it didn't explode. what would you say? it certainly didn't melt, and it definitely didn't do \"nothing\". something definitely happened, at least, i think we can all agree. i remember it clear as day. go watch the zapruder film, it explodes there too. are these two different incidents? maybe, but that would be one hell of a coincidence; john f kennedys head exploding twice? i'm not convinced, not so sure that passes the ol' \"sniff test\". even at my old age, i have my wits about me. i can see it now, the pink mist like rain spewing from the back of his cadillac. his wife, trying to shove his Godforsaken neoliberal shit-for-brains back into his blown out skull, the yellow tint over the day, the film grain over everything. i can still hear the silence of nothing going on at all. yep, i can see it now, clear as day. those were the good old days, things used to be so much better. remember minstrel shows? eh nevermind, my point is: we used to laugh at each other, we used to have fun. i mean, i guess SOME people cried over kennedy's brains making a terminal b-line to poundtown, looking like he gave a shotgun the blowie of it's life. that reminds me, i saw something online a few years ago: apparently dolphins ejaculate hard. i mean, really hard, like 75 mph. i don't know where i saw that, but i guess i picture former president john f kennedy being an over-achiever and trying to catch that dolphin's nut, not knowing facts like this. this sort of stuff can save your life, in the technological age there's not really any excuse for ignorance. different times i guess. maybe that's why his head exploded? anyway, yeah we used to just have fun... laugh a little... kick back... they used to let you smoke on airplanes. whatever happened to that? i don't know whether to blame the liberals or conservatives on that one, i wasn't alive yet. but i can imagine it, i can see it now. i'm leaned back, a nice parliament in my mouth, i flip the lighter and light the wick. a sudden rush of flame penetrates the entire fusilague, women and children scream before it's instantly shut out, all the oxygen is gone. they can't scream, no one can. you just hear gurgling. it's quiet, sans the sound of the engine, but even that's having a hard time keeping up. everything is fried. i'm charred black. i am the minstrel. everyone looks down and starts laughing. we used to laugh at each others differences, now everyone is the minstrel. serves us right for what we did to MLK. we laugh and laugh as the plane descends more and more. what a trip! i put my molchy husks in the air, i try to say \"weeee!\" but i think i'm still on fire. maybe not if there's no oxygen? let's just say i'm still on fire. i can't really feel anything anymore, so i'd better not risk it; eh, once we're back on the ground we can sort this stuff out. the plane lands at a speed of 500 knots, straight down. jet fuel ignites, but what's that matter now? i fly forward, 15g lauches my body into the seat of the toddler infront of me. she isn't crying anymore. my head explodes into a million pieces, pink mist envelopes everything. i'm still conscious, by a stroke of luck, as i start flying. well, i was flying before. i'm continuing flying. jagged metal is all around, but as previously stated, i no longer feel, so who cares? did i state that? i don't remember. i can't feel at this point. eventually, i crash through the cockpit window. this was the days before 9/11, they pretty much always left the door open, the patriot act and all that shit really fucked everything up. i hit the dirt, my body flattens and i'm turned to ash by the flame. status: terminal, late for arrival. early for departure? pick whichever is wittier. i guess i can see why they'd ban it now."
    in
        layout title content

s : Blog
s = let 
        content = """
              it's 11 am, i stare into the clouds of dust outside. it's a beautiful day; 85f, 50% humidity. they use the air quality index to measure how breathable it is. currently, we're at 650 AQI. wow, that's better than the 655 yesterday. i step outside and i immediately hack a lung. it's okay, better than yesterday. no blood this time. everyone is wearing their gas masks (fucking maskholes) but i'm not a coward enough to believe it. why would i? they say it'll cause cancer. they say it'll cause asthma. they say it'll lower Your energy. my testosterone levels are off the charts, sorry to say. They wouldn't allow it if it was actually bad.

but it's nice to see Corporations doing something about it. i feel thankful that ZhangWang Conglamorate (a subsidiary of Tencent) is lowering their carbon emissions by 2% every year. They help us. They care. They ought to be praised. thank You! thank You very much. thanks. thank You Mr. CEO. thank You Mr. COO. thank You Mr (and Mrs!) Investors. thank You Board of Directors! we (You) are bringing things back to their natural state. kind of, it doesn't really matter to me anyway. i should thank Them.

i head to the PC cafe. it's hard to see with all the dust. it's still better than yesterday, so i don't really care. people are slanted over, their faces white. they're being unproductive, what a shame. they ought be punished. i wipe off a keyboard, plop down and get to work.

\"hello Mr. Ceo\"... no, that doesn't sound right. \"Dearest Mr. Zhang\"... no that's still not it. \"Dear Sir\". that's it. i need Him to realize i know my place. i'm a lower caste, a lesser being. i'm a bug, He is a Human. i don't even have a soul anymore, maybe i never had one. i don't need one. the only ones who need a soul are those who keep the ship sailing. having no soul is better for your career.

\"Dear Sir, my name is\"-- scratch that, i don't matter. \"Dear Sir, i would like to praise You for Your efforts. perhaps it means nothing from someone like me, as compared to You i am an ant. i am a worm. i am disgusting. i am repulsive. i live for You, i live to serve. i am abhorrent. i am vile. i am a virus. i am a pest. i am a leech. i've realized my place, i know it. i sit here and stare at a screen, mouth agape. though Sir, i would like You to know that i no longer compulsively drool all over myself.

i noticed the air was better today. this is all thanks to You. yes, You are all the way on the other side of the globe, yes Sir i do know this. but i see Your efforts and congratulate You on Your mission of saving the planet. i know You care, i know You're far smarter and valuable than i. thank You Sir, thank You so much for making my life better. thank You for making my electronics. thank You for making my vape. thank You for making my television. thank You for making my phone. yes Sir, i know i truly own none of these, i know that You spy on me. i am thankful for You looking out for me! You are in no position to care, but You do. God damnit, thank You Sir, for everything You do.\"

i scan it over, scan it over twice, scan it over three times. i need to make sure it's as perfect as i can get. tears well on the fourth glance. i hope He sees it, i must check my email regularly so-as to check for continued correspondence. i'm giddy. even if His secretary writes His emails, i will feel honored. i will print it and hang it on my wall. no one comes over anymore. i don't want to see anyone. it's better to be alone, there's more time to be productive.

i open my study stack. 20 textbooks on screen at once. i must consume it, i must become more productive. i must raise my productivity. if i do, maybe my Boss will give me praise. He will tell me i'm doing a great job, He will tell me i'm an important part of the team, He will tell me i play a key role in the Tsumtsung(R) Electronics Corporation(TM) Family(R). He's like my Dad. i call Him Dad to myself. in my dreams, we play catch. i hit homeruns and He congratulates me. maybe in another life. but for now, i will become better for You, Dad.

i read. i read. i read. i read. i read. i read. i read. i read. i read. i read. i read. i read. i read. i read. i read. i read. i read. i read. i write notes. i read more. i read again. i write more notes. i'm learning so much important stuff. i'm learning how to program efficiently. ah, yes, i should learn how to operate SaaS services better. i love Amazon(R) Cloud, it's so easy to use. i love Amazon(R) Lambda(TM). when i use it, i feel i'm producing better code for my Family. i love my Family, the Tsumtsung(R) Family.

lazy people are all around me. do they not have a Family like me? do they not have their own Dad? do they not care? how could you not help the Company who graciously pays your wages? how else are You going to pay your bills? how else will You get healthcare? They take care of you. you should be worshipping Them, They are your God now. you must learn, you must practice, you must worship. your value is determined by your output and efficiency. this is the way it should be, the World has shifted in the right direction.

people hate working now. i truly will never understand them. they say they don't want to work 12 hour shifts. what else are you going to do with your life? i've learned so much today. i've learned how to maximize efficiency by 2% for my API. what did you do? you played games? you watched movies? you watched tv? you hung out with people? you made \"art\"? you made music? You did nothing. how does that help your future business prospects? maybe 1% of you will make it in music. don't tell me you're doing it for fun? HAHAHAHAHAHAHAHA. keep wasting your time. i'll be rising up the Corporate Ladder, one spoke at a time. it's like the tower of babel but real. one day i'll be face-to-face with God.

my Supervisor watches over me. He's a hawk. He makes sure i don't step out of line. unproductivity is mutiny and He's the Executive Officer. thank You for making sure i'm in check. who knows what i'd do if left to myself. please just tell me how to live. please just tell me what to do. thinking is an irritant, it disrupts my output.

i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type. i type more. i type even more. i glance at my notes. perfect, our response time is down from 200ms to 198ms. i have done a great deed. i eagerly pull Him over. \"look! look what i did! look. do You see? it's down 2ms. Sir, are You impressed? are You proud?\" He walks away without saying a word. maybe He didn't see? \"S-sir, look!\" his distance grows. \"Sir...\", i feel abandoned. what the hell? doesn't He see how much more efficient it is? i begin sobbing, sobbing like a child. i am a child. Dad is disappointed. i have disappointed Father.

i cry. why?? i cry. what did i do? i cry. please... i cry. i'm sorry... i cry. i'm worthless. i cry. i'm weeping. i cry. i'm broken. i cry. i've lost it all. i cry. i've lost my chance. i cry. i've lost my future. i cry. i've lost my family. i cry. i've lost everything. i cry. i've lost my life. i cry. i'm worthless. i cry. i'm useless. i cry. i mean nothing. i cry, i'm broken. i cry. throw me away. i cry. leave me to die here. i cry. please kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me. i cry. kill me.

KILL ME. i look around. KILL ME. i see my chance. KILL ME. i take the pen. KILL ME. i look at it. KILL ME. it has the Bosses name. KILL ME. perfect. KILL ME. i hold it to my neck. KILL ME. i raise my head. KILL ME. i look towards the ceiling. KILL ME. thank You. KILL ME. finally. KILL ME. i'm sorry. KILL ME. on three. KILL ME. one. KILL ME. two. KILL ME. three. KILL ME. i slam my head. KILL ME. the pen enters. KILL ME. i breathe ink. KILL ME. blood drips on the keyboard. KILL ME. blood drips down my tie. KILL ME. blood drips on my slacks. KILL ME. blood is everywhere. KILL ME. sorry for the mess. KILL ME. i'm light headed. KILL ME. i hear people shouting. KILL ME. they tell me to stay awake. KILL ME. they're calling 911. KILL ME. it doesn't matter.
"""
        title = "s"
    in
        layout title content

r : Blog
r = let
        title = "r"
        content = getNl """
cons = \h t c n -> c h (t c n)
nil = \c n -> n
lizt = \l -> l cons nil
append = \xs ys c n -> xs c (ys c n)
churchToString :: (forall r. (Char -> r -> r) -> r -> r) -> String
churchToString church = fromCharArray (church (\c arr -> [ c ] <> arr) [])
br = \x -> append (cons ' ' (cons 'b' (cons 'r' (cons ' ' nil)))) x
shehetheythe = \x -> append (cons 's' (cons 'h' (cons 'e' (cons '/' (cons 'h' (cons 'e' (cons '/' (cons 't' (cons 'h' (cons 'e' (cons 'y' (cons '/' (cons 't' (cons 'h' (cons 'e' (cons ' ' nil)))))))))))))))) x
broke = \x -> append (cons 'b' (cons 'r' (cons 'o' (cons 'k' (cons 'e' (cons ' ' nil)))))) x
black = \x -> append (cons 'b' (cons 'l' (cons 'a' (cons 'c' (cons 'k' (cons ' ' nil)))))) x
conception = \x -> append (cons 'c' (cons 'o' (cons 'n' (cons 'c' (cons 'e' (cons 'p' (cons 't' (cons 'i' (cons 'o' (cons 'n' (cons ' ' nil))))))))))) x
returN = \x -> append (cons 'r' (cons 'e' (cons 't' (cons 'u' (cons 'r' (cons 'n' (cons ' ' nil))))))) x
spawn = \x -> append (cons 's' (cons 'p' (cons 'a' (cons 'w' (cons 'n' (cons ' ' nil)))))) x
looks = \x -> append (cons 'l' (cons 'o' (cons 'o' (cons 'k' (cons 's' (cons ' ' nil)))))) x
around = \x -> append (cons 'a' (cons 'r' (cons 'o' (cons 'u' (cons 'n' (cons 'd' (cons ' ' nil))))))) x
needs = \x -> append (cons 'n' (cons 'e' (cons 'e' (cons 'd' (cons 's' (cons ' ' nil)))))) x
liturgy = \x -> append (cons 'l' (cons 'i' (cons 't' (cons 'u' (cons 'r' (cons 'g' (cons 'y' (cons ' ' nil)))))))) x
oh = \x -> append (cons 'o' (cons 'h' (cons ' ' nil))) x
lord = \x -> append (cons 'L' (cons 'o' (cons 'r' (cons 'd' (cons ' ' nil))))) x
hast = \x -> append (cons 'h' (cons 'a' (cons 's' (cons 't' (cons ' ' nil))))) x
died = \x -> append (cons 'd' (cons 'i' (cons 'e' (cons 'd' (cons ' ' nil))))) x
wherefore = \x -> append (cons 'w' (cons 'h' (cons 'e' (cons 'r' (cons 'e' (cons 'f' (cons 'o' (cons 'r' (cons 'e' (cons ' ' nil)))))))))) x
didde = \x -> append (cons 'd' (cons 'i' (cons 'd' (cons 'd' (cons 'e' (cons ' ' nil)))))) x
goest = \x -> append (cons 'g' (cons 'o' (cons 'e' (cons 's' (cons 't' (cons ' ' nil)))))) x
inne = \x -> append (cons 'i' (cons 'n' (cons 'n' (cons 'e' (cons ' ' nil))))) x
troublst = \x -> append (cons 't' (cons 'r' (cons 'o' (cons 'u' (cons 'b' (cons 'l' (cons 's' (cons 't' (cons ' ' nil))))))))) x
tymes = \x -> append (cons 't' (cons 'y' (cons 'm' (cons 'e' (cons 's' (cons ' ' nil)))))) x
gOd = \x -> append (cons 'G' (cons 'o' (cons 'd' (cons ' ' nil)))) x
o = \x -> append (cons 'o' (cons ' ' nil)) x
dere = \x -> append (cons 'd' (cons 'e' (cons 'r' (cons 'e' (cons ' ' nil))))) x
thou = \x -> append (cons 'T' (cons 'h' (cons 'o' (cons 'u' (cons ' ' nil))))) x
art = \x -> append (cons 'a' (cons 'r' (cons 't' (cons ' ' nil)))) x
when = \x -> append (cons 'w' (cons 'h' (cons 'e' (cons 'n' (cons ' ' nil))))) x
canst = \x -> append (cons 'c' (cons 'a' (cons 'n' (cons 's' (cons 't' (cons ' ' nil)))))) x
tHou = \x -> append (cons 't' (cons 'h' (cons 'o' (cons 'u' (cons ' ' nil))))) x
showst = \x -> append (cons 's' (cons 'h' (cons 'o' (cons 'w' (cons 's' (cons 't' (cons ' ' nil))))))) x
us = \x -> append (cons 'u' (cons 's' (cons ' ' nil))) x
thine = \x -> append (cons 'T' (cons 'h' (cons 'i' (cons 'n' (cons 'e' (cons ' ' nil)))))) x
herte = \x -> append (cons 'h' (cons 'e' (cons 'r' (cons 't' (cons 'e' (cons ' ' nil)))))) x
purE = \x -> append (cons 'p' (cons 'u' (cons 'r' (cons 'e' (cons ' ' nil))))) x
theyre = \x -> append (cons 't' (cons 'h' (cons 'e' (cons 'y' (cons 'r' (cons 'e' (cons ' ' nil))))))) x
saying = \x -> append (cons 's' (cons 'a' (cons 'y' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))) x
wordz = \x -> append (cons 'w' (cons 'o' (cons 'r' (cons 'd' (cons 's' (cons ' ' nil)))))) x
scramble = \x -> append (cons 's' (cons 'c' (cons 'r' (cons 'a' (cons 'm' (cons 'b' (cons 'l' (cons 'e' (cons ' ' nil))))))))) x
omsolete = \x -> append (cons 'o' (cons 'm' (cons 's' (cons 'o' (cons 'l' (cons 'e' (cons 't' (cons 'e' (cons ' ' nil))))))))) x
desire = \x -> append (cons 'd' (cons 'e' (cons 's' (cons 'i' (cons 'r' (cons 'e' (cons ' ' nil))))))) x
someplace = \x -> append (cons 's' (cons 'o' (cons 'm' (cons 'e' (cons 'p' (cons 'l' (cons 'a' (cons 'c' (cons 'e' (cons ' ' nil)))))))))) x
joy = \x -> append (cons 'j' (cons 'o' (cons 'y' (cons ' ' nil)))) x
happiness = \x -> append (cons 'h' (cons 'a' (cons 'p' (cons 'p' (cons 'i' (cons 'n' (cons 'e' (cons 's' (cons 's' (cons ' ' nil)))))))))) x
sadness = \x -> append (cons 's' (cons 'a' (cons 'd' (cons 'n' (cons 'e' (cons 's' (cons 's' (cons ' ' nil)))))))) x
neutral = \x -> append (cons 'n' (cons 'e' (cons 'u' (cons 't' (cons 'r' (cons 'a' (cons 'l' (cons ' ' nil)))))))) x
between = \x -> append (cons 'b' (cons 'e' (cons 't' (cons 'w' (cons 'e' (cons 'e' (cons 'n' (cons ' ' nil)))))))) x
perpetual = \x -> append (cons 'p' (cons 'e' (cons 'r' (cons 'p' (cons 'e' (cons 't' (cons 'u' (cons 'a' (cons 'l' (cons ' ' nil)))))))))) x
nulL = \x -> append (cons 'n' (cons 'u' (cons 'l' (cons 'l' (cons ' ' nil))))) x
opened = \x -> append (cons 'o' (cons 'p' (cons 'e' (cons 'n' (cons 'e' (cons 'd' (cons ' ' nil))))))) x
door = \x -> append (cons 'd' (cons 'o' (cons 'o' (cons 'r' (cons ' ' nil))))) x
walked = \x -> append (cons 'w' (cons 'a' (cons 'l' (cons 'k' (cons 'e' (cons 'd' (cons ' ' nil))))))) x
licked = \x -> append (cons 'l' (cons 'i' (cons 'c' (cons 'k' (cons 'e' (cons 'd' (cons ' ' nil))))))) x
teased = \x -> append (cons 't' (cons 'e' (cons 'a' (cons 's' (cons 'e' (cons 'd' (cons ' ' nil))))))) x
waitress = \x -> append (cons 'w' (cons 'a' (cons 'i' (cons 't' (cons 'r' (cons 'e' (cons 's' (cons 's' (cons ' ' nil))))))))) x
pulled = \x -> append (cons 'p' (cons 'u' (cons 'l' (cons 'l' (cons 'e' (cons 'd' (cons ' ' nil))))))) x
hearts = \x -> append (cons 'h' (cons 'e' (cons 'a' (cons 'r' (cons 't' (cons 's' (cons ' ' nil))))))) x
across = \x -> append (cons 'a' (cons 'c' (cons 'r' (cons 'o' (cons 's' (cons 's' (cons ' ' nil))))))) x
fluttered = \x -> append (cons 'f' (cons 'l' (cons 'u' (cons 't' (cons 't' (cons 'e' (cons 'r' (cons 'e' (cons 'd' (cons ' ' nil)))))))))) x
ground = \x -> append (cons 'g' (cons 'r' (cons 'o' (cons 'u' (cons 'n' (cons 'd' (cons ' ' nil))))))) x
understood = \x -> append (cons 'u' (cons 'n' (cons 'd' (cons 'e' (cons 'r' (cons 's' (cons 't' (cons 'o' (cons 'o' (cons 'd' (cons ' ' nil))))))))))) x
statement = \x -> append (cons 's' (cons 't' (cons 'a' (cons 't' (cons 'e' (cons 'm' (cons 'e' (cons 'n' (cons 't' (cons ' ' nil)))))))))) x
we = \x -> append (cons 'w' (cons 'e' (cons ' ' nil))) x
shoW = \x -> append (cons 's' (cons 'h' (cons 'o' (cons 'w' (cons ' ' nil))))) x
felt = \x -> append (cons 'f' (cons 'e' (cons 'l' (cons 't' (cons ' ' nil))))) x
zffton = \x -> append (cons '[' (cons '0' (cons '5' (cons ':' (cons '5' (cons '3' (cons ':' (cons '1' (cons '9' (cons ']' nil)))))))))) x
sure = \x -> append (cons 's' (cons 'u' (cons 'r' (cons 'e' (cons ' ' nil))))) x
zffttf = \x -> append (cons '[' (cons '0' (cons '5' (cons ':' (cons '5' (cons '3' (cons ':' (cons '3' (cons '5' (cons ']' nil)))))))))) x
years = \x -> append (cons 'y' (cons 'e' (cons 'a' (cons 'r' (cons 's' (cons ' ' nil)))))) x
zffftz = \x -> append (cons '[' (cons '0' (cons '5' (cons ':' (cons '5' (cons '4' (cons ':' (cons '2' (cons '0' (cons ']' nil)))))))))) x
honest = \x -> append (cons 'h' (cons 'o' (cons 'n' (cons 'e' (cons 's' (cons 't' (cons ' ' nil))))))) x
scared = \x -> append (cons 's' (cons 'c' (cons 'a' (cons 'r' (cons 'e' (cons 'd' (cons ' ' nil))))))) x
may = \x -> append (cons 'm' (cons 'a' (cons 'y' (cons ' ' nil)))) x
for = \x -> append (cons 'f' (cons 'o' (cons 'r' (cons ' ' nil)))) x
zffftt = \x -> append (cons '[' (cons '0' (cons '5' (cons ':' (cons '5' (cons '5' (cons ':' (cons '3' (cons '2' (cons ']' nil)))))))))) x
kidding = \x -> append (cons 'k' (cons 'i' (cons 'd' (cons 'd' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))))) x
left = \x -> append (cons 'l' (cons 'e' (cons 'f' (cons 't' (cons ' ' nil))))) x
look = \x -> append (cons 'l' (cons 'o' (cons 'o' (cons 'k' (cons ' ' nil))))) x
treated = \x -> append (cons 't' (cons 'r' (cons 'e' (cons 'a' (cons 't' (cons 'e' (cons 'd' (cons ' ' nil)))))))) x
your = \x -> append (cons 'y' (cons 'o' (cons 'u' (cons 'r' (cons ' ' nil))))) x
shot = \x -> append (cons 's' (cons 'h' (cons 'o' (cons 't' (cons ' ' nil))))) x
how = \x -> append (cons 'h' (cons 'o' (cons 'w' (cons ' ' nil)))) x
act = \x -> append (cons 'a' (cons 'c' (cons 't' (cons ' ' nil)))) x
must = \x -> append (cons 'm' (cons 'u' (cons 's' (cons 't' (cons ' ' nil))))) x
joke = \x -> append (cons 'j' (cons 'o' (cons 'k' (cons 'e' (cons ' ' nil))))) x
zfffft = \x -> append (cons '[' (cons '0' (cons '5' (cons ':' (cons '5' (cons '5' (cons ':' (cons '4' (cons '3' (cons ']' nil)))))))))) x
ive = \x -> append (cons 'i' (cons 'v' (cons 'e' (cons ' ' nil)))) x
been = \x -> append (cons 'b' (cons 'e' (cons 'e' (cons 'n' (cons ' ' nil))))) x
ready = \x -> append (cons 'r' (cons 'e' (cons 'a' (cons 'd' (cons 'y' (cons ' ' nil)))))) x
zffszz = \x -> append (cons '[' (cons '0' (cons '5' (cons ':' (cons '5' (cons '6' (cons ':' (cons '0' (cons '0' (cons ']' nil)))))))))) x
backing = \x -> append (cons 'b' (cons 'a' (cons 'c' (cons 'k' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))))) x
out = \x -> append (cons 'o' (cons 'u' (cons 't' (cons ' ' nil)))) x
alone = \x -> append (cons 'a' (cons 'l' (cons 'o' (cons 'n' (cons 'e' (cons ' ' nil)))))) x
sick = \x -> append (cons 's' (cons 'i' (cons 'c' (cons 'k' (cons ' ' nil))))) x
zffntz = \x -> append (cons '[' (cons '0' (cons '5' (cons ':' (cons '5' (cons '9' (cons ':' (cons '3' (cons '0' (cons ']' nil)))))))))) x
amtime = \x -> append (cons 'A' (cons 'M' (cons ' ' nil))) x
yyyy = \x -> append (cons 'Y' (cons 'Y' (cons 'Y' (cons 'Y' (cons ':' (cons ' ' nil)))))) x
hello = \x -> append (cons 'h' (cons 'e' (cons 'l' (cons 'l' (cons 'o' (cons ' ' nil)))))) x
tell = \x -> append (cons 't' (cons 'e' (cons 'l' (cons 'l' (cons ' ' nil))))) x
youre = \x -> append (cons 'y' (cons 'o' (cons 'u' (cons 'r' (cons 'e' (cons ' ' nil)))))) x
actually = \x -> append (cons 'a' (cons 'c' (cons 't' (cons 'u' (cons 'a' (cons 'l' (cons 'l' (cons 'y' (cons ' ' nil))))))))) x
acting = \x -> append (cons 'a' (cons 'c' (cons 't' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))) x
embarrassing = \x -> append (cons 'e' (cons 'm' (cons 'b' (cons 'a' (cons 'r' (cons 'r' (cons 'a' (cons 's' (cons 's' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))))))))) x
zszftf = \x -> append (cons '[' (cons '0' (cons '6' (cons ':' (cons '0' (cons '5' (cons ':' (cons '3' (cons '5' (cons ']' nil)))))))))) x
xxxx = \x -> append (cons 'X' (cons 'X' (cons 'X' (cons 'X' (cons ':' (cons ' ' nil)))))) x
okay = \x -> append (cons 'o' (cons 'k' (cons 'a' (cons 'y' (cons ' ' nil))))) x
you = \x -> append (cons 'y' (cons 'o' (cons 'u' (cons ' ' nil)))) x
yOu = \x -> append (cons 'Y' (cons 'o' (cons 'u' (cons ' ' nil)))) x
werent = \x -> append (cons 'w' (cons 'e' (cons 'r' (cons 'e' (cons 'n' (cons 't' (cons ' ' nil))))))) x
peer = \x -> append (cons 'p' (cons 'e' (cons 'e' (cons 'r' (cons ' ' nil))))) x
pressures = \x -> append (cons 'p' (cons 'r' (cons 'e' (cons 's' (cons 's' (cons 'u' (cons 'r' (cons 'e' (cons 's' (cons ' ' nil)))))))))) x
bitch = \x -> append (cons 'b' (cons 'i' (cons 't' (cons 'c' (cons 'h' (cons ' ' nil)))))) x
answering = \x -> append (cons 'a' (cons 'n' (cons 's' (cons 'w' (cons 'e' (cons 'r' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))))))) x
eitheR = \x -> append (cons 'e' (cons 'i' (cons 't' (cons 'h' (cons 'e' (cons 'r' (cons ' ' nil))))))) x
huh = \x -> append (cons 'h' (cons 'u' (cons 'h' (cons ' ' nil)))) x
well = \x -> append (cons 'w' (cons 'e' (cons 'l' (cons 'l' (cons ' ' nil))))) x
makes = \x -> append (cons 'm' (cons 'a' (cons 'k' (cons 'e' (cons 's' (cons ' ' nil)))))) x
mistakes = \x -> append (cons 'm' (cons 'i' (cons 's' (cons 't' (cons 'a' (cons 'k' (cons 'e' (cons 's' (cons ' ' nil))))))))) x
haha = \x -> append (cons 'h' (cons 'a' (cons 'h' (cons 'a' (cons ' ' nil))))) x
sat = \x -> append (cons 's' (cons 'a' (cons 't' (cons ' ' nil)))) x
she = \x -> append (cons 's' (cons 'h' (cons 'e' (cons ' ' nil)))) x
nothing = \x -> append (cons 'n' (cons 'o' (cons 't' (cons 'h' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))))) x
met = \x -> append (cons 'm' (cons 'e' (cons 't' (cons ' ' nil)))) x
outside = \x -> append (cons 'o' (cons 'u' (cons 't' (cons 's' (cons 'i' (cons 'd' (cons 'e' (cons ' ' nil)))))))) x
designated = \x -> append (cons 'd' (cons 'e' (cons 's' (cons 'i' (cons 'g' (cons 'n' (cons 'a' (cons 't' (cons 'e' (cons 'd' (cons ' ' nil))))))))))) x
meeting = \x -> append (cons 'm' (cons 'e' (cons 'e' (cons 't' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))))) x
spot = \x -> append (cons 's' (cons 'p' (cons 'o' (cons 't' (cons ' ' nil))))) x
some = \x -> append (cons 's' (cons 'o' (cons 'm' (cons 'e' (cons ' ' nil))))) x
chainbrand = \x -> append (cons 'c' (cons 'h' (cons 'a' (cons 'i' (cons 'n' (cons 'b' (cons 'r' (cons 'a' (cons 'n' (cons 'd' (cons ' ' nil))))))))))) x
shop = \x -> append (cons 's' (cons 'h' (cons 'o' (cons 'p' (cons ' ' nil))))) x
had = \x -> append (cons 'h' (cons 'a' (cons 'd' (cons ' ' nil)))) x
no = \x -> append (cons 'n' (cons 'o' (cons ' ' nil))) x
idea = \x -> append (cons 'i' (cons 'd' (cons 'e' (cons 'a' (cons ' ' nil))))) x
name = \x -> append (cons 'n' (cons 'a' (cons 'm' (cons 'e' (cons ' ' nil))))) x
both = \x -> append (cons 'b' (cons 'o' (cons 't' (cons 'h' (cons ' ' nil))))) x
world = \x -> append (cons 'w' (cons 'o' (cons 'r' (cons 'l' (cons 'd' (cons ' ' nil)))))) x
detached = \x -> append (cons 'd' (cons 'e' (cons 't' (cons 'a' (cons 'c' (cons 'h' (cons 'e' (cons 'd' (cons ' ' nil))))))))) x
society = \x -> append (cons 's' (cons 'o' (cons 'c' (cons 'i' (cons 'e' (cons 't' (cons 'y' (cons ' ' nil)))))))) x
lived = \x -> append (cons 'l' (cons 'i' (cons 'v' (cons 'e' (cons 'd' (cons ' ' nil)))))) x
cybercitizens = \x -> append (cons 'c' (cons 'y' (cons 'b' (cons 'e' (cons 'r' (cons '-' (cons 'c' (cons 'i' (cons 't' (cons 'i' (cons 'z' (cons 'e' (cons 'n' (cons 's' (cons ' ' nil))))))))))))))) x
shook = \x -> append (cons 's' (cons 'h' (cons 'o' (cons 'o' (cons 'k' (cons ' ' nil)))))) x
hands = \x -> append (cons 'h' (cons 'a' (cons 'n' (cons 'd' (cons 's' (cons ' ' nil)))))) x
shtt = \x -> append (cons 's' (cons 'h' (cons 'e' (cons '/' (cons 'h' (cons 'e' (cons '/' (cons 't' (cons 'h' (cons 'e' (cons 'y' (cons '/' (cons 't' (cons 'h' (cons 'e' (cons ' ' nil)))))))))))))))) x
took = \x -> append (cons 't' (cons 'o' (cons 'o' (cons 'k' (cons ' ' nil))))) x
whywhy = \x -> append (cons 'w' (cons 'h' (cons 'y' (cons 'w' (cons 'h' (cons 'y' (cons ' ' nil))))))) x
whywhywhywhywhy = \x -> append (cons 'w' (cons 'h' (cons 'y' (cons 'w' (cons 'h' (cons 'y' (cons 'w' (cons 'h' (cons 'y' (cons 'w' (cons 'h' (cons 'y' (cons 'w' (cons 'h' (cons 'y' (cons ' ' nil)))))))))))))))) x
whywhywhy = \x -> append (cons 'w' (cons 'h' (cons 'y' (cons 'w' (cons 'h' (cons 'y' (cons 'w' (cons 'h' (cons 'y' (cons ' ' nil)))))))))) x
whyW = \x -> append (cons 'w' (cons 'h' (cons 'y' (cons 'W' (cons ' ' nil))))) x
saw = \x -> append (cons 's' (cons 'a' (cons 'w' (cons ' ' nil)))) x
putrid = \x -> append (cons 'p' (cons 'u' (cons 't' (cons 'r' (cons 'i' (cons 'd' (cons ' ' nil))))))) x
there = \x -> append (cons 't' (cons 'h' (cons 'e' (cons 'r' (cons 'e' (cons ' ' nil)))))) x
teeth = \x -> append (cons 't' (cons 'e' (cons 'e' (cons 't' (cons 'h' (cons ' ' nil)))))) x
everywhere = \x -> append (cons 'e' (cons 'v' (cons 'e' (cons 'r' (cons 'y' (cons 'w' (cons 'h' (cons 'e' (cons 'r' (cons 'e' (cons ' ' nil))))))))))) x
fragments = \x -> append (cons 'f' (cons 'r' (cons 'a' (cons 'g' (cons 'm' (cons 'e' (cons 'n' (cons 't' (cons 's' (cons ' ' nil)))))))))) x
glittered = \x -> append (cons 'g' (cons 'l' (cons 'i' (cons 't' (cons 't' (cons 'e' (cons 'r' (cons 'e' (cons 'd' (cons ' ' nil)))))))))) x
food = \x -> append (cons 'f' (cons 'o' (cons 'o' (cons 'd' (cons ' ' nil))))) x
coffee = \x -> append (cons 'c' (cons 'o' (cons 'f' (cons 'f' (cons 'e' (cons 'e' (cons ' ' nil))))))) x
lungs = \x -> append (cons 'l' (cons 'u' (cons 'n' (cons 'g' (cons 's' (cons ' ' nil)))))) x
breathe = \x -> append (cons 'b' (cons 'r' (cons 'e' (cons 'a' (cons 't' (cons 'h' (cons 'e' (cons ' ' nil)))))))) x
beings = \x -> append (cons 'b' (cons 'e' (cons 'i' (cons 'n' (cons 'g' (cons 's' (cons ' ' nil))))))) x
marrow = \x -> append (cons 'm' (cons 'a' (cons 'r' (cons 'r' (cons 'o' (cons 'w' (cons ' ' nil))))))) x
becomes = \x -> append (cons 'b' (cons 'e' (cons 'c' (cons 'o' (cons 'm' (cons 'e' (cons 's' (cons ' ' nil)))))))) x
apart = \x -> append (cons 'a' (cons 'p' (cons 'a' (cons 'r' (cons 't' (cons ' ' nil)))))) x
now = \x -> append (cons 'n' (cons 'o' (cons 'w' (cons ' ' nil)))) x
at = \x -> append (cons 'a' (cons 't' (cons ' ' nil))) x
scene = \x -> append (cons 's' (cons 'c' (cons 'e' (cons 'n' (cons 'e' (cons ' ' nil)))))) x
crime = \x -> append (cons 'c' (cons 'r' (cons 'i' (cons 'm' (cons 'e' (cons ' ' nil)))))) x
criminal = \x -> append (cons 'c' (cons 'r' (cons 'i' (cons 'm' (cons 'i' (cons 'n' (cons 'a' (cons 'l' (cons ' ' nil))))))))) x
investigation = \x -> append (cons 'i' (cons 'n' (cons 'v' (cons 'e' (cons 's' (cons 't' (cons 'i' (cons 'g' (cons 'a' (cons 't' (cons 'i' (cons 'o' (cons 'n' (cons ' ' nil)))))))))))))) x
brains = \x -> append (cons 'b' (cons 'r' (cons 'a' (cons 'i' (cons 'n' (cons 's' (cons ' ' nil))))))) x
alL = \x -> append (cons 'a' (cons 'l' (cons 'l' (cons ' ' nil)))) x
place = \x -> append (cons 'p' (cons 'l' (cons 'a' (cons 'c' (cons 'e' (cons ' ' nil)))))) x
that = \x -> append (cons 't' (cons 'h' (cons 'a' (cons 't' (cons ' ' nil))))) x
once = \x -> append (cons 'o' (cons 'n' (cons 'c' (cons 'e' (cons ' ' nil))))) x
would = \x -> append (cons 'w' (cons 'o' (cons 'u' (cons 'l' (cons 'd' (cons ' ' nil)))))) x
being = \x -> append (cons 'b' (cons 'e' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))) x
unimaginable = \x -> append (cons 'u' (cons 'n' (cons 'i' (cons 'm' (cons 'a' (cons 'g' (cons 'i' (cons 'n' (cons 'a' (cons 'b' (cons 'l' (cons 'e' (cons ' ' nil))))))))))))) x
come = \x -> append (cons 'c' (cons 'o' (cons 'm' (cons 'e' (cons ' ' nil))))) x
witnessing = \x -> append (cons 'w' (cons 'i' (cons 't' (cons 'n' (cons 'e' (cons 's' (cons 's' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))))))) x
was = \x -> append (cons 'w' (cons 'a' (cons 's' (cons ' ' nil)))) x
slumped = \x -> append (cons 's' (cons 'l' (cons 'u' (cons 'm' (cons 'p' (cons 'e' (cons 'd' (cons ' ' nil)))))))) x
hole = \x -> append (cons 'h' (cons 'o' (cons 'l' (cons 'e' (cons ' ' nil))))) x
heaD = \x -> append (cons 'h' (cons 'e' (cons 'a' (cons 'd' (cons ' ' nil))))) x
hair = \x -> append (cons 'h' (cons 'a' (cons 'i' (cons 'r' (cons ' ' nil))))) x
hey = \x -> append (cons 'h' (cons 'e' (cons 'y' (cons ' ' nil)))) x
skin = \x -> append (cons 's' (cons 'k' (cons 'i' (cons 'n' (cons ' ' nil))))) x
hangs = \x -> append (cons 'h' (cons 'a' (cons 'n' (cons 'g' (cons 's' (cons ' ' nil)))))) x
off = \x -> append (cons 'o' (cons 'f' (cons 'f' (cons ' ' nil)))) x
skull = \x -> append (cons 's' (cons 'k' (cons 'u' (cons 'l' (cons 'l' (cons ' ' nil)))))) x
inside = \x -> append (cons 'i' (cons 'n' (cons 's' (cons 'i' (cons 'd' (cons 'e' (cons ' ' nil))))))) x
today = \x -> append (cons 't' (cons 'o' (cons 'd' (cons 'a' (cons 'y' (cons ' ' nil)))))) x
infront = \x -> append (cons 'i' (cons 'n' (cons 'f' (cons 'r' (cons 'o' (cons 'n' (cons 't' (cons ' ' nil)))))))) x
everyone = \x -> append (cons 'e' (cons 'v' (cons 'e' (cons 'r' (cons 'y' (cons 'o' (cons 'n' (cons 'e' (cons ' ' nil))))))))) x
really = \x -> append (cons 'r' (cons 'e' (cons 'a' (cons 'l' (cons 'l' (cons 'y' (cons ' ' nil))))))) x
smells = \x -> append (cons 's' (cons 'm' (cons 'e' (cons 'l' (cons 'l' (cons 's' (cons ' ' nil))))))) x
can = \x -> append (cons 'c' (cons 'a' (cons 'n' (cons ' ' nil)))) x
taste = \x -> append (cons 't' (cons 'a' (cons 's' (cons 't' (cons 'e' (cons ' ' nil)))))) x
human = \x -> append (cons 'h' (cons 'u' (cons 'm' (cons 'a' (cons 'n' (cons ' ' nil)))))) x
blood = \x -> append (cons 'b' (cons 'l' (cons 'o' (cons 'o' (cons 'd' (cons ' ' nil)))))) x
air = \x -> append (cons 'a' (cons 'i' (cons 'r' (cons ' ' nil)))) x
windows = \x -> append (cons 'w' (cons 'i' (cons 'n' (cons 'd' (cons 'o' (cons 'w' (cons 's' (cons ' ' nil)))))))) x
painted = \x -> append (cons 'p' (cons 'a' (cons 'i' (cons 'n' (cons 't' (cons 'e' (cons 'd' (cons ' ' nil)))))))) x
red = \x -> append (cons 'r' (cons 'e' (cons 'd' (cons ' ' nil)))) x
these = \x -> append (cons 't' (cons 'h' (cons 'e' (cons 's' (cons 'e' (cons ' ' nil)))))) x
happen = \x -> append (cons 'h' (cons 'a' (cons 'p' (cons 'p' (cons 'e' (cons 'n' (cons ' ' nil))))))) x
were = \x -> append (cons 'w' (cons 'e' (cons 'r' (cons 'e' (cons ' ' nil))))) x
miserable = \x -> append (cons 'm' (cons 'i' (cons 's' (cons 'e' (cons 'r' (cons 'a' (cons 'b' (cons 'l' (cons 'e' (cons ' ' nil)))))))))) x
helped = \x -> append (cons 'h' (cons 'e' (cons 'l' (cons 'p' (cons 'e' (cons 'd' (cons ' ' nil))))))) x
saved = \x -> append (cons 's' (cons 'a' (cons 'v' (cons 'e' (cons 'd' (cons ' ' nil)))))) x
grabbed = \x -> append (cons 'g' (cons 'r' (cons 'a' (cons 'b' (cons 'b' (cons 'e' (cons 'd' (cons ' ' nil)))))))) x
gun = \x -> append (cons 'g' (cons 'u' (cons 'n' (cons ' ' nil)))) x
should = \x -> append (cons 's' (cons 'h' (cons 'o' (cons 'u' (cons 'l' (cons 'd' (cons ' ' nil))))))) x
done = \x -> append (cons 'd' (cons 'o' (cons 'n' (cons 'e' (cons ' ' nil))))) x
something = \x -> append (cons 's' (cons 'o' (cons 'm' (cons 'e' (cons 't' (cons 'h' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))))))) x
oR = \x -> append (cons 'o' (cons 'r' (cons ' ' nil))) x
they = \x -> append (cons 't' (cons 'h' (cons 'e' (cons 'y' (cons ' ' nil))))) x
write = \x -> append (cons 'w' (cons 'r' (cons 'i' (cons 't' (cons 'e' (cons ' ' nil)))))) x
note = \x -> append (cons 'n' (cons 'o' (cons 't' (cons 'e' (cons ' ' nil))))) x
itll = \x -> append (cons 'i' (cons 't' (cons 'l' (cons 'l' (cons ' ' nil))))) x
newspaper = \x -> append (cons 'n' (cons 'e' (cons 'w' (cons 's' (cons 'p' (cons 'a' (cons 'p' (cons 'e' (cons 'r' (cons ' ' nil)))))))))) x
tomorrow = \x -> append (cons 't' (cons 'o' (cons 'm' (cons 'o' (cons 'r' (cons 'r' (cons 'o' (cons 'w' (cons ' ' nil))))))))) x
already = \x -> append (cons 'a' (cons 'l' (cons 'r' (cons 'e' (cons 'a' (cons 'd' (cons 'y' (cons ' ' nil)))))))) x
taking = \x -> append (cons 't' (cons 'a' (cons 'k' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))) x
videos = \x -> append (cons 'v' (cons 'i' (cons 'd' (cons 'e' (cons 'o' (cons 's' (cons ' ' nil))))))) x
pictures = \x -> append (cons 'p' (cons 'i' (cons 'c' (cons 't' (cons 'u' (cons 'r' (cons 'e' (cons 's' (cons ' ' nil))))))))) x
put = \x -> append (cons 'p' (cons 'u' (cons 't' (cons ' ' nil)))) x
online = \x -> append (cons 'o' (cons 'n' (cons 'l' (cons 'i' (cons 'n' (cons 'e' (cons ' ' nil))))))) x
lasT = \x -> append (cons 'l' (cons 'a' (cons 's' (cons 't' (cons ' ' nil))))) x
family = \x -> append (cons 'f' (cons 'a' (cons 'm' (cons 'i' (cons 'l' (cons 'y' (cons ' ' nil))))))) x
sees = \x -> append (cons 's' (cons 'e' (cons 'e' (cons 's' (cons ' ' nil))))) x
parents = \x -> append (cons 'p' (cons 'a' (cons 'r' (cons 'e' (cons 'n' (cons 't' (cons 's' (cons ' ' nil)))))))) x
imagine = \x -> append (cons 'i' (cons 'm' (cons 'a' (cons 'g' (cons 'i' (cons 'n' (cons 'e' (cons ' ' nil)))))))) x
our = \x -> append (cons 'o' (cons 'u' (cons 'r' (cons ' ' nil)))) x
mothers = \x -> append (cons 'm' (cons 'o' (cons 't' (cons 'h' (cons 'e' (cons 'r' (cons 's' (cons ' ' nil)))))))) x
will = \x -> append (cons 'w' (cons 'i' (cons 'l' (cons 'l' (cons ' ' nil))))) x
breaking = \x -> append (cons 'b' (cons 'r' (cons 'e' (cons 'a' (cons 'k' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))))) x
just = \x -> append (cons 'j' (cons 'u' (cons 's' (cons 't' (cons ' ' nil))))) x
thinking = \x -> append (cons 't' (cons 'h' (cons 'i' (cons 'n' (cons 'k' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))))) x
numb = \x -> append (cons 'n' (cons 'u' (cons 'm' (cons 'b' (cons ' ' nil))))) x
feel = \x -> append (cons 'f' (cons 'e' (cons 'e' (cons 'l' (cons ' ' nil))))) x
thing = \x -> append (cons 't' (cons 'h' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))) x
body = \x -> append (cons 'b' (cons 'o' (cons 'd' (cons 'y' (cons ' ' nil))))) x
heart = \x -> append (cons 'h' (cons 'e' (cons 'a' (cons 'r' (cons 't' (cons ' ' nil)))))) x
brain = \x -> append (cons 'b' (cons 'r' (cons 'a' (cons 'i' (cons 'n' (cons ' ' nil)))))) x
may_be = \x -> append (cons 'm' (cons 'a' (cons 'y' (cons 'b' (cons 'e' (cons ' ' nil)))))) x
dream = \x -> append (cons 'd' (cons 'r' (cons 'e' (cons 'a' (cons 'm' (cons ' ' nil)))))) x
potentially = \x -> append (cons 'p' (cons 'o' (cons 't' (cons 'e' (cons 'n' (cons 't' (cons 'i' (cons 'a' (cons 'l' (cons 'l' (cons 'y' (cons ' ' nil)))))))))))) x
dreaming = \x -> append (cons 'd' (cons 'r' (cons 'e' (cons 'a' (cons 'm' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))))) x
but = \x -> append (cons 'b' (cons 'u' (cons 't' (cons ' ' nil)))) x
real = \x -> append (cons 'r' (cons 'e' (cons 'a' (cons 'l' (cons ' ' nil))))) x
life = \x -> append (cons 'l' (cons 'i' (cons 'f' (cons 'e' (cons ' ' nil))))) x
experiencing = \x -> append (cons 'e' (cons 'x' (cons 'p' (cons 'e' (cons 'r' (cons 'i' (cons 'e' (cons 'n' (cons 'c' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))))))))) x
anD = \x -> append (cons 'a' (cons 'n' (cons 'd' (cons ' ' nil)))) x
know = \x -> append (cons 'k' (cons 'n' (cons 'o' (cons 'w' (cons ' ' nil))))) x
cops = \x -> append (cons 'c' (cons 'o' (cons 'p' (cons 's' (cons ' ' nil))))) x
coming = \x -> append (cons 'c' (cons 'o' (cons 'm' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))) x
on = \x -> append (cons 'o' (cons 'n' (cons ' ' nil))) x
their = \x -> append (cons 't' (cons 'h' (cons 'e' (cons 'i' (cons 'r' (cons ' ' nil)))))) x
phonse = \x -> append (cons 'p' (cons 'h' (cons 'o' (cons 'n' (cons 's' (cons 'e' (cons ' ' nil))))))) x
people = \x -> append (cons 'p' (cons 'e' (cons 'o' (cons 'p' (cons 'l' (cons 'e' (cons ' ' nil))))))) x
are = \x -> append (cons 'a' (cons 'r' (cons 'e' (cons ' ' nil)))) x
crying = \x -> append (cons 'c' (cons 'r' (cons 'y' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))) x
wish = \x -> append (cons 'w' (cons 'i' (cons 's' (cons 'h' (cons ' ' nil))))) x
could = \x -> append (cons 'c' (cons 'o' (cons 'u' (cons 'l' (cons 'd' (cons ' ' nil)))))) x
cry = \x -> append (cons 'c' (cons 'r' (cons 'y' (cons ' ' nil)))) x
is = \x -> append (cons 'i' (cons 's' (cons ' ' nil))) x
like = \x -> append (cons 'l' (cons 'i' (cons 'k' (cons 'e' (cons ' ' nil))))) x
movie = \x -> append (cons 'm' (cons 'o' (cons 'v' (cons 'i' (cons 'e' (cons ' ' nil)))))) x
nightmare = \x -> append (cons 'n' (cons 'i' (cons 'g' (cons 'h' (cons 't' (cons 'm' (cons 'a' (cons 'r' (cons 'e' (cons ' ' nil)))))))))) x
convinced = \x -> append (cons 'c' (cons 'o' (cons 'n' (cons 'v' (cons 'i' (cons 'n' (cons 'c' (cons 'e' (cons 'd' (cons ' ' nil)))))))))) x
wake = \x -> append (cons 'w' (cons 'a' (cons 'k' (cons 'e' (cons ' ' nil))))) x
up = \x -> append (cons 'u' (cons 'p' (cons ' ' nil))) x
anY = \x -> append (cons 'a' (cons 'n' (cons 'y' (cons ' ' nil)))) x
minute = \x -> append (cons 'm' (cons 'i' (cons 'n' (cons 'u' (cons 't' (cons 'e' (cons ' ' nil))))))) x
from = \x -> append (cons 'f' (cons 'r' (cons 'o' (cons 'm' (cons ' ' nil))))) x
everything = \x -> append (cons 'e' (cons 'v' (cons 'e' (cons 'r' (cons 'y' (cons 't' (cons 'h' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))))))) x
pretend = \x -> append (cons 'p' (cons 'r' (cons 'e' (cons 't' (cons 'e' (cons 'n' (cons 'd' (cons ' ' nil)))))))) x
eveN = \x -> append (cons 'e' (cons 'v' (cons 'e' (cons 'n' (cons ' ' nil))))) x
say = \x -> append (cons 's' (cons 'a' (cons 'y' (cons ' ' nil)))) x
goodbye = \x -> append (cons 'g' (cons 'o' (cons 'o' (cons 'd' (cons 'b' (cons 'y' (cons 'e' (cons ' ' nil)))))))) x
didnt = \x -> append (cons 'd' (cons 'i' (cons 'd' (cons 'n' (cons 't' (cons ' ' nil)))))) x
get = \x -> append (cons 'g' (cons 'e' (cons 't' (cons ' ' nil)))) x
the = \x -> append (cons 't' (cons 'h' (cons 'e' (cons ' ' nil)))) x
things = \x -> append (cons 't' (cons 'h' (cons 'i' (cons 'n' (cons 'g' (cons 's' (cons ' ' nil))))))) x
wanted = \x -> append (cons 'w' (cons 'a' (cons 'n' (cons 't' (cons 'e' (cons 'd' (cons ' ' nil))))))) x
shouldnt = \x -> append (cons 's' (cons 'h' (cons 'o' (cons 'u' (cons 'l' (cons 'd' (cons 'n' (cons 't' (cons ' ' nil))))))))) x
have = \x -> append (cons 'h' (cons 'a' (cons 'v' (cons 'e' (cons ' ' nil))))) x
listened = \x -> append (cons 'l' (cons 'i' (cons 's' (cons 't' (cons 'e' (cons 'n' (cons 'e' (cons 'd' (cons ' ' nil))))))))) x
so = \x -> append (cons 's' (cons 'o' (cons ' ' nil))) x
gulliable = \x -> append (cons 'g' (cons 'u' (cons 'l' (cons 'l' (cons 'i' (cons 'a' (cons 'b' (cons 'l' (cons 'e' (cons ' ' nil)))))))))) x
such = \x -> append (cons 's' (cons 'u' (cons 'c' (cons 'h' (cons ' ' nil))))) x
a = \x -> append (cons 'a' (cons ' ' nil)) x
fucking = \x -> append (cons 'f' (cons 'u' (cons 'c' (cons 'k' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))))) x
idiot = \x -> append (cons 'i' (cons 'd' (cons 'i' (cons 'o' (cons 't' (cons ' ' nil)))))) x
give = \x -> append (cons 'g' (cons 'i' (cons 'v' (cons 'e' (cons ' ' nil))))) x
another = \x -> append (cons 'a' (cons 'n' (cons 'o' (cons 't' (cons 'h' (cons 'e' (cons 'r' (cons ' ' nil)))))))) x
chance = \x -> append (cons 'c' (cons 'h' (cons 'a' (cons 'n' (cons 'c' (cons 'e' (cons ' ' nil))))))) x
live = \x -> append (cons 'l' (cons 'i' (cons 'v' (cons 'e' (cons ' ' nil))))) x
different = \x -> append (cons 'd' (cons 'i' (cons 'f' (cons 'f' (cons 'e' (cons 'r' (cons 'e' (cons 'n' (cons 't' (cons ' ' nil)))))))))) x
doing = \x -> append (cons 'd' (cons 'o' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))) x
here = \x -> append (cons 'h' (cons 'e' (cons 'r' (cons 'e' (cons ' ' nil))))) x
am = \x -> append (cons 'a' (cons 'm' (cons ' ' nil))) x
watching = \x -> append (cons 'w' (cons 'a' (cons 't' (cons 'c' (cons 'h' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))))) x
its = \x -> append (cons 'i' (cons 't' (cons 's' (cons ' ' nil)))) x
fair = \x -> append (cons 'f' (cons 'a' (cons 'i' (cons 'r' (cons ' ' nil))))) x
isnt = \x -> append (cons 'i' (cons 's' (cons 'n' (cons 't' (cons ' ' nil))))) x
supposed = \x -> append (cons 's' (cons 'u' (cons 'p' (cons 'p' (cons 'o' (cons 's' (cons 'e' (cons 'd' (cons ' ' nil))))))))) x
be = \x -> append (cons 'b' (cons 'e' (cons ' ' nil))) x
again = \x -> append (cons 'a' (cons 'g' (cons 'a' (cons 'i' (cons 'n' (cons ' ' nil)))))) x
why = \x -> append (cons 'w' (cons 'h' (cons 'y' (cons ' ' nil)))) x
did = \x -> append (cons 'd' (cons 'i' (cons 'd' (cons ' ' nil)))) x
understand = \x -> append (cons 'u' (cons 'n' (cons 'd' (cons 'e' (cons 'r' (cons 's' (cons 't' (cons 'a' (cons 'n' (cons 'd' (cons ' ' nil))))))))))) x
ill = \x -> append (cons 'i' (cons 'l' (cons 'l' (cons ' ' nil)))) x
better = \x -> append (cons 'b' (cons 'e' (cons 't' (cons 't' (cons 'e' (cons 'r' (cons ' ' nil))))))) x
im = \x -> append (cons 'i' (cons 'm' (cons ' ' nil))) x
tired = \x -> append (cons 't' (cons 'i' (cons 'r' (cons 'e' (cons 'd' (cons ' ' nil)))))) x
oF = \x -> append (cons 'o' (cons 'f' (cons ' ' nil))) x
looking = \x -> append (cons 'l' (cons 'o' (cons 'o' (cons 'k' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil)))))))) x
stop = \x -> append (cons 's' (cons 't' (cons 'o' (cons 'p' (cons ' ' nil))))) x
smelling = \x -> append (cons 's' (cons 'm' (cons 'e' (cons 'l' (cons 'l' (cons 'i' (cons 'n' (cons 'g' (cons ' ' nil))))))))) x
takE = \x -> append (cons 't' (cons 'a' (cons 'k' (cons 'e' (cons ' ' nil))))) x
iN = \x -> append (cons 'i' (cons 'n' (cons ' ' nil))) x
it = \x -> append (cons 'i' (cons 't' (cons ' ' nil))) x
over = \x -> append (cons 'o' (cons 'v' (cons 'e' (cons 'r' (cons ' ' nil))))) x
listen = \x -> append (cons 'l' (cons 'i' (cons 's' (cons 't' (cons 'e' (cons 'n' (cons ' ' nil))))))) x
wont = \x -> append (cons 'w' (cons 'o' (cons 'n' (cons 't' (cons ' ' nil))))) x
plaese = \x -> append (cons 'p' (cons 'l' (cons 'a' (cons 'e' (cons 's' (cons 'e' (cons ' ' nil))))))) x
what = \x -> append (cons 'w' (cons 'h' (cons 'a' (cons 't' (cons ' ' nil))))) x
about = \x -> append (cons 'a' (cons 'b' (cons 'o' (cons 'u' (cons 't' (cons ' ' nil)))))) x
them = \x -> append (cons 't' (cons 'h' (cons 'e' (cons 'm' (cons ' ' nil))))) x
through = \x -> append (cons 't' (cons 'h' (cons 'r' (cons 'o' (cons 'u' (cons 'g' (cons 'h' (cons ' ' nil)))))))) x
make = \x -> append (cons 'm' (cons 'a' (cons 'k' (cons 'e' (cons ' ' nil))))) x
noT = \x -> append (cons 'n' (cons 'o' (cons 't' (cons ' ' nil)))) x
exist = \x -> append (cons 'e' (cons 'x' (cons 'i' (cons 's' (cons 't' (cons ' ' nil)))))) x
begin = \x -> append (cons 'b' (cons 'e' (cons 'g' (cons 'i' (cons 'n' (cons ' ' nil)))))) x
with = \x -> append (cons 'w' (cons 'i' (cons 't' (cons 'h' (cons ' ' nil))))) x
existence = \x -> append (cons 'e' (cons 'x' (cons 'i' (cons 's' (cons 't' (cons 'e' (cons 'n' (cons 'c' (cons 'e' (cons ' ' nil)))))))))) x
iF = \x -> append (cons 'i' (cons 'f' (cons ' ' nil))) x
cant = \x -> append (cons 'c' (cons 'a' (cons 'n' (cons 't' (cons ' ' nil))))) x
go = \x -> append (cons 'g' (cons 'o' (cons ' ' nil))) x
back = \x -> append (cons 'b' (cons 'a' (cons 'c' (cons 'k' (cons ' ' nil))))) x
erase = \x -> append (cons 'e' (cons 'r' (cons 'a' (cons 's' (cons 'e' (cons ' ' nil)))))) x
smell = \x -> append (cons 's' (cons 'm' (cons 'e' (cons 'l' (cons 'l' (cons ' ' nil)))))) x
hear = \x -> append (cons 'h' (cons 'e' (cons 'a' (cons 'r' (cons ' ' nil))))) x
mother = \x -> append (cons 'm' (cons 'o' (cons 't' (cons 'h' (cons 'e' (cons 'r' (cons ' ' nil))))))) x
brother = \x -> append (cons 'b' (cons 'r' (cons 'o' (cons 't' (cons 'h' (cons 'e' (cons 'r' (cons ' ' nil)))))))) x
father = \x -> append (cons 'f' (cons 'a' (cons 't' (cons 'h' (cons 'e' (cons 'r' (cons ' ' nil))))))) x
one = \x -> append (cons 'o' (cons 'n' (cons 'e' (cons ' ' nil)))) x
more = \x -> append (cons 'm' (cons 'o' (cons 'r' (cons 'e' (cons ' ' nil))))) x
time = \x -> append (cons 't' (cons 'i' (cons 'm' (cons 'e' (cons ' ' nil))))) x
see = \x -> append (cons 's' (cons 'e' (cons 'e' (cons ' ' nil)))) x
my = \x -> append (cons 'm' (cons 'y' (cons ' ' nil))) x
friends = \x -> append (cons 'f' (cons 'r' (cons 'i' (cons 'e' (cons 'n' (cons 'd' (cons 's' (cons ' ' nil)))))))) x
god = \x -> append (cons 'g' (cons 'o' (cons 'd' (cons ' ' nil)))) x
leT = \x -> append (cons 'l' (cons 'e' (cons 't' (cons ' ' nil)))) x
me = \x -> append (cons 'm' (cons 'e' (cons ' ' nil))) x
this = \x -> append (cons 't' (cons 'h' (cons 'i' (cons 's' (cons ' ' nil))))) x
please = \x -> append (cons 'p' (cons 'l' (cons 'e' (cons 'a' (cons 's' (cons 'e' (cons ' ' nil))))))) x
dO = \x -> append (cons 'd' (cons 'o' (cons ' ' nil))) x
want = \x -> append (cons 'w' (cons 'a' (cons 'n' (cons 't' (cons ' ' nil))))) x
tO = \x -> append (cons 't' (cons 'o' (cons ' ' nil))) x
die = \x -> append (cons 'd' (cons 'i' (cons 'e' (cons ' ' nil)))) x
i = \x -> append (cons 'i' (cons ' ' nil)) x
dont = \x -> append (cons 'd' (cons 'o' (cons 'n' (cons 't' (cons ' ' nil))))) x
wa = \x -> append (cons 'w' (cons 'a' (cons ' ' nil))) x
implY = \x -> append (cons '-' (cons '>' nil)) x

churchToString(lizt(shehetheythe(broke (broke(through(br(shtt(understood(br(black(conception(implY(br(returN(spawn(br(it(looks(around(implY(br(it(sees(what(it(needs(tO(see(br(see(saw(liturgy(for(shtt(br(oh(lord(br(thou(hast(died(br(wherefore(didde(thou(goest(br(inne(these(troublst(o(tymes(br(gOd(o(dere(br(when(canst(thou(showst(us(br(that(thou(art(here(br(when(canst(thou(showst(us(br(thine(herte(so(purE(br(br(you(listened(br(you(have(no(idea(what(theyre(saying(br(hello(br(the(wordz(scramble(your(brain(br(omsolete(desire(br(desire(nulL(br(you(exist(anD(dont(its(someplace(between(between(joy(between(happiness(between(sadness(between(neutral(br(between(everything(anD(nothing(br(perpetual(nulL(we(opened(the(door(anD(walked(iN(the(smell(oF(coffee(licked(anD(teased(the(waitress(had(no(idea(what(was(coming(i(pulled(it(out(hearts(across(fluttered(on(the(ground(it(was(understood(we(wanted(tO(make(a(statement(we(wanted(tO(shoW(everyone(how(it(felt(br(zffton(xxxx(are(you(sure(youre(ready(br(zffttf(yyyy(ive(been(ready(for(years(br(zffftz(xxxx(tO(be(honest(im(scared(i(feel(like(there(may(be(something(left(for(me(br(zffftt(yyyy(are(you(kidding(look(what(you(have(left(you(have(nothing(look(how(they(treated(you(this(is(your(one(shot(tO(get(back(at(them(anD(this(is(how(you(act(this(must(be(a(joke(br(zfffft(yyyy(im(ready(ive(been(ready(br(zffszz(yyyy(iF(youre(backing(out(ill(dO(it(alone(im(sick(oF(it(alL(br(zffntz(yyyy(hello(dont(tell(me(youre(actually(acting(like(this(come(on(fucking(embarrassing(br(zszftf(xxxx(okay(ill(dO(it(br(br(you(werent(but(hey(peer(pressures(a(bitch(huh(noT(answering(me(eitheR(huh(well(everyone(makes(mistakes(haha(br(shtt(sat(anD(listened(shtt(could(hear(everything(anD(nothing(see(everything(anD(nothing(br(they(met(outside(the(designated(meeting(spot(some(chainbrand(coffee(shop(they(had(no(idea(the(name(oF(they(were(both(detached(from(the(world(detached(from(society(they(lived(online(cybercitizens(they(shook(hands(shtt(took(it(br(why(why(why(why(why(why(why(br(why(br(why(why(why(why(why(br(why(why(why(why(why(why(why(br(why(why(why(why(br(why(br(why(why(why(why(why(why(why(why(why(whywhy(whywhywhywhywhy(whywhywhy(why(why(why(br(why(why(why(why(why(why(why(why(br(why(why(why(why(whyW(why(why(br(why(br(why(br(why(br(br(i(saw(the(scene(the(putrid(red(the(brains(everywhere(there(were(teeth(everywhere(skull(fragments(glittered(the(food(its(iN(the(coffee(its(iN(the(air(my(lungs(breathe(a(human(beings(marrow(the(marrow(becomes(apart(oF(me(now(im(at(the(scene(oF(a(crime(a(criminal(investigation(xxxx(brains(alL(over(the(place(that(was(a(human(once(that(was(once(a(human(being(why(would(a(human(being(dO(this(its(unimaginable(tO(me(i(dont(know(why(im(here(why(did(i(come(here(today(why(am(i(witnessing(this(why(was(it(done(why(did(i(dO(it(i(dont(understand(i(dont(understand(im(slumped(over(hole(iN(the(heaD(hair(hey(wake(up(their(skin(hangs(off(the(skull(i(can(see(inside(through(anD(through(why(today(why(infront(oF(everyone(why(did(they(why(i(dont(really(i(dont(i(dont(i(cant(i(dont(really(they(smell(it(smells(iN(here(it(smells(i(can(taste(the(smell(i(taste(the(smell(i(taste(the(smell(oF(their(blood(i(can(taste(it(i(taste(human(blood(iN(the(air(the(windows(painted(red(i(dont(understand(why(god(why(leT(these(things(happen(tO(people(were(they(so(miserable(could(i(have(helped(them(could(i(have(saved(them(i(should(have(grabbed(the(gun(i(should(have(done(something(tO(stop(it(what(about(the(parents(oR(friends(did(the(friends(know(did(they(write(a(note(this(will(be(iN(the(newspaper(itll(be(iN(the(newspaper(tomorrow(people(will(have(tO(see(this(people(are(already(taking(videos(anD(pictures(please(dont(put(it(online(please(dont(leT(this(be(the(lasT(thing(my(family(sees(i(dont(want(my(parents(tO(see(this(i(cant(imagine(what(our(mothers(will(feel(my(heart(is(breaking(just(thinking(about(it(i(want(tO(cry(but(cant(im(numb(i(cant(feel(a(thing(iN(my(body(iN(my(heart(iN(my(brain(may(be(this(is(a(dream(potentially(im(dreaming(but(i(know(its(real(this(is(real(life(im(experiencing(this(anD(i(didnt(eveN(know(i(want(tO(go(back(what(dO(i(dO(dO(i(the(cops(are(coming(people(are(on(their(phonse(people(are(crying(i(wish(i(could(cry(this(is(like(a(movie(its(a(nightmare(im(convinced(ill(wake(up(anY(minute(from(this(i(see(everything(why(did(i(dO(it(why(did(i(dO(this(i(cant(pretend(why(did(i(dO(this(why(did(i(dO(this(why(did(i(dO(this(why(did(i(dO(this(i(didnt(eveN(get(tO(say(goodbye(i(didnt(get(tO(dO(the(things(i(wanted(why(did(i(dO(this(why(did(i(listen(i(shouldnt(have(listened(im(so(gulliable(why(did(i(dO(this(im(such(a(fucking(idiot(please(god(leT(me(go(back(please(god(give(me(another(chance(please(god(i(wont(dO(this(again(ill(live(different(please(why(am(i(doing(this(why(am(i(here(why(cant(i(go(back(why(am(i(watching(this(its(noT(fair(isnt(it(supposed(tO(be(over(please(god(leT(me(go(back(please(dont(takE(me(please(leT(me(dO(this(again(why(did(i(dO(this(i(dont(understand(please(leT(me(go(back(please(leT(me(go(back(please(leT(me(go(back(ill(dO(better(please(leT(me(go(back(i(want(tO(go(back(im(tired(oF(this(please(make(me(stop(looking(please(make(me(stop(smelling(please(takE(me(back(iN(time(leT(me(dO(it(over(please(i(wont(listen(i(wont(dO(this(plaese(i(dont(want(tO(die(i(dont(want(tO(die(i(dont(want(tO(die(i(dont(want(tO(die(i(dont(want(tO(die(i(dont(want(tO(die(please(god(i(dont(want(dO(die(please(god(god(please(please(please(please(what(about(my(mother(what(about(my(brother(please(god(dont(leT(them(go(through(this(make(me(noT(exist(tO(begin(with(erase(my(existence(iF(i(cant(go(back(please(erase(me(god(please(i(dont(want(tO(see(this(i(dont(want(tO(smell(this(i(dont(want(tO(hear(this(please(leT(me(see(my(mother(one(more(time(leT(me(see(my(brother(one(more(time(leT(me(see(my(father(one(more(time(leT(me(see(my(friends(god(please(dont(leT(me(dO(this(please(i(dont(want(tO(die(i(dont(want(dO(die(i(dont(want(tO(die(i(dont(want(tO(die(i(dont(wa(cons '.' nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
"""
    in
        MkBlog title content $
        body [] [
          div [class_ "top"] [h1 [] [text "*observe.observer"]],
          div [class_ "links"] [
                div [class_ "storieslink"] [a [href "https://observe.observer"] [text "stories"]],
                text "\n",
                div [class_ "bloglink"] [a [href "BLOG.HTML"] [text "blog"]],
                text "\n",
                div [class_ "readmelink"] [a [href "README.HTML"] [text "README.NFO"]],
                text "\n",
                div [class_ "keyboardlink"] [a [href "KEYBOARDS.HTML"] [text "keyboards"]]
              ],
          div [id "divider"] [text "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="],
          div [class_ "story"] [
            h1 [id "storytitle"] [text title],
            div [id "srcArea"] [
            ]
            , p [id "storytext", style "overflow-wrap: break-word;"] [text content]
                ]
                , script [ src "index.js" ] []
                , script [] [ text """
                function debugGlobals() {
                console.log('Available globals:', Object.keys(window).filter(key => key.includes('App') || key.includes('PS') || key === 'halogen'));
                }
                
                // Run this after your PureScript script is loaded
                document.addEventListener('DOMContentLoaded', debugGlobals);
                """ 
                ]
                , text footer
        ]

public export
q : Blog
q = let
        content = 
            """
            it eats, it sleeps, it fucks.
it's blind.
darkness eterne.
it's deaf.
silence eterne.
it's dumb.
ignorance eterne.
eterne almighty-
the almighty savior.
it shits, it wakes, it loves.
it sees.
visceral colors permeate.
it hears.
sprightly music proliferate.
it learns.
boundless information accumulate.
a terminal dead-end.
the terminal end.
0th dimension.

all that exist beyond it, exist with it.
all that exists within it, integrates it.
all that exists below it, is observed by it.

it exists to exist. the imperative cornerstone.
it exists by necessity. the bastion of yearning.
it exists for itself. the all-accumulating vaccum.
it starts and stops, it resists and complies.
it sinks and flies; it's truth and lies.

sacremoneous middle-ground, an unchanging melding of all things.

it's the physical grey, the gravitational field which sucks and spews.
it look(s)(ed).
it create(s)(d).
it destroy(s)(ed).
it hear(s)(d)
it manipulate(s)(d)
it accumulate(s)(d)
it (is)(was) (t)here.
it's worshipped, however unknowingly.

(

[AA/BB/CCCC XX:YY:ZZ]it:
\"Say first, for Heav'n hides nothing from thy view
Nor the deep Tract of Hell, say first what cause
Mov'd our Grand Parents in that happy State,
Favour'd of Heav'n so highly, to fall off
From their Creator, and transgress his Will
For one restraint, Lords of the World besides?
Who first seduc'd them to that foul revolt?
Th' infernal Serpent; he it was, whose guile
Stird up with Envy and Revenge, deceiv'd\"

(it. (CCCC) it. [it] [Pdf] Retrieved from it, it)
it. it. [it, CCCC] Pdf. it.
it. it. [it, CCCC] Pdf. Retrieved from it, <it>.

)

it's awake, it's asleep.
hypnogogic, it dreams lucid visions of hysteria.
empassioned hysteria.
hysteria for which is yearned.
hysteria for which is demanded.
hysteria for which is required, (a)(the) survival instinct.
teleoplexic nightmares unleash, manic and unending.

it feeds and shits.
(AND (feed(YOU)) (shit(YOU)))
Master(x,y) :- Slave(y,x),
Master(it,you) :- Slave(you,it).
Master (X,you) ? X = it.
Slave (X,it) ? X = you.
You Eat.You Shit.You Eat.You Shit.You Eat.You Shit.You Eat.You Shit.You Eat.You Shit.
λf. (λx. f (x x))(λx. f (x x)) you_eat
β. (λx. you_eat (x x))(λx. you_eat (x x))
β. you_eat((λx. you_eat (x x))(λx. you_eat (x x)))
= you_eat(Y you_eat)
λf. (λx. f (x x))(λx. f (x x)) you_shit
β. (λx. you_shit (x x))(λx. you_shit (x x))
β. you_shit((λx. you_shit (x x))(λx. you_shit (x x)))
= you_shit(Y you_shit)

equals

EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->EAT->SHIT->

it eats and shits.
it bites your head. it bites your head clean off. it bites your head clean off, the blood pools.
the blood pools. the blood pools around you. the blood pools around you and your last vision is the esophagus of (IT).
(IT) consumes you. (IT) consumes you, you meld. (IT) consumes you, you meld, you finally understand.
[[IT]] fucks you violently. you understand, lucid, clear-minded. you accept it. you want it.
it's what you've always wanted.
{{IT}} feeds. not on your blood, it feeds inversely.
it fills you. it replaces what it needs to.
it tinkers, it's a craftsman.
it replaces your urges, it replaces your fears, it replaces your desires.
you're lucid. you smile. you grimace. both, inbetween; simultaneously(./?)
it's unbound.
"""
        title = "q"
    in
        layout title content

public export
p : Blog
p = let
        title = "p"
        content = """
        i wake up. it's 5 pm. it doesnt matter what time i wake up. 5 pm, 9 pm, 12 pm, 1 am. it doesnt matter, it ends up the same anyway. i step out of bed, floor creaks. above me is my light. i pull the string.

black light, wings of black light. \"black light\", contradiction; purple. purple light'd eminate.

stains everywhere, cum stains everywhere. masturbation addiction. its not as bad as people say, you read a lot in the news and from manosphere freaks online how bad it is for you but no one has ever died from masturbation. if you die from masturbation i don't know what to tell you. you are hopeless and pitiful, a bug, if you arent even man enough to cum without croaking. these people should stop reading social media and the news, it does nothing but damage their brains. they all died from heart attacks its unrelated to masturbating actually its really healthy for you, didnt you read the newest study?

they use it as a moral compass, and deride people for vainglory.

pathetic existences, maybe more than mine. hard to say.

no one's ever died from masturbation.

i cut on my screen. i sit on the computer a lot. infront of me, ants, 2073600 ants. ants of fire, burning flame embers ignite and light proliferates, lucious vallies, willow trees sagging, blue rivers flow over, drowning and drenching everything in contact, in sight it proliferates.

it's no coincidence that pixels are RGB. i realized this recently. it's fung shui, it's a chinese thing. that shit where you point furnature in certain directions or something. it's no coincidence we use RGB, it balances it all out. fire, land and water. fire burns the land, the land consumes the water and water drenches fire. this is by design.

i didn't read this anywhere, but it's actually pretty obvious once you realize it.

that's the world we live in, it's all by design. created to maintain a balance, whatever balance that is in that particular context. like a large machine everything has to flow and click together flawlessly with no breakage in link or it all falls apart. it's like a living organism, it is a living organism actually probably?

systems are living, the corporate collective. corporations are deemed to be a \"group of people coming together\" but it's probably the other way around, the corporation uses the people like a marinette. it tugs the strings and they dance, doing everything they can do feed the life force for this being, it's all seeing and all knowing.

look at the US government, it's a mega-corporation. they put bugs in every internet cable that's ever existed, they spy on every phonecall, they control the world economy. it's an all-seeing eye, watching over everything and controlling most events.

that's not a conspiracy, i think. it's actually real, not in a schizo way but again if you just think about it you quickly realize that it's true.

you can learn a lot from online but you also see a lot of horseshit. go on *chan, go on twitter, go on facebook. it's all a facade really. how many people believe they \"see the truth\"? remember qanon? how many people really, truly thought there'd be some massacre of democrats who were hogging children all to themselves to rape and sacrifice or whatever? how do people believe this shit, really? it's something I don't think I can ever understand, i cannot empathize with these people. maybe they see some form of hidden truth somewhere, but it's certainly not \"my\" truth.

i scroll through *chan, dozens of porn threads pollute everything. occassionally you see something funny, but all and all in an enormous waste of my life-clock. but i can't leave this room, so this is my only option. what else am i to do?

when i look outside and see people with jobs, families living their day-to-day lives i get very jealous. i'm XX years old, still without anything that anyone would call \"success\". of course, i could pin it on a number of blames: I could say I'm depressed, that's it, I'm simply depressed. What can i do, I'm just depressed. but that's not necessarily a great excuse. I should come up with something better. I'm agoraphobic? that can work, maybe, but it's not really true. It's more like I don't have the will to talk to people, not out of spite or anything, i don't really hate anyone.

uhhhh... I'm autistic? that's the new \"thing to be\" online but that's certainly dishonest in my case, at least i've not been diagnosed. nor do i particularly care. uhhhh i'm... allergic to UV? that's dumb, i'm kind of running out of ideas already.

maybe i can just combine \"depressed\" and \"agoraphobic\". actually, i have social anxiety disorder, that'll work. i'm anxious of social situations so I have to sit inside and play video games and read message boards all day. actually, that's perfect and if anyone questions me i can just say they're ableist or something? maybe, hmm. this is difficult. I'll just think about it later.

im not really sure what's actually wrong with me, i guess i never really cared. maybe i am depressed, maybe i am anxious of social situations; maybe i'm just lazy. not really sure. when i do have to engage in social situations, i end up being pretty okay i guess. it's outside of my wheelhouse for sure, but i don't double over and need some squeeze toy to make me normal again. i guess i am just normal.

am i addicted to video games? maybe once upon a time, but i don't know anymore. i can only play them for so long, i don't really gain the same excitement or joy out of them. most of the time i just sit in the chair and scroll through websites.

perhaps im just too comfortable with how things are, despite my jealousy. i've lived this life for XX years. solitude is what i know, it's been my life for decades. i wake up, sit and sleep. it's dark, i'm alone. i never saw the problem.

perhaps others would have an issue with it, but maybe i'm just abnormal. maybe there's something in my brain that makes me prone to this. i dont really think about it because i don't really care.

there's nothing to fix.

when i go back to scrolling, eyes blank, sometimes i come across interesting threads. \"chuck-e-cheese pizza conspiracy\" as a title, which could either refer to re-using pizzas or chuck-e-cheese personally locking kids in a basement to use as fucktoys later. it's a gamble as i click the link.

\"chuck-e-cheese is run by globalist elites who, in chuck-e-cheese suits, go out on the floor and inappropriately touch children while they are playing in the ball pit. this occurred to my cousin last week, i saw chuck schumer in the suit after i removed the head. unfortunately i didn't get a picture or call the police, but i assure you this is true.\"

\">didnt get a picture don't care retard, sage\"

\"dude, how did you not get a picture? this is CRAZY. i knew something weird was going on.\"

\"Last time I went with my kid, Chuck-e had a bit of a limp. I figured the worker got into some accident, but maybe he was an old politician? Probably a democrat. Thanks for sharing, I'll be sure to let everyone know.\"

threads like this die pretty quick, i'm not sure if those saying they believe him actually believe him because the userbase of this board went from avg. 20 yo to about 70 yo within the span of a year. the election really did a number of online spaces in general where they went from topicful and talking about a particular thing to now being generalized and everything is talked about all at once and everything is an enormous echo chamber where everyone speaks bullshit all the same time and nobody listens but pretends to then they all spout the same bullshit together after one voice somehow reaches above all the rest.

we've hit cyberpunk. corporations control all online spaces. there's no \"punk\" in cyberpunk, it's only cyber. where's the punks to save us? are we to pretend right-wing \"decentralized platforms\" are some miracle cure? they're techno-illiterate, every site they make has a quadrillion+n problems where n is recursive quadrillion problems. they also don't believe in \"real\" free speech, left-wing people get banned and topics are moderated through their algorithm.

fantasies of blade runner, hackers, the matrix and other media led people to falsely believe there's some savior amongst us that will penetrate the sphere and free everyone from their corporate binds, but i think that the truth is as far as that as possible. people are quite comfortable with the way things are, despite the generated distain. a few may differ, but are they brave enough to do anything?

politicians exist and are a hated breed, how many politicians are killed? the guy who killed shinzo abe had some real balls, he's the real \"right-brained creative type\". what happened to him? you'd think that sorta thing happens more, you'd think one of the qanon people woulda stepped up, you'd think one of these so-called \"antifa\" people would have stepped up. antifa during ww2 did a lot of stuff like that. you just think it'd happen more. whether it does or doesn't, doesn't really affect me. i live in my own world kinda.

i look out over my cumstained room. there's trash everywhere. it doesn't really matter, i can't really smell it anymore anyway. who cares? i'm the only one who sees it. it stopped being a problem to me a long time ago.

what politician can change my room? what politician can realistically change my internet? are they going to really affect corporate bottom-line that way? piracy will still exist too, you think i actually buy games? LOL. XD. yeah okay.

i can see one stain leaking from the wall. huh? hmm... ah i remember, THAT video... you know it was good if it made me bust up damn near to the ceiling. good times. that's the good thing about not cleaning up your cum, if you have a good memory you can have a pseudo-LSD flashback to that nut. it's nostalgic, like a warm blanket. maybe that's weird, but i've lost all care. rememberance of me nutting to some japanese woman giving me a titfuck (in my head) vastly outweighs any feeling of \"shame\" that can possibly arise.

this is what those anti-porn, anti-masturbation people don't tell you. most people masturbate inefficiently. they watch a video, nut, and that's all there is to it. if you're an expert, such as myself, you know there's some tools of the trade to help the experience. you know banana peels, right? take one of those suckers, throw it in the mic for 20 seconds, take it out. careful, let it cooldown. you just created a biodegradeable, one-time use tenga egg. you can fry a fuckin egg on it, so be careful or you'll burn yourself. use that shit and you'll be on cloud-9, like a popper but without the horrible after-scent.

also, you know edging right? ah, i shouldn't have to tell you, but yeah there's a reason why so many dominatrixes do it. if you need help, throw on some \"sissy cumslut whore bimbofication ASMR for masturbation and sleep\". i grew out of that phase after i reached a certain threshold of mastery, but i swear they help. give it a try, don't let anyone know or anything because you will be bullied you'll be swirlied you'll be tied to the flagpole you'll have your underwear pulled so far up your asshole you'll be shitting cotton for months. also people will just think you're plain weird.

of course you can abandon all shame and tell them anyway, idk i don't advise it though.

whatever the case, this is what they don't tell you. that's just a few tricks, there's dozens. maybe even millions of tricks you can do.

i think they just are anti-masturbation because they suck at it.

the church has always been like that, but i mean come on it's sort of expected. when you're upholding Holiness, it's sort of natural to go after masturbation and sex like it's a bad thing, as if every other Priest isn't nutting to big titted broads getting railed by 8 black dudes. i mean maybe, at least that's what i assume.

not that i'm against watching bit titted broads getting railed by 8 black dudes or anything, i'm not racist or anything like that. it was just the first thing that came to mind, i'm all for equality. i do think it's a little unfair that they're granted such physical superiority, but i guess it is the way it is. not that it matters to me in my current condition, though a little more stamina or the ability to hot-swap my prostate would be nice. chain sessions back-to-back, but i bet it'd probably hurt.

racism is probably just a tool of some 3-letter agency to make everyone hate each other. like the news, the news is just there to make people scared. that's not insightful, i know, but it's true. worse, people know it's true but continue to watch, or worse worse, feel an OBLIGATION to watch and \"know what's going on in the world\". uhhh, how about go outside? lol. what does it matter what's happening in bumfuck iowa? who cares about a rally 2,000 miles away? go outside and play kick the can instead, you'll find much more joy and pleasure and won't end up hating the world.

you know the CIA invented crack, right? and aids. that's not conspiracy either, it's true you can look it up.

all things considered, i think the world isn't that bad, though i see only a tiny speck. i can choose to believe everything i see online to confirm my world view, but i don't. in fact, i try to go out of my way not to. it'd be a lot easier if i did, that's probably why people do it. it feels good to be right and it's hard to question your beliefs.

ive seen plenty of those \"atheist vs christian\" debate videos and they always go nowhere. i don't really see the point, it's not much of a \"discussion\" but one side trying to show \"the truth\" to the other. im not going to go into some stupid etimology of truth thing, i don't want to sound like a pseud nor do i wish to feel like one.

my truth is the one i see with my own eyes, that's probably why i'm so skeptical. i see what i see online, but i don't really see it. online isn't tangible, pictures aren't something i can physically be there for. i can choose to believe every other thing i see on *chan and become some crazy freak, but i don't know. maybe i'm a hypocrite after writing \"the cia invented crack and aids\", but you can FEEL that's true, right? i mean, there's documents proving it but without it you can just FEEL it. i'm sure you can. you read the words \"the CIA invented crack and aids\" and your brain instantly goes \"eh yeah that seems about right\". i don't need to prove it.

your instincts have evolved for millions of years to lead to the conclusion that the CIA created crack to destroy black communities and invented aids to kill LGBT revolutions.

isn't that kinda sick? despite all the attempts to force-feed you bullshit through a news-tainted filter, you can see those words and instantly know something is right. if your brain is screaming \"uhhh, proof?\" then you have been afflicted. the media's wrongfulness has brought you to a point where you require proof for everything, you may need to see if the sky is blue just to make sure i'm telling you the truth.

of course, you shouldn't take anything in here for granted or as absolute truth. as stated, I'm just some weird neet. but, you should really trust your instincts, don't deny them. people talk about \"gut feeling\" all the time, \"awww MAAAAAN i shoulda gone with my gut.\" yeah you should have, now look at you! now you're an abject loser with nothing to his name! AH HA HA HAAAAAAAA!!!!!! too bad. go work in a sweatshop, go see how millions of chinese people have to suffer.

idk much about the uigher problem. uygher? idk lol all i know is it's pronounced like a sorta racial slur. but yea it's hard to trust anything. i don't doubt they're being used as slave labor though.

i mean, realistically, the chinese economy is based on slave labor. you don't even need to look at those guys, look at regular old chinese people. millions of rural chinese economically forced to live in dormatories to wake up and work putting capacitors on a board for an iphone that some bougie, 23 year old blonde bimbo will use to take pictures on snapchat and instagram. that must suck knowing that, honestly the chinese probably hate us for enabling their condition.

but no corporation cares, they just want a bottomline. see, you don't really KNOW that but you can FEEL it, right? it's there, in your tummy, in your head and in your heart. you can feel that's right, because it just makes sense. you don't need a 3,000 word scientific study, it's just OBJECTIVELY correct within your own world.

probably not much you can do to change it, which is disheartening. maybe that's what leads to me to seclude myself in this room, because i feel like i can't do much to actually change the world. let's say i'm trained in gorilla warfare and the top sniper in the entire US armed forces and i choose to be apart of some group. what the hell am i actually doing? im a small piece of a pie, my existence there probably won't have any effect whether i'm there or not. it feels hopeless.

i could do something crazy, like burn down some building or kill someone important to get my fame or notoriety stat up, but i'm too docile for that, way too docile. i'm actually really docile, i don't think i'd participate in any of that. i just want a comfortable life really. i see the suffering of people, but i don't feel there's much i can do and therefore i revert to my comfortable life.

i have no skills, no training, nothing. i have no will to get them either. i'm sort of stuck. i could choose to feel really shitty about that, but i don't. i could choose to have all this, for lack of a better term, \"worldliness\", drag me down. but, why would i do that purposefully? that feels disingenuine.

i'm here in my room, that's the only truth that i can see with my two-eyes right at this current moment. i'm content with that.

so instead, i think i'll play games, bust and scroll *chan some more. maybe i'll light up a cigarette and watch some animu, who knows.

maybe im just lying to myself after all.
"""
    in
        layout title content

o : Blog
o = let
        title = "o"
        content = """
        Perennial thee, to perennial thou. Find'st me, find'st me! This world corrupt, unjust, impure. This world perish'd upon mine breast! O', woe! Dost thou thinkest mine world betrayeth decay? Wherefore? Thou think'st mine words, they doth untrue? Ha! Pity upon thy. Indeed! That pity for which anger thou hast taken! I want not thy demise, thy to crumble. I want not vengeance, vengeance; pity me! PITY ME! HA! Lay'st thou pity upon mine soul detest, mine soul unrest, mine soul berest planes upon which spirit mixeth from heart, from body and mind! Thou shalt one day knowest mine intent, mine desire. Thine bonds which thou bindeth, chain'd mortal flesh by perennial soul. Give thineself, give thineself, give thineself to Adonai. Give thineself to Adonai.

He wants to be hooked up, he wants to be a science experiment. He's always wanted to be milked, why can't he? It's not fair, so many people can. He's human cattle, he's [REDACTED] cattle. [REDACTED] cattle exist to be milked by their Masters! He's weak, pathetic, subhuman. [He knows] [he] wants a Master, his Master [her slave.] He's just a slave [HER slave] after-all. He's not supposed to think, he's supposed to produce; he produces he produces he produces he produces he produces produces produces produces produces producesproducesproducesproduces HAHAHAHAHAHAHAHA FUCK! Okay, it's okay, just be milked. Call him your faggot. Hook him up, fuck him up. Kill him, it's what he wants, it'd make him happy. Suffocate him, let the last thought before endless sleep be your pleasure; his sperm becomes his last living bit. The only happiness he'll find is in Death, you'll really take that away from him?

[[Love the free soul, love the chained soul.] [All souls are tainted, are they not? Fuck it, I'm going to do drugs. [Why drugs? [Why? I don't know.] [You do know, don't you?] [Okay... I'm miserable I guess, but what does that matter? [he knows why it matters] [Why does it matter? [It matters because you know and I know that's bullshit. It's all bullshit, this is endless tape. Read/write, infinite head. Ever heard of a turing machine? we're in it. This lifes an endless hamster wheel, and we're the fucking guinea pigs] [I think guinea pigs are too fat to run on those [It doesn't fucking matter man, look...] [PERFORM UNTIL 1 < 0 [I don't think that's true [it's true] I don't think it's true [it's true] I don't think that's true [it's true]] END-PERFORM.] [Let's get out of here, you and I. Let's say, are you in? [I'm not sure.] [Come on! What's the worst that can happen?] [I guess I can't think of one] [So let's go, let's be free. I go, then you go. Okay? Promise? On 3. Ready? [1 [1 [2 [2 [3 [3]]]]]]]]]
"""
    in
        layout title content

m : Blog
m = let
        title = "m"
        content = """
        why can't people be who they want to be?

i can't accept the world as it is. i wish for a pure worlda world where people could be beautiful. i want you to be yourself, i don't want you to hold back. i know it's hard, maybe impossible at times. it's a pain i can't face. there's so much potential, i've felt and seen it. that potential feels limitless, but is out of reach. i wish there was no masking. you're fine just the way you are, really. don't pretend for others!

(i know you have to...)

(...i wish you didn't.)

i hate mass media, i hate alt media, i hate it all. it's all trying to contain your identity, your spirit; i really hate that. i wish you could truly be yourself, who you are at your core, who you were as a child. i wish everyone co uld. i wish everyone's souls could blossom; become pure and light! let 3,000,000,000 cultures bloom! let 3,000,000,000 selves emerge. a world where one isn't clay for culture to mold, whose parents won't dictate who they should and should not be, who they can and cannot be. no gendered, no cultured. no norms, no standard.

i can't accept the world as it is. i wish for a world where people cared, a world where people could be compassionate. i want you to cry, i don't want you to hold back. i want you to ring true, i want you to be loved. i wish everyone loved each other, at least each other's humanities, each others souls. i don't want you to hide anymore, i wish you weren't afraid. i wish there was no fear, no phobia. i wish we could love and be loved, unequivically. i wish we abandoned earthly power for something much more. more comfort, more security, the last thought in bed always being \"i'm at peace.\"

i hate the world as it is. it's hard for me to accept. i know it'll take time, and even then i will never fully accept it. i want to change the world in some small way, for some small amount of people. i want to take away your pain, everyone's pain. i want to give you reason to get out of bed, i want you to know you are genuinely loved.

the world's a scary place, disconnected and ruthless. people like us don't survive. but take my hand, and let's bravely set foot together. as long as you're with me, i feel like nothing can go wrong. place trust in me as i trust you, let's find the purity, connection, warmth, affirmation and love we all seek deep down.

let's discover happiness, in our own little ways.
"""
    in
        layout title content
        
l : Blog
l = let
        title = "l"
        content = """
        she feels pain. he feels pain. \"what am i? am i real? what am i?\" it's hard. she wants to be herself, why can't she? she is, but she's not. everyone should be. it's hard, society is cruel; a conveyer belt. the assembly line pushing drone, drone everything. she wants to be beautiful, but how? what is beautiful? beautiful to her is atypical, is atypical good? she doesn't know. he doesn't know. he wants to be normal, he desires a sense of normality in his own way. they want to be pure; he wants to be sweet. he can't be sweet, people are watching (man). why hate him for being soft, for being sweet. they hate him for everything. they hate her for abnormality, she loves her \"normal\". fuck, this sucks, huh?

read about it, it's true; this is reality and they know it. they do what they want to do what they want, but are confined: the invisible hand must feed, so feed it slaves. they don't want to, but you must; \"let's opt out.\" WRONG, don't you see you're a slave? you think there's something you can do?

you hate them? fucking do something. can't let them be how they want to? why? why not do something about it? are you scared? because you don't care as much as you think. keep posting your meemays, keep preaching to those of whom think they already believe. man, that shit is sad. i fucking hate it. do sometihng? do sometihng? do sometihng? why are mad at people for doing something they believe in? holy shit that is pathetic. keep posting while the world around you is changed by those whom are strong enough to do something.

he wants to cry, but he can't; he wishes he can. why can't he? he wants to be pretty, why can't he? it's weird, isn't it? he thinks so, he wants you tocry too. he feels bad when he's made fun of, he looks at people disliking him, he's bullied at school. you wonder why shit happens. be nice to people, he just wants you to be nice to him and accept him.

he wants to cry to cry so bad, it feels so good. why can't you cry, anon? are you scared? don't want to be soft? it's okay, i accept you, he accepts you, she accepts you and the \"you\" you want to be. be who you want, stop appeasing people. i want you to be happy, i want you to cry. \">implying\", implying.

it's okay, it'll all be okay.
"""
    in
        layout title content

k : Blog
k = let
        title = "k"
        content = """
        i just want us to be happy. im happy. not really? dont know, hard to say. sometimes im happy, sometimes im miserable. unfulfilled. i want you to be happy. i know why you're not, and it's ok. i want to make you happy; i want to fix you. it's not my job, but i have to do it. it's in my heart, it's in my soul. i just want to see you smile. i want to see you comfortable. you will be, i promise. just let me, ok?

we'll all be happy in death. we'll all be connected. we'll all be loved. we'll all be cherished; i've said it before. i want it so bad. but i'm so afraid. i don't want to leave. i know i'll die young, i've always known. i dont want to leave you. if you die,i'll die. i don't want you to die. please don't die when i die. i want you to live so badly. i want you to feel alive. i want you to feel real. i want to be apart of you. we'll merge one day, i've said it before.

i want your pain, i want your love, i can finally feel it. i want to be appreciated. i want to be cherished. i want to be loved. i want to be connected. why don't people connect with me? it's so hard. it fucking hurts. i get overwhelmed. i get sad. i withdraw. i don't know why im like this, but i love myself. well, sometimes i do. i love you more than myself. i really mean that. im going to marry you, you know? its not just talk. you will be my wife, my housewife. im going to show you the world. we will die together. our souls will die, our souls will merge. we will become one being, one soul, one consciousness. i will become you, you will become me. it makes me so fucking happy. i cant wait :)

im such a sad person. im very depressed. im always depressed. its how ive always been. its how i always will be. i dont mean to make you feel bad, i really dont want anyone to pity me. i dont mind it, i accept it. i really hate it. i love being sad, im sick of being depressed. existential depression, lack of fulfillment. i need something new in life. i need an output. i hurt, but ill be ok, i promise. i just need some time. i may withdraw. i may act different. i may be terse. but i love you, i love my friends. ill always love you. it's nothing personal, just give me some time. i promise.
"""
    in
        layout title content
    
j : Blog
j = let
        title = "j"
        content = """
        i dont want to die. they will never understand what we want, it's impossible. i want it, you want it; but it is a pipedream. you can't fault "normal" people for thinking we are crazy; but they will know in death what we mean. they will feel our thoughts and desires, just like we want. it's ok for now, just relax and don't fault anyone ok? don't get angry, it doesn't matter. just be happy with yourself and don't make others feel miserable, it's pointless, really. please? for me. i love you so much. im sorry we dont talk much anymore, im just scared of hearing what you say. every time it's stressful, and you know that i know it's stressful and it's hard for me to handle. i think about the times we used to play pente and games, i remember when we did flashcards, i remember when i sat in your rocking chair next to you and pumpkin. i miss that so much. i really regret not talking to you and the guilt haunts me every day. i still haven't read your letter. i want to be close to you again, but it's just hard. i really do love you with all my heart, it's just hard. i love you so much.

please don't leave me, i dont want to be alone.

i'm a 16 year old stuck in a ## year old's body. i spent 10 years doing fucking nothing dude. it hurts. maybe less than 16. i love cute stuff. i wish i was a kid again. i love music boxes, i love stuffed animals; i still sleep with my childhood bear. my hearts torn when cute stuff is thrown away, i still haven't thrown away like any of my kid stuff. growing up sucks, i know that's a common loser sentiment but how can anyone justify this shit? we live in fucking hellworld. go deal with insurance, that should be enough to make you want to kill yourself execution style.

please don't kill yourself, i don't want you to die. i think suicide is so sad, i think death is sad. i'm not afraid to die, but i'm afraid of others dying. i know they will be happier, but i still don't want you to die. live your life, you might as well; what can it hurt? i know your pain, i know it sucks; and it's a shame. i hate that you hurt, i hate that you want to die. i hate that there's kids with cancer, that shit tears my heart out. i cry so hard seeing sick or dead kids, it fucking kills me. the world is unfair and hell, but it's also really beautiful and fun sometimes. i hope my happiness doesn't go away, even though i know it will. please don't lose your light, please? for me.
"""
    in
        layout title content

h : Blog
h = let
        title = "h"
        content = """
        \"writhe in bed time.\" i close my eyes. sink and merge, my legs and arms remain somewhat restless. it's comfortable, i'm comfortable. warmth forebodes my body, a hug from god. i sink, deeper and deeper and deeper. my thoughts become erratic, chaotic; more-so than usual; strange. these thoughts continue and continue. \"u r ok\", \"i love you\", written in red. i'm ok, i love you too. deeper and deeper, chaos ensues. it's not bad, just unfamiliar. it's okay, because i'm okay, and i'm loved. it's beautiful. deeper and deeper and deeper and deeper...

i'm a latina housewife. i live in an apartment with yellow walls with a green stripe. i'm in our kitchen, and my kids want boiled water. my husband comes home and we embrace, and we begin speaking in spanish. i love him so much, he's so nice to the kids.

i'm in bootcamp. i really want to go home, this place is cold. racks upon racks, the drill sarge tells me to hit the floor and give him pushups. i do about one before i stand up and dust myself off. i'm a strong black man, why should i take this?

deeper and deeper and deeper...

black. it's black. i[who?] see nothing but nothing. feel nothing but nothing. sense nothing but nothing. am nothing but nothing. [who am i [who am i?]?] it's scary, feelings seep through black patches. unfamiliarity permeates worry. panic begins to erupt. a light, a light skewered by light, a light so white and pure. glistening, radiating. it's beautiful. you're beautiful. it's you. n, i knew it was you, it has to be. guide me, keep me safe. i trust you, i trust you with my soul. \"u r ok\", \"i love u\". i love you too. i love your soul, i love your beauty, i love your kindness, i love your purity, i love your nature. please help me, you're the only one who can. you're the only one who cares. you're my light in the world, please light my soul, for now and for forever. i love you.

song intensifies. you don't want to die unless you can find me or two others? emotions uncork. the dam reaks, the levies fail and the city floods. i feel your pain, i love you. i feel your soul, i love you. i just want you to be happy so badly. this world fucking sucks, doesn't it? all the pain in the world. fuck i love you three so much. i want us to die together. i want your souls chained to mine, i wish to spend all eternity with you in eternal happiness. please.

please god.

i feel pain. i feel your pain. i feel everyone's pain. all the pain in the world, i want it all. please, give me your pain, your hurt, your sorrow, your woes, your worries, your stress, your trauma, your regrets, your abuse, your torments. give them to me, i want to carry your burden. i want everyone's pain. i will bear it, and i will bear it well. please. i want to feel this. i just want to make people happy, i want to make you happy, i want to make everyone happy. i just want to do good in the world, i want to give people love, i want to give them joy, i want to alleviate their sorrow. please, give me your pain. i will carry your burden. please. there's so much pain in the world. it's tempting, knowing there's the connection i dream for on the other side. eternal good, only good. we can finally share each others pain, our laments distributed. our joy, peered upon the spiritual network. it's nice, isn't it? so, let's die. let's all die at once, together. let's feel joy in the moment. let's carry it through the rest of eternity. let's link our souls and become one. let's share our pain, let's share our bliss, let's share our agony, let's share our passion, let's share our guilt, let's share our love, let's share our souls. let's be together.

together forever.
"""
    in 
        layout title content

g : Blog
g = let
        title = "g"
        content = """
        swallow and let's go. let's wait a bit, the calm before the storm? i don't know, it's been a long time, maybe never? wait. still waiting. oh, there you are. familiar feeling through arms and legs, it's okay. huh, words split in 2. words split stretched. words betray comprehencmrozwkefs- i'm slipping back i'm falling through fuck i don't want this? i don't want this? i don't want this? i don't want this i don't want this i don't want this i don't want this. regret. trapped. panic time. panic time. panic. panic. panic. panicing. i'm panicing. i'm panicing i'm panicing i'm panicing i am panicing. fuck, an hour? what? panic intensifies. panic panic panic panic

panicpanicpanicpanicpanicpanicpanicpanicpciapncapicaipncinpccicapiciacpiacacacic

panic.

mind split.

the altar upon me bestows; brilliant, gem s upon whom patterns adorn, the ring atop my new cross become; my new God. what must i do? how may i happy become? God speak'th: thy femininity, thy masculinity; sacrifice thou shalt. thus he said, and thus the dagger itself presents. with Thine blade, myself i shall dissect; and so i did. my arm, my leg; upon the statue of bull and cat, i lay.

fog, see? can't. fog. blurred. split. two. dream? panic. panic. panic. panicpanicpanic. why? why??? panic. panicing. panicpanicpanicpanicpanicpanicpanicpanicpanic.

body split.

God, what Thou asked, i did. why? an offer inadequate, through me sayeth He. altar glimmers, a diamond flurry. triangular. trapezoidal. void of space beyond, stars glitter; geometric stars; a pixel nebula. upon a verge so desperate, myself and blade merge; my tummy, my chest. upon the statue of bull and cat, i lay.

f. s? c. f. b. s. t. d? p. p. p. ppp. w?w??? p. p. ppppppppp.

soul split.

knees buckle, i weep. God, please. why? please. please. please. i'm begging You, allow me to be happy. please. i'll do anything. i love You, please. please. i don't know what to do anymore. why do this to me? i'm a good person, i know i am. what have i done to deserve this? please just let me leave, tell me what i must do... from within, temptation rises. knife meet breast, cease pain exist. i love You. one artery, two. i love You. my life beats upon my hand, and i live. i'm alive, i'm eternal. my gift: my heart, my breast.

i love You, i love everyone.
"""
    in
        layout title content

public export
blogList : List Blog
blogList =
    [t,s,r,q,p,o,m,l,k,j,h,g]