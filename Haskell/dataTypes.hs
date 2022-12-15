import Data.List
import System.IO
                        --data types with some printin + little bit of math
x = 6 :: Int            --dont need let to declare variable if outside of main loop
y = minBound :: Int
z = maxBound :: Int

a :: Double
a = 3.9 + 0.1

name :: String
name = "Frank"

char :: Char
char = 'x'

main = do
    putStrLn(name ++ " is " ++ show a)
    print x
    print char
    print a
    print (5*5.1)   --mult
    print (2**3)    --power
    print (sqrt 49) --sqrt
    print (round 4.77)  --round