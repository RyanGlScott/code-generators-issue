module Main (main) where

main :: IO ()
main =
  writeFile "GeneratedFile.hs" $ unlines
    [ "module GeneratedFile where"
    , ""
    , "generatedStr :: String"
    , "generatedStr = \"Hello, World!\""
    ]
