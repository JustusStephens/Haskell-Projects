outpoot :: String -> Int -> IO ()                                  --put/return string to the concole
outpoot name age = putStrLn ("Hello " ++ name ++ " you are " ++ show age)

--Can let compiler infer the type annoation if it is confusing
addTwoNums (a,b) = a + b

main :: IO ()
main = do
    putStrLn("Yurr")
    outpoot "Trevor"12 
    outpoot "Eliza"55                           --calling our outpoot function
    putStrLn("Type 2 nums to add: ")
    num1 <- getLine
    num2 <- getLine
    let numb1 = read num1::Int
    let numb2 = read num2::Int
    print(addTwoNums(numb1,numb2))
    putStrLn("How ya doin")