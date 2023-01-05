⍝ Problem Link: https://codeforces.com/contest/1138/problem/A

sushiForTwo ← {2×⌈/2⌊/≢¨⍵⊂⍨1,2≠/⍵}

⍝ Tests
sushiForTwo 2 2 2 1 1 2 2     ⍝ 4
sushiForTwo 1 2 1 2 1 2       ⍝ 2
sushiForTwo 2 2 1 1 1 2 2 2 2 ⍝ 6
