#lang racket
(define (square x) (* x x))

(define (precision a x)
  (abs (-( square a ) x ))
  )

(precision 3 10)