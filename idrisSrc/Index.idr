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

glueIndex : List Html -> String
glueIndex blogs = 
    concat (map (\x => toString x) blogs)

public export
buildIndex : List Blog -> String
buildIndex blogs =
    glueIndex $ map (\x => genIndex x) blogs

