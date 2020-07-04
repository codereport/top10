(require algorithms) ; chunks-of, any?
(require threading)

(define board '(#\. #\. #\. #\. #\. #\. #\. #\. #\.))

(define (print-board)
  (for-each displayln (chunks-of board 3)))

(define (input-valid? row col)
  (and (>= row 0)
       (<= row 2)
       (>= col 0)
       (<= col 2)
       (eq? (list-ref board (+ (* 3 row) col)) #\.)))

(define (read-input)
  (let ((row -1)
        (col -1))
    (display "Please enter row (0, 1, 2): ")
    (set! row (read))
    (display "Please enter col (0, 1, 2): ")
    (set! col (read))
    (cond ((input-valid? row col) (+ (* row 3) col))
          (else (displayln "Invalid input, please try again")
                (read-input)))))

(define (play-turn player)
  (newline)
  (displayln (string-append* "Player " (string player) "'s Turn:" '()))
  (set! board (list-set board (read-input) player))
  (print-board)
  (if (has-someone-won)
      (display (string-append* "==> " (string player) " won!" '()))
      (play-turn (if (eq? player #\X)
                     #\O
                     #\X))))

(define (has-someone-won)
  (~>> wins
       (map (curry list-refs board))
       (map (λ (x) (and (andmap (curry eq? (car x)) x)
                        (not (eq? (car x) #\.)))))
       (any?)))

(define (list-refs lst idxs)
  (map (curry list-ref lst) idxs))

(define wins '((0 4 8) (0 1 2) (3 4 5) (6 7 8)
               (0 3 6) (1 4 7) (2 5 8) (2 4 6)))

(define (start)
  (displayln "TicTacToe - Raket")
  (print-board)
  (play-turn #\X))
