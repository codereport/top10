-- Problem Link: https://leetcode.com/problems/trapping-rain-water/

-- Solution 1
trappingRain xs = sum $ zipWith (-) ys xs
    where m      = maximum xs
          i      = length $ takeWhile (/=m) xs
          (a, b) = splitAt i xs
          ys     = scanl1 max a ++ scanr1 max b

-- Solution 2
trappingRain xs = sum $ zipWith (-) ys xs
    where ys = zipWith min (scanl1 max xs) (scanr1 max xs)
 
main :: IO ()
main = do
    print $ trappingRain [0,1,0,2,1,0,1,3,2,1,2,1] -- 6
    print $ trappingRain [4,2,0,3,2,5            ] -- 9
