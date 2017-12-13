{-
    Factorial
-}

factorial1 x =
    if x == 0
        then 1
    else
        x * factorial1 (x-1)

factorial2 0 = 1
factorial2 x = x * factorial2 (x-1)

factorial3 x = product[1..x]
        
main =
    print (factorial2 5)