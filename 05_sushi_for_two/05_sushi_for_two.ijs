Problem Link: https://codeforces.com/contest/1138/problem/A

sushiForTwo =: {{>./ +: 2 <./\ y #;.1~ 1,2~:/\y}}

NB. Tests
sushiForTwo 2 2 2 1 1 2 2     NB. 4
sushiForTwo 1 2 1 2 1 2       NB. 2
sushiForTwo 2 2 1 1 1 2 2 2 2 NB. 6
