### Problems

1. [Rain Water](https://leetcode.com/problems/trapping-rain-water/description/)
2. [Max Consecutive Ones (MCO)](https://leetcode.com/problems/max-consecutive-ones/)
   * Link to [Array Language Solutions](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P0485_MCO.md)
3. [Longest Continuous Increasing Subsequence (LCIS)](https://leetcode.com/problems/longest-continuous-increasing-subsequence/)
   * Link to [Array Language Solutions](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P00674_LCIS.md)
4. [Maximum Subarray Sum (Kadanes)](https://leetcode.com/problems/maximum-subarray/)
5. [Sushi for Two (SF2)](https://codeforces.com/contest/1138/problem/A)
6. [Maximum Gap](https://leetcode.com/problems/maximum-gap/)
   * Link to [Array Language Solutions](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P0064_Max_Gap.md)
7. [Maximum Gap Count](https://theweeklychallenge.org/blog/perl-weekly-challenge-198/)
   * Link to [Array Language Solutions](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/pwc/PWC198_P1_Max_Gap_Count.md)

### Algorithm & Combinators Required

|       |    Problem    |                          Algorithms Required                          | Combinators Required |
| :---: | :-----------: | :-------------------------------------------------------------------: | :------------------: |
|   1   |  Rain Water   |                       `reduce`, `map2`, `scan`                        |    `phi`, `under`    |
|   2   |      MCO      |        1) `reduce`, `scan` <br> 2) `reduce`, `map`, `chunkBy`         | 1) `phi1` <br> 2) -  |
|   3   |     LCIS      | 1) `reduce`, `scan`, `mapAdjacent` <br> 2) `reduce`, `map`, `chunkBy` | 1) `phi1` <br> 2) -  |
|   4   |    Kadanes    |                           `reduce`, `scan`                            |        `phi1`        |
|   5   |      SF2      |               `reduce`, `mapAdjacent`, `map`, `chunkBy`               |          -           |
|   6   |    Max Gap    |                    `sort`, `mapAdjacent`, `reduce`                    |          -           |
|   7   | Max Gap Count |      `sort`, `mapAdjacent`, (RP* or `map2`, `repeat`) + `reduce`      |    `sigma` or `s`    |

\* - Rank Polymorphism

### Solutions

| Language  |            1             |            2             |            3             |            4             |            5             |            6             |            7             |
| :-------: | :----------------------: | :----------------------: | :----------------------: | :----------------------: | :----------------------: | :----------------------: | :----------------------: |
|    BQN    | :star::heavy_check_mark: | :star::heavy_check_mark: |    :heavy_check_mark:    | :star::heavy_check_mark: |    :heavy_check_mark:    | :star::heavy_check_mark: | :star::heavy_check_mark: |
|  Haskell  |    :heavy_check_mark:    |    :heavy_check_mark:    | :star::heavy_check_mark: |    :heavy_check_mark:    | :star::heavy_check_mark: |    :heavy_check_mark:    |    :heavy_check_mark:    |
|    APL    |    :heavy_check_mark:    |    :heavy_check_mark:    |    :heavy_check_mark:    |     :no_entry_sign:      |    :heavy_check_mark:    |    :heavy_check_mark:    |    :heavy_check_mark:    |
|     J     |    :heavy_check_mark:    |    :heavy_check_mark:    |    :heavy_check_mark:    |    :heavy_check_mark:    |                          |    :heavy_check_mark:    |    :heavy_check_mark:    |
|  Clojure  |    :heavy_check_mark:    |    :heavy_check_mark:    |                          |    :heavy_check_mark:    |    :heavy_check_mark:    |    :heavy_check_mark:    |    :heavy_check_mark:    |
|    C++    |    :heavy_check_mark:    |    :heavy_check_mark:    |                          |                          |    :heavy_check_mark:    |    :heavy_check_mark:    |    :heavy_check_mark:    |
| Smalltalk |                          |    :heavy_check_mark:    |                          |                          |                          |                          |                          |
|     D     |                          |                          |                          |                          |    :heavy_check_mark:    |                          |                          |
