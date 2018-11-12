#lang racket
(require rackunit)
(require rackunit/text-ui)

; Обединение на двата списъка (приемаме, че няма повтарящи се елементи).
(define (contains? x y)
  (cond
    ((null? y)#f)
    ((null? x)#f)
    ((= (car x) (car y))#t)
    (else (contains? x (cdr y)))
    

    )

  )

(define (union p q)
(define (union-iter x y res )

  (cond
    ((and (null? x) (null? y))res)
    ((null? x) (cond 
                 ((not(contains? y res)) (union-iter x (cdr y) (append (list(car y)) res)) )
                 (else (union-iter x (cdr y)  res))

                ) )
     ((null? y) (cond 
                 ((not(contains? x res)) (union-iter (cdr x) y (append (list(car x)) res)) )
                 (else (union-iter (cdr x) y  res))

                ) )

     (else (union-iter x (cdr y) (append (list(car y)) res)) )

    )

)
  (union-iter p q '())
  )

(define tests
  (test-suite "Union tests"

    (test-case "" (check-equal? (union '(2 3 5) '(4 1 3 2)) '(5 4 1 3 2)))
    (test-case "" (check-equal? (union '(1 2 3) '(1 2 3)) '(1 2 3)))
    (test-case "" (check-equal? (union '(1) '()) '(1)))
    (test-case "" (check-equal? (union '() '()) '()))
  )
)

(run-tests tests 'verbose)

