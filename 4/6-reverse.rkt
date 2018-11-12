#lang racket
(require rackunit)
(require rackunit/text-ui)

; Търсим функция, която обръща даден списък
(define (reverse x )
(cond
  ((null? x) '() )
  (else (append (reverse (cdr x)) (list(car x))))
  )


  )

(define (reverse-iter x)
  (define (rev x res)
  (cond
    ((not(null? x)) (rev (cdr x) (cons (car x) res) )
              

    )
     (else res)
 ; (1 2 3 4)

  )
  )
  (rev x '())
  )

; И нейн итеративен вариант

(define tests
  (test-suite "Reverse tests"
      (check-equal? (reverse-iter '(1 2 3)) (reverse '(1 2 3)))
      (check-equal? (reverse '()) '())
      (check-equal? (reverse '(1)) '(1))
      (check-equal? (reverse '(1 5)) '(5 1))
  )
)

(run-tests tests 'verbose)
