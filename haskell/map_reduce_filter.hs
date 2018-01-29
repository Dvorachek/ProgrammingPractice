{-
    Haskell practice
-}

--map :: [a] -> [b]
map1 f [] = []
map1 f (x:xs) = (f x) : (map1 f xs)

-- associative to the right
reduce1 f [] u = u
reduce1 f (x:xs) u = f x (reduce1 f xs u)

-- associative to the left
reduce2 f [] u = u
reduce2 f (x:xs) u = reduce2 f xs (f x u)

filter1 p [] = []
filter1 p (x:xs) =
    if (p x)
    then x : (filter1 p xs)
    else filter1 p xs

main = do
    -- sum the squares of a list
    print (reduce1 (+) (map1 (\n -> n * n) [1..10]) 0)
    
    -- sum a list using left associative reduce
    print (reduce2 (+) [1..10] 0)

    -- list of squares from 1..100 divisible by 7
    print (filter1 (\n -> n `mod` 7 == 0) (map1 (\n -> n * n) [1..100]))