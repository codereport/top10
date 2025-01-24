## Q

```q
/ Helper functions:
chunk: { (where differ x) cut x }
```

|       |    Problem    |                                                        Solution                                                         |
| :---: | :-----------: | :---------------------------------------------------------------------------------------------------------------------: |
|   1   |  Rain Water   |                             `rainWater: { sum abs x - (reverse maxs reverse x) & maxs x }`                              |
|   2   |      MCO      |                     1) `mco: { max sum each chunk x }` <br> 2) `mco: { max { y * y + x } scan x }`                      |
|   3   |     LCIS      |    1) `lcis: { 1 + max { y * y + x } scan (>) prior x }` <br> 2) `lcis: { 1 + max sum each chunk 1 _ (>) prior x }`     |
|   4   |    Kadanes    |                                        `kadanes: { max { y \| y + x } scan x }`                                         |
|   5   |      SF2      | `sf2: { 2 * max 1 _ (&) prior count each chunk x }` <br> `sf2: { 2 * max (&) prior deltas (where differ x) , count x }` |
|   6   |    Max Gap    |                                           `maxgap: { max 1 _ deltas asc x }`                                            |
|   7   | Max Gap Count |                                  `maxgapcount: { sum { x = max x } 1 _ deltas asc x }`                                  |
|   8   |      TCO      |                                       `tco: { 3 <= max sum each chunk x mod 2 }`                                        |
|   9   |    Skyline    |                                          `skyline: { count distinct maxs x }`                                           |
|  10   |   OceanView   |                                  `oceanview: { where reverse differ maxs reverse x }`                                   |

## BQN, Uiua, APL & Kap

