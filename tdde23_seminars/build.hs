#!/bin/runhaskell
{-# Language OverloadedStrings #-}

import qualified Data.Text as Text
import qualified Data.Text.IO as IO
import qualified Data.Maybe as Maybe

-- Builds a markdown list from lines of text
mdList :: [Text.Text] -> Text.Text
mdList links =
    Text.concat $ fmap (\x -> Text.concat [" - ", x, "\n"]) links


splitLines :: Text.Text -> [Text.Text]
splitLines input =
    filter (/= "") $ Text.split (== '\n') input


slideIfHasContent :: Maybe Text.Text -> Text.Text
slideIfHasContent content =
    Maybe.maybe "" (\x -> Text.append x "\n---") content


mergeMd :: Text.Text -> Text.Text -> Maybe Text.Text -> [Text.Text] -> Text.Text -> Text.Text
mergeMd template number preamble requiredReading content =
    Text.replace "{{content}}" content
        $ Text.replace "{{preamble}}" (slideIfHasContent preamble)
        $ Text.replace "{{num}}" number
        $ Text.replace "{{reading}}" (mdList requiredReading) template



main :: IO ()
main = do
    template <- IO.readFile "template.md"
    requiredReading <- IO.readFile "reading1.md"
    content <- IO.readFile "content1.md"
    preamble <- IO.readFile "preamble1.md"
    IO.putStrLn 
        $ mergeMd template "1" (Just preamble) (splitLines requiredReading) content
