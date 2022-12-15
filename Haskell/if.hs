freezin :: Int -> Bool -> IO ()
freezin temp precipitation = do
    if temp <= 32 && precipitation == True
       then
            print("It is freezing and snowing")
    else if temp > 80 && precipitation == True
        then
            print("It is hot and Raining")
    else if temp >= 50 && precipitation == False
        then
            print("It is nice")
    else
        print("It is not freezing")

main = do
    putStrLn("Enter a temp")
    num <- getLine
    let numb = read num::Int

    let precip = False 

    freezin numb precip
