#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да направим списък от всички стойности в даден такъв.
; Искаме нивата на влагане да изчезнат.
(define (flatten lis)
(cond
  ((null? lis) '() )
  (( pair? (car lis)) (append (flatten (car lis))) (flatten (cdr lis)))
  ( else (append '(car lis)  (flatten (cdr lis)))
  )

)
  )



(define tests
  (test-suite "Map tests"
    
    (test-case "" (flatten '(1 2 (3 (4 5) 6) 7 8)) '(1 2 3 4 5 6 7 8))
  )
)

(run-tests tests 'verbose)

