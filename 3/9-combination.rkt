#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим броя комбинации на n-елемента, k-ти ред.


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
(define (combination k n)
  (/ (variation k n) (fact k))


  )


(define tests (test-suite
  "Combination tests"

  (test-case "" (check-equal? (combination 3 7) 35))
  (test-case "" (check-equal? (combination 4 12) 495))
))

(run-tests tests 'verbose)

