module HtmlGenerator () where

main = putStrLn htmlRaw


htmlRaw :: String 
htmlRaw = makeHtml "My Webpage" "Hello world!"

html_ :: String -> String
html_ = el "html"

head_ :: String -> String
head_ = el "head"

title_ :: String -> String
title_ = el "<title>"

body_ :: String -> String
body_ = el "<body>"

makeHtml :: String -> String -> String
makeHtml title content = 
    html_ (head_ (title_ title )) 
    <> body_ (h1_ "Learning Haskell!") <> p1_ content

el :: String -> String -> String
el tag content =
    "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

h1_ :: String -> String
h1_ = el "h1"

p1_ :: String -> String
p1_ = el "p"

a_ :: String -> String
a_ = el "a"

