lengthWords :: String -> [(String, Int)]
lengthWords sentence = [(word, length word) | word <- words sentence]

main :: IO ()
main = do
    putStrLn "Introduce la frase:"
    input <- getLine
    let result = lengthWords input
    putStrLn "Longitudes de palabras:"
    mapM_ (\(word, len) -> putStrLn $ word ++ ": " ++ show len) result
