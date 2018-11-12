#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да напишем процедурата accumulate

(define (id x) x )
(define (inc x) ( + x 1) )

(define (accumulate2 op null-operationValue a b term next)
  (cond ((> a b) null-operationValue)
    (else (op ( term a) (accumulate2 op null-operationValue (next a) b term next ) ))

       )
  

  )

(define tests
  (test-suite "Accumulate tests"

    (check-equal? (accumulate2 + 0 1 100 id inc) 5050)
    (check-equal? (accumulate2 + 0 9 9 id inc) 9)
    (check-equal? (accumulate2 * 1 1 5 id inc) 120)
  )
)

(run-tests tests 'verbose)

