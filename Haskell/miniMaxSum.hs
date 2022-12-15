readInts :: IO [Int]
readInts = fmap (fmap read . words) getLine

minSum :: [Int] -> Int -> Int -> Int
minSum [] _ z = z
minSum (x:xs) y z | y==4 = minSum xs y z
                  | otherwise = minSum xs (y+1) (z+x)

maxSum :: [Int] -> Int -> Int -> Int
maxSum [] _ z = z
maxSum (x:xs) y z | y==0 = maxSum xs (y+1) z
                  | otherwise = maxSum xs (y+1) (z+x)

main = do
    xs <- readInts
    print ((minSum xs 0 0),(maxSum xs 0 0))

