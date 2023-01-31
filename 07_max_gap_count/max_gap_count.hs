
import Data.List (sort)
import Data.List.HT (mapAdjacent)
import Data.List.Utils (countElem)

maxgap = (flip countElem) <*> maximum 
       . mapAdjacent (flip (-)) 
       . sort
