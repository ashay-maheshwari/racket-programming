#lang racket 

;; function list-sum-elem takes a list as an argument
;; checks if list is empty and returns 0
;; else takes the first element of list and add it with itself
;; recursively calls the rest elements of list and repeat until evalutes to a value 


(define (list-sum list-name)
  (if (list? list-name)
      (if (empty? list-name)
          0
          (+ (first list-name) (list-sum (rest list-name))))
      "not a list"))


(list-sum '(1 1 1 1 1)) ;;returns 5
(list-sum '()) ;returns 0
(list-sum 5) ;returns "not a list"


