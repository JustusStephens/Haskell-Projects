readInts :: IO [Int]
readInts = fmap (fmap read . words) getLine

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

compute x y = print y

main = do
    x <- readInts
    y <- readInts
    compute (sumList x) (sumList y)