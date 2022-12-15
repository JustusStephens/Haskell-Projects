import Text.Printf (printf) 

readInts :: IO [Int]
readInts = fmap (fmap read . words) getLine

intList2Int :: [Int] -> Int
intList2Int (x:xs) = x


countZero :: Int -> [Int] -> Int -> Int
countZero x [] z = z
countZero 0 _ z = z
countZero x (y:ys) z | x == 0 = z
                     | y==0 = countZero (x-1) ys (z+1)
                     | otherwise = countZero (x-1) ys z

countGreater :: Int -> [Int] -> Int -> Int
countGreater x [] z = z
countGreater x (y:ys) z | x == 0 = z
                        | y > 0 = countGreater (x-1) ys (z+1)
                        | otherwise = countGreater (x-1) ys z

countLess :: Int -> [Int] -> Int -> Int
countLess x [] z = z
countLess x (y:ys) z | x == 0 = z
                     | y < 0 = countLess (x-1) ys (z+1)
                     | otherwise = countLess (x-1) ys z


main = do
    x <- readInts
    ys <- readInts

    print (fromIntegral (countGreater (intList2Int x) ys 0) / fromIntegral (intList2Int x))
    print (fromIntegral (countLess (intList2Int x) ys 0) / fromIntegral (intList2Int x))
    print (fromIntegral (countZero (intList2Int x) ys 0) / fromIntegral (intList2Int x))