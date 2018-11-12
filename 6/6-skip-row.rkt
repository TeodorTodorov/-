#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да пропуснем ред на матрица на даден индеь

(define (skip matrix n)
  (cond
    ((null? matrix)'())
   ( (= n 0) (skip (cdr matrix) (- n 1)))
   (else (cons (car matrix) (skip (cdr matrix)(- n 1))))


    )

  )
(define tests
  (test-suite "skip row tests"

    (test-case "" (check-equal? (skip '((1 2 3) (4 5 6) (7 8 9)) 1) '((1 2 3) (7 8 9))))
  )
)

(run-tests tests 'verbose)

