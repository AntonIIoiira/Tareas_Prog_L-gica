aplicarDescuento :: Float -> Float -> Float
aplicarDescuento precio descuento = precio * (1 - descuento / 100)

aplicarIVA :: Float -> Float -> Float
aplicarIVA precio iva = precio * (1 + iva / 100)

procesarCesta :: [(Float, Float)] -> (Float -> Float -> Float) -> Float
procesarCesta cesta funcion = sum [funcion precio porcentaje | (precio, porcentaje) <- cesta]

main :: IO ()
main = do
    let cestaDescuento = [(100, 10), (200, 20)]
    let cestaIVA = [(100, 21), (200, 21)]
    
    putStrLn $ "Precio total con descuentos: " ++ show (procesarCesta cestaDescuento aplicarDescuento)
    putStrLn $ "Precio total con IVA: " ++ show (procesarCesta cestaIVA aplicarIVA)
