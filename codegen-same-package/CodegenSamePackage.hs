module Main (main) where

import System.Environment (getArgs)
import System.FilePath ((</>), (<.>))

main :: IO ()
main = do
  args <- getArgs
  tgt <- case args of
    (tgt:_) -> pure tgt
    []      -> fail "Expected at least one argument to code generator"
  let fileName = "GeneratedFile"
  writeFile (tgt </> fileName <.> "hs") $ unlines
    [ "module " ++ fileName ++ " where"
    , ""
    , "generatedStr :: String"
    , "generatedStr = \"Hello, World!\""
    ]
  putStrLn fileName
