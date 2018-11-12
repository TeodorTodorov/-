#lang racket
(require rackunit)
(require rackunit/text-ui)

; Да се конструира списъкът с числата от start до end.
(define (range x y)
  (define (iterRange p q res)
  (cond
   ((= q p) (cons p res))
   (else (iterRange p (- q 1) (cons q res) ))

    )
  )
  (iterRange x y '())
  )

(define tests
  (test-suite "Range tests"

    (test-case "" (check-equal? (range 1 1) '(1)))
    (test-case "" (check-equal? (range 1 4) '(1 2 3 4)))
  )
)

(run-tests tests 'verbose)

