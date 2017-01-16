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
(reply "hellw world") ; returns huh
(reply 56) ;returns huh


;; this is the same if written in more complex form
;; It evalutes as given below -
;; 1. Takes string as an argument
;; 2. if whose condition include another if which checks if it is string
;; 3. if arg i string, it checks if it is equal to "hello" and its substring from 0 to 5, if true then returns #t and hence returns hi
;; 4. else it returns #f and then returns "huh"

(define (reply s)
	(if (if (string? s)
			(equal? "hello" (substring s 0 5))
			#f)
		"hi"
		"huh"))

(reply "hello") ;returns hi
(reply "hellw world") ; returns huh
(reply 56) ;returns huh




;; this if has an example of and operator used inside if.
;; and needs all true as a result of the expression. 
;; takes a string as an argument, check if it is a string and its lenght is greater or equal to 5
;; then checks if it is equal to "hello" and returns hi else huh
(define (reply s)
  (if (and (string? s)
           (>= (string-length s) 5)
           (equal? "hello" (substring s 0 5)))
      "hi"
      "huh"))

(reply "hello") ;returns hi
(reply "hellw world") ; returns huh
(reply 56) ;returns huh


;; identify if number is odd or even 
(define (odd-even num1)
  (if (equal? 0 (modulo num1 2))
      "even" 
      "odd"))


 







