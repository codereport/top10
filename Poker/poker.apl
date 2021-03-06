⍝ Helper Functions
sort    ← (⊂∘⍋⌷⊢)
suit    ← {'CDHS'⊃⍨⌊⍵÷13}
hasAce  ← {∨/12=13|⍵}
hasKing ← {∨/11=13|⍵}

⍝ Predicate Poker Functions
isFlush         ← {∧/(⊃=⊢)suit¨⍵}
isStraight      ← {∧/1=2-⍨/sort 13|⍵} ⍝ misses A-5
isStraightFlush ← isStraight∧isFlush
isRoyalFlush    ← isStraightFlush∧hasAce∧hasKing
isFullHouse     ← {2 3≡¯2↑sort≢∘⊢⌸13|⍵}
isTwoPair       ← {2 2≡¯2↑sort≢∘⊢⌸13|⍵}
isOnePair       ← {2∊≢∘⊢⌸13|⍵}
isThreeOfAKind  ← {3∊≢∘⊢⌸13|⍵}
isFourOfAKind   ← {4∊≢∘⊢⌸13|⍵}
