readInts :: IO [Integer]
readInts = fmap (fmap read . words) getLine

intList2Int :: [Integer] -> Integer
intList2Int (x:xs) = x

factorial :: Integer -> Integer -> Integer -> Integer
factorial _ 0 sum = sum
factorial x y sum = factorial y (y-1) (sum*y)
main = do
    num <- readInts
    print (factorial (intList2Int(num)) (intList2Int(num)-1) (intList2Int(num)))