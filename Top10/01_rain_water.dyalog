⍝ Problem Statement: https://leetcode.com/problems/trapping-rain-water/

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

⍝ Other solutions from APL Orchard
+/x-⍨(⌈\⌊{⌽⌈\⌽⍵})x ⍝ originally posted from me https://chat.stackexchange.com/transcript/message/55904570#55904570
+/x-⍨(⌽⌈\∘⌽⌊∘⌽⌈\)x ⍝ Marshall 
+/(⌽⌽-⍨⌈\∘⌽⌊∘⌽⌈\)x ⍝ Marshall 
(+/⌽-⍨⌈\∘⌽⌊∘⌽⌈\)x  ⍝ Marshall 
(+/⊢-⍨⌈\⌊∘⌽⌈\∘⌽)x  ⍝ Bubbler
{+/⍵-⍨(⌈\⍵)⌊⌽⌈\⌽⍵} ⍝ rak1507 
⊢+.-⍨⌈\⌊(⌽⌈\∘⌽)    ⍝ rak1507 (from me posting my tacit solution above)

⍝ Alternatives from Dec 31, 2020

⍝ Similar to first but using commute (C-combinator)
rainWater ← {
   l ← ⌈\⍵   ⍝ left  max scan
   r ← ⌽⌈\⌽⍵ ⍝ right max scan
   ⍵+.-⍨l⌊r
}

⍝ One-liner using ⋄ (statement separator)
rainWater ← {l←⌈\⍵ ⋄ r←⌽⌈\⌽⍵ ⋄ ⍵+.-⍨l⌊r}
