#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да дефинираме процедурата, която намира n!, като използваме accumulate

(define (id x) x )
(define (inc x) ( + x 1) )

(define (accumulate op null-operationValue a b term next)
  (cond ((> a b) null-operationValue)
    (else (op ( term a) (accumulate op null-operationValue (next a) b term next ) ))

       )
  

  )
(define (fact n)
  (accumulate * 1 1 n id inc )

  )
(define tests (test-suite
  "Factorial tests"

  (test-case "" (check-equal? (fact 5) 120))
  (test-case "" (check-equal? (fact 3) 6))
))

(run-tests tests 'verbose)

