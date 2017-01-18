#lang racket

;; remove-dups function remove consecutinve duplicates from a list
;; remove-dups will take list as and argument and checks the following -
;; check if list is empty and returns '()
;; check if list has only one element and return list 
;; else set i to first element of the list and check if i is equal
;; to the first-elem (rest of list), 
;; if it is the case, pass the rest (list) to remove-dups 
;; else construct a list to add i and call remove-dups (rest (list)) 
(define (remove-dups lst)
  (cond 
    [(empty? lst) empty]
    [(empty? (rest lst)) lst]
    [else
     (let ([i (first lst)])
       (if (equal? i (first (rest lst)))
           (remove-dups (rest lst))
           (cons i (remove-dups (rest lst)))))]))

(remove-dups '(list "a" "a" "b" "c" "d" "d")) ;;returns '("a" "b" "c" "d")
(remove-dups '(list "a" "b" "c" "d" "a" "d")) ;;returns '("a" "b" "c" "d" "a" "d")
