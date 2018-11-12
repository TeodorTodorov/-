#lang racket
(define (new-cons x y)
(define (dispatch m)
(cond ((= m 0) x)
((= m 1) y)
(else (error "Argument not 0 or 1" m))))
dispatch)
(define (new-car z) (z 0))
(define (new-cdr z) (z 1)) 