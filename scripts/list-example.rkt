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