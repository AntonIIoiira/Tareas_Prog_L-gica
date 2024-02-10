aplicarALista :: (a -> b) -> [a] -> [b]
aplicarALista f xs = map f xs

cubo :: Int -> Int
cubo x = x ^ 3

main :: IO ()
main = do
    let numeros = [9, 3, 1, 5, 4]
    putStrLn "Lista sin modificaciones"
    print numeros
    
    let numerosCubicos = aplicarALista cubo numeros
    putStrLn "Lista elevada al cubo:"
    print numerosCubicos
