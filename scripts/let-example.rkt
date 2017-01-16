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



