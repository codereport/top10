oceanview = map fst 
          . filter snd 
          . zip [0..] 
          . (zipWith (==) <*> scanr1 max)
