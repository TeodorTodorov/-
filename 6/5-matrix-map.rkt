#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да приложим функция на всеки елемент на дадена матрица

(define (map-matrix f m)
  (cond
    ((null? m) '())
    ((list? (car m)) (cons (map-matrix f (car m)) (map-matrix f (cdr m))) )
    (not (pair? (car m)) (cons (f(car m)) (map-matrix f (cdr m))))

    )

  )

(define tests
  (test-suite "Mat matrix tests"

    (test-case "" (check-equal? (map-matrix (lambda (x) (* x x)) '((1 2 3) (4 5 6) (7 8 9)))
				'((1 4 9) (16 25 36) (49 64 81))))
  )
)

(run-tests tests 'verbose)

