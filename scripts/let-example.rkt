#lang racket


;; let binds a variable to a value locally
;; this snippet binds x and o with some number generated randomly 
;; then checks for condition using "cond" and returns output
(let ([x (random 4)]
      [o (random 4)])
  (cond 
    [(> x o) "X wins"]
    [(> o x) "0 wins"]
    [else "cats; game"]))



;;Example of let*

(let* ([x (random 4)]
       [o (random 4)]
       [diff (number->string (abs (- x o)))])
  (cond 
    [(> x o) (string-append "X wins by " diff)]
    [(> o x) (string-append "O wins by " diff)]
    [else "cats; game"]))
