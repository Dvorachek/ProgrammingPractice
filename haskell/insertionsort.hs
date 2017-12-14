{-
	insertionsort
-}

insert n l = (filter (< n) l) ++ [n] ++ (filter (>= n) l)

insertionsort l = foldr insert [] l

main = 
    print (insertionsort [7,5,1,3,2,4,8,6,9,0])