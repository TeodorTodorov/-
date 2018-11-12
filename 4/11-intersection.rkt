#lang racket
(require rackunit)
(require rackunit/text-ui)

; Сечение на двата списъка (приемаме, че няма повтарящи се елементи).
(define (contains? x y)
  (cond
    ((null? y)#f)
    ((= x (car y))#t)
    (else (contains? x (cdr y)))
    

    )

  )

(define (intersection x y)
  (cond
    ((or (null? x) (null? y)) '())
    ((contains? (car x) y) (cons (car x) (intersection (cdr x) y) ))
    (else (intersection (cdr x) y) )
    )


  )

(define tests
  (test-suite "Intersection tests"

    (test-case "" (check-equal? (intersection '(2 3 5) '(4 1 3 2)) '(2 3)))
    (test-case "" (check-equal? (intersection '(1 2 3) '(1 2 3)) '(1 2 3)))
    (test-case "" (check-equal? (intersection '(1 2 3) '(4 5 6)) '()))
    (test-case "" (check-equal? (intersection '(1) '(1)) '(1)))
  )
)

(run-tests tests 'verbose)

