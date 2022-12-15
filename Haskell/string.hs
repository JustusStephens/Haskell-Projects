import Data.List
import System.IO
main = do
    let name = "Strumeister"        --once a var is set, it cannot be changed
    let num = 69 :: Int
    putStrLn(name ++ " is a pimp " ++ show num)     --show lets us print an Int variable
    let num2 = 70 :: Int
    putStrLn(show num2)