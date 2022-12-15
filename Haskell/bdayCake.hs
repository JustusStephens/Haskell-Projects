readInts :: IO [Int]
readInts = fmap (fmap read . words) getLine

numTimesFound :: Ord a => a -> [a] -> Integer
numTimesFound _ [] = 0
numTimesFound x xs = sum  (map (const 1) (filter (== x) xs))

main = do
    x <- readInts   --length of list
    ys <- readInts   --list of numbers, count amount of biggest number

    print (numTimesFound (maximum ys) ys)
    