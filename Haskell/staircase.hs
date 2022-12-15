readInts :: IO [Int]
readInts = fmap (fmap read . words) getLine

intList2Int :: [Int] -> Int
intList2Int (x:xs) = x

addSpace :: String -> String
addSpace x = x ++ " "

addStar :: String -> String
addStar x = x ++ "#"

staircase _ _ _ 0 stringToPrint = print "done"
staircase stair space stairHold spaceHold stringToPrint = if space > 0 then do
                            addSpace stringToPrint
                            staircase stair (space-1) stairHold spaceHold stringToPrint
                        else do
                            if stair > 0 then do
                                addStar stringToPrint
                                staircase (stair-1) space stairHold spaceHold stringToPrint
                            else do
                                print stringToPrint
                                staircase (stairHold+1) (spaceHold-1) (stairHold+1) (spaceHold-1) ""

main = do
    x <- readInts
    staircase 1 ((intList2Int x) - 1) 1 (intList2Int x) ""       --print 1 star and (x-1) whitespaces until (x-1) == 0
