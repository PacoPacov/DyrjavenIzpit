-- Task 1 
replicate' 0 x = []
replicate' times x = x : replicate' (times - 1) x

-- Task 2
take' 0 _ = []
take' num (x:xs) = x : take' (num - 1) xs

-- Task 3 
isPrime x = [] ==  [ x1 | x1 <- [2..x - 1], x `mod` x1  == 0]

-- Task 4
primes = [x | x <- [2..], isPrime x]

-- Task 5
nthPrime x = primes !! x

-- Task 6
first (x, y, z) = x
second (x, y, z) = y
third (x, y, z) = z

-- Task 7
descartes x y = [(x1, y1) | x1 <- x , y1 <- y]

-- Task 8
pyth = [(x1, y1, z1) | x1 <- [1..100] , y1 <- [1..100], z1 <- [1..100], x1*x1 + y1*y1 == z1*z1]

-- Task 9