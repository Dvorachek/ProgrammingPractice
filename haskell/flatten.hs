{-
    Flatten
-}

--flatten :: [[a]] -> [a]
flatten l = reduce1 (++) l []

-- flatten a list of lists
main = print (flatten [[1],[2,3],[4]])