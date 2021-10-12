module F1 where
import Data.Char

-- Vad ska de andra funktionernas typsignaturer vara?
fib :: Integer -> Integer
fib = fib' 1 1
fib' _ _ 0 = 0
fib' _ _ 1 = 1
fib' _ _ 2 = 1
fib' a b 3 = a + b
fib' a b c = fib' (a + b) a (c - 1)


-- Rövarspråket
consonant ::Char -> Bool
consonant c = c `notElem` "aeiouyåäö"

rovarsprak :: String -> String
rovarsprak = concatMap (\c -> if consonant c then [c, 'o', c] else [c])


--Karpsravor
karpsravor :: String -> String
karpsravor [] = []
karpsravor (x: xs) = if consonant x
then x : karpsravor (drop 2 xs)
else x : karpsravor xs

-- Medellängd OPTIMISE LATER
filterChars :: String -> String 
filterChars [] = []
filterChars (x:xs)
    | isAlpha x = x: filterChars xs
    | otherwise = ' ': filterChars xs

medellangd :: String -> Double
medellangd x = fromIntegral(sum((map length (words (filterChars x))))) / fromIntegral(length (map length(words (filterChars x))))





--Skyffla
skyffla :: [s] -> [s]
skyffla a | length a <= 2 = a
skyffla s = odd s ++ skyffla(odd (tail s))
    where
        odd :: [a] -> [a]
        odd (a : b : xs) = a : odd xs
        odd a = a
