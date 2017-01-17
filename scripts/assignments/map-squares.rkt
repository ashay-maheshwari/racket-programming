#lang racket

;; A function which takes an argument and returns square of it
;; or if not a number retuns "not a number"
(define (square x)
  (if (number? x)
      (* x x)
      "not a number"))

;; A function which takes list as argument 
;; returns a list with elements squared 
;; every element calls square and returns the value 
(define (map-sqr list-name)
   (if (empty? list-name)
       '()
        (if (list? list-name)
          (map square list-name)
          "not a list")))

