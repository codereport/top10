⍝ More verbose but more readable solution
rainWater ← {
   ls ← ⌈\⍵
   rs ← ⌽⌈\⌽⍵
   (ls⌊rs)+.-⍵
}

⍝ Tacit (Point-Free) Solution
rainWater ← (⌈\⌊(⌽⌈\∘⌽))+.-⊢
