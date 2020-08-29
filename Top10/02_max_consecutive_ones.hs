-- https://leetcode.com/problems/max-consecutive-ones/

import Data.List.HT (group)

mco :: Eq a => [a] -> Int
mco = maximum 
    . map length 
    . group
