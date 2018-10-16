#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да изчислим n! за дадено n.
(define (factorial a)
 ( if(= a 0) 1 (* a (factorial (- a 1))))

  )

(define tests (test-suite
  "factorial tests"

  (test-case "" (check-equal? (factorial 0) 1))
  (test-case "" (check-equal? (factorial 3) 6))
  (test-case "" (check-equal? (factorial 19) 121645100408832000))
))

(run-tests tests 'verbose)

