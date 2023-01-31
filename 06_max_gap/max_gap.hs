import Data.List (sort)
import Data.List.HT (mapAdjacent)

maxgap = maximum 
       . mapAdjacent (flip (-)) 
       . sort
