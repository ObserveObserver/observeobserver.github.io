module Index

import Html
import Html.Attributes as A
import Blogs
import Data.String

public export
genIndex : Blog -> Html
genIndex (MkBlog title content html) =
    
    div [ class_ "listing" ] [
        div [ class_ "title" ] [
            a [ href (toUpper title ++ ".HTML") ] [
                h1 [] [
                    text title
                ]
            ]
        ]
        , p [] [
            text (concat (map (\x => x ++ " ") (take 50 (words content))) ++ "-> ")
            , a [ href (toUpper title ++ ".HTML") ] [
                text "Continue"
            ]
        ]
    ]

indexHeader : String -> Html
indexHeader x =
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
          text x,
          text footer
    ]
glueIndex : List Html -> String
glueIndex blogs = 
    toString $ indexHeader (concat (map (\x => toString x) blogs))

public export
buildIndex : List Blog -> String
buildIndex blogs =
    glueIndex $ map (\x => genIndex x) blogs

