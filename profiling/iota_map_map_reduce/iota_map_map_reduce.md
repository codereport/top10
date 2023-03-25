The following code in APL 

```apl
+/2×1+1e6⍴⍳10
```

has the following performance profile when broken down step by step:

```apl
      x ← 1e6
      cmpx '+/2×1+x⍴⍳10' '2×1+x⍴⍳10' '1+x⍴⍳10' 'x⍴⍳10'
  +/2×1+x⍴⍳10 → 2.9E¯4 |   0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
* 2×1+x⍴⍳10   → 2.5E¯4 | -15% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕      
* 1+x⍴⍳10     → 1.3E¯4 | -55% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                      
* x⍴⍳10       → 6.8E¯5 | -77% ⎕⎕⎕⎕⎕⎕⎕⎕⎕  
```

I would expect the the `+/` version to be the fastest because in theory, no memory needs to be allocated for this expression as it is just a `map-reduce` at the end of the day.
