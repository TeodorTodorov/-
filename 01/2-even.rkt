#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали дадено число е четно

(define(my-even? a)
  (if(= (remainder a 2) 0) #t #f)

  )


(define tests (test-suite
  "even? tests"

  (test-case "" (check-equal? (my-even? 2) #t))
  (test-case "" (check-equal? (my-even? 333) #f))
 ))

(run-tests tests 'verbose)