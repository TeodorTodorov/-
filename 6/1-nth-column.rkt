#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да вземем н-тата колона на дадена матрица

(define (nChar lis n)
  
  (cond
    ((= n 0)(car lis) )
    (else (nChar (cdr lis) (- n 1)))
    )

  )


(define (nth-col lis n)
  (cond ((null? lis )'() )
  (else (cons (nChar (car lis) n) (nth-col (cdr lis) n)))


  )
  )


(define tests
  (test-suite "nth col tests"

    (test-case "" (check-equal? (nth-col '((1 2 3)
                                           (4 5 6)
                                           (7 8 9)) 2) '(3 6 9)))
  )
)

(run-tests tests 'verbose)