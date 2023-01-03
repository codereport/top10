-- Codeforces solution: https://codeforces.com/contest/1138/submission/54748023

sushiForTwo :: [Int] -> Int
sushiForTwo = (*2)
            . maximum 
            . mapAdjacent min 
            . map length 
            . group
