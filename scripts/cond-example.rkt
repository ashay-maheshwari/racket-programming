#lang racket



;; reply-more function takes string as an argument and using "cond " buit in function
;; makes multiple checks where cond analyse all conditions 
(define (reply-more s)
  (cond
    [(equal? "hello" (substring s 0 5))
     "hi"]
    [(equal? "goodbye" (substring s 0 7))
     "bye"]
    [(equal? "?" (substring s (- (string-length s)1)))
     "I dont know"]
    [else "huh?"]))
             



(reply-more "hello racket") ;;returns "hi!"
(reply-more "goodbye cruel world")    ;; returns "bye!"
(reply-more "what is your favorite color?")   ;;returns "I don't know"
