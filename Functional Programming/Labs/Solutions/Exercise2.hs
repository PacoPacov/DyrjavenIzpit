-- Task 1
saySign x
    | x > 0 = "Positive"
    | x < 0 = "Negative"
    | otherwise = "Zero"

-- Task 2


-- Task 3
max' x y z = max x $ max y z

-- Task 4 
factoriel 1 = 1
factoriel x = x * factoriel (x - 1)

-- Task 5
fibonnacci 0 = 0
fibonnacci 1 = 1
fibonnacci x = fibonnacci (x - 1) + fibonnacci (x - 2)

-- Task 6
countRoots x y z 
    | y * y - 4 * (x * z) > 0 = "Two roots"
    | y * y - 4 * (x * z) == 0 = "One root"
    | otherwise = "No roots"

