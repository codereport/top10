bigrams
  ^ self splitOn: ' '
      :> adjacentCollect: [:a :b | a,' ',b ]
      :> asBag 
      :> valuesAndCounts
      ":> takeFirst: 5." "get to work"
