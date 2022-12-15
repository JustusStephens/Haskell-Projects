readInts :: IO [Int]
readInts = fmap (fmap read . words) getLine

house1 = head

house2 :: [Int] -> Int
house2 [] = []
house2 (x:xs) = xs

main = do
    house <- readInts       --house location 7 10
    aTreeOTree <- readInts  --tree loction
    applesOranges <- readInts       --apple num orange num
    appleDistances <- readInts
    orangeDistances <- readInts

    print house1 house
    print house2 house