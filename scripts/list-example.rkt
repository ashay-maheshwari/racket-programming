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



;; user defined version of length of list 
(define (my-length lst)
    (cond
      [(empty? lst) 0]
      [(else (+ (my-length (rest lst))))]))

(my-length '(1 2 3 4 5)) ;; returns 5 


;; user defined function to convert each element of string in uppercase 
;; my-map function will use inbuit function named string-upcase to convert a string
;; to upper case.
;; my-map takes 2 arguments, one is string-upcase function, and a list to work on
;; it checks if list is empty and returns an emtpy list ;
;; else it checks construct a list by apply string-upcase function to first elemenet of list;
;; and pass string-upcase and rest of list to my-ma again
(define (my-map f lst)
  (cond 
   [(empty? lst) empty]
   [else (cons (f (first lst))
                (my-map f (rest lst)))]))


(my-map string-upcase (list "ashay" "amit")) ;; returns '("ASHAY" "AMIT")



