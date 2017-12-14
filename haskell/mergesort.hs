{-
	Mergesort
-}

merge l [] = l
merge [] l = l
merge (head1:l1) (head2:l2)
    | (head1 <= head2) = head1 : (merge l1 (head2:l2))
    | otherwise = head2 : (merge (head1:l1) l2)

mergesort [] = []
mergesort [x] = [x]
mergesort l = let (l1, l2) = splitAt (div (length l) 2) l
    in merge (mergesort l1) (mergesort l2)

main =
    print (mergesort [6,3,8,9,0,2,1,4,7,5])