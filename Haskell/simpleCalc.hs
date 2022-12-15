calculate :: Double -> String -> Double -> IO()
calculate numb1 op numb2 = do
    if op == "+"
        then
            print(numb1 + numb2)
    else if op == "-"
        then
            print(numb1 - numb2)
    else if op == "*"
        then
            print(numb1 * numb2)
    else if op == "/"
        then
            print(numb1 / numb2)
    else
        print "Invalid operator"

main = do
    putStrLn("Enter your first number: ")
    num1 <- getLine
    let numb1 = read num1::Double
    putStrLn("Enter your second number: ")
    num2 <- getLine
    let numb2 = read num2::Double
    putStrLn("Enter your operator: ")
    op <- getLine
    putStrLn("Your result for " ++ show numb1 ++ op ++ show numb2)
    calculate numb1 op numb2