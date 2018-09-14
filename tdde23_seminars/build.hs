#!/bin/runhaskell
{-# Language OverloadedStrings #-}

import Data.Foldable (for_)
import qualified Data.Text as Text
import qualified Data.Text.IO as IO
import qualified Data.Maybe as Maybe
import qualified System.Environment as Environment
import qualified System.Process as Process
import qualified System.IO.Error as Error

-- Builds a markdown list from lines of text
mdList :: [Text.Text] -> Text.Text
mdList links =
    Text.concat
        $ fmap (\x -> Text.concat [" - ", x, "\n"])
        $ filter (/= "") links



slideIfHasContent :: Either e Text.Text -> Text.Text
slideIfHasContent content =
    either (const "") (\x -> Text.append x "\n---") content


mergeMd :: Text.Text -> Text.Text -> Either e Text.Text -> [Text.Text] -> Text.Text -> Text.Text
mergeMd template number preamble requiredReading content =
    Text.replace "{{content}}" content
        $ Text.replace "{{preamble}}" (slideIfHasContent preamble)
        $ Text.replace "{{num}}" number
        $ Text.replace "{{reading}}" (mdList requiredReading) template


buildFile :: String -> Text.Text -> IO ()
buildFile outFile content = do
    IO.writeFile "output.md" content
    Process.callCommand $ "cleaver output.md --output " ++ outFile


main :: IO ()
main = do
    numberFile <- IO.readFile "numbers"
    let numbers = fmap Text.unpack $ Text.lines numberFile
    for_ numbers $ \number -> do
        template <- IO.readFile "template.md"
        requiredReading <- IO.readFile $ "reading" ++ number ++ ".md"
        content <- IO.readFile $ "content" ++ number ++ ".md"
        preamble <- Error.tryIOError $ IO.readFile $ "preamble" ++ number ++ ".md"
        buildFile ("output" ++ number ++ ".html")
            $ mergeMd template
                (Text.pack number)
                preamble
                (Text.lines requiredReading)
                content
