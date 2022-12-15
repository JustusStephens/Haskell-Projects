 students :: [String]
 students = ["Fred", "Jim", "Ted", "Lilly"]
 
 printStudents :: Int -> IO()       --loops are just recursion
 printStudents num = do
     let student = students !! num
     if num <= 3
     then do
         putStrLn(student)
         printStudents(num + 1)
     else putStrLn ("All students printed")
 main = do
     printStudents 0