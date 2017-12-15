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

member1 x l =
    if ((filter1 (\n -> n == x) l) == [])
    then False
    else True

power 1 f = f
power n f = f . (power (n-1) f)

--flatten1 :: [[a]] -> [a]
flatten1 l = reduce1 (++) l []

main = do
    -- sum the squares of a list
    print (reduce1 (+) (map1 (\n -> n * n) [1..10]) 0)
    
    -- sum a list using left associative reduce
    print (reduce2 (+) [1..10] 0)

    -- list of squares from 1..100 divisible by 7
    print (filter1 (\n -> n `mod` 7 == 0) (map1 (\n -> n * n) [1..100]))

    -- testing member1 function above
    print (member1 1 [1,2,3,4,5])
    print (member1 0 [1,2,3,4,5])
    
    -- power testing
    print (power 4 (\n -> n * n) 2)
    
    -- flatten a list of lists
    print (flatten1 [[1],[2,3],[4]])