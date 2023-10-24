# Progressive Index of
OceanView ← {/⌽0=⊒⌈`⌽𝕩}
OceanView ← /0=(⊒⌈`)⌾⌽

# Fork / Hook Equal Scan
OceanView ← /⊢=⌈`⌾⌽
OceanView ← /=⟜(⌈`⌾⌽)
OceanView ← /⌈`⌾⌽⊸=

# Tests
OceanView 4‿2‿3‿1 # ⟨ 0 2 3 ⟩
OceanView 4‿3‿2‿1 # ⟨ 0 1 2 3 ⟩
OceanView 1‿2‿3‿4 # ⟨ 3 ⟩
OceanView 2‿2‿2‿2 # ⟨ 3 ⟩
