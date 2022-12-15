cube :: Int -> Int              --take an int and return an int
cube num = num * num * num

sayHi :: String -> String       --take a string and return a string
sayHi name = "Hello " ++ name

main = do
    print(cube 3)
    let result = cube 4     --assigning to variable
    print result

    putStrLn(sayHi "DeMarcus Jarqueefius")
    let nam = sayHi "Reety"
    putStrLn(nam)