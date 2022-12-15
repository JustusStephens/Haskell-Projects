readInts :: IO [Int]
readInts = fmap (fmap read . words) getLine

getKey :: [Int] -> [Int]
getKey (x:xs) = xs

intList2Int :: [Int] -> Int
intList2Int (x:xs) = x

findPairs :: Int -> [Int] -> [Int] -> Int -> Int
findPairs key (x:xs) [] sum = findPairs key xs xs sum
findPairs key [] _ sum = sum
findPairs key (x : xs) (y : ys) sum | x - y == key = findPairs key (x : xs) ys (sum + 1)
                                    | y - x == key = findPairs key (x : xs) ys (sum + 1)
                                    | otherwise = findPairs key (x : xs) ys sum

main = do
    sizeAndKey <- readInts
    xs <- readInts
    let theKey = intList2Int(getKey(sizeAndKey))
    print (findPairs theKey xs xs 0)