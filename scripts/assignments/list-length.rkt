#lang racket

;; A function which expects list as an argument and
;; returns the number of elements in the list
;; It returns "not a list" in case the argument passed is not a list
(define (list-length list-name)
  (if (list? list-name)
      (length list-name)
      "not a list"))

(list-length '(1 2 3 4)) ;returns 4
(list-length 7) ;returns "not a list"

  
