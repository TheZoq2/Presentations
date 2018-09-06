#!/bin/runhaskell
{-# Language OverloadedStrings #-}

import qualified Data.Text as Text
import qualified Data.Text.IO as IO

requiredReadingTable :: [Text.Text] -> Text.Text
requiredReadingTable links =
    foldr (++) "" $ fmap ((" - " ++) . (++ "\n")) links

mergeMd :: Text.Text -> Text.Text -> [Text.Text] -> Text.Text -> Text.Text
mergeMd template number requiredReading content =
    Text.replace "{{content}}" content
        $ Text.replace "{{num}}" number
        $ Text.replace "{{reading}}" requiredReading



main :: IO ()
main = do
    template <- IO.readFile "template.md"
    requiredReading <- IO.readFile "reading1.md"
    content <- IO.readFile "content1.md"
    putStrLn $ mergeMd template "1" reading1 content
