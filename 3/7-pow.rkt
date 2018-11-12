#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да повдигнем число на степен, използвайки процедурата accumulate
(define (id x) x )
(define (inc x) ( + x 1) )


(define (accumulate op null-operationValue a b term next)
  (cond ((> a b) null-operationValue)
    (else (op ( term a) (accumulate op null-operationValue (next a) b term next ) ))

       )
  

  )
(define (pow x n)

(define (const p) x )
 (accumulate * 1 1 n const inc)


  )



(define tests (test-suite
  "Pow tests"

  (test-case "" (check-equal? (pow 3 3) 27))
  (test-case "" (check-equal? (pow 2 10) 1024))
))

(run-tests tests 'verbose)

