#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме функция, която връща най-малкия елемент на списък.
; Искаме и такава, която връща най-големия.

(define (my-min ls)
  (define (my-min-iter ls min )
    (cond
      ((null? ls) min)
      ((< (car ls) min)(my-min-iter (cdr ls) (car ls)))
      (else (my-min-iter (cdr ls) min))

      )
    
    )
  (my-min-iter ls (car ls))
  )

(define (my-max ls)
  (define (my-max-iter ls max )
    (cond
      ((null? ls) max)
      ((> (car ls) max)(my-max-iter (cdr ls) (car ls)))
      (else (my-max-iter (cdr ls) max))

      )
    
    )
  (my-max-iter ls (car ls))
  )
(define tests
  (test-suite "min max tests"
    
    (test-case "min" (check-equal? (my-min '(1 2 3 4 5 6 7)) 1))
    (test-case "max" (check-equal? (my-max '(1 2 3 4 5 6 7)) 7))
  )
)

(run-tests tests 'verbose)

