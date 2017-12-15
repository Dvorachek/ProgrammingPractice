{-
    Haskell practice
-}

--map :: [a] -> [b]
map1 f [] = []
map1 f (x:xs) = (f x) : (map1 f xs)

reduce1 f [] u = u
reduce1 f (x:xs) u = f x (reduce1 f xs u)

-- sum the squares of a list
main = print (reduce1 (+) (map1 (^2) [1..10]) 0)