#lang racket

;; expects an element and a list as argument
;; checks if an element exists in the list
;; checks if passed argument is a list and then checks if
;; element passed is present in the list or not

(define (member? list-name element)
  (if (list? list-name)
      (if (member element list-name)
          "True"
          "False")
      "not a list"))


(member? '("hello" "world" "from" "racket") "racket")   ;; returns "True"
(member? '("hello" "world" "from" "racket") "scheme")   ;; returns "False"
(member? "hello" "scheme")  ;; returns "not a list"
