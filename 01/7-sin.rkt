#lang racket
(require rackunit)
(require rackunit/text-ui)

; Напишете функция, която по подадено реално число x и естествено n пресмята sin(x) + sin(x^2) + ... + sin(x^n)
(define(my-even? a)
  (if(= (remainder a 2) 0) #t #f)

  )
(define(square x)
(* x x)
  )
(define (sum-sins x n)
  (define(sum-sin x p buffer)
    (if(> p 0) (sum-sin x (- p 1) (+ buffer (sin (expt x p)))) buffer    )
    )
  (cond
    ((= n 0) (sin (expt x n)) )
    ((> n 0) (sum-sin x n 0) )

  )
)
  


(define tests (test-suite
  "sin tests"

  (test-case "n = 0" (check-equal? (sum-sins pi 0) 0.8414709848078965))
  (test-case "n = 1" (check-equal? (sum-sins (/ pi 2) 1) 1.0))
))

(run-tests tests 'verbose)

