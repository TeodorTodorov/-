#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим сумата от цифрите на дадено число. Ама итеративно.
(define(sum-digits-iter x )
  (define (sumDig x sum)
    (cond
      ((= x 0) sum)
      (else (sumDig (floor(/ x 10)) (+ sum (remainder x 10)) ) )
      )
  )
  (sumDig x 0 )
  )
(define tests (test-suite
  "Iterative sum digits"

  (test-case "" (check-equal? (sum-digits-iter 0) 0))
  (test-case "" (check-equal? (sum-digits-iter 1) 1))
  (test-case "" (check-equal? (sum-digits-iter 9) 9))
  (test-case "" (check-equal? (sum-digits-iter 10) 1))
  (test-case "" (check-equal? (sum-digits-iter 145) 10))
))

(run-tests tests 'verbose)

