# 🔝🔟


### Problems

1. [Rain Water](https://leetcode.com/problems/trapping-rain-water/description/)
   * Covered at [54:35 of C++Now 2019 - Algorithm Inutition](https://youtu.be/48gV1SNm3WA?t=3275)
2. [Max Consecutive Ones (MCO)](https://leetcode.com/problems/max-consecutive-ones/)
   * 1️⃣ Link to [Array Language Solutions](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P0485_MCO.md)
   * Covered at [13:53 of GTC 2021 - Thrust and the C++ Standard Algorithms](https://youtu.be/zlJg9mCNfkQ?t=833)
   * Covered in [ADSP Episode 20: GTC 2021 Preview & Thrust Algorithms](https://adspthepodcast.com/2021/04/09/Episode-20.html)
   * Covered in [ADSP Episode 25: The Lost Reduction](https://adspthepodcast.com/2021/05/14/Episode-25.html)
3. [Longest Continuous Increasing Subsequence (LCIS)](https://leetcode.com/problems/longest-continuous-increasing-subsequence/)
   * 7️⃣ Link to [Array Language Solutions](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P0674_LCIS.md)
4. [Maximum Subarray Sum (Kadanes)](https://leetcode.com/problems/maximum-subarray/)
5. [Sushi for Two (SF2)](https://codeforces.com/contest/1138/problem/A)
6. [Maximum Gap](https://leetcode.com/problems/maximum-gap/)
   * 8️⃣ Link to [Array Language Solutions](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P0064_Max_Gap.md)
   * Covered in [ADSP Episode 115: Max Gap in C++23](https://adspthepodcast.com/2023/02/03/Episode-115.html)
7. [Maximum Gap Count](https://theweeklychallenge.org/blog/perl-weekly-challenge-198/)
   * 9️⃣ Link to [Array Language Solutions](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/pwc/PWC198_P1_Max_Gap_Count.md)
   * Covered in [ADSP Episode 116: Max Gap Count in C++23](https://adspthepodcast.com/2023/02/10/Episode-116.html)
8. [Three Consecutive Odds](https://leetcode.com/problems/three-consecutive-odds/)
   * Covered in [ADSP Episode 119: Why APL & Haskell are AWESOME with Zach Laine! (Part 3)](https://adspthepodcast.com/2023/03/03/Episode-119.html)
   * Tweet by Tristan Brindle [covering various solutions](https://twitter.com/tristanbrindle/status/1632078445986435072?s=20)
9. Skyline
    * Talked about in [Why Would a Non-Programmer Learn APL? // Richard Savenije // APL Seeds '23](https://youtu.be/6AWSPC6qQB4?t=560)
    * Coverd at 12:12 of [KX Con 2023 - Algorithms in q](https://youtu.be/7ANmsW7crIQ?t=732)
    * Covered in [Episode 135: 🇸🇮 Slovenia 🇸🇮 2023 Road Trip!](https://adspthepodcast.com/2023/06/23/Episode-135.html)
10. [Ocean View](https://leetcode.ca/all/1762.html)

### Algorithm & Combinators Required

|       |    Problem    |                                                                       Algorithms Required                                                                        |          Combinators Required           |
| :---: | :-----------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------: | :-------------------------------------: |
|   1   |  Rain Water   |                                                                     `reduce`, `map2`, `scan`                                                                     |             `phi`, `under`              |
|   2   |      MCO      |                                                      1) `reduce`, `scan` <br> 2) `reduce`, `map`, `chunkBy`                                                      |           1) `phi1` <br> 2) -           |
|   3   |     LCIS      |                                              1) `reduce`, `scan`, `mapAdjacent` <br> 2) `reduce`, `map`, `chunkBy`                                               |           1) `phi1` <br> 2) -           |
|   4   |    Kadanes    |                                                                         `reduce`, `scan`                                                                         |                 `phi1`                  |
|   5   |      SF2      |                                        `reduce`, `mapAdjacent`, `map`, `chunkBy` <br> `reduce`, `mapAdjacent`, `indices`                                         |                    -                    |
|   6   |    Max Gap    |                                                                 `sort`, `mapAdjacent`, `reduce`                                                                  |                    -                    |
|   7   | Max Gap Count |                  1) `sort`, `mapAdjacent`, (RP* or `map2`, `repeat`) + `reduce` <br> 2) `sort`, `mapAdjacent`, `reduce` <br> 3) `sort`, `foldl`                  |  1) `sigma` or `s` <br> 2) - <br> 3) -  |
|   8   |      TCO      |                                         1) `slide`, `reduce` <br> 2) `reduce`, `scan` <br> 3) `reduce`, `map`, `chunkBy`                                         |      1) - <br> 2) `phi1` <br> 3) -      |
|   9   |    Skyline    |                                                                       1) `scan`, `unique`                                                                        |                    -                    |
|  10   |   OceanView   | 1) `reverse`, `scan`, `unique_mask`, `indices` <br> 2) `reverse`, `scan`, `progressive_index_count`, `map`, `indices` <br> 3) `revere`, `scan`, `map`, `indices` | `under` <br> 3) `phi` or `s` or `sigma` |

\* - Rank Polymorphism

### Solutions

| Language  |   1   |   2   |   3   |   4   |   5   |   6   |   7   |   8   |   9   |  10   |
| :-------: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|    Kap    |   ✔️   |  ⭐✔️   |   ✔️   |  ⭐✔️   |   ✔️   |  ⭐✔️   |  ⭐ ✔️  |  ⭐✔️   |  ⭐✔️   |  ⭐✔️   |
|    BQN    |  ⭐✔️   |   ✔️   |   ✔️   |  ⭐✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |  ⭐✔️   |
|   Uiua    |   ✔️   |  ⭐✔️   |   ✔️   |  ⭐✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |  ⭐✔️   |   ✔️   |
|  Haskell  |   ✔️   |   ✔️   |  ⭐✔️   |   ✔️   |  ⭐✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |
|  TinyAPL  |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |
|    APL    |   ✔️   |   ✔️   |   ✔️   |   🚫   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |
|     J     |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |       |       |
|  Clojure  |   ✔️   |   ✔️   |       |   ✔️   |   ✔️   |   ✔️   |   ✔️   |   ✔️   |       |       |
|    C++    |   ✔️   |   ✔️   |       |       |   ✔️   |   ✔️   |   ✔️   |       |       |       |
| Smalltalk |       |   ✔️   |       |       |       |       |       |       |       |       |
|     D     |       |       |       |       |   ✔️   |       |       |       |       |       |

![image](https://github.com/codereport/top10/assets/36027403/aeeafc6d-aa3b-48b8-b40d-34daa92b0229)
