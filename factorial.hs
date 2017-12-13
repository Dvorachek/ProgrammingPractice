{-
	Factorial
-}

factorial x =
	if x == 0
		then 1
	else
		x * factorial (x-1)

factorial2 x = product[1..x]
		
main =
	print (factorial 5)