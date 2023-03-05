### Specifics of Languages

| Lang  |                                  Source / Version                                   |
| :---: | :---------------------------------------------------------------------------------: |
|  APL  |                                   Dyalog APL 18.2                                   |
|  BQN  | [CBQN](https://github.com/dzaima/CBQN) built with `make o3n-singeli CC=cc REPLXX=1` |
|   J   |                                        J9.4                                         |
|   Q   |                     KDB+ 4.0 2022.10.26 run with `taskset -c 2`                     |

### Profiling (Sort + Deltas + Max)

| Lang  |                      Command                       |
| :---: | :------------------------------------------------: |
| BQN 2 | `10 {⌈´(1⊸↓-¯1⊸↓)∧𝕩} •_timed 1e7 •rand.Range 1e7`  |
|   J   |    `10 (6!:2) '{{ >./ 2-~/\ /:~ y }} ?1e7#1e7'`    |
| APL 2 | `]runtime -repeat=10 '{⌈/2-/{(⊂⍒⍵)⌷⍵}⍵} 1e7?1e7'`  |
| BQN 1 |    `10 {⌈´-´˘2↕∨𝕩} •_timed 1e7 •rand.Range 1e7`    |
|  APL  |  `]runtime -repeat=10 '{⌈/2-/(⊂⍤⍒⌷⊢)⍵} 1e7?1e7'`   |
|   Q   | `\ts:10 { max 1 _ deltas asc x } (7h$1e7)?7h$1e7 ` |

| Lang  |     Sort     | Sort + Deltas |     Full     | Full + Rand |
| :---: | :----------: | :-----------: | :----------: | :---------: |
| BQN 2 | 0.1058985824 | 0.1059849112  | 0.1100821086 |      -      |
|   J   |   0.120776   |   0.135354    |   0.139736   |  0.213386   |
| APL 2 |    .1437     |     .1453     |    .1515     |
| BQN 1 | 0.1017272612 | 0.3206097638  | 0.3267318615 |      -      |
|  APL  |     .389     |     .3906     |    0.3954    |   0.5625    |
|   Q   |     .52      |    0.5593     |    0.5776    |   0.6821    |

![image](https://user-images.githubusercontent.com/36027403/222936134-f9c921a6-57f4-4805-88ef-05b2af08af71.png)

### Profiling (Deltas + Max)

| Lang  |                     Command                      |
| :---: | :----------------------------------------------: |
|  BQN  | `10 {⌈´(1⊸↓-¯1⊸↓)𝕩} •_timed 1e8 •rand.Range 1e8` |
|   J   |     `10 (6!:2) '{{ >./ 2-~/\ y }} ?1e8#1e8'`     |
|  APL  |     `]runtime -repeat=10 '{⌈/2-/⍵} 1e8?1e8'`     |
|   Q   |  `\ts:10 { max 1 _ deltas x } (7h$1e8)?7h$1e8`   |

| Lang  |    Deltas    | Deltas + Max |
| :---: | :----------: | :----------: |
|  APL  |    0.0343    |    0.0547    |
|  BQN  | 0.0531495085 | 0.0317558118 |
|   J   |   0.145835   |   0.187187   |
|   Q   |    .2017     |    .3282     |

![image](https://user-images.githubusercontent.com/36027403/222936128-3689a5fc-64b6-4698-ab55-cfd35cfe8ef7.png)
