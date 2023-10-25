skyline = length 
        . filter id 
        . (zipWith (==) <*> scanl1 max)
