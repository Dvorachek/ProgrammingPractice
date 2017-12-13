{-
	Quicksort
-}

quicksort [] = []
quicksort (p:li) = (quicksort (filter (< p) li)) ++ [p] ++ (quicksort (filter (>= p) li))

insert n l = (filter (< n) l) ++ [n] ++ (filter (>= n) l)

main =
    print (insert 5 (quicksort [4,3,1,7,8,9,0]))