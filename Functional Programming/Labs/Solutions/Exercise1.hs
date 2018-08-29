-- Task 1
square x = x * x

-- Task 2
inc x = x + 1
dec x = x - 1

-- Task 3
even' x = x `mod` 2 == 0

odd' x =  x `mod` 2 == 1

-- Task 4
between x a b = elem x [a..b]

-- Task 5
pyth a b c = square a + square b == square c

-- Task 6 
lucky x
    | x == 7 = "You have guessed correctly!"
    | otherwise = "Sorry! Try again next time!"

-- Task 7
factorial 0 = 1
factorial x = x * factorial (x-1)

-- Task 8
fibbonacci 0 = 0
fibbonacci 1 = 1
fibbonacci x = fibbonacci (x - 1) + fibbonacci(x - 2)