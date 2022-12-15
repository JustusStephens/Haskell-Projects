--defining record, ensures types matchup
data Student = Student {name :: String,
                        major :: String,
                        age :: Int,
                        gpa :: Double
                        } deriving Show --prints to console

loopTo100 :: Int -> IO()
loopTo100 num = do
    if num <= 100
    then do
        print num
        loopTo100 (num + 1)
    else putStrLn("Loop done")
main = do

    putStrLn("Enter your grade")
    grade <- getLine

    case grade of                                           --case
        "A" -> putStrLn "Amazing grade!"
        "B" -> putStrLn "B aint bad"
        "C" -> putStrLn "c's get degrees"
        "D" -> putStrLn "oof a d"
        _ -> putStrLn "You failed lol get rekt"

        --record example, kinda like making own data type in java
    let student1 = Student{name = "Girth Jr.", major = "Eating", age = 69, gpa = 4.20}
    print student1

    --looping example
    loopTo100 1
