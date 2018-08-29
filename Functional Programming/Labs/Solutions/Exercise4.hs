-- Task 1
sumProducts x = sum $ map (foldl (*) 1) x

-- Task 2
occurrences l1 l2 = [length $ filter (\x-> x == x1) l2 | x1 <- l1]

-- Task 3
mainDiag x = zipWith (!!) x [0..2]

-- Task 4 square matrix == number of rows equal to number of columns
isSquare x = if matchLengths x then length x == (length $ head x) else False

-- Task 5
sndDiag x = zipWith (!!) x [2, 1, 0]

-- Task 6
unique [] = []
unique (x:xs) = if x `elem` xs then unique xs else x : unique xs
matchLengths x = (length $ unique $ map (length) x ) == 1

-- Task 7 - No idea :D

-- Bonus
transpose [[], [], []] = []
transpose x = map head x : transpose (map tail x)