|       |    Problem    |                            BQN                             |                           Uiua                            |                             Kap                             |                         APL                          |
| :---: | :-----------: | :--------------------------------------------------------: | :-------------------------------------------------------: | :---------------------------------------------------------: | :--------------------------------------------------: |
|   1   |  Rain Water   |                    `` +´(⌈`⌊⌈`⌾⌽)⊸- ``                     |                     `/+-∶↧⍜⇌\↥∶\↥..`                      |                      `+/⌈\«⌊»(⌈\⍢⌽)⍛-`                      |                  `⊢+.-⍨⌈\⌊(⌽⌈\∘⌽)`                   |
|   2   |      MCO      |       1) `` ⌈´·+´¨(+`¬)⊸⊔ `` <br> 2) `` ⌈´(⊢×+)` ``        |               1) `/↥⊜⧻.` <br> 2) `/↥\(×+,)`               |               1) `⌈/≢¨⊂⍨` <br> 2) `⌈/⊢«×»+\`                |               1) 🚫 <br> 2) `⌈/(≢¨⊆⍨)`                |
|   3   |     LCIS      |           1) `` {1+⌈´(⊢×+)`<´˘2↕𝕩} `` <br> 2) 🚫            |        1)`+1/↥\(×+,)≡/>◫2` <br> 2) `+1/↥⊜⧻.≡/≥◫2`         |          1) `1+⌈/⊢«×»+\2</` <br> 2) `1+⌈/≢¨⊂⍨2</`           |            1) 🚫 <br> 2) `{1+⌈/≢¨⊆⍨2</⍵}`             |
|   4   |    Kadanes    |                       `` ⌈´(⊢⌈+)` ``                       |                        `/↥\(↥+,)`                         |                         `⌈/⊢«⌈»+\`                          |                          🚫                           |
|   5   |      SF2      |                `` {2×⌈´⌊_p≠¨𝕩⊔˜0∾+`≠_p𝕩} ``                |                       `×2/↥/↧◫2⊜⧻.`                       |                      `⌈/2⌊/≢¨⊆⍨1,2≠/`                       |                `{2×⌈/2⌊/≢¨⍵⊂⍨1,2≠/⍵}`                |
|   6   |    Max Gap    |                        `⌈´·-´˘2↕∨`                         |                       `/↥≡/-◫2⊏⌂.`                        |                          `⌈/2-/∨`                           |                  `{⌈/2-/(⊂⍤⍒⌷⊢)⍵}`                   |
|   7   | Max Gap Count |                      `+´·⌈´⊸=·-´˘2↕∨`                      |                     `/+=/↥.≡/-◫2⊏⌂.`                      |                        `+/⌈/⍛=2-/∨`                         |               `{+/(⌈/=⊢)2-/(⊂⍤⍒⌷⊢)⍵}`                |
|   8   |      TCO      | 1)`{∨´∧´˘3↕2\|𝕩}` <br> 2) `` {3≤⌈´(⊢×+)`2\|𝕩} `` <br> 3) 🚫 | 1) `/↥≡/↧◫3◿2` <br> 2) `≥3/↥\(×+,)◿2` <br> 3) `≥3/↥⊜⧻.◿2` | 1) `∨/3∧/2\|` <br> 2) `3≤⌈/⊢«×»+\2\|` <br> 3) `3≤⌈/≢¨⊂⍨2\|` |  1) `∨/3∧/2\|⊢` <br> 2) 🚫 <br> 3) `{3≤⌈/≢¨⊆⍨2\|⍵}`   |
|   9   |    Skyline    |                        `` ≠·⍷⌈` ``                         |                          `⧻⊝\↥`                           |                           `≢∪⌈\`                            |                      `{≢∪⌈\⍵}`                       |
|  10   |   OceanView   |    1) 🚫 <br> 2) `` /0=(⊒⌈`)⌾⌽ `` <br> 3) `` /⌈`⌾⌽⊸= ``     |           1) 🚫 <br> 2) 🚫 <br> 3) `▽∶⇡⧻∶=⍜⇌\↥..`           |              1) 🚫 <br> 2) 🚫 <br> 3) `⍸⌈\⍢⌽⍛=`               | 1) `{¯1+⍸⌽≠⌈\⌽⍵}` <br> 2) 🚫 <br>  3) `{¯1+⍸⍵=⌽⌈\⌽⍵}` |

In BQN, `_p ← {𝔽´˘2↕𝕩}`

## [Jello](https://github.com/codereport/jello), [Jelly](https://github.com/DennisMitchell/jellylanguage/) & TinyAPL

|       |    Problem    |                                                 Jello                                                  |                      Jelly                      |                                 TinyAPL                                  |
| :---: | :-----------: | :----------------------------------------------------------------------------------------------------: | :---------------------------------------------: | :----------------------------------------------------------------------: |
|   1   |  Rain Water   |                                    `rev maxs rev min maxs _ . sum`                                     |                   `ṚḾṚ«Ḿ_µS`                    |                          `⦅+⍆⋄⦅⌈⍆↡⋄⌊⋄⌈⍆↡⍢⊖⦆⊸-⦆`                          |
|   2   |      MCO      |                             1) `part_len maxr` <br> 2) `+ * r . scan maxr`                             |            1) `ℙṀ` <br> 2) `+×ṛµ\Ṁ`             |                 1) `⌈⍆⍤(≢¨⍤⊆⍨)` <br> 2) `⦅⌈⍆⋄⦅⊢⋄×⋄+⦆⍆↟⦆`                 |
|   3   |     LCIS      |               1) `< prior : + * r . scan maxr add1` <br> 2) `< prior part_len maxr add1`               |         1) `<ṕð+×ṛµ\Ṁ‘`<br> 2) `<ṕℙṀ‘`          |                           2) `{1+⌈⍆≢¨⊆⍨2<⍆↡⍵}`                           |
|   4   |    Kadanes    |                                         `+ max r . scan maxr`                                          |                    `+»ṛµ\Ṁ`                     |                             `⦅⌈⍆⋄⦅⊢⋄⌈⋄+⦆⍆↟⦆`                             |
|   5   |      SF2      |                                     `group_len min prior maxr * 2`                                     |                    `Œɠ«ṕṀ×2`                    |                         `{2×⌈⍆2⌊⍆↡≢¨⊆⍨1⍪2≠⍆↡⍵}`                          |
|   6   |    Max Gap    |                                           `sort deltas maxr`                                           |                      `ṢIṀ`                      |                               `{⌈⍆2-⍆↡⊵⍵}`                               |
|   7   | Max Gap Count |                                       `sort deltas idx_max len`                                        |                     `ṢIML`                      |                             `{+⍆⌈⍆⊸=2-⍆↡⊵⍵}`                             |
|   8   |      TCO      | 1) `odd? min 3 slide_fold any` <br> 2) `odd? : + * r . scan maxr > 2` <br> 3) `odd? part_len maxr > 2` | 1) `Ḃ«3\Ẹ` <br> 2) `Ḃð+×ṛµ\Ṁ>2` <br> 3) `ḂℙṀ>2` | 1) `{∨⍆3∧⍆↡2\|⍵}` <br> 2) `{3≤⌈⍆⦅⊢⋄×⋄+⦆⍆↟2\|⍵}` <br> 3) `{3≤⌈⍆≢¨⊆⍨2\|⍵}` |
|   9   |    Skyline    |                                            `maxs uniq len`                                             |                      `ḾQL`                      |                                `{≢∪⌈⍆↟⍵}`                                |
|  10   |   OceanView   |           1) `rev maxs uniq_mask rev idx sub1` <br> 2) 🚫 <br> 3) `rev maxs rev = . idx sub1`           |    1) `ṚḾŒQṚT’` <br> 2) 🚫 <br> 3) `ṚḾṚ=µT’`     |            1) `{⍸⦅≠⋄⌈⍆↟⦆⍢⊖⍵}` <br> 2) 🚫 <br> 3) `{⍸⌈⍆↟⍢⊖⊸=⍵}`            |
