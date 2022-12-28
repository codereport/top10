-- Codeforces solution: 

sushiForTwo :: [Int] -> Int
sushiForTwo = (*2)
            . maximum 
            . mapAdjacent min 
            . map length 
            . group
