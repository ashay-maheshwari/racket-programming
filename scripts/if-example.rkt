#lang racket

(if (> 3 2)
   "smaller"
   "greater")   ; Syntax of if 


; A function which accepts a string, evalueate the string for substring from 0 to 5
; and then compares it with "hello" and returns "hi" if matched, else returns "huh?"
(define (reply s)
  (if (equal? "hello" (substring s 0 5))
      "hi"
      "huh?"))

(reply "hello world") ; returns hi
(reply "hwllow wolrd") ; returns huh


;Example of nested if function which takes a string as an argument
; checks if it is a tring, then does the same as above if 
(define (reply s)
  (if (string? s)
      (if (equal? "hello" (substring s 0 5))
                  "hi"
                  "huh")
      "huh?"))

(reply "hello") ;returns hi
(reply "hellow world") ; returns huh
)reply 56) ;returns huh
