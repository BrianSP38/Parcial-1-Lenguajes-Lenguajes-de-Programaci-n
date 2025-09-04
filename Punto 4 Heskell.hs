-- Caso base: si el segundo número es 0, el MCD es el primero
gcdEuclid :: Int -> Int -> Int
gcdEuclid a 0 = a
gcdEuclid a b = gcdEuclid b (a `mod` b)   -- Llamada recursiva con (b, a mod b)

-- Función principal
main = do
    -- Ejemplo: MCD de 1071 y 462
    let result = gcdEuclid 1071 462
    putStrLn ("MCD = " ++ show result)   -- Mostrar resultado en consola
