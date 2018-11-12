#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да вземем главния диагонал на матрица
(define (nChar lis n)
  
  (cond
    ((= n 0)(car lis) )
    (else (nChar (cdr lis) (- n 1)))
    )

  )

(define (diagonal matr)
  (define (diag-iter matr n)
  (cond
    ((null? matr)'())
    (else(cons (nChar (car matr) n) (diag-iter (cdr matr )(+ n 1)) ))

    ))
  (diag-iter matr 0)
  
  )

(define tests
  (test-suite "Diagonal tests"

    ;(test-case "" (check-equal? (diagonal '()) '()))
    (test-case "" (check-equal? (diagonal '((1 2 3) (4 5 6) (7 8 9))) '(1 5 9)))
  )
)

(run-tests tests 'verbose)

