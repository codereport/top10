
lcis :: [Int] -> Int
lcis = maximum 
     . map length 
     . groupBy (<)

lcis [1,3,5,4,7] -- 2
lcis [2,2,2,2,2] -- 1
