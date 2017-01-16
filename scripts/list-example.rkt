#lang racket
;;This racket program declares a list and 
;; also lists some in-built function related to list operations

(list "red" "green" "blue" 1 2 3)
(length (list "hop" "skip" "jump")) ; returns the element count 
(list-ref (list "hop" "skip" "jump") 0) ;; extract the element at index zero
(list-ref (list "hop" "skip" "jump") 1) ;; extract the element at index first
(append (list "hop" "skip") (list "jump")) ;;; combine lists 
(reverse (list "jop" "skip" "jump")) ;;; reverse the elements in strings
(member "fall" (list "hop" "skip" "jump")) ;; check if an element is a part of a list


;; Iterating over a list 
;; Evaluating a square root in list 
(map sqrt (list 2 4 6 16)) ;; returns square root for each element of list

;; Append a string to each element of the list 
(map (lambda (i)
       (string-append i "!"))
     (list "peanuts" "popcorn" "burger"))
;; returns '("peanuts!" "popcorn!" "burger!")


;; filter function to filter elements from a list based on the functions 
(filter string? (list "a" "b" 7))
;; returns '("a" "b")
