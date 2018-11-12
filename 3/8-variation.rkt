#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим броя вариации на n елемента, k-ти ред

(define (variation k n)
  (define (id x) x )
(define (inc x) ( + x 1) )

(define (accumulate op null-operationValue a b term next)
  (cond ((> a b) null-operationValue)
    (else (op ( term a) (accumulate op null-operationValue (next a) b term next ) ))

       )
  

  )

  (accumulate * 1  (+ 1 (- n k)) n id inc )

 

  

  )

(define tests (test-suite
  "Variation tests"

  (test-case "" (check-equal? (variation 3 7) 210))
  (test-case "" (check-equal? (variation 4 12) 11880))
))

(run-tests tests 'verbose)

