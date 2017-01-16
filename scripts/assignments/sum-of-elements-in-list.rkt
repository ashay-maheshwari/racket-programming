#lang racket 

;; function sum-of-list-elem takes a list as an argument
;; checks if list is empty and returns 0
;; else takes the first element of list and add it with itself
;; recursively calls the rest elements of list and repeat until evalutes to a value 


(define (sum-of-list list-name)
  (if (list? list-name)
      (if (empty? list-name)
          0
          (+ (first list-name) (sum-of-list (rest list-name))))
      "not a list"))


(sum-of-list '(1 1 1 1 1)) ;;returns 5
(sum-of-list '()) ;returns 0
(sum-of-list 5) ;returns "not a list"


