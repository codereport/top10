⍝ Problem Statement: https://leetcode.com/problems/max-consecutive-ones/

mco ← {⌈/≢¨⊆⍨⍵}

⍝ Explained
maximum   ← ⌈/
mapLength ← ≢¨
partition ← ⊆⍨
mco       ← { maximum mapLength partition ⍵ }
