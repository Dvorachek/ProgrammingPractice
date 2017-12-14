{-
    Concatenate
-}

concat1 [] y = y
concat1 (x:xs) y = x:(concat1 xs y)

main = 
    print (concat1 [5,4,3,2,1] [1,2,3,4,5])