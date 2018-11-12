#lang racket

;(define (new-car z)
;(z (lambda (p q) p)))

;(define (new-cons x y)
;(lambda (m) (m x y))) 

;(new-car (new-cons 10 2))

;''''''''
;(define (new-cons x y)
;(lambda (m) (m x y)))
;(define (new-car z)
;(z (lambda (p q) p)))
;(define (new-cdr z)
;(z (lambda (p q) q)))
(define (new-cons x y)
(define (dispatch m)
(cond ((= m 0) x)
((= m 1) y)
(else (error "Argument not 0 or 1" m))))
dispatch)
(define (new-car z) (z 0))
(define (new-cdr z) (z 1)) 