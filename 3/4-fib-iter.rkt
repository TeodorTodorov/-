#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим n-тото число на Фибоначи.
; Искаме да го намерим и итеративно.

(define (fib x)
  (define (fib-iter x currentIteration fib oldFib)
    (cond
        ((= x 0) 0)
      ((= x 1) 1)
      ((= x currentIteration) oldFib)
      (else (fib-iter x (+ currentIteration 1) ( + fib oldFib) fib ))
        

        )
    )
  (fib-iter x 0 1 0)

  )

(define tests (test-suite
  "Fiboacci tests"

  (test-case "" (check-equal? (fib 1) 1))
  (test-case "" (check-equal? (fib 2) 1))
  (test-case "" (check-equal? (fib 3) 2))
  (test-case "" (check-equal? (fib 4) 3))
  (test-case "" (check-equal? (fib 5) 5))
  (test-case "" (check-equal? (fib 6) 8))
  (test-case "" (check-equal? (fib 20) 6765))
))

(run-tests tests 'verbose)

