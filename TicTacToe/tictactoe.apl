board         ← 9⍴'.'
wins          ← 1+8 3⍴0 4 8 0 1 2 3 4 5 6 7 8 0 3 6 1 4 7 2 5 8 2 4 6
printBoard    ← {3 6⍴⍵(,,⍤0)9⍴' '}
hasSomeoneWon ← {∨/{∧/('.'≠⊃⍵)∧⍵=⊃⍵}(⍤1)⍵[wins]}

playTurn ← {
     ⎕←'Player ',⍵,'s Turn'
     ⎕←'Please enter row (1, 2, 3):' ⋄ row←⍎∘⍕⍞
     ⎕←'Please enter row (1, 2, 3):' ⋄ col←⍎∘⍕⍞
     board[col+(row-1)×3]←⍵
     ⎕←printBoard board
     {hasSomeoneWon board: ⎕←'Player ',⍵,' Wins!' 
                         ⋄ playTurn{'X'=⍵:'O' ⋄ 'X'}⍵}⍵
}

start ← { ⎕←'TicTacToe – APL' ⋄ playTurn ⍵ }
