main = do
    putStrLn("Please enter your name: ")
    name <- getLine
    putStrLn("Please enter your age: ")
    age <- getLine
    putStrLn("Your name is: " ++ name ++ " and you are " ++ age)
    let ageInt = read age::Int
    print (ageInt + 5)
