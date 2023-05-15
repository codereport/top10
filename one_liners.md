## Q

```q
/ Helper functions:
chunk: { (where differ x) cut x }
```

|       |    Problem    |                                                    Solution                                                    |
| :---: | :-----------: | :------------------------------------------------------------------------------------------------------------: |
|   1   |  Rain Water   |                         `rainWater: { sum abs x - (reverse maxs reverse x) & maxs x }`                         |
|   2   |      MCO      |                  1) `mco: { max sum each chunk x }` <br> 2) `mco: { max { y * y + x } scan x }`                  |
|   3   |     LCIS      | 1) `lcis: { 1 + max { y * y + x } scan (>) prior x }` <br> 2) `lcis: { 1 + max sum each chunk 1 _ (>) prior x }` |
|   4   |    Kadanes    |                                    `kadanes: { max { y \| y + x } scan x }`                                    |
|   5   |      SF2      |                                 `sf2: { 2 * max (&) prior count each chunk x }`                                 |
|   6   |    Max Gap    |                                       `maxgap: { max 1 _ deltas asc x }`                                       |
|   7   | Max Gap Count |                             `maxgapcount: { sum { x = max x } 1 _ deltas asc x }`                              |
|   8   |      TCO      |                                   `tco: { 3 <= max sum each chunk x mod 2 }`                                   |
|   9   |  Skyscraper   |                                    `skyscraper: { count distinct maxs x }`                                     |
|  10   |   OceanView   |                              `oceanview: { where reverse differ maxs reverse x }`                              |
