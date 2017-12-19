{-
    Member
-}

member x l =
    if ((filter (\n -> n == x) l) == [])
    then False
    else True

main = do
    -- testing member1 function above
    print (member 1 [1,2,3,4,5])
    print (member 0 [1,2,3,4,5])