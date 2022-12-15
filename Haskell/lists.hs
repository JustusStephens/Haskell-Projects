scores :: [Int]             --list of ints
scores = [79, 83, 100]

main = do
    print scores
    print ("Index 1 is: " ++ show (scores !! 0))
    print ("Head is: " ++ show (head scores))
    print ("Last is: " ++ show (last scores))
    print ("All except the last score: " ++ show(init scores))
    print ("All except the first score: " ++ show(tail scores))