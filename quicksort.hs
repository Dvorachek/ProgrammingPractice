{-
	Quicksort
-}

quicksort [] = []
quicksort (p:li) = (quicksort (filter (< p) li)) ++ [p] ++ (quicksort (filter (>= p) li))

main =
    print (quicksort [4,3,1,7,8,9,0])