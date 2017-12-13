{-
	Factorial
-}

factorial x =
	if x == 0
		then 1
	else
		x * fac (x-1)

main =
	print (factoria 5)