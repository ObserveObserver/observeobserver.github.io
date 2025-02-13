module Main

import Html
import Html.Attributes as Attr
import System.File
import Data.String
import Data.List1
import Blogs
import Index


header : String -> String
header title = "<!DOCTYPE HTML><TITLE>" ++ title ++ " *observe.observer</TITLE><META PROPERTY=\"og:title\" CONTENT=\"" 
          ++ title ++
           """ 
 - *observe.observer\">
<META PROPERTY=\"og:type\" CONTENT=\"website\">
<META PROPERTY=\"og:url\" CONTENT=\"HTTPS://OBSERVE.OBSERVER/index.html\">
<META PROPERTY=\"og:image\" CONTENT=\"https://observe.observer/f/preview.jpg\">
<META PROPERTY=\"og:description\" CONTENT=INQUIRE WITHIN>
<META NAME=\"theme-color\" CONTENT=\"#FFFFFF\">
<META NAME=\"twitter:card\" CONTENT=\"summary_large_image\">
<META NAME=\"twitter:image\" CONTENT=\"https://observe.observer/f/preview.jpg\">
<META NAME=\"viewport\" CONTENT=\"width=device-width, initial-scale=1.0\">
<LINK REL=\"stylesheet\" TYPE=\"text/css\" HREF=\"f/test.css\">
<META http-equiv=\"content-type\" CONTENT=\"text/html; charset=UTF-8\">

</HEAD>

"""



checkTitle : String -> String
checkTitle x =
  case x of 
    "index" => x ++ ".html"
    _ => toUpper x ++ ".HTML"

checkHeader : String -> String
checkHeader x =
  case x of
    "index" => ""
    _ => x ++ " -"

writeFile : String -> String -> IO()
writeFile title content = do
  res : Either FileError () <- writeFile (checkTitle(title)) (header(checkHeader(title)) ++ content)
  case res of
    Left err => putStrLn ("Error writing file: " ++ show err)
    Right () => putStrLn "File written successfully"


makeBlog : List Blog -> IO()
makeBlog x = 
  traverse_ (\y => writeFile y.title  (toString y.html)) x

makeIndex : List Blog -> IO()
makeIndex x =
  writeFile "index" $ buildIndex blogList

main : IO ()
main = 
  do
    test <- makeBlog blogList
    dir <- makeIndex blogList
    putStrLn "done"
