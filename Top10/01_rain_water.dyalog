⍝ More verbose but more readable solution
rainWater ← {
   ls ← ⌈\⍵
   rs ← ⌽⌈\⌽⍵
   (ls⌊rs)+.-⍵
}

⍝ Most verbose and most readable solution (also tacit / point-free)
maxLeftScan    ← ⌈\
maxRightScan   ← ⌽⌈\⌽
min            ← ⌊
sumDifferences ← +.-
rainWater      ← (maxLeftScan min maxRightScan) sumDifferences ⊢ ⍝ Fork (Starling Combinator) twice

⍝ Tacit (Point-Free) Solution
rainWater ← (⌈\⌊(⌽⌈\∘⌽))+.-⊢
