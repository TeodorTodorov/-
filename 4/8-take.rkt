#lang racket
(require rackunit)
(require rackunit/text-ui)

; Търсим функция, която връща списък от първите n елемента на даден такъв.
(define (take n lis)

  (define (take-iter count lis1)
    (cond

      ((= n count) '() )
      (else  (cons (car lis1) (take-iter ( + count 1) (cdr lis1))))

      )



    )
  (take-iter 0 lis  )


  )

(define tests
  (test-suite "Take tests"
     (check-equal? (take 2 '(1 2 3)) '(1 2))
     (check-equal? (take 0 '(2 9 2)) '())
  )
)

(run-tests tests 'verbose)
