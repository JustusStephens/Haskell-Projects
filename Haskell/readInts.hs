readInts :: IO [Int]
readInts = fmap (fmap read . words) getLine

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

compute x y = do
    if x > y
        then print x
        else print y

main = do
    x <- readInts
    y <- readInts
    compute (sumList x) (sumList y)