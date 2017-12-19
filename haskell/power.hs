{-
    Power
-}

power 1 f = f
power n f = f . (power (n-1) f)

-- power testing
main = print (power 4 (\n -> n * n) 2)