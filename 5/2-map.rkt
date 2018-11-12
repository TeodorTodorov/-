#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да приложим функция върху всеки от елементите на списък.

(define (my-map2 list func)
  (cond
    ((null? list) '())
    (else (cons (func(car list)) (my-map2 (cdr list) func) ))

    )
  

  )

(define my-list '(1 2 3 4 5))
(define tests
  (test-suite "Map tests"
    
    (test-case "base" (check-equal? (my-map2 '() sqr) '()))
    (test-case "!base" (check-equal? (my-map2 my-list  sqr) '(1 4 9 16 25)))
  )
)

(run-tests tests 'verbose)

