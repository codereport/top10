"Note this is a slight variant"
diamond
   | s |
   ^ (1 to: self) , (self - 1 to: 1 by: -1) collect: [ :i | 
      s := String new: (2 * self + 1) withAll: Character space. 
      s at: self - i + 1 put: $*.
      s at: self + i put: $*.
      s
   ] :> reduce: [ :a :b | a,(String with: Character cr),b ]
