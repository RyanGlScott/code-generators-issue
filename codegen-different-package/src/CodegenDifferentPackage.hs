module Main (main) where

main :: IO ()
main = do
  writeFile "GeneratedFile.hs" $ unlines
    [ "module GeneratedFile where"
    , ""
    , "generatedStr :: String"
    , "generatedStr = \"Hello, World!\""
    ]
  putStrLn "GeneratedFile"
