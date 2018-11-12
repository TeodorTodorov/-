#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да транспонираме дадена матрица


(define (cdrs matr)
(cond
    ((null? matr)'())
    ((null? ( car matr))'())

    (else (cons (cdar matr ) (cdrs (cdr matr))))
    )
  )

(define (cars matr)
  (cond

    ((null? matr)'())
    ((null? ( car matr))'())

    (else (cons (caar matr ) (cars (cdr matr))))
    )
  )
(define (transpose matr)
  (cond
    ((null? matr)'())
    ((null? (car matr))'())
    (else (cons (cars matr) (transpose (cdrs matr))))


    )
 
  
  )
(define tests
  (test-suite "transpose tests"

    (test-case "" (check-equal? (transpose '((1 2 3) (4 5 6) (7 8 9))) '((1 4 7) (2 5 8) (3 6 9))))
  )
)

(run-tests tests 'verbose)

