import Data.List.Split (divvy)
import Data.List.HT (group)

threeOdds = or 
          . map and 
          . divvy 3 1 
          . map odd

threeOdds = or 
          . map (all odd) 
          . divvy 3 1

threeOdds = any (all odd) . divvy 3 1

threeOdds = (>=3) 
          . maximum 
          . map sum 
          . group 
          . map (fromEnum . odd)

threeOdds = (>=3) 
          . maximum 
          . scanl1 (\a b -> b * (a + b)) 
          . map (fromEnum . odd)

-- or

i  = const
c  = flip
ki = c i
phi1 a b c x y = a (b x y) (c x y)

threeOdds = (>=3) 
          . maximum 
          . scanl1 (phi1 (*) ki (+)) 
          . map (fromEnum . odd)

-- or 

doubleFold acc f g [] = fst acc
doubleFold acc f g (x:xs) = doubleFold (l, r) f g xs
    where r = g (snd acc) x
          l = f (fst acc) r

threeOdds = (>=3) 
          . doubleFold (0,0) max (phi1 (*) ki (+)) 
          . map (fromEnum . odd)
