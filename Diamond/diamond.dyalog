diamond ← {                               
     i ← ¯64+⎕UCS ⍵               
     m ← (i,¯1+2×i)⍴32            
     m[↓⍉2 i⍴(⍳i),1+i-⍳i]←64+⍳i 
     m[↓⍉2 i⍴(⍳i),¯1+i+⍳i]←64+⍳i
     ⎕UCS m⍪⊖(i-1)↑m            
 }
 
