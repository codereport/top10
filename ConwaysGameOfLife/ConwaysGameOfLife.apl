⍝ Conway's Game of Life

lifeInit ← {?2⍴⍨1 2×⍵}
lifeIter ← {⊃1 ⍵∨.∧3 4=+/+⌿1 0 ¯1∘.⊖1 0 ¯1⌽¨⊂⍵}
life     ← '.⌽'[t←lifeInit 10]
{} {life∘←'.⌽'[⍵] ⋄ _←⎕DL÷8 ⋄ lifeIter ⍵}⍣≡t
