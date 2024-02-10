import Data.Char (toUpper)

type Punto2D = (Float, Float)
type Punto3D = (Float, Float, Float)

distanciaEuclidiana2D :: Punto2D -> Float
distanciaEuclidiana2D (x, y) = sqrt (x * x + y * y)

distanciaEuclidiana3D :: Punto3D -> Float
distanciaEuclidiana3D (x, y, z) = sqrt (x * x + y * y + z * z)

main :: IO ()
main = do
    let punto2D = (3, 4)
    putStrLn $ "Modulo del vector 2D " ++ show punto2D ++ " es " ++ show (distanciaEuclidiana2D punto2D)

    let punto3D = (1, 2, 2)
    putStrLn $ "Modulo del vecto 3D " ++ show punto3D ++ " es " ++ show (distanciaEuclidiana3D punto3D)
