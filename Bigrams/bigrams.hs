import Data.List.Split  (divvy)
import Data.List.Unique (count)

bigrams :: String -> [(String, Int)]
bigrams = take 5 
        . count 
        . map unwords 
        . divvy 2 1 
        . words
