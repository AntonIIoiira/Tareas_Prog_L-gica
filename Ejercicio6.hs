import Data.List

calcularMedia :: [Float] -> Float
calcularMedia xs = sum xs / fromIntegral (length xs)

calcularVarianza :: [Float] -> Float
calcularVarianza xs = sum (map (\x -> (x - m) ** 2) xs) / n
  where
    m = calcularMedia xs
    n = fromIntegral (length xs)

calcularZScore :: Float -> [Float] -> Float
calcularZScore x xs = (x - media) / desviacionEstandar
  where
    media = calcularMedia xs
    desviacionEstandar = sqrt (calcularVarianza xs)

valoresAtipicos :: [Float] -> [Float]
valoresAtipicos xs = filter (\x -> let z = calcularZScore x xs in z < -3 || z > 3) xs

main :: IO ()
main = do
    let muestra = [15, 20, 25, 30, 35, 40, 45, 50, 55, 200]
    putStrLn "Muestra de números:"
    print muestra
    putStrLn "Valores atípicos en la muestra:"
    print (valoresAtipicos muestra)
