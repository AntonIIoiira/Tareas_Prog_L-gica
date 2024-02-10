import Data.Char (toUpper)

notaACalificacion :: Int -> String
notaACalificacion nota
    | nota >= 95 = "Excelente"
    | nota >= 85 = "Notable"
    | nota >= 75 = "Bueno"
    | nota >= 70 = "Suficiente"
    | otherwise = "Insuficiente"

procesarNotas :: [(String, Int)] -> [(String, String)]
procesarNotas registro = [(map toUpper asignatura, notaACalificacion nota) | (asignatura, nota) <- registro]

main :: IO ()
main = do
    let registro = [("Programacion Logica", 100), ("Programacion Web", 89), ("Ecuaciones Diferenciales", 69), ("Bases de Datos", 70)]
    putStrLn "Calificaciones:"
    print registro
    putStrLn "Calificaciones leidas:"
    print (procesarNotas registro)